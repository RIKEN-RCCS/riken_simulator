#include <stdio.h>

#define N 8

int main()
{
  int i, j;
  float A[N][N];
  float B[N][N];

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      A[i][j] = (float)(i * N + j);
      B[i][j] = 0.0;
    }
  }

  for (i = 0; i < N; i++) {
    B[i][0] = A[i][0];
  }

  for (i = 0; i < N; i++) {
    printf("%f\n", B[i][0]);
  }

  return 0;
}
