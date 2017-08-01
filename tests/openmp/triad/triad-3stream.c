#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <time.h>

inline double get_dtime(void) {
  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  return ((double)(ts.tv_sec) + (double)(ts.tv_nsec) * 1e-9);
}

/* #define N 25600 */
#define N 104832
/* #define N 116480 */

double ALPHA = 3.0;
double a0[N] __attribute__((aligned(256)));
double b0[N] __attribute__((aligned(256)));
double c0[N] __attribute__((aligned(256)));
double a1[N] __attribute__((aligned(256)));
double b1[N] __attribute__((aligned(256)));
double c1[N] __attribute__((aligned(256)));
double a2[N] __attribute__((aligned(256)));
double b2[N] __attribute__((aligned(256)));
double c2[N] __attribute__((aligned(256)));

int main(int argc, char **argv)
{
  int i;
  static double time;

#pragma omp parallel
  {
    printf("%d of %d\n", omp_get_num_threads(), omp_get_thread_num());

#pragma omp for
    for (i = 0; i < N; i++) {
      a0[i] = 0.0;
      b0[i] = (double)(i);
      c0[i] = (double)(i+3);
      a1[i] = 0.0;
      b1[i] = (double)(i);
      c1[i] = (double)(i+3);
      a2[i] = 0.0;
      b2[i] = (double)(i);
      c2[i] = (double)(i+3);
    }
  }

  time = get_dtime();

#pragma omp parallel for
  for (i = 0; i < N; i++) {
    a0[i] = b0[i] + 3.0 * c0[i];
    a1[i] = b1[i] + 3.0 * c1[i];
    a2[i] = b2[i] + 3.0 * c2[i];
  }

  time = get_dtime() - time;

  printf("time = %lf [msec]\n", time * 1000.0);
  printf("GFLOPS = %lf\n", (2 * N) / time / 1e9);
  printf("BW = %lf [GB/s]\n", (3 * 3 * N * sizeof(double)) / time / 1e9);
  printf("dummy: %lf, %lf, %lf\n", a0[N-1], a1[N-1], a2[N-1]);

  return 0;
}
