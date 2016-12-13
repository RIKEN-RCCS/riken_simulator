#include <stdio.h>
#include <stdlib.h>

#define L1SIZE 64*1024
#define SIZE (L1SIZE/sizeof(double)/2)
double x1[SIZE-32];
double x2[SIZE-32];
double s0;

int
main(int argc, char *argv[])
{
  int i,j,rep;
  int n = SIZE-32;
  double s;
  if (argc > 1)
    rep = atoi(argv[1]);
  else
    rep = 1000;
  printf("bench7: rep:%d n:%d\n", rep, n);

  for (i=0; i<n; i++) {
    x1[i] = i * 0.1;
    x2[i] = i * 0.2;
  }

  for (j=0; j<rep; j++) {
    s = 0.0;
    for (i=0; i<n; i++) {
      s = s + x1[i] * x2[i];
    }
    s0 = s;  
  }

  printf("res: %f\n", s0);
}
