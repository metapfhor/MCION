/*
 * naivePerfusionSSEPulseP2X4_terminate.c
 *
 * Code generation for function 'naivePerfusionSSEPulseP2X4_terminate'
 *
 * C source code generated on: Mon Jun 23 18:46:09 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEPulseP2X4.h"
#include "naivePerfusionSSEPulseP2X4_terminate.h"

/* Function Definitions */
void naivePerfusionSSEPulseP2X4_atexit(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void naivePerfusionSSEPulseP2X4_terminate(void)
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionSSEPulseP2X4_terminate.c) */
