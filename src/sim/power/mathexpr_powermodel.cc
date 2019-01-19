/*
 * Copyright (c) 2016-2017,2019 ARM Limited
 * All rights reserved
 *
 * The license below extends only to copyright in the software and shall
 * not be construed as granting a license to any other intellectual
 * property including but not limited to intellectual property relating
 * to a hardware implementation of the functionality of the software
 * licensed hereunder.  You may use the software subject to the license
 * terms below provided that you ensure that this notice is replicated
 * unmodified and in its entirety in all distributions of the software,
 * modified or unmodified, in source code or in binary form.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met: redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer;
 * redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution;
 * neither the name of the copyright holders nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Authors: David Guillen Fandos
 */

#include "sim/power/mathexpr_powermodel.hh"

#include <algorithm>
#include <regex>
#include <string>

#include "base/statistics.hh"
#include "params/MathExprPowerModel.hh"
#include "sim/mathexpr.hh"
#include "sim/power/thermal_model.hh"
#include "sim/sim_object.hh"

MathExprPowerModel::MathExprPowerModel(const Params *p)
    : PowerModelState(p), dyn_expr(p->dyn), st_expr(p->st), failed(false)
{
    // Calculate the name of the object we belong to
    std::vector<std::string> path;
    tokenize(path, name(), '.', true);
    // It's something like xyz.power_model.pm2
    assert(path.size() > 2);
    for (unsigned i = 0; i < path.size() - 2; i++)
        basename += path[i] + ".";
}

void
MathExprPowerModel::startup()
{
    // Create a map with stats and pointers for quick access
    // Has to be done here, since we need access to the statsList
    for (auto & i: Stats::statsList()) {
        if (i->name.find(basename) == 0) {
            // Add stats for this sim object and its child objects
            stats_map[i->name.substr(basename.size())] = i;
        } else if (i->name.find(".") == std::string::npos) {
            // Add global stats (sim_seconds, for example)
            stats_map[i->name] = i;
        }
    }

    tryEval(st_expr);
    const bool st_failed = failed;

    tryEval(dyn_expr);
    const bool dyn_failed = failed;

    if (st_failed || dyn_failed) {
        const auto *p = dynamic_cast<const Params *>(params());
        assert(p);

        fatal("Failed to evaluate power expressions:\n%s%s%s\n",
              st_failed ? p->st : "",
              st_failed && dyn_failed ? "\n" : "",
              dyn_failed ? p->dyn : "");
    }
}

double
MathExprPowerModel::eval(const MathExpr &expr) const
{
    const double value = tryEval(expr);

    // This shouldn't happen unless something went wrong the equations
    // were verified in startup().
    panic_if(failed, "Failed to evaluate power expression '%s'\n",
             expr.toStr());

    return value;
}

double
MathExprPowerModel::tryEval(const MathExpr &expr) const
{
    failed = false;
    const double value = expr.eval(
        std::bind(&MathExprPowerModel::getStatValue,
                  this, std::placeholders::_1)
        );

    return value;
}

#define ALL(x) x.cbegin(), x.cend()
static int
getVecStatIdx(const std::vector<std::string>& names, const std::string &tag)
{
    auto is_empty =[](const std::string &s) {return s.empty();};
    bool empty = names.empty() ||
                 std::all_of(ALL(names), is_empty);

    // Indices can either be tags or numerical; the stats system uses the tags
    // if they exist
    if (empty)
        return std::stoi(tag);

    auto pos = find(ALL(names), tag);
    if (pos == names.cend()) {
        warn("Could not find %s in vector stats", tag);
        return -1;
    }
    return pos - names.cbegin();
}
#undef ALL

struct V2D_Cache {
    Stats::Vector2dInfo *info;
    int idx;
};

bool MathExprPowerModel::parseVec2dStat(std::string name, Stats::Vector2dInfo
        **out_v2di, int *out_idx) const {
    using namespace Stats;

    // Prune the name for vector stats, they look like this:
    // iq.FU_type_0::Alu, really meaning iq.FU_type[0][Alu]
    std::regex  split("([._[:alnum:]]*)_(\\w*)::(\\w*)");
    std::smatch results;

    bool matched = regex_match(name, results, split);
    panic_if(!matched, "Could not match stat name %s", name.c_str());

    auto bname = results[1];
    auto xtag  = results[2];
    auto ytag  = results[3];

    auto it = stats_map.find(bname);
    if (it == stats_map.cend()) {
        warn("Failed to find stat '%s'\n", name);
        failed = true;
        return false;
    }
    Info *info = it->second;
    auto v2di = dynamic_cast<Vector2dInfo *>(info);
    if (!v2di)
        return false;

    int xidx = getVecStatIdx(v2di->subnames, xtag);
    int yidx = getVecStatIdx(v2di->y_subnames, ytag);

    if (xidx == -1 || yidx == -1)
        return false;

    assert (0 <= xidx && xidx < v2di->x);
    assert (0 <= yidx && yidx < v2di->y);
    int idx = xidx * v2di->y + yidx;

    *out_idx  = idx;
    *out_v2di = v2di;
    return true;
}
double
MathExprPowerModel::getStatValue(const std::string &name) const
{
    using namespace Stats;

    // Automatic variables:
    if (name == "temp") {
        return _temp;
    } else if (name == "voltage") {
        return clocked_object->voltage();
    }

    // Check for a Vector 2D stat; first in cache
    static std::unordered_map<std::string, V2D_Cache> v2d_cache;
    auto v2d = v2d_cache.find(name);
    if (v2d != v2d_cache.end()) {
        // Found, pull out the data
        auto v2di = v2d->second.info;
        // cvec data is only initialised in prepare()
        v2di->prepare();
        return v2di->cvec[v2d->second.idx];
    } else if (name.find("::") != name.npos) {
        // Not found, but looks like a Vector 2D stat -> parse and add
        Vector2dInfo *v2di;
        int idx;
        if (parseVec2dStat(name, &v2di, &idx)) {
            // Add to cache
            v2d_cache.emplace(name, V2D_Cache {v2di, idx});
            v2di->prepare();
            return v2di->cvec[idx];
        }
    }

    // Try to cast the stat, only these are supported right now
    const auto it = stats_map.find(name);
    if (it == stats_map.cend()) {
        warn("Failed to find stat '%s'\n", name);
        failed = true;
        return 0;
    }

    const Info *info = it->second;

    auto si = dynamic_cast<const ScalarInfo *>(info);
    if (si)
        return si->value();
    auto fi = dynamic_cast<const FormulaInfo *>(info);
    if (fi)
        return fi->total();

    panic("Unknown stat type!\n");
}

void
MathExprPowerModel::regStats()
{
    PowerModelState::regStats();
}

MathExprPowerModel*
MathExprPowerModelParams::create()
{
    return new MathExprPowerModel(this);
}
