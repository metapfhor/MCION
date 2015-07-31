/*
 * naivePerfusionSSEIntegratorcalP2X7_terminate.c
 *
 * Code generation for function 'naivePerfusionSSEIntegratorcalP2X7_terminate'
 *
 * C source code generated on: Fri May 16 09:59:48 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEIntegratorcalP2X7.h"
#include "naivePerfusionSSEIntegratorcalP2X7_terminate.h"

/* Function Definitions */
void naivePerfusionSSEIntegratorcalP2X7_atexit(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void naivePerfusionSSEIntegratorcalP2X7_terminate(void)
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionSSEIntegratorcalP2X7_terminate.c) */
