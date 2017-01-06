#include <stdio.h>
#include <arm_sve.h>

#define N 8

int main(int argc, char **argv)
{
  int i;
  svint64_t vx;
  svbool_t pg = svptrue_b64();
  int64_t x[N], y[N];

  for (i = 0; i < N; i++) {
    x[i] = (int64_t)i*2;
    y[i] = 0;
  }

  vx = svld1_s64(pg, x);
  svst1_s64(pg, y, vx);

  for (i = 0; i < N; i++) {
    printf("%d ", y[i]);
  }
  printf("\n");

  return 0;
}
