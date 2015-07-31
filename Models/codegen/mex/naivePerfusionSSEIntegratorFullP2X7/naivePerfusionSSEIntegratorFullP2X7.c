/*
 * naivePerfusionSSEIntegratorFullP2X7.c
 *
 * Code generation for function 'naivePerfusionSSEIntegratorFullP2X7'
 *
 * C source code generated on: Wed Apr  9 15:07:54 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEIntegratorFullP2X7.h"
#include "naivePerfusionSSEIntegratorFullP2X7_data.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 7, "naivePerfusionSSEIntegratorFullP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEIntegratorFullP2X7.m"
};

static emlrtRSInfo b_emlrtRSI = { 3, "errorIntegratorFullP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorFullP2X7.m"
};

static emlrtRSInfo c_emlrtRSI = { 2, "getFDTimeStepFullP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/getFDTimeStepFullP2X7.m"
};

static emlrtBCInfo emlrtBCI = { -1, -1, 38, 10, "T", "errorIntegratorFullP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorFullP2X7.m",
  0 };

static emlrtRTEInfo b_emlrtRTEI = { 14, 2, "errorIntegratorFullP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorFullP2X7.m"
};

static emlrtBCInfo b_emlrtBCI = { -1, -1, 11, 13, "T", "errorIntegratorFullP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorFullP2X7.m",
  0 };

static emlrtBCInfo c_emlrtBCI = { -1, -1, 10, 17, "T", "errorIntegratorFullP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorFullP2X7.m",
  0 };

static emlrtBCInfo d_emlrtBCI = { -1, -1, 6, 14, "T", "errorIntegratorFullP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorFullP2X7.m",
  0 };

static emlrtBCInfo e_emlrtBCI = { -1, -1, 33, 18, "T", "errorIntegratorFullP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorFullP2X7.m",
  0 };

static emlrtBCInfo f_emlrtBCI = { -1, -1, 36, 88, "I", "errorIntegratorFullP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorFullP2X7.m",
  0 };

/* Function Definitions */
real_T naivePerfusionSSEIntegratorFullP2X7(real_T ton, real_T toff, real_T Ttot,
  real_T amp, const emxArray_real_T *T, const emxArray_real_T *I)
{
  real_T err;
  real_T naive[12];
  real_T r[28];
  int32_T ixstart;
  real_T t;
  int32_T ix;
  boolean_T exitg1;
  real_T dt;
  uint32_T i;
  real_T deltaTNext;
  real_T deltaT;
  real_T d0;
  int32_T j;
  int32_T b_t;
  int32_T c_t;
  real_T yup[12];
  real_T x;

  /* #codgen; */
  memset(&naive[0], 0, 12U * sizeof(real_T));
  naive[0] = 1.0;
  emlrtPushRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
  r[0] = 3.0 * k2 * amp;
  r[1] = k1;
  r[2] = 2.0 * k4 * amp;
  r[3] = H3;
  r[4] = k1;
  r[5] = 2.0 * k2 * amp;
  r[6] = 3.0 * k2 * amp;
  r[7] = L1;
  r[8] = 2.0 * k3;
  r[9] = k6 * amp;
  r[10] = H5;
  r[11] = 3.0 * k5;
  r[12] = L3;
  r[13] = H7;
  r[14] = 3.0 * k1;
  r[15] = L2;
  r[16] = 2.0 * k1;
  r[17] = k2 * amp;
  r[18] = 3.0 * k2 * amp;
  r[19] = H1;
  r[20] = k1;
  r[21] = 2.0 * k4 * amp;
  r[22] = H2;
  r[23] = 2.0 * k3;
  r[24] = H4;
  r[25] = k6 * amp;
  r[26] = 3.0 * k5;
  r[27] = H6;
  ixstart = 1;
  t = r[0];
  if (muDoubleScalarIsNaN(r[0])) {
    ix = 2;
    exitg1 = FALSE;
    while ((exitg1 == FALSE) && (ix < 29)) {
      ixstart = ix;
      if (!muDoubleScalarIsNaN(r[ix - 1])) {
        t = r[ix - 1];
        exitg1 = TRUE;
      } else {
        ix++;
      }
    }
  }

  if (ixstart < 28) {
    while (ixstart + 1 < 29) {
      if (r[ixstart] > t) {
        t = r[ixstart];
      }

      ixstart++;
    }
  }

  dt = 1.0 / (10.0 * t);
  emlrtPopRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  ixstart = T->size[0];
  ix = T->size[0];
  emlrtDynamicBoundsCheckFastR2012b(ix, 1, ixstart, &d_emlrtBCI,
    emlrtRootTLSGlobal);
  t = muDoubleScalarMin(Ttot, T->data[T->size[0] - 1]);
  i = 2U;
  ixstart = T->size[0];
  emlrtDynamicBoundsCheckFastR2012b(2, 1, ixstart, &c_emlrtBCI,
    emlrtRootTLSGlobal);
  deltaTNext = muDoubleScalarAbs(T->data[1] - dt);
  ixstart = T->size[0];
  emlrtDynamicBoundsCheckFastR2012b(2, 1, ixstart, &b_emlrtBCI,
    emlrtRootTLSGlobal);
  deltaT = muDoubleScalarAbs(T->data[1]);
  err = 0.0;
  d0 = t / dt - 1.0;
  emlrtForLoopVectorCheckR2012b(1.0, 1.0, t / dt - 1.0, mxDOUBLE_CLASS, (int32_T)
    d0, &b_emlrtRTEI, emlrtRootTLSGlobal);
  j = 0;
  while (j <= (int32_T)d0 - 1) {
    t = (1.0 + (real_T)j) * dt;
    if (t - ton < 0.0) {
      b_t = 0;
    } else {
      b_t = 1;
    }

    if (t - toff < 0.0) {
      c_t = 0;
    } else {
      c_t = 1;
    }

    t = amp * ((real_T)b_t - (real_T)c_t);
    yup[0] = (naive[0] + dt * ((k1 * naive[1] + L1 * naive[3]) + H1 * naive[8]))
      / (1.0 + dt * (3.0 * k2 * t));

    /* C1 */
    yup[1] = (naive[1] + dt * ((3.0 * k2 * t * naive[0] + 2.0 * k3 * naive[4]) +
               H2 * naive[9])) / (1.0 + dt * ((k1 + 2.0 * k4 * t) + H3));

    /* C2 */
    yup[2] = (naive[2] + dt * (3.0 * k2 * t * naive[3] + 2.0 * k1 * naive[7])) /
      (1.0 + dt * (k1 + 2.0 * k2 * t));

    /* C3 */
    yup[3] = (naive[3] + dt * (k1 * naive[2])) / (1.0 + dt * (3.0 * k2 * t + L1));

    /* C4 */
    yup[4] = (naive[4] + dt * ((2.0 * k4 * t * naive[1] + 3.0 * k5 * naive[5]) +
               H4 * naive[10])) / (1.0 + dt * ((2.0 * k3 + k6 * t) + H5));

    /* O1 */
    yup[5] = (naive[5] + dt * ((k6 * t * naive[4] + L2 * naive[6]) + H6 * naive
               [11])) / (1.0 + dt * ((3.0 * k5 + L3) + H7));

    /* O2 */
    yup[6] = (naive[6] + dt * (k2 * t * naive[7] + L3 * naive[5])) / (1.0 + dt *
      (3.0 * k1 + L2));

    /* O3 */
    yup[7] = (naive[7] + dt * (2.0 * k2 * t * naive[2] + 3.0 * k1 * naive[6])) /
      (1.0 + dt * (2.0 * k1 + k2 * t));

    /* O4 */
    yup[8] = (naive[8] + dt * (k1 * naive[9])) / (1.0 + dt * (3.0 * k2 * t + H1));

    /* D1 */
    yup[9] = (naive[9] + dt * ((3.0 * k2 * t * naive[8] + 2.0 * k3 * naive[10])
               + H3 * naive[1])) / (1.0 + dt * ((k1 + 2.0 * k4 * t) + H2));

    /* D2 */
    yup[10] = (naive[10] + dt * (2.0 * k4 * t * naive[9] + H5 * naive[4])) /
      (1.0 + dt * (2.0 * k3 + H4));

    /* D3 */
    yup[11] = (naive[11] + dt * ((3.0 * k5 * naive[11] + k6 * t * naive[11]) +
                H7 * naive[5])) / (1.0 + dt * ((k6 * t + 3.0 * k5) + H6));

    /* D4 */
    memcpy(&naive[0], &yup[0], 12U * sizeof(real_T));
    t = deltaT;
    deltaT = deltaTNext;
    ixstart = T->size[0];
    ix = (int32_T)i;
    x = T->data[emlrtDynamicBoundsCheckFastR2012b(ix, 1, ixstart, &e_emlrtBCI,
      emlrtRootTLSGlobal) - 1] - ((1.0 + (real_T)j) + 1.0) * dt;
    deltaTNext = muDoubleScalarAbs(x);
    if ((deltaT < deltaTNext) && (deltaT < t)) {
      ixstart = I->size[0];
      ix = (int32_T)i;
      x = 1.0E+12 * (g12 * (yup[4] + yup[5]) * (-0.06 - E12) + g34 * (yup[6] +
        yup[7]) * (-0.06 - E34)) - I->data[emlrtDynamicBoundsCheckFastR2012b(ix,
        1, ixstart, &f_emlrtBCI, emlrtRootTLSGlobal) - 1];
      t = muDoubleScalarAbs(x);
      err += t * t;
      i++;
      ixstart = T->size[0];
      ix = (int32_T)i;
      emlrtDynamicBoundsCheckFastR2012b(ix, 1, ixstart, &emlrtBCI,
        emlrtRootTLSGlobal);
    }

    j++;
    emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  return err;
}

/* End of code generation (naivePerfusionSSEIntegratorFullP2X7.c) */
