/*
 * naivePerfusionSSEcalP2X7_mexutil.h
 *
 * Code generation for function 'naivePerfusionSSEcalP2X7_mexutil'
 *
 * C source code generated on: Tue May 27 13:41:56 2014
 *
 */

#ifndef __NAIVEPERFUSIONSSECALP2X7_MEXUTIL_H__
#define __NAIVEPERFUSIONSSECALP2X7_MEXUTIL_H__
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
#include "naivePerfusionSSEcalP2X7_types.h"

/* Function Declarations */
extern const mxArray *b_emlrt_marshallOut(const real_T u[24]);
extern const mxArray *c_emlrt_marshallOut(real_T u);
extern const mxArray *d_emlrt_marshallOut(const real_T u[576]);
extern void e_emlrt_marshallIn(const mxArray *c_p0, const char_T *identifier, real_T y[24]);
extern void emlrt_checkEscapedGlobals(void);
extern void emlrt_synchGlobalsFromML(void);
extern void emlrt_synchGlobalsToML(void);
extern real_T g_emlrt_marshallIn(const mxArray *c_err, const char_T *identifier);
#ifdef __WATCOMC__
#pragma aux g_emlrt_marshallIn value [8087];
#endif
extern void i_emlrt_marshallIn(const mxArray *c_Q, const char_T *identifier, real_T y[576]);
#endif
/* End of code generation (naivePerfusionSSEcalP2X7_mexutil.h) */
