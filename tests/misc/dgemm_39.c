#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

inline double get_dtime(void) {
  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  return ((double)(ts.tv_sec) + (double)(ts.tv_nsec) * 1e-9);
}

#define N 39

double A[N][N], B[N][N], C[N][N];

int main(int argc, char **argv)
{
  int i, j, k;
  static double time;
 
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      A[i][j] = (double)(i * N + j);
      if (i == j) {
      	B[i][j] = 1.0;
      } else {
      	B[i][j] = 0.0;
      }
      C[i][j] = 0.0;
    }
  }

  time = get_dtime();

  for (i = 0; i < N; i++) {
      for (j = 0; j < N; j++) {
    for (k = 0; k < N; k++) {
  	C[i][j] += A[i][k] * B[k][j];
      }
    }
  }

  time = get_dtime() - time;

#if 1
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      if ( (fabs(C[i][j] - A[i][j]) > 1e-15) ) {
      	printf("%lf, actual : %lf\n", A[i][j], C[i][j]);
      	printf("FAILED\n");
      	exit(-1);
      }
    }
  }
  printf("PASS\n");
#else
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      printf("%.1lf\t", C[i][j]);
    }
    printf("\n");
  }
#endif

  printf("time = %lf [msec]\n", time * 1000.0);

  return 0;
}
