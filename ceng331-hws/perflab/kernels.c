/********************************************************
 * Kernels to be optimized for the Metu Ceng Performance Lab
 ********************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "defs.h"

/* 
 * Please fill in the following team struct 
 */
team_t team = {
    "Team", /* Team name */

    "Onur ŞİMŞEK ", /* First member full name */
    "e2264679",     /* First member id */

    "Nur Gizem Altıntaş", /* Second member full name (leave blank if none) */
    "e2236917", /* Second member id (leave blank if none) */

    "Burcu Aykan", /* Third member full name (leave blank if none) */
    ""  /* Third member id (leave blank if none) */
};

/****************
 * BOKEH KERNEL *
 ****************/

/****************************************************************
 * Various typedefs and helper functions for the bokeh function
 * You may modify these any way you like.                       
 ****************************************************************/

/* A struct used to compute averaged pixel value */
typedef struct
{
    int red;
    int green;
    int blue;
    int num;
} pixel_sum;

/* Compute min and max of two integers, respectively */
static int min(int a, int b) { return (a < b ? a : b); }
static int max(int a, int b) { return (a > b ? a : b); }

/* 
 * initialize_pixel_sum - Initializes all fields of sum to 0 
 */
static void initialize_pixel_sum(pixel_sum *sum)
{
    sum->red = sum->green = sum->blue = 0;
    sum->num = 0;
    return;
}

/* 
 * accumulate_sum - Accumulates field values of p in corresponding 
 * fields of sum 
 */
static void accumulate_sum(pixel_sum *sum, pixel p)
{
    sum->red += (int)p.red;
    sum->green += (int)p.green;
    sum->blue += (int)p.blue;
    sum->num++;
    return;
}

/* 
 * assign_sum_to_pixel - Computes averaged pixel value in current_pixel 
 */
static void assign_sum_to_pixel(pixel *current_pixel, pixel_sum sum)
{
    current_pixel->red = (unsigned short)(sum.red / sum.num);
    current_pixel->green = (unsigned short)(sum.green / sum.num);
    current_pixel->blue = (unsigned short)(sum.blue / sum.num);
    return;
}

/* 
 * avg - Returns averaged pixel value at (i,j) 
 */

static pixel avg(int dim, int i, int j, pixel *src)
{
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;

    initialize_pixel_sum(&sum);
    for (ii = max(i - 1, 0); ii <= min(i + 1, dim - 1); ii++)
        for (jj = max(j - 1, 0); jj <= min(j + 1, dim - 1); jj++)
            accumulate_sum(&sum, src[RIDX(ii, jj, dim)]);

    assign_sum_to_pixel(&current_pixel, sum);
    return current_pixel;
}

/*
static pixel avg(int dim, int i, int j, pixel *src) 
{
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;

    initialize_pixel_sum(&sum);
    for(ii = max(i-1, 0); ii <= min(i+1, dim-1); ii++) 
    for(jj = max(j-1, 0); jj <= min(j+1, dim-1); jj++) 
        accumulate_sum(&sum, src[RIDX(ii, jj, dim)]);

    assign_sum_to_pixel(&current_pixel, sum);
    return current_pixel;
}

*/

/*******************************************************
 * Your different versions of the bokeh kernel go here 
 *******************************************************/

/* 
 * naive_bokeh - The naive baseline version of bokeh effect with filter
 */
char naive_bokeh_descr[] = "naive_bokeh: Naive baseline bokeh with filter";
void naive_bokeh(int dim, pixel *src, short *flt, pixel *dst)
{

    int i, j;

    for (i = 0; i < dim; i++)
    {
        for (j = 0; j < dim; j++)
        {
            if (!flt[RIDX(i, j, dim)])
                dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
            else
                dst[RIDX(i, j, dim)] = src[RIDX(i, j, dim)];
        }
    }
}

/* 
 * bokeh - Your current working version of bokeh
 * IMPORTANT: This is the version you will be graded on
 */
