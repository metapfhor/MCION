/*
 * naivePerfusionResponsecalP2X7.h
 *
 * Code generation for function 'naivePerfusionResponsecalP2X7'
 *
 * C source code generated on: Tue May 27 13:39:04 2014
 *
 */

#ifndef __NAIVEPERFUSIONRESPONSECALP2X7_H__
#define __NAIVEPERFUSIONRESPONSECALP2X7_H__
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
extern void check_forloop_overflow_error(void);
extern void naivePerfusionResponsecalP2X7(const emxArray_real_T *ton, const emxArray_real_T *toff, real_T Ttot, const emxArray_real_T *T, emxArray_real_T *Tout, emxArray_real_T *Isoln, emxArray_real_T *Ysoln);
#endif
/* End of code generation (naivePerfusionResponsecalP2X7.h) */
