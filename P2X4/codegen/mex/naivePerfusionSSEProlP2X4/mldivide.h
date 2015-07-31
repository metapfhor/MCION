/*
 * mldivide.h
 *
 * Code generation for function 'mldivide'
 *
 * C source code generated on: Mon Jun 23 18:45:45 2014
 *
 */

#ifndef __MLDIVIDE_H__
#define __MLDIVIDE_H__
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
#include "naivePerfusionSSEProlP2X4_types.h"

/* Function Declarations */
extern void check_forloop_overflow_error(void);
extern void mldivide(const real_T c_A[81], real_T B[81]);
#endif
/* End of code generation (mldivide.h) */
