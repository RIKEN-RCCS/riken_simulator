#include <stdio.h>
#include <omp.h>

#define DIM 3
typedef float real;
typedef real    rvec[DIM];

template<int Parm0, int Parm1>
static void 
sub0(int                        start,
     int                        nrend,
     real                       dt,
     const rvec * __restrict    p3,
     const real *               lambda,
     const rvec * __restrict    x,
     rvec       * __restrict    xprime,
     rvec       * __restrict    v,
     const rvec * __restrict    f)
{
    real lambdaGroup;
	if(Parm0 == 0 ) {
    	lambdaGroup = lambda[0];
	}

    for (int a = start; a < nrend; a++)
    {
		if(Parm0 == 1) {
			lambdaGroup = lambda[a];
		}
        for (int d = 0; d < DIM; d++)
        {
            real vNew = lambdaGroup*v[a][d] + f[a][d]*p3[a][d]*dt;
			if(Parm1 == 1) {
				vNew = f[a][d]*lambdaGroup*dt;
			}
            v[a][d]      = vNew;
            xprime[a][d] = x[a][d] + vNew*dt;
        }
    }
}

void
sub1(int nth, int th, int homenr, int *start, int *nrend)
{
	*start = homenr/nth * th;
	if(th == nth - 1) *nrend = homenr;
	else *nrend = homenr/nth * (th + 1);
}

void 
sub2(int				homenr,
	 real				dt,
	 const rvec * 		p3,
	 const real *		lambda,
	 const rvec 		*x,
	 rvec       		*xprime,
	 rvec       		*v,
	 const rvec 		*f)
{

    int nth = omp_get_max_threads();

#pragma omp parallel for num_threads(nth) schedule(static)
    for (int th = 0; th < nth; th++)
    {
        int start, nrend;
        sub1(nth, th, homenr, &start, &nrend);
    	sub0<0,0>
        (start, nrend, dt, p3, lambda, x, xprime, v, f);
    }
}

#define HOMENR 12000

real p3[HOMENR][DIM];
real x[HOMENR][DIM];
real xprime[HOMENR][DIM];
real v[HOMENR][DIM];
real f[HOMENR][DIM];

int 
main(int argc, char *argv[])
{
	int  homenr = HOMENR;
    real dt     = 0.005;
	real lambda[1];
	lambda[0] = 0.001;

	for(int i = 0; i < HOMENR; i++) {
		for(int j = 0; j < DIM; j++) {
			p3[i][j] = (float)(DIM*i+j);
			x[i][j] = (float)(DIM*i+j+1);
			xprime[i][j] = (float)(DIM*i+j+2);
			v[i][j] = (float)(DIM*i+j+3);
			f[i][j] = (float)(DIM*i+j+4);
		}
	}

	sub2(homenr, dt, p3, lambda, x, xprime, v, f);

	int errcount = 0;
	for(int i = 0; i < HOMENR; i++) {
		for(int j = 0; j < DIM; j++) {
			if(xprime[i][j] == (float)(DIM*i+j+2)) {
				if(errcount < 100) {
					printf("%3d xprime[%d][%d]:%g remain unchanged.\n",
					errcount, i, j, xprime[i][j]);
				} else if(errcount == 100) {
					printf("entering silent mode...\n");
				}
				errcount++;
			}
			if(v[i][j] == (float)(DIM*i+j+3)) {
				if(errcount < 100) {
					printf("%3d v[%d][%d]:%g remain unchanged.\n",
					errcount, i, j, v[i][j]);
				} else if(errcount == 100) {
					printf("entering silent mode...\n");
				}
				errcount++;
			}
		}
	}
	if(errcount) {
		printf("FAILED. Total %d data unchanged\n", errcount);
	} else {
		printf("PASSED. All data changed.\n");
	}
	return 0;
}
