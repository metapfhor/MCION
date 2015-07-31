/*
 * naivePerfusionSSEIntegratorFullP2X7_terminate.c
 *
 * Code generation for function 'naivePerfusionSSEIntegratorFullP2X7_terminate'
 *
 * C source code generated on: Wed Apr  9 15:07:54 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEIntegratorFullP2X7.h"
#include "naivePerfusionSSEIntegratorFullP2X7_terminate.h"

/* Function Definitions */
void naivePerfusionSSEIntegratorFullP2X7_atexit(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

void naivePerfusionSSEIntegratorFullP2X7_terminate(void)
{
  emlrtLeaveRtStackR2012b(emlrtRootTLSGlobal);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionSSEIntegratorFullP2X7_terminate.c) */
