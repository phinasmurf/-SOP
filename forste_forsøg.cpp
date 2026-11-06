include "nrutil.h"
void mrqmin(float x[], float y[], float sig[], int ndata, float a[], int ia[],
int ma, float **covar, float **alpha, float *chisq,
void (*funcs)(float, float [], float *, float [], int), float *alamda)
Levenberg-Marquardt method, attempting to reduce the value χ2 of a fit between a set of data
points x[1..ndata], y[1..ndata] with individual standard deviations sig[1..ndata],
and a nonlinear function dependent on ma coefficients a[1..ma]. The input array ia[1..ma]
indicates by nonzero entries those components of a that should be fitted for, and by zero
entries those components that should be held fixed at their input values. The program re-
turns current best-fit values for the parameters a[1..ma], and χ2 = chisq. The arrays
covar[1..ma][1..ma], alpha[1..ma][1..ma] are used as working space during most
iterations. Supply a routine funcs(x,a,yfit,dyda,ma) that evaluates the fitting function
yfit, and its derivatives dyda[1..ma] with respect to the fitting parameters a at x. On
the first call provide an initial guess for the parameters a, and set alamda<0 for initialization
(which then sets alamda=.001). If a step succeeds chisq becomes smaller and alamda de-
creases by a factor of 10. If a step fails alamda grows by a factor of 10. You must call this
686 Chapter 15. Modeling of Data
routine repeatedly until convergence is achieved. Then, make one final call with alamda=0, so
that covar[1..ma][1..ma] returns the covariance matrix, and alpha the curvature matrix.
(Parameters held fixed will return zero covariances.)
{
void covsrt(float **covar, int ma, int ia[], int mfit);
void gaussj(float **a, int n, float **b, int m);
void mrqcof(float x[], float y[], float sig[], int ndata, float a[],
int ia[], int ma, float **alpha, float beta[], float *chisq,
void (*funcs)(float, float [], float *, float [], int));
int j,k,l;
static int mfit;
static float ochisq,*atry,*beta,*da,**oneda;
if (*alamda < 0.0) { Initialization.
atry=vector(1,ma);
beta=vector(1,ma);
da=vector(1,ma);
for (mfit=0,j=1;j<=ma;j++)
if (ia[j]) mfit++;
oneda=matrix(1,mfit,1,1);
*alamda=0.001;
mrqcof(x,y,sig,ndata,a,ia,ma,alpha,beta,chisq,funcs);
ochisq=(*chisq);
for (j=1;j<=ma;j++) atry[j]=a[j];
}
for (j=1;j<=mfit;j++) { Alter linearized fitting matrix, by augmenting di-
agonal elements.for (k=1;k<=mfit;k++) covar[j][k]=alpha[j][k];
covar[j][j]=alpha[j][j]*(1.0+(*alamda));
oneda[j][1]=beta[j];
}
gaussj(covar,mfit,oneda,1); Matrix solution.
for (j=1;j<=mfit;j++) da[j]=oneda[j][1];
if (*alamda == 0.0) { Once converged, evaluate covariance matrix.
covsrt(covar,ma,ia,mfit);
covsrt(alpha,ma,ia,mfit); Spread out alpha to its full size too.
free_matrix(oneda,1,mfit,1,1);
free_vector(da,1,ma);
free_vector(beta,1,ma);
free_vector(atry,1,ma);
return;
}
for (j=0,l=1;l<=ma;l++) Did the trial succeed?
if (ia[l]) atry[l]=a[l]+da[++j];
mrqcof(x,y,sig,ndata,atry,ia,ma,covar,da,chisq,funcs);
if (*chisq < ochisq) { Success, accept the new solution.
*alamda *= 0.1;
ochisq=(*chisq);
for (j=1;j<=mfit;j++) {
for (k=1;k<=mfit;k++) alpha[j][k]=covar[j][k];
beta[j]=da[j];
}
for (l=1;l<=ma;l++) a[l]=atry[l];
} else { Failure, increase alamda and return.
*alamda *= 10.0;
*chisq=ochisq;
}
}