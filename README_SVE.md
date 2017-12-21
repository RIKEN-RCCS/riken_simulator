# Support for the Arm Scalable Vector Extension

This branch hosts a work-in-progress version of gem5 with support for the Arm
Scalable Vector Extension (SVE).  The aim of this branch is to provide early
access to interested parties, while work is carried out for gradually
upstreaming the contributions to the "master" branch.  Please note that changes
to the codebase are expected as the code will be rebased on top of a more
recent changeset from "master" in the near future.

SVE is supported for all CPU models in syscall-emulation and full-system mode.
See the next section for the list of known issues and limitations.

To run programs with SVE code in syscall-emulation mode, one can use the
traditional example script "se.py":

```
$ ./build/ARM/gem5.opt configs/example/se.py \
    --arm-sve-vl=<vl in quadwords: one of {1, 2, 4}> \
    --cpu-type=<cpu type> \
    [--caches] \
    -c <binary> -o <options> 
```

# Known issues

The current limitations apply to the model:

- Maximum vector length is currently hard-coded as 512-bit

- Unimplemented instructions:
  - Gather/scatter loads/stores
  - Load/store structures ({LD,ST}{2,3,4}{B,H,W,D})
  - First-fault (LDFF1xx) and non-fault (LDNF1xx) loads
  - Non-temporal loads/stores ({LD,ST}NT1xx)
  - Data-processing instructions:
    - CLASTA (SIMD&FP scalar)
    - CLASTA (vectors)
    - CLASTB (SIMD&FP scalar)
    - CLASTB (vectors)
    - FADDA
    - FCADD
    - FCMLA (indexed)
    - FCMLA (vectors)
    - FMLA (indexed)
    - FMUL (indexed)
    - INSR (scalar)
    - INSR (SIMD&FP scalar)
    - LASTA (SIMD&FP scalar)
    - LASTB (SIMD&FP scalar)
    - RDFFR (unpredicated)
    - RDFFR, RDFFRS (predicated)
    - SDOT (indexed)
    - SDOT (vectors)
    - SETFFR
    - UDOT (indexed)
    - UDOT (vectors)
    - WRFFR

Work is currently ongoing on the implementation of the instructions above, and
priority is given to instructions that are more likely to be emitted by a
vectorizing compiler, i.e. gather/scatter loads/stores, load/store structures,
and first-fault loads.

If you encounter further issues, please contact:
Giacomo Gabrielli <Giacomo.Gabrielli@arm.com>
Gabor Dozsa <Gabor.Dozsa@arm.com>
