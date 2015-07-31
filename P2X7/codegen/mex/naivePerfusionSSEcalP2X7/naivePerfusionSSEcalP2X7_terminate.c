/*
 * naivePerfusionSSEcalP2X7_terminate.c
 *
 * Code generation for function 'naivePerfusionSSEcalP2X7_terminate'
 *
 * C source code generated on: Tue May 27 13:41:56 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEcalP2X7.h"
#include "naivePerfusionSSEcalP2X7_terminate.h"

/* Function Definitions */
void naivePerfusionSSEcalP2X7_atexit(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void naivePerfusionSSEcalP2X7_terminate(void)
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionSSEcalP2X7_terminate.c) */
