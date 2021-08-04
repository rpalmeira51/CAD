#include <stdio.h>
#include <stdlib.h>
#include<time.h>

double* multiplyAxRow(double **a, double *x , int n, int m);
double* multiplyAxColumn(double **a, double *x , int n, int m);
void printB(double* b, int n);


int main(int argc, char* argv[]){
    int n,m;
    if(argc != 3){
        printf("Incorrect arguments flags n and m\n");
        return -1;
    }
    n = atoi(argv[1]);
    if(n <= 0){
        printf("Incorrect value for n\n");
        return -1;
    }
    m = atoi(argv[2]);
    if(m <= 0){
        printf("Incorrect value for m\n");
        return -1;
    }
    srand(time(NULL));
    double** a = (double ** ) malloc(n * sizeof(double*));

    for (int i =0 ; i< n; i++){
        a[i] = (double * ) malloc(m * sizeof(double));
    }
    double* x = (double * ) malloc( m * sizeof(double));
    for (int i =0; i < n; i++){
        for( int j =0; j <m; j++){
            a[i][j] = (double) rand();
        }
    }
    for (int i =0; i < m; i++){
        x[i] = (double) rand();
    }
    printf("===============================\n");
    printf("Executing for matrix of size %dx%d and x of size %d\n",n,m,m);
    double* b = multiplyAxRow(a,x,n,m);
    //printB(b,n);
    free(b);
    double* b2 = multiplyAxColumn(a,x,n,m);
    printf("===============================\n");
    //printB(b2,n);
    for (int i =0 ; i< n; i++){
        free(a[i]);
    }
    free(a);
    free(x);
    free(b2);

    return 0;
}


double* multiplyAxRow(double **a, double *x , int n, int m){
    double* b;
    b = (double * ) malloc( n* sizeof(double) );
    
    clock_t begin = clock();
    for (int i= 0; i< n; i++){
        register double temp = 0;
        for (int j = 0; j< m; j++) {
            //printf("i: %d, j:%d, val: %lf , x:%lf \n",i,j, *(a+m*i+j),*(x+j));
            temp += a[i][j] * x[j] ;
        }
        b[i] = temp;
    }
    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time elapsed sequential for: %lf \n",time_spent);
    return b;
}


double* multiplyAxColumn(double **a, double *x , int n, int m){
    double* b;
    b = (double * ) calloc( n, sizeof(double) );

    clock_t begin = clock();
    for (int j= 0; j< m; j++){
        for (int i = 0; i< n; i++) {
            //printf("i: %d, j:%d, val: %lf , x:%lf \n",i,j, *(a+m*i+j),*(x+j));
            b[i] += a[i][j] * x[j];
        }
    }
    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Time elapsed nonsequential for: %lf \n",time_spent);
    return b;
}

void printB(double* b,int n){
    for (int i =0; i < n; i++ ){
        printf("%lf, ",b[i]);
    }
    printf("\n");
}