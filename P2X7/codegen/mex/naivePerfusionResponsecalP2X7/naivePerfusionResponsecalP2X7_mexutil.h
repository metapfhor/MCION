/*
 * naivePerfusionResponsecalP2X7_mexutil.h
 *
 * Code generation for function 'naivePerfusionResponsecalP2X7_mexutil'
 *
 * C source code generated on: Tue May 27 13:39:04 2014
 *
 */

#ifndef __NAIVEPERFUSIONRESPONSECALP2X7_MEXUTIL_H__
#define __NAIVEPERFUSIONRESPONSECALP2X7_MEXUTIL_H__
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
extern const mxArray *b_emlrt_marshallOut(emxArray_real_T *u);
extern real_T c_emlrt_marshallIn(const mxArray *Ttot, const char_T *identifier);
#ifdef __WATCOMC__
#pragma aux c_emlrt_marshallIn value [8087];
#endif
extern const mxArray *c_emlrt_marshallOut(emxArray_real_T *u);
extern const mxArray *d_emlrt_marshallOut(const real_T u[24]);
extern void e_emlrt_marshallIn(const mxArray *c_Tsoln, const char_T *identifier, emxArray_real_T *y);
extern const mxArray *e_emlrt_marshallOut(real_T u);
extern void emlrt_checkEscapedGlobals(void);
extern void emlrt_synchGlobalsFromML(void);
extern void emlrt_synchGlobalsToML(void);
extern void error(const mxArray *b, emlrtMCInfo *location);
extern const mxArray *f_emlrt_marshallOut(const real_T u[576]);
extern void g_emlrt_marshallIn(const mxArray *c_Y, const char_T *identifier, emxArray_real_T *y);
extern void i_emlrt_marshallIn(const mxArray *c_p0, const char_T *identifier, real_T y[24]);
extern void k_emlrt_marshallIn(const mxArray *c_Q, const char_T *identifier, real_T y[576]);
extern const mxArray *message(const mxArray *b, emlrtMCInfo *location);
#endif
/* End of code generation (naivePerfusionResponsecalP2X7_mexutil.h) */
