/*
 * naivePerfusionResponsecalP2X7_emxutil.h
 *
 * Code generation for function 'naivePerfusionResponsecalP2X7_emxutil'
 *
 * C source code generated on: Tue May 27 13:39:04 2014
 *
 */

#ifndef __NAIVEPERFUSIONRESPONSECALP2X7_EMXUTIL_H__
#define __NAIVEPERFUSIONRESPONSECALP2X7_EMXUTIL_H__
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
#include "naivePerfusionResponsecalP2X7_types.h"

/* Function Declarations */
extern void b_emxInit_real_T(emxArray_real_T **pEmxArray, int32_T b_numDimensions, const emlrtRTEInfo *srcLocation, boolean_T doPush);
extern void emxEnsureCapacity(emxArray__common *emxArray, int32_T oldNumel, int32_T elementSize, const emlrtRTEInfo *srcLocation);
extern void emxFree_boolean_T(emxArray_boolean_T **pEmxArray);
extern void emxFree_int32_T(emxArray_int32_T **pEmxArray);
extern void emxFree_real_T(emxArray_real_T **pEmxArray);
extern void emxInit_boolean_T(emxArray_boolean_T **pEmxArray, int32_T b_numDimensions, const emlrtRTEInfo *srcLocation, boolean_T doPush);
extern void emxInit_int32_T(emxArray_int32_T **pEmxArray, int32_T b_numDimensions, const emlrtRTEInfo *srcLocation, boolean_T doPush);
extern void emxInit_real_T(emxArray_real_T **pEmxArray, int32_T b_numDimensions, const emlrtRTEInfo *srcLocation, boolean_T doPush);
#endif
/* End of code generation (naivePerfusionResponsecalP2X7_emxutil.h) */
