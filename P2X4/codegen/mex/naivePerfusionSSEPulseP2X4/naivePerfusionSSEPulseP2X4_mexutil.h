/*
 * naivePerfusionSSEPulseP2X4_mexutil.h
 *
 * Code generation for function 'naivePerfusionSSEPulseP2X4_mexutil'
 *
 * C source code generated on: Mon Jun 23 18:46:09 2014
 *
 */

#ifndef __NAIVEPERFUSIONSSEPULSEP2X4_MEXUTIL_H__
#define __NAIVEPERFUSIONSSEPULSEP2X4_MEXUTIL_H__
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
#include "naivePerfusionSSEPulseP2X4_types.h"

/* Function Declarations */
extern const mxArray *b_emlrt_marshallOut(const real_T u[9]);
extern real_T c_emlrt_marshallIn(const mxArray *Ttot, const char_T *identifier);
#ifdef __WATCOMC__
#pragma aux c_emlrt_marshallIn value [8087];
#endif
extern const mxArray *c_emlrt_marshallOut(real_T u);
extern const mxArray *d_emlrt_marshallOut(const real_T u[81]);
extern void emlrt_checkEscapedGlobals(void);
extern void emlrt_synchGlobalsFromML(void);
extern void emlrt_synchGlobalsToML(void);
extern void error(const mxArray *b, emlrtMCInfo *location);
extern void g_emlrt_marshallIn(const mxArray *c_p0, const char_T *identifier, real_T y[9]);
extern void i_emlrt_marshallIn(const mxArray *c_Q, const char_T *identifier, real_T y[81]);
#endif
/* End of code generation (naivePerfusionSSEPulseP2X4_mexutil.h) */
