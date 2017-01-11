#include <stdio.h>

#define N 32

int main(int argc, char **argv)
{
  int i;
  short x[N], y[N];

  for (i = 0; i < N; i++) {
    x[i] = (short)(i*2);
    y[i] = -1;
  }

  for (i = 0; i < N; i++) {
    if ((i % 2) == 1) {
      y[i] = x[i];
    }
  }

  for (i = 0; i < N; i++) {
    printf("%d ", y[i]);
  }
  printf("\n");

  return 0;
}
