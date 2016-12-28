#include <stdio.h>
#include <stdlib.h>
#include <time.h>

double get_dtime(void) {
  struct timespec tp;
  clock_gettime(CLOCK_MONOTONIC, &tp);
  return ((double)(tp.tv_sec) + (double)(tp.tv_nsec) * 1e-9);
}

#define L1SIZE 64*1024
#define SIZE (L1SIZE/sizeof(double)/4)
double a[SIZE];
double b[SIZE];
double c[SIZE];

int
main(int argc, char *argv[])
{
  int i,j,rep;
  double elaps, cycleper8loop;

  if (argc > 1)
    rep = atoi(argv[1]);
  else
    rep = 1000;
  printf("bench1: rep:%d n:%d\n", rep, SIZE);
  for (i=0; i<SIZE; i++) {
    a[i] = i * 0.1;
    b[i] = i * 0.2;
  }
  elaps = get_dtime();
  for (j=0; j<rep; j++) {
    for (i=0; i<SIZE; i++) {
      c[i] = a[i] + b[i];
    }
  }
  elaps = get_dtime() - elaps;
  cycleper8loop = elaps * 2000000000 / rep / (SIZE/8);
  printf("elaps: %lf.6 sec, %lf.2 cycle/8loop\n", elaps, cycleper8loop);
  printf("res: %lf, ..., %lf\n", c[0], c[SIZE-1]);
}
