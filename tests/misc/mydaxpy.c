#include <stdio.h>
#include <time.h>

inline double get_dtime(void) {
  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  return ((double)(ts.tv_sec) + (double)(ts.tv_nsec) * 1e-9);
}

#define N 3072
double x[N], y[N];

int main (void)
{
  int i, j;
  const double alpha = 3.0;
  double elaps;
  int rep = 100;

  for (i = 0; i < N; i++) {
    y[i] = 0.0;
    x[i] = (double)(i);
  }

  elaps = get_dtime();
  for (j=0; j < rep; j++) {
    for (i = 0; i < N; i++) {
      y[i] += alpha * x[i];
    }
  }
  elaps = get_dtime() - elaps;

  printf("time = %lf [msec]\n", elaps * 1000.0);
  printf("%lf [GFLOPS]\n", N*2*rep/elaps/1E9);
  printf("dummy = %lf\n", y[N-1]);

  return 0;
}

