/*
 * naivePerfusionResponsecalP2X7_terminate.c
 *
 * Code generation for function 'naivePerfusionResponsecalP2X7_terminate'
 *
 * C source code generated on: Tue May 27 13:39:04 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionResponsecalP2X7.h"
#include "naivePerfusionResponsecalP2X7_terminate.h"
#include "naivePerfusionResponsecalP2X7_emxutil.h"
#include "naivePerfusionResponsecalP2X7_data.h"

/* Function Definitions */
void naivePerfusionResponsecalP2X7_atexit(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emxFree_real_T(&Tsoln);
  emxFree_real_T(&I);
  emxFree_real_T(&Y);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void naivePerfusionResponsecalP2X7_terminate(void)
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionResponsecalP2X7_terminate.c) */
