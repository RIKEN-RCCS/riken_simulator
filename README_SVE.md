# Support for the Arm Scalable Vector Extension

This branch hosts a work-in-progress version of gem5 with support for the Arm
Scalable Vector Extension (SVE).  The aim of this branch is to provide early
access to interested parties, while work is carried out for gradually
upstreaming the contributions to the "master" branch.

SVE is supported for all CPU models in syscall-emulation and full-system mode.
See the next section for the list of known issues and limitations.

To run programs with SVE code in syscall-emulation mode, one can use the
traditional example script "se.py":

```
$ ./build/ARM/gem5.opt configs/example/se.py \
    --arm-sve-vl=<vl in quadwords: one of {1, 2, 4, 8, 16}> \
    --cpu-type=<cpu type> \
    [--caches] \
    -c <binary> -o <options>
```

# Known issues

The current limitations apply to the model:

- Unimplemented instructions:
  - Non-temporal loads/stores ({LD,ST}NT1xx)
  - SVE prefetch instructions are treated as no-ops

If you encounter further issues, please contact:
Giacomo Gabrielli <Giacomo.Gabrielli@arm.com>
Gabor Dozsa <Gabor.Dozsa@arm.com>
