/*
 * naivePerfusionSSEP2X4Pulse_mexutil.h
 *
 * Code generation for function 'naivePerfusionSSEP2X4Pulse_mexutil'
 *
 * C source code generated on: Wed Jun  4 10:08:42 2014
 *
 */

#ifndef __NAIVEPERFUSIONSSEP2X4PULSE_MEXUTIL_H__
#define __NAIVEPERFUSIONSSEP2X4PULSE_MEXUTIL_H__
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
#include "naivePerfusionSSEP2X4Pulse_types.h"

/* Function Declarations */
extern const mxArray *b_emlrt_marshallOut(const real_T u[17]);
extern real_T c_emlrt_marshallIn(const mxArray *Ttot, const char_T *identifier);
#ifdef __WATCOMC__
#pragma aux c_emlrt_marshallIn value [8087];
#endif
extern const mxArray *c_emlrt_marshallOut(real_T u);
extern const mxArray *d_emlrt_marshallOut(const real_T u[289]);
extern void emlrt_checkEscapedGlobals(void);
extern void emlrt_synchGlobalsFromML(void);
extern void emlrt_synchGlobalsToML(void);
extern void error(const mxArray *b, emlrtMCInfo *location);
extern void g_emlrt_marshallIn(const mxArray *c_p0, const char_T *identifier, real_T y[17]);
extern void i_emlrt_marshallIn(const mxArray *c_Q, const char_T *identifier, real_T y[289]);
#endif
/* End of code generation (naivePerfusionSSEP2X4Pulse_mexutil.h) */