char bokeh_descr[] = "bokeh: Current working version";
void bokeh(int dim, pixel *src, short *flt, pixel *dst)
{
    int i = 0, j = 0, in, inj;
    pixel *p1 = src;
    pixel *yeniZimbirti;
    pixel temp;
    pixel_sum sum;
    short flag;
    int max1 = 0, min1 = 1, max2 = 0, min2 = 1;

    flag = flt[0];
    //max2 = max(j - 1, 0);

    //min2 = min(j + 1, dim - 1);
    temp = src[0];

    if (!flag) // average zimbirtilari   // i = 0 j = 0 conditionı
    {
        int ii, jj, g1;
        // i-1 > 0 ? i-1
        //i == 0 ? 0 : i-1
        sum.blue = sum.green = sum.red = sum.num = 0;

        //RIDX napiyor = (i,j,n) ->i*n +j
        for (ii = 0; ii <= 1; ii++)
        {
            g1 = ii * dim;
            //printf ("ilk for\n");
            for (jj = 0; jj <= 1; jj++) //
            {
                // (ii+ 0 ) * dim = ii*dim + dim
                //printf("2. for loop\n");
                //inj2 = g1+ jj ; //
                yeniZimbirti = (p1 + g1 + jj);
                sum.red = sum.red + (int)(yeniZimbirti)->red;
                sum.green = sum.green + (int)(yeniZimbirti)->green;
                sum.blue = sum.blue + (int)(yeniZimbirti)->blue;
            }
        }
        sum.num = sum.num + 4;
        temp.red = (unsigned short)(sum.red / sum.num);
        temp.green = (unsigned short)(sum.green / sum.num);
        temp.blue = (unsigned short)(sum.blue / sum.num);

    } // 10 /2 = 5 10 -2 = 8 -2 = 6 -2 = 4

    dst[0] = temp;

    for (j = 1; j < dim - 1; j++) // j 1 artsin // i=0 j=1<dim-1
    {

        flag = flt[j];
        //max2 = max(j - 1, 0);
        max2 = j - 1;
        min2 = j + 1;
        //min2 = min(j + 1, dim - 1);
        temp = src[j];

        if (!flag) // average zimbirtilari
        {
            int ii, jj, g1;
            // i-1 > 0 ? i-1
            //i == 0 ? 0 : i-1
            sum.blue = sum.green = sum.red = sum.num = 0;

            //RIDX napiyor = (i,j,n) ->i*n +j
            for (ii = 0; ii <= 1; ii++)
            {
                g1 = ii * dim;
                //printf ("ilk for\n");
                for (jj = max2; jj <= min2; jj++) //
                {
                    // (ii+ 0 ) * dim = ii*dim + dim
                    //printf("2. for loop\n");
                    //inj2 = g1+ jj ; //
                    yeniZimbirti = (p1 + g1 + jj);
                    sum.red = sum.red + (int)(yeniZimbirti)->red;
                    sum.green = sum.green + (int)(yeniZimbirti)->green;
                    sum.blue = sum.blue + (int)(yeniZimbirti)->blue;
                }
            }

            sum.num = sum.num + 6;
            temp.red = (unsigned short)(sum.red / sum.num);
            temp.green = (unsigned short)(sum.green / sum.num);
            temp.blue = (unsigned short)(sum.blue / sum.num);
        }

        dst[j] = temp;
    }

    flag = flt[j]; //i = 0 j = dim-1
    //max2 = max(j - 1, 0);
    max2 = dim - 2;
    min2 = dim - 1;
    //min2 = min(j + 1, dim - 1);
    temp = src[j];

    if (!flag) // average zimbirtilari
    {
        int ii, jj, g1;
        // i-1 > 0 ? i-1
        //i == 0 ? 0 : i-1
        sum.blue = sum.green = sum.red = sum.num = 0;

        //RIDX napiyor = (i,j,n) ->i*n +j
        for (ii = 0; ii <= 1; ii++)
        {
            g1 = ii * dim;
            //printf ("ilk for\n");
            for (jj = max2; jj <= min2; jj++) //
            {
                // (ii+ 0 ) * dim = ii*dim + dim
                //printf("2. for loop\n");
                //inj2 = g1+ jj ; //
                yeniZimbirti = (p1 + g1 + jj);
                sum.red = sum.red + (int)(yeniZimbirti)->red;
                sum.green = sum.green + (int)(yeniZimbirti)->green;
                sum.blue = sum.blue + (int)(yeniZimbirti)->blue;
            }
        }

        sum.num = sum.num + 4;
        temp.red = (unsigned short)(sum.red / sum.num);
        temp.green = (unsigned short)(sum.green / sum.num);
        temp.blue = (unsigned short)(sum.blue / sum.num);
    }

    dst[j] = temp;

    for (i = 1; i < dim - 1; i++)
    {
        in = i * dim;
        //        max1 = max(i - 1, 0);
        max1 = i - 1;
        // min1 = min(i + 1, dim - 1);
        min1 = i + 1;
        j = 0;

        flag = flt[in];
        //max2 = max(j - 1, 0);
        max2 = 0;
        min2 = 1;
        //min2 = min(j + 1, dim - 1);
        temp = src[in];

        if (!flag) // average zimbirtilari
        {
            int ii, jj, g1;
            // i-1 > 0 ? i-1
            //i == 0 ? 0 : i-1
            sum.blue = sum.green = sum.red = sum.num = 0;

            //RIDX napiyor = (i,j,n) ->i*n +j
            for (ii = max1; ii <= min1; ii++)
            {
                g1 = ii * dim;
                //printf ("ilk for\n");
                for (jj = 0; jj <= 1; jj++) //
                {
                    // (ii+ 0 ) * dim = ii*dim + dim
                    //printf("2. for loop\n");
                    //inj2 = g1+ jj ; //
                    yeniZimbirti = (p1 + g1 + jj);
                    sum.red = sum.red + (int)(yeniZimbirti)->red;
                    sum.green = sum.green + (int)(yeniZimbirti)->green;
                    sum.blue = sum.blue + (int)(yeniZimbirti)->blue;
                    //sum.num = sum.num + 1;
                }
            }
            sum.num = sum.num + 6;
            temp.red = (unsigned short)(sum.red / sum.num);
            temp.green = (unsigned short)(sum.green / sum.num);
            temp.blue = (unsigned short)(sum.blue / sum.num);

        } // 10 /2 = 5 10 -2 = 8 -2 = 6 -2 = 4

        dst[in] = temp;

        for (j = 1; j < dim - 1; j++) // j 1 artsin
        {
            inj = in + j;
            flag = flt[inj];
            //max2 = max(j - 1, 0);
            max2 = j - 1;
            min2 = j + 1;
            //min2 = min(j + 1, dim - 1);
            temp = src[inj];

            if (!flag) // average zimbirtilari
            {
                int ii, jj, g1;
                // i-1 > 0 ? i-1
                //i == 0 ? 0 : i-1
                sum.blue = sum.green = sum.red = sum.num = 0;

                //RIDX napiyor = (i,j,n) ->i*n +j
                for (ii = max1; ii <= min1; ii++)
                {
                    g1 = ii * dim;
                    //printf ("ilk for\n");
                    for (jj = max2; jj <= min2; jj++) //
                    {
                        // (ii+ 0 ) * dim = ii*dim + dim
                        //printf("2. for loop\n");
                        //inj2 = g1+ jj ; //
                        yeniZimbirti = (p1 + g1 + jj);
                        sum.red = sum.red + (int)(yeniZimbirti)->red;
                        sum.green = sum.green + (int)(yeniZimbirti)->green;
                        sum.blue = sum.blue + (int)(yeniZimbirti)->blue;
                        //sum.num = sum.num + 1;
                    }
                }
                sum.num = sum.num + 9;
                temp.red = (unsigned short)(sum.red / sum.num);
                temp.green = (unsigned short)(sum.green / sum.num);
                temp.blue = (unsigned short)(sum.blue / sum.num);

            } // 10 /2 = 5 10 -2 = 8 -2 = 6 -2 = 4

            dst[inj] = temp;
        }

        //j=dim-1 condition
        inj = in + j;
        flag = flt[inj];
        //max2 = max(j - 1, 0);
        max2 = dim - 2;
        min2 = dim - 1;
        //min2 = min(j + 1, dim - 1);
        temp = src[inj];

        if (!flag) // average zimbirtilari
        {
            int ii, jj, g1;
            // i-1 > 0 ? i-1
            //i == 0 ? 0 : i-1
            sum.blue = sum.green = sum.red = sum.num = 0;

            //RIDX napiyor = (i,j,n) ->i*n +j
            for (ii = max1; ii <= min1; ii++)
            {
                g1 = ii * dim;
                //printf ("ilk for\n");
                for (jj = max2; jj <= min2; jj++) //
                {
                    
                    yeniZimbirti = (p1 + g1 + jj);
                    sum.red = sum.red + (int)(yeniZimbirti)->red;
                    sum.green = sum.green + (int)(yeniZimbirti)->green;
                    sum.blue = sum.blue + (int)(yeniZimbirti)->blue;
                    //sum.num = sum.num + 1;
                }
            }
            sum.num = sum.num + 6;
            temp.red = (unsigned short)(sum.red / sum.num);
            temp.green = (unsigned short)(sum.green / sum.num);
            temp.blue = (unsigned short)(sum.blue / sum.num);

        } // 10 /2 = 5 10 -2 = 8 -2 = 6 -2 = 4

        dst[inj] = temp;
    }

    //i=dim-1

    in = i * dim;
    //        max1 = max(i - 1, 0);
    max1 = dim - 2;
    // min1 = min(i + 1, dim - 1);
    min1 = dim - 1;

    flag = flt[in];
    //max2 = max(j - 1, 0);
    max2 = 0;
    min2 = 1;
    //min2 = min(j + 1, dim - 1);
    temp = src[in];

    if (!flag) // average zimbirtilari
    {
        int ii, jj, g1;
        // i-1 > 0 ? i-1
        //i == 0 ? 0 : i-1
        sum.blue = sum.green = sum.red = sum.num = 0;

        //RIDX napiyor = (i,j,n) ->i*n +j
        for (ii = max1; ii <= min1; ii++)
        {
            g1 = ii * dim;
            //printf ("ilk for\n");
            for (jj = 0; jj <= 1; jj++) //
            {
                
                yeniZimbirti = (p1 + g1 + jj);
                sum.red = sum.red + (int)(yeniZimbirti)->red;
                sum.green = sum.green + (int)(yeniZimbirti)->green;
                sum.blue = sum.blue + (int)(yeniZimbirti)->blue;
                //sum.num = sum.num + 1;
            }
        }
        sum.num = sum.num + 4;
        temp.red = (unsigned short)(sum.red / sum.num);
        temp.green = (unsigned short)(sum.green / sum.num);
        temp.blue = (unsigned short)(sum.blue / sum.num);

    } // 10 /2 = 5 10 -2 = 8 -2 = 6 -2 = 4

    dst[in] = temp;

    for (j = 1; j < dim - 1; j++) // j 1 artsin
    {
        inj = in + j;
        flag = flt[inj];
        //max2 = max(j - 1, 0);
        max2 = j - 1;
        min2 = j + 1;
        //min2 = min(j + 1, dim - 1);
        temp = src[inj];

        if (!flag) // average zimbirtilari
        {
            int ii, jj, g1;
            // i-1 > 0 ? i-1
            //i == 0 ? 0 : i-1
            sum.blue = sum.green = sum.red = sum.num = 0;

            //RIDX napiyor = (i,j,n) ->i*n +j
            for (ii = max1; ii <= min1; ii++)
            {
                g1 = ii * dim;
                //printf ("ilk for\n");
                for (jj = max2; jj <= min2; jj++) //
                {
                    // (ii+ 0 ) * dim = ii*dim + dim
                    //printf("2. for loop\n");
                    //inj2 = g1+ jj ; //
                    yeniZimbirti = (p1 + g1 + jj);
                    sum.red = sum.red + (int)(yeniZimbirti)->red;
                    sum.green = sum.green + (int)(yeniZimbirti)->green;
                    sum.blue = sum.blue + (int)(yeniZimbirti)->blue;
                    //sum.num = sum.num + 1;
                }
            }
            sum.num = sum.num + 6;
            temp.red = (unsigned short)(sum.red / sum.num);
            temp.green = (unsigned short)(sum.green / sum.num);
            temp.blue = (unsigned short)(sum.blue / sum.num);

        } // 10 /2 = 5 10 -2 = 8 -2 = 6 -2 = 4

        dst[inj] = temp;
    }

    inj = in + j;
    flag = flt[inj];
    //max2 = max(j - 1, 0);
    max2 = dim - 2;
    min2 = dim - 1;
    //min2 = min(j + 1, dim - 1);
    temp = src[inj];

    if (!flag) // average zimbirtilari
    {
        int ii, jj, g1;
        // i-1 > 0 ? i-1
        //i == 0 ? 0 : i-1
        sum.blue = sum.green = sum.red = sum.num = 0;

        //RIDX napiyor = (i,j,n) ->i*n +j
        for (ii = max1; ii <= min1; ii++)
        {
            g1 = ii * dim;
            //printf ("ilk for\n");
            for (jj = max2; jj <= min2; jj++) //
            {
                // (ii+ 0 ) * dim = ii*dim + dim
                //printf("2. for loop\n");
                //inj2 = g1+ jj ; //
                yeniZimbirti = (p1 + g1 + jj);
                sum.red = sum.red + (int)(yeniZimbirti)->red;
                sum.green = sum.green + (int)(yeniZimbirti)->green;
                sum.blue = sum.blue + (int)(yeniZimbirti)->blue;
                //sum.num = sum.num + 1;
            }
        }
        sum.num = sum.num + 4;
        temp.red = (unsigned short)(sum.red / sum.num);
        temp.green = (unsigned short)(sum.green / sum.num);
        temp.blue = (unsigned short)(sum.blue / sum.num);

    } // 10 /2 = 5 10 -2 = 8 -2 = 6 -2 = 4

    dst[inj] = temp;
}

