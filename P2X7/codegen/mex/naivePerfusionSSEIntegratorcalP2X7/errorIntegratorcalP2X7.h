/*
 * errorIntegratorcalP2X7.h
 *
 * Code generation for function 'errorIntegratorcalP2X7'
 *
 * C source code generated on: Fri May 16 09:59:48 2014
 *
 */

#ifndef __ERRORINTEGRATORCALP2X7_H__
#define __ERRORINTEGRATORCALP2X7_H__
/* Include files */
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "mwmathutil.h"

#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "blas.h"
#include "rtwtypes.h"
#include "naivePerfusionSSEIntegratorcalP2X7_types.h"

/* Function Declarations */
extern real_T errorIntegratorcalP2X7(real_T ton, real_T toff, real_T Ttot, real_T amp, const real_T b_y0[24], const emxArray_real_T *T, const emxArray_real_T *I);
#ifdef __WATCOMC__
#pragma aux errorIntegratorcalP2X7 value [8087];
#endif
#endif
/* End of code generation (errorIntegratorcalP2X7.h) */
