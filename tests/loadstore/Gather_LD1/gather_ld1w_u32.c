#include <stdio.h>
#include <arm_sve.h>

#define N 16

int main(int argc, char **argv)
{
  int i;
  uint32_t x[N], y[N];

  for (i = 0; i < N; i++) {
    x[i] = (uint32_t)(i*2);
    y[i] = 9999;
  }

  for (i = 0; i < N; i += 2) {
    y[i] = x[i];
  }

  for (i = 0; i < N; i++) {
    printf("%u ", y[i]);
  }
  printf("\n");

  return 0;
}
