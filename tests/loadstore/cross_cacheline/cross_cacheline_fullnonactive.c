#include <stdio.h>
#include <stdlib.h>

#define N 128
#define OFFSET 28

double x[N] __attribute__((aligned(256)));
double y[N] __attribute__((aligned(256)));

int main(void)
{
  int i;

  for (i = 0; i < N; i++) {
    x[i] = (double)(i);
    y[i] = 0.0;
  }

  for (i = OFFSET; i < OFFSET+8; i++) {
    if (i > OFFSET+8) {
      y[i] += 3.0 * x[i];
    }
  }

  for (i = OFFSET; i < OFFSET+8; i++) {
    printf("y[%d] = %lf\n", i, y[i]);
  }

  return 0;
}
