#include <stdio.h>
#include <arm_sve.h>

#define N 32

int main(int argc, char **argv)
{
  int i;
  svint16_t vx;
  svbool_t pg = svptrue_b16();
  int16_t x[N], y[N];

  for (i = 0; i < N; i++) {
    x[i] = (int16_t)i*2;
    y[i] = 0;
  }

  vx = svld1_s16(pg, x);
  svst1_s16(pg, y, vx);

  for (i = 0; i < N; i++) {
    printf("%d ", y[i]);
  }
  printf("\n");

  return 0;
}
