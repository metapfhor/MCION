/*
 * naivePerfusionSSEIntegratorcalP2X7.c
 *
 * Code generation for function 'naivePerfusionSSEIntegratorcalP2X7'
 *
 * C source code generated on: Fri May 16 09:59:48 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEIntegratorcalP2X7.h"
#include "errorIntegratorcalP2X7.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 7, "naivePerfusionSSEIntegratorcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEIntegratorcalP2X7.m"
};

/* Function Definitions */
real_T naivePerfusionSSEIntegratorcalP2X7(real_T ton, real_T toff, real_T Ttot,
  real_T amp, const emxArray_real_T *T, const emxArray_real_T *I)
{
  real_T err;
  real_T naive[24];

  /* #codgen; */
  memset(&naive[0], 0, 24U * sizeof(real_T));
  naive[0] = 1.0;
  emlrtPushRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  err = errorIntegratorcalP2X7(ton, toff, Ttot, amp, naive, T, I);
  emlrtPopRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  return err;
}

/* End of code generation (naivePerfusionSSEIntegratorcalP2X7.c) */
