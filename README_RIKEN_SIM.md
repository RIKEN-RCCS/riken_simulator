# RIKEN Simulator

This is the git repository for RIKEN simulator designed to simulate
the binary code for Fujitsu A64FX, developed by Fujitsu for Japanese
national flagship supercomputer, "Fugaku". The RIKEN simulator is
based on gem5 general-purpose processor simulator. Our base code is
the branch by Arm research for SVE. While the branch is merged the main
of gem5, we are using the branch because the additional modifications
on the base code is still large. We tuned several parameters and
extended the functions to improve the accuracy for the A64FX
behavior. The details of extensions and the comparison with A64FX test
chip are described in [1, 2].

Most parameters in the RIKEN simulator are aligned to the parameters
described in the A64FX microarchitecture manual
(https://github.com/fujitsu/A64FX). However, the values of some parameters
could not be applied as they are due to differences in implementation,
and the values are set by appropriately evaluating them.

[1] Yuetsu Kodama, Tetsuya Odajima, Akira Asato, and Mitsuhisa
Sato. Evaluation of the RIKEN post-k processor simulator. CoRR,
abs/1904.06451, 2019.

[2] Yuetsu Kodama, Tetsuya Odajima, Akira Asato, and Mitsuhisa
Sato. Accuracy improvement of memory system simulation for modern
shared memory processor. In Proceedings of the International
Conference on High Performance Computing in Asia-Paciﬁc Region,
HPCAsia2020, pages 142–149, New York, NY, USA, 2020. Association for
Computing Machinery.

## Usage

The RIKEN simulator runs only in the syscall-emulation mode.
To run programs, refer to the following example.
In the default state, programs are executed as a vector length of 512-bit.

```
$ ./build/ARM/gem5.opt ./configs/example/se.py \
    --cpu-type=O3_ARM_PostK_3 --caches --l2cache \
    -c <binary> -o <options>
```

Or, use the script to run the program on the RIKEN simulator.
The script can be found in the util directory.
Before running the script, change the PATH of gem5 to fit your environment in the script.

```
$ ./gem5-o3 -c <binary> -o ‘<options>’
```

Please refer to the script help for details.

## Performance Analysis Tools

In general, the gem5 outputs statistics for the entire program.
However, it is inconvenient to obtain only some information such as a kernel.

In the RIKEN simulator, partial statistical information can be obtained by specifying the measurement section and running the simulator twice.
The "clock_gettime()" function is used to specify the measurement section.
Insert the clock_gettime() function before and after the section you want to measure.
You can use the run-pa script in the util directory to get the statistics of the section.
Before running the script, change the PATH of gem5 to fit your environment in the script.

```
$ ./run-pa <binary> <tag>
```

The script outputs two statistic files.
* stats-<tag>-all.txt : Statistics for the whole program
* stats-<tag>.txt : Statistics for the measurement section only

After running run-pa, you can use the gem5-pa script to get arranged statistics.

```
$ ./gem5-pa stats-<tag>.txt
```