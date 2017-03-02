#include <stdio.h>
#include <arm_sve.h>

#define N 8

int main(int argc, char **argv)
{
  int i;
  int8_t x[N], y[N];

  for (i = 0; i < N; i++) {
    x[i] = (int8_t)(i+1);
    y[i] = 0;
  }

  for (i = 0; i < N/2; i++) {
    y[i*2] = x[i];
  }

  for (i = 0; i < N; i++) {
    printf("%u ", y[i]);
  }
  printf("\n");

  return 0;
}
