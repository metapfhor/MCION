/*
 * naivePerfusionSSEIntegratorFullP2X7_mexutil.h
 *
 * Code generation for function 'naivePerfusionSSEIntegratorFullP2X7_mexutil'
 *
 * C source code generated on: Wed Apr  9 15:07:54 2014
 *
 */

#ifndef __NAIVEPERFUSIONSSEINTEGRATORFULLP2X7_MEXUTIL_H__
#define __NAIVEPERFUSIONSSEINTEGRATORFULLP2X7_MEXUTIL_H__
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
#include "naivePerfusionSSEIntegratorFullP2X7_types.h"

/* Function Declarations */
extern void emlrt_checkEscapedGlobals(void);
extern real_T emlrt_marshallIn(const mxArray *ton, const char_T *identifier);
#ifdef __WATCOMC__
#pragma aux emlrt_marshallIn value [8087];
#endif
extern const mxArray *emlrt_marshallOut(real_T u);
extern void emlrt_synchGlobalsFromML(void);
extern void emlrt_synchGlobalsToML(void);
#endif
/* End of code generation (naivePerfusionSSEIntegratorFullP2X7_mexutil.h) */
