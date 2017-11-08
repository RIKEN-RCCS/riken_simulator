#include <stdio.h>
#include <complex.h>
#include <arm_sve.h>

#define N 8
#define DUMMY -999.0

typedef struct {
  double x;
  double y;
  double z;
  double a;
} myStruct;

myStruct c[N];
double v[N*4];

int main(int argc, char **argv)
{
  int i;
  svbool_t pg = svptrue_b8();
  svfloat64x4_t vec;

  for (i = 0; i < N; i++) {
    c[i].x = (double)(i);
    c[i].y = (double)(i) * -1.0;
    c[i].z = (double)(i) * 100.0;
    c[i].a = (double)(i) * 100.0 * -1.0;
  }
  for (i = 0; i < N*4; i++) {
    v[i] = DUMMY;
  }

  vec = svld4_f64(pg, c);
  svst4_f64(pg, v, vec);

  for (i = 0; i < N*4; i+=4) {
    printf("(%lf, %lf, %lf, %lf)\n", v[i], v[i+1], v[i+2], v[i+3]);
  }

  return 0;
}
