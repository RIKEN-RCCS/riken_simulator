#include <stdio.h>
#include <arm_sve.h>

#define N 16

int main(int argc, char **argv)
{
  int i;
  svint32_t vx;
  svbool_t pg = svptrue_b32();
  int32_t x[N], y[N];

  for (i = 0; i < N; i++) {
    x[i] = (int32_t)i*2;
    y[i] = 0;
  }

  vx = svld1_s32(pg, x);
  svst1_s32(pg, y, vx);

  for (i = 0; i < N; i++) {
    printf("%d ", y[i]);
  }
  printf("\n");

  return 0;
}
