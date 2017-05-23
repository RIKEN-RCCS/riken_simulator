#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

double get_dtime(void) {
  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  return ((double)(ts.tv_sec) + (double)(ts.tv_nsec) * 1e-9);
}

#define N 32

float a[N][N], b[N][N], c[N][N];

int main(int argc, char **argv)
{
  int i, j, k;
  static double time;

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      a[i][j] = (float)(i * N + j);
      if (i == j) {
      	b[i][j] = 1.0f;
      } else {
      	b[i][j] = 0.0f;
      }
      c[i][j] = 0.0f;
    }
  }

  time = get_dtime();

  for (i = 0; i < N; i++) {
    for (k = 0; k < N; k++) {
      for (j = 0; j < N; j++) {
  	c[i][j] += a[i][k] * b[k][j];
      }
    }
  }

  time = get_dtime() - time;

#if 0
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      if ( (fabs(c[i][j] - a[i][j]) > 1e-7) ) {
      	printf("%f, actual : %f\n", a[i][j], c[i][j]);
      	printf("FAILED\n");
      	exit(-1);
      }
    }
  }
  printf("PASS\n");
#else
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      printf("%.1f\t", c[i][j]);
    }
    printf("\n");
  }
#endif

  printf("%lf\n", c[N-1][N-1]);
  printf("time = %lf [msec]\n", time * 1000.0);

  return 0;
}
