/*
 * naivePerfusionSSEP2X4_mexutil.h
 *
 * Code generation for function 'naivePerfusionSSEP2X4_mexutil'
 *
 * C source code generated on: Tue May 20 14:16:12 2014
 *
 */

#ifndef __NAIVEPERFUSIONSSEP2X4_MEXUTIL_H__
#define __NAIVEPERFUSIONSSEP2X4_MEXUTIL_H__
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
#include "naivePerfusionSSEP2X4_types.h"

/* Function Declarations */
extern const mxArray *b_emlrt_marshallOut(real_T u);
extern void emlrt_checkEscapedGlobals(void);
extern real_T emlrt_marshallIn(const mxArray *ton, const char_T *identifier);
#ifdef __WATCOMC__
#pragma aux emlrt_marshallIn value [8087];
#endif
extern void emlrt_synchGlobalsFromML(void);
extern void emlrt_synchGlobalsToML(void);
extern void error(const mxArray *b, emlrtMCInfo *location);
#endif
/* End of code generation (naivePerfusionSSEP2X4_mexutil.h) */
