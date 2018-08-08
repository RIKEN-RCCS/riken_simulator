#define N 16

float a[N];
float b;

float test(float a[])
{
  int i;
  float r;
  for (i=0;i<N;i++)
    r += a[i];
  return r;
}

main()
{
  int i;
  float t = 1.0;
  for (i=0;i<16;i++) {
    a[i] = t;
    t = t / 10.0;
  }

  b = test(a);

  for (i=0;i<16;i++)
    printf("%f ", a[i]);
  printf("\n");
  printf("%f\n", b);
}
