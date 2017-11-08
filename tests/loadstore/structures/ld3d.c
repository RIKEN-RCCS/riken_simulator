#include <stdio.h>
#include <complex.h>
#include <arm_sve.h>

#define N 8
#define DUMMY -999.0

typedef struct {
  double x;
  double y;
  double z;
} myStruct;

myStruct c[N];
double v[N*3];

int main(int argc, char **argv)
{
  int i;
  svbool_t pg = svptrue_b8();
  svfloat64x3_t vec;

  for (i = 0; i < N; i++) {
    c[i].x = (double)(i);
    c[i].y = (double)(i) * -1.0;
    c[i].z = (double)(i) * 100.0;
  }
  for (i = 0; i < N*3; i++) {
    v[i] = DUMMY;
  }

  for (i = 0; i < 2; i++) {
    vec = svld3_f64(pg, c);
    svst3_f64(pg, v, vec);
  }

  for (i = 0; i < N*3; i+=3) {
    printf("(%lf, %lf, %lf)\n", v[i], v[i+1], v[i+2]);
  }

  return 0;
}
