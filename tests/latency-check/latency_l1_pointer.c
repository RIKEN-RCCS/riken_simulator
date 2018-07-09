// fccpx -Kfast -Xg -o latency_l1_pointer.out latency_l1_pointer.c

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define SIZE (4096)

#include <time.h>

inline double get_dtime(void) {
  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  return ((double)(ts.tv_sec) + (double)(ts.tv_nsec) * 1e-9);
}

uint64_t **array[SIZE+1] __attribute__((aligned(16384)));
uint64_t **ans = 0;

int main(int argc, char *argv[])
{
  int i, j;
  int rep = 1000;
  uint64_t **p;
  static double time;

  if (argc == 2) {
    rep = atoi(argv[1]);
  }
  printf("rep : %d SIZE : %d\n", rep, SIZE);

  for (i = 0; i < SIZE; i++) {
    array[i] = (uint64_t **)&array[i+1];
  }
  array[SIZE] = (uint64_t **)&array[0];

  time = get_dtime();

  for (i = 0; i < rep; i++) {
    p = array[0];
    for (j = 0; j < SIZE; j++) {
      p = (uint64_t **)*p;
    }
    ans = p;
  }

  time = get_dtime() - time;

  printf("res : %p\n", ans);
  printf("latency = %lf [cycle], %lf [nsec]\n", time / (rep * SIZE) * (1.8 * 1e9), time / SIZE / rep * 1e9);

  return 0;
}
