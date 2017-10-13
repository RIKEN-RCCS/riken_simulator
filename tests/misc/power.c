#include <stdio.h>
#include <math.h>

#define STEP 20

int main()
{
  int i;
  double sum, dt;

  sum = 0.0;
  dt = 1.0/3.0;

  for (i = 0; i < STEP; i++)
    sum += pow(dt, i);

  printf("%lf\n", sum);

  return 0;
}
