#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <time.h>

#define L1LINE (256)
#define L1SIZE (32 * 1024)
#define GAP    (L1LINE / sizeof(uint64_t *))
#define GAP7   (GAP * 7)
#define NL     (1024)
#define SIZE   (GAP7 * NL)

uint64_t **array[SIZE] __attribute__((aligned(16384)));
uint64_t **ans = 0;

inline double get_dtime(void) {
  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  return ((double)(ts.tv_sec) + (double)(ts.tv_nsec) * 1e-9);
}

int main(int argc, char *argv[])
{
  int i, j;
  int rep = 5000;
  uint64_t **p;
  static double time;

  if (argc == 2) {
    rep = atoi(argv[1]);
  }
  printf("rep : %d SIZE : %lu NL : %d\n", rep, SIZE, NL);
  printf("GAP : %ld GAP7 : %ld\n", GAP, GAP7);

  for (i = 0; i < SIZE; i += GAP7) {
    array[i] = (uint64_t **)&array[i + GAP7];
  }
  int upper = SIZE / GAP7;
  upper = (upper - 1) * GAP7;
  array[upper] = (uint64_t **)&array[0];

  time = get_dtime();

  for (i = 0; i < rep; i++) {
    p = array[0];
    for (j = 0; j < NL; j++) {
      p = (uint64_t **)*p;
    }
    ans = p;
  }

  time = get_dtime() - time;

  printf("res : %p\n", ans);
  printf("latency = %lf [cycle], %lf [nsec]\n", time / (rep * NL) * (1.8 * 1e9), time / NL / rep * 1e9);

  return 0;
}
