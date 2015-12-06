#include <iostream>
#include <algorithm>
#include <sys/time.h>
#define TIMES 100000000
using namespace std;
double dtime() 
{
    double tseconds = 0.0;
    struct timeval mytime;
    gettimeofday(&mytime, (struct timezone*)0);
    tseconds = (double)(mytime.tv_sec + mytime.tv_usec*1.0e-6);
    return (tseconds);
}
int main(int argc, char **argv)
{
    int    *i_a = (int    *)malloc(sizeof(int   ) * TIMES);
    int    *i_b = (int    *)malloc(sizeof(int   ) * TIMES);
    float  *f_a = (float  *)malloc(sizeof(float ) * TIMES);
    float  *f_b = (float  *)malloc(sizeof(float ) * TIMES);
    double *d_a = (double *)malloc(sizeof(double) * TIMES);
    double *d_b = (double *)malloc(sizeof(double) * TIMES);
    cout << "init ... " ;
    for(int i = 0; i < TIMES; i++)
    {
        i_a[i] = rand();
        i_b[i] = rand();
        f_a[i] = rand();
        f_b[i] = rand();
        d_a[i] = rand();
        d_b[i] = rand();
    }
    cout << "done" << endl;

    int c;
    double tic, toc;
    tic = dtime();
    for (int i = 0; i < TIMES; i++)
    {
        if(i_a[i] > i_b[i])
            c = 1;
        else
            c = 0;
    }
    toc = dtime();
    cout << "int compare: " << toc - tic << " s" << endl;
    cout << "int result check: " << c << endl;

    srand(1);
    int z;
    tic = dtime();
    for (int i = 0; i < TIMES; i++)
    {
        if(f_a[i] > f_b[i])
            z = 1;
        else
            z = 0;
    }
    toc = dtime();
    cout << "flt compare: " << toc - tic << " s" << endl;
    cout << "flt result check: " << z << endl;

    srand(1);
    int gamma;
    tic = dtime();
    for (int i = 0; i < TIMES; i++)
    {
        if(d_a[i] > d_b[i])
            gamma = 1;
        else
            gamma = 0;
    }
    toc = dtime();
    cout << "dbl compare: " << toc - tic << " s" << endl;
    cout << "dbl result check: " << gamma << endl;

    free(i_a);
    free(i_b);
    free(f_a);
    free(f_b);
    free(d_a);
    free(d_b);
}
