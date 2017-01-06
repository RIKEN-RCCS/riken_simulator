#include <stdio.h>
#include <arm_sve.h>

#define N 64

int main(int argc, char **argv)
{
  int i;
  svint8_t vx;
  svbool_t pg = svptrue_b8();
  int8_t x[N], y[N];

  for (i = 0; i < N; i++) {
    x[i] = (int8_t)i*2;
    y[i] = 0;
  }

  vx = svld1_s8(pg, x);
  svst1_s8(pg, y, vx);

  for (i = 0; i < N; i++) {
    printf("%d ", y[i]);
  }
  printf("\n");

  return 0;
}
