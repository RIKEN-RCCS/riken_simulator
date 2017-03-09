#include <stdio.h>
#include <arm_sve.h>

#define N 32

int main(int argc, char **argv)
{
  int i;
  uint64_t x[N], y[N];

  for (i = 0; i < N; i++) {
    x[i] = (uint64_t)(i);
    y[i] = 9999;
  }

  for (i = 0; i < N/2; i++) {
    y[i] = x[i*2];
  }

  for (i = 0; i < N/2; i++) {
    printf("%u ", y[i]);
  }
  printf("\n");

  return 0;
}
