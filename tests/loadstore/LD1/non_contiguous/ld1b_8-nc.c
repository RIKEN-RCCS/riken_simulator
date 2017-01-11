#include <stdio.h>
#include <arm_sve.h>

#define N 64

int main(int argc, char **argv)
{
  int i;
  svint8_t vx;
  svbool_t pgall = svptrue_b8();
  svbool_t pg1 = svptrue_pat_b8(SV_VL1);
  svbool_t pg2 = svptrue_pat_b8(SV_VL2);
  svbool_t pg3 = svptrue_pat_b8(SV_VL3);
  svbool_t pg4 = svptrue_pat_b8(SV_VL4);
  svbool_t pg5 = svptrue_pat_b8(SV_VL5);
  svbool_t pg6 = svptrue_pat_b8(SV_VL6);
  svbool_t pg7 = svptrue_pat_b8(SV_VL7);
  svbool_t pg7not6 = svnot_b_z(pg7, pg6);
  svbool_t pg5not4 = svnot_b_z(pg5, pg4);
  svbool_t pg3not2 = svnot_b_z(pg3, pg2);

  svbool_t pgttt = svnot_b_z(pgall, pg7not6);
  svbool_t pgtt = svnot_b_z(pgttt, pg5not4);
  svbool_t pgt = svnot_b_z(pgtt, pg3not2);
  svbool_t pg = svnot_b_z(pgt, pg1);

  int8_t x[N], y[N];

  for (i = 0; i < N; i++) {
    x[i] = (int8_t)(i*2);
    y[i] = -1;
  }

  vx = svld1_s8(pgall, x);
  svst1_s8(pg, y, vx);

  for (i = 0; i < N; i++) {
    printf("%d ", y[i]);
  }
  printf("\n");

  return 0;
}
