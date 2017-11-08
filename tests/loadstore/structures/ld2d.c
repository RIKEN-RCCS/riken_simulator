#include <stdio.h>
#include <complex.h>
#include <arm_sve.h>

#define N 8
#define DUMMY -999.0

typedef struct {
  double x;
  double y;
} myStruct;

myStruct c[N];
double v[N*2];

int main(int argc, char **argv)
{
  int i;
  svbool_t pg = svptrue_b8();
  svfloat64x2_t vec;

  for (i = 0; i < N; i++) {
    c[i].x = (double)(i);
    c[i].y = (double)(i) * -1.0;
  }
  for (i = 0; i < N*2; i++) {
    v[i] = DUMMY;
  }

  vec = svld2_f64(pg, c);
  svst2_f64(pg, v, vec);

  for (i = 0; i < N*2; i+=2) {
    printf("(%lf, %lf)\n", v[i], v[i+1]);
  }

  return 0;
}
