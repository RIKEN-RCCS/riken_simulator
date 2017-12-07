#include <stdio.h>
#include <math.h>
#include <omp.h>

#define N 1024

static void do_daxpy(double *y, double *x, double alpha)
{
  int i;

#pragma omp parallel for
  for (i = 0; i < N; i++) {
    y[i] = alpha * x[i] + y[i];
  }
}

static int check(double *y)
{
  int i;

  for (i = 0; i < N; i++) {
    if (fabs(y[i] - (double)(i*3)) > 1e-15) {
      return 0;
    }
  }

  return 1;
}

int main(int argc, char **argv)
{
  int i;
  double x[N], y[N];
  const double alpha = 3.0;

  for (i = 0; i < N; i++) {
    y[i] = 0.0;
    x[i] = (double)(i);
  }

  do_daxpy(y, x, alpha);

  if (!check(y)) {
    fprintf(stderr, "ERROR\n");
  } else {
    fprintf(stdout, "PASS\n");
  }

  return 0;
}
