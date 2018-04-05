#include <stdio.h>
#include <papi.h>

#define N 10240
#define TIME 10

int main(int argc, char **argv)
{
  int i, t;
  double x[N], y[N];
  const int n_events = 1;
  int events[3];
  long_long values[3];

  if (PAPI_library_init(PAPI_VER_CURRENT) != PAPI_VER_CURRENT) {
    fprintf(stderr, "PAPI_library_init failed.\n");
    return 1;
  }

  events[0] = PAPI_TOT_CYC;
  for (i = 0; i < n_events; i++)
    values[i] = 0;

  printf("%d num_hwcntrs available\n", PAPI_num_counters());

  for (t = 0; t < TIME; t++) {

    for (i = 0; i < N; i++) {
      x[i] = (double)i;
      y[i] = 0.0;
    }

    if (PAPI_start_counters(events, n_events) != PAPI_OK);

    for (i = 0; i < N; i++)
      y[i] += 2.0 * x[i];

    if (PAPI_stop_counters(values, n_events) != PAPI_OK);

    for (i = 0; i < n_events; i++)
      printf("%ld", values[i]);
    printf("\n");

  }

  return 0;
}