/*********************************************************************
 * register_bokeh_functions - Register all of your different versions
 *     of the bokeh kernel with the driver by calling the
 *     add_bokeh_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_bokeh_functions()
{
    add_bokeh_function(&naive_bokeh, naive_bokeh_descr);
    add_bokeh_function(&bokeh, bokeh_descr);
    /* ... Register additional test functions here */
}

/***************************
 * HADAMARD PRODUCT KERNEL *
 ***************************/

/******************************************************
 * Your different versions of the hadamard product functions go here
 ******************************************************/

/* 
 * naive_hadamard - The naive baseline version of hadamard product of two matrices
 */
char naive_hadamard_descr[] = "naive_hadamard The naive baseline version of hadamard product of two matrices";
void naive_hadamard(int dim, int *src1, int *src2, int *dst)
{

    int i, j;

    for (i = 0; i < dim; i++)
        for (j = 0; j < dim; j++)
            dst[RIDX(i, j, dim)] = src1[RIDX(i, j, dim)] * src2[RIDX(i, j, dim)];
}

/* 
 * hadamard - Your current working version of hadamard product
 * IMPORTANT: This is the version you will be graded on
 */
char hadamard_descr[] = "hadamard: Current working version";

void hadamard(int dim, int *src1, int *src2, int *dst)
{
    int *p1 = src1;
    int *p2 = src2;
    int ilkAdam;
    int ikinciAdam;

    if (dim ==64) // zikkim 1
    {

        int i = 0;
        while (i < dim)
        {
            

            *(dst + (i * dim)) = (*(src1 + (i * dim))) * (*(src2 + (i * dim)));
            *(dst + (i * dim) + 1) = *(src1 + (i * dim + 1)) * *(src2 + (i * dim + 1));
            *(dst + (i * dim) + 2) = *(src1 + (i * dim + 2)) * *(src2 + (i * dim + 2));
            *(dst + (i * dim) + 3) = *(src1 + (i * dim + 3)) * *(src2 + (i * dim + 3));
            *(dst + (i * dim) + 4) = *(src1 + (i * dim + 4)) * *(src2 + (i * dim + 4));
            *(dst + (i * dim) + 5) = *(src1 + (i * dim + 5)) * *(src2 + (i * dim + 5));
            *(dst + (i * dim) + 6) = *(src1 + (i * dim + 6)) * *(src2 + (i * dim + 6));
            *(dst + (i * dim) + 7) = *(src1 + (i * dim + 7)) * *(src2 + (i * dim + 7));
            *(dst + (i * dim) + 8) = *(src1 + (i * dim + 8)) * *(src2 + (i * dim + 8));
            *(dst + (i * dim) + 9) = *(src1 + (i * dim + 9)) * *(src2 + (i * dim + 9));
            *(dst + (i * dim) + 10) = *(src1 + (i * dim + 10)) * *(src2 + (i * dim + 10));
            *(dst + (i * dim) + 11) = *(src1 + (i * dim + 11)) * *(src2 + (i * dim + 11));
            *(dst + (i * dim) + 12) = *(src1 + (i * dim + 12)) * *(src2 + (i * dim + 12));
            *(dst + (i * dim) + 13) = *(src1 + (i * dim + 13)) * *(src2 + (i * dim + 13));
            *(dst + (i * dim) + 14) = *(src1 + (i * dim + 14)) * *(src2 + (i * dim + 14));
            *(dst + (i * dim) + 15) = *(src1 + (i * dim + 15)) * *(src2 + (i * dim + 15));
            *(dst + (i * dim) + 16) = *(src1 + (i * dim + 16)) * *(src2 + (i * dim + 16));
            *(dst + (i * dim) + 17) = *(src1 + (i * dim + 17)) * *(src2 + (i * dim + 17));
            *(dst + (i * dim) + 18) = *(src1 + (i * dim + 18)) * *(src2 + (i * dim + 18));
            *(dst + (i * dim) + 19) = *(src1 + (i * dim + 19)) * *(src2 + (i * dim + 19));
            *(dst + (i * dim) + 20) = *(src1 + (i * dim + 20)) * *(src2 + (i * dim + 20));
            *(dst + (i * dim) + 21) = *(src1 + (i * dim + 21)) * *(src2 + (i * dim + 21));
            *(dst + (i * dim) + 22) = *(src1 + (i * dim + 22)) * *(src2 + (i * dim + 22));
            *(dst + (i * dim) + 23) = *(src1 + (i * dim + 23)) * *(src2 + (i * dim + 23));
            *(dst + (i * dim) + 24) = *(src1 + (i * dim + 24)) * *(src2 + (i * dim + 24));
            *(dst + (i * dim) + 25) = *(src1 + (i * dim + 25)) * *(src2 + (i * dim + 25));
            *(dst + (i * dim) + 26) = *(src1 + (i * dim + 26)) * *(src2 + (i * dim + 26));
            *(dst + (i * dim) + 27) = *(src1 + (i * dim + 27)) * *(src2 + (i * dim + 27));
            *(dst + (i * dim) + 28) = *(src1 + (i * dim + 28)) * *(src2 + (i * dim + 28));
            *(dst + (i * dim) + 29) = *(src1 + (i * dim + 29)) * *(src2 + (i * dim + 29));
            *(dst + (i * dim) + 30) = *(src1 + (i * dim + 30)) * *(src2 + (i * dim + 30));
            *(dst + (i * dim) + 31) = *(src1 + (i * dim + 31)) * *(src2 + (i * dim + 31));

            *(dst + (i * dim) +32) = (*(src1 + (i * dim) +32)) * (*(src2 + (i * dim)+32));
            *(dst + (i * dim) + 33) = *(src1 + (i * dim + 33)) * *(src2 + (i * dim + 33));
            *(dst + (i * dim) + 34) = *(src1 + (i * dim + 34)) * *(src2 + (i * dim + 34));
            *(dst + (i * dim) + 35) = *(src1 + (i * dim + 35)) * *(src2 + (i * dim + 35));
            *(dst + (i * dim) + 36) = *(src1 + (i * dim + 36)) * *(src2 + (i * dim + 36));
            *(dst + (i * dim) + 37) = *(src1 + (i * dim + 37)) * *(src2 + (i * dim + 37));
            *(dst + (i * dim) + 38) = *(src1 + (i * dim + 38)) * *(src2 + (i * dim + 38));
            *(dst + (i * dim) + 39) = *(src1 + (i * dim + 39)) * *(src2 + (i * dim + 39));
            *(dst + (i * dim) + 40) = *(src1 + (i * dim + 40)) * *(src2 + (i * dim + 40));
            *(dst + (i * dim) + 41) = *(src1 + (i * dim + 41)) * *(src2 + (i * dim + 41));
            *(dst + (i * dim) + 42) = *(src1 + (i * dim + 42)) * *(src2 + (i * dim + 42));
            *(dst + (i * dim) + 43) = *(src1 + (i * dim + 43)) * *(src2 + (i * dim + 43));
            *(dst + (i * dim) + 44) = *(src1 + (i * dim + 44)) * *(src2 + (i * dim + 44));
            *(dst + (i * dim) + 45) = *(src1 + (i * dim + 45)) * *(src2 + (i * dim + 45));
            *(dst + (i * dim) + 46) = *(src1 + (i * dim + 46)) * *(src2 + (i * dim + 46));
            *(dst + (i * dim) + 47) = *(src1 + (i * dim + 47)) * *(src2 + (i * dim + 47));
            *(dst + (i * dim) + 48) = *(src1 + (i * dim + 48)) * *(src2 + (i * dim + 48));
            *(dst + (i * dim) + 49) = *(src1 + (i * dim + 49)) * *(src2 + (i * dim + 49));
            *(dst + (i * dim) + 50) = *(src1 + (i * dim + 50)) * *(src2 + (i * dim + 50));
            *(dst + (i * dim) + 51) = *(src1 + (i * dim + 51)) * *(src2 + (i * dim + 51));
            *(dst + (i * dim) + 52) = *(src1 + (i * dim + 52)) * *(src2 + (i * dim + 52));
            *(dst + (i * dim) + 53) = *(src1 + (i * dim + 53)) * *(src2 + (i * dim + 53));
            *(dst + (i * dim) + 54) = *(src1 + (i * dim + 54)) * *(src2 + (i * dim + 54));
            *(dst + (i * dim) + 55) = *(src1 + (i * dim + 55)) * *(src2 + (i * dim + 55));
            *(dst + (i * dim) + 56) = *(src1 + (i * dim + 56)) * *(src2 + (i * dim + 56));
            *(dst + (i * dim) + 57) = *(src1 + (i * dim + 57)) * *(src2 + (i * dim + 57));
            *(dst + (i * dim) + 58) = *(src1 + (i * dim + 58)) * *(src2 + (i * dim + 58));
            *(dst + (i * dim) + 59) = *(src1 + (i * dim + 59)) * *(src2 + (i * dim + 59));
            *(dst + (i * dim) + 60) = *(src1 + (i * dim + 60)) * *(src2 + (i * dim + 60));
            *(dst + (i * dim) + 61) = *(src1 + (i * dim + 61)) * *(src2 + (i * dim + 61));
            *(dst + (i * dim) + 62) = *(src1 + (i * dim + 62)) * *(src2 + (i * dim + 62));
            *(dst + (i * dim) + 63) = *(src1 + (i * dim + 63)) * *(src2 + (i * dim + 63));

            i = i + 1;
        }
    }
    else // all other zikkim
    {
        int i, j, z1, z2;

        
        int *result;
        int buZikkim;
        i = dim - 1;
        j = dim - 1;
        while (i >= 0)
        {
            z1 = i * dim;
            j = dim - 1;
            while (j >= 0)
            {
                z2 = z1 + j;
                ilkAdam = *(p1 + z2);
                ikinciAdam = *(p2 + z2);
                buZikkim = ilkAdam * ikinciAdam;
                result = &buZikkim;
                *(dst + z2) = *result;

                j = j - 1;
            }
            i = i - 1;
        }
    }
}

/*********************************************************************
 * register_hadamard_functions - Register all of your different versions
 *     of the hadamard kernel with the driver by calling the
 *     add_hadamard_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_hadamard_functions()
{
    add_hadamard_function(&naive_hadamard, naive_hadamard_descr);
    add_hadamard_function(&hadamard, hadamard_descr);
    /* ... Register additional test functions here */
}