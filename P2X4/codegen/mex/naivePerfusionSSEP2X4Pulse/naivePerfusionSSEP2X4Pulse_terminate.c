/*
 * naivePerfusionSSEP2X4Pulse_terminate.c
 *
 * Code generation for function 'naivePerfusionSSEP2X4Pulse_terminate'
 *
 * C source code generated on: Wed Jun  4 10:08:42 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4Pulse.h"
#include "naivePerfusionSSEP2X4Pulse_terminate.h"

/* Function Definitions */
void naivePerfusionSSEP2X4Pulse_atexit(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void naivePerfusionSSEP2X4Pulse_terminate(void)
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionSSEP2X4Pulse_terminate.c) */
