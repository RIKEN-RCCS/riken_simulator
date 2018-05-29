#!/bin/python

import sys
import optparse
import csv

def occupancy(m_list, c_list):
    o_list = []

    for (m, c) in zip (m_list, c_list):
        occupancy = float(c) / m * 100.0
        o_list.append(occupancy)

    return o_list


def printLSQEntries(file):
    f = open(file, "r")

    tick = []
    max_lq = []
    lq = []
    max_sq = []
    sq = []

    for row in f:
        if row.count("LSQ") and (not (row.count("command line"))):
            row = row.rstrip("\n").split(": ")
            tick.append(int(row[0]))
            max_lq.append(int(row[3]))
            lq.append(int(row[4]))
            max_sq.append(int(row[5]))
            sq.append(int(row[6]))

    occupancy_lq = occupancy(max_lq, lq)
    occupancy_sq = occupancy(max_sq, sq)

    if len(occupancy_lq) == 0:
        return

    outfile = open('LSQ.csv', 'w')
    writer = csv.writer(outfile)
    writer.writerow(['','LQ Occupancy','SQ Occupancy'])
    for (t, l, s) in zip (tick, occupancy_lq, occupancy_sq):
        writer.writerow([t, l, s])
    outfile.close()

def printROBEntries(file):
    f = open(file, "r")

    tick = []
    max_rob = []
    current_rob = []

    for row in f:
        if row.count("ROB") and (not (row.count("command line"))):
            row = row.rstrip("\n").split(": ")
            tick.append(int(row[0]))
            max_rob.append(int(row[3]))
            current_rob.append(int(row[4]))

    occupancy_rob = occupancy(max_rob, current_rob)

    if len(occupancy_rob) == 0:
        return

    outfile = open('ROB.csv', 'w')
    writer = csv.writer(outfile)
    writer.writerow(['','ROB Occupancy'])
    for (t, o) in zip(tick, occupancy_rob):
        writer.writerow([t, o])
    outfile.close()

if __name__ == "__main__":
    argvs = sys.argv
    argc = len(argvs)

    if (argc != 2):
        print 'Usage : %s <filename>' % argvs[0]
        quit()

    parser = optparse.OptionParser()
    parser.add_option('-c', '--cycle-time',
                      type='int', default=500,
                      help="CPU cycle time in ticks (default: '%default')")

    (options, args) = parser.parse_args()

    printLSQEntries(argvs[1])
    printROBEntries(argvs[1])
