/*
 * errorIntegratorcalP2X7.c
 *
 * Code generation for function 'errorIntegratorcalP2X7'
 *
 * C source code generated on: Fri May 16 09:59:48 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEIntegratorcalP2X7.h"
#include "errorIntegratorcalP2X7.h"
#include "naivePerfusionSSEIntegratorcalP2X7_data.h"

/* Variable Definitions */
static emlrtRSInfo b_emlrtRSI = { 3, "errorIntegratorcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m"
};

static emlrtRSInfo c_emlrtRSI = { 2, "getFDTimeStepcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/getFDTimeStepcalP2X7.m"
};

static emlrtBCInfo emlrtBCI = { -1, -1, 50, 10, "T", "errorIntegratorcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m",
  0 };

static emlrtRTEInfo b_emlrtRTEI = { 14, 2, "errorIntegratorcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m"
};

static emlrtBCInfo b_emlrtBCI = { -1, -1, 11, 13, "T", "errorIntegratorcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m",
  0 };

static emlrtBCInfo c_emlrtBCI = { -1, -1, 10, 17, "T", "errorIntegratorcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m",
  0 };

static emlrtBCInfo d_emlrtBCI = { -1, -1, 6, 14, "T", "errorIntegratorcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m",
  0 };

static emlrtBCInfo e_emlrtBCI = { -1, -1, 45, 18, "T", "errorIntegratorcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m",
  0 };

static emlrtBCInfo f_emlrtBCI = { -1, -1, 48, 134, "I", "errorIntegratorcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m",
  0 };

/* Function Definitions */
real_T errorIntegratorcalP2X7(real_T ton, real_T toff, real_T Ttot, real_T amp,
  const real_T b_y0[24], const emxArray_real_T *T, const emxArray_real_T *I)
{
  real_T err;
  real_T rates[80];
  int32_T ixstart;
  real_T t;
  int32_T ix;
  boolean_T exitg1;
  real_T dt;
  real_T ycurr[24];
  uint32_T i;
  real_T deltaTNext;
  real_T deltaT;
  real_T d0;
  int32_T j;
  int32_T b_t;
  int32_T c_t;
  real_T yup[24];
  real_T x;
  emlrtPushRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
  rates[0] = kca * C;
  rates[1] = 3.0 * k2 * amp;
  rates[2] = kca * C;
  rates[3] = k1;
  rates[4] = 2.0 * k4 * amp;
  rates[5] = H3;
  rates[6] = kca * C;
  rates[7] = k1;
  rates[8] = 2.0 * k2 * amp;
  rates[9] = kca * C;
  rates[10] = 3.0 * k2 * amp;
  rates[11] = L1;
  rates[12] = kca * C;
  rates[13] = 2.0 * k3;
  rates[14] = k6 * amp;
  rates[15] = H5;
  rates[16] = kca * C;
  rates[17] = 3.0 * k5;
  rates[18] = L3;
  rates[19] = H7;
  rates[20] = kca * C;
  rates[21] = 3.0 * k1;
  rates[22] = L2;
  rates[23] = kca * C;
  rates[24] = 2.0 * k1;
  rates[25] = k2 * amp;
  rates[26] = kca * C;
  rates[27] = 3.0 * k2 * amp;
  rates[28] = H1;
  rates[29] = kca * C;
  rates[30] = k1;
  rates[31] = 2.0 * k4 * amp;
  rates[32] = H2;
  rates[33] = kca * C;
  rates[34] = 2.0 * k3;
  rates[35] = k6 * amp;
  rates[36] = H4;
  rates[37] = kca * C;
  rates[38] = 3.0 * k5;
  rates[39] = H6;
  rates[40] = koff;
  rates[41] = 3.0 * k2 * r * amp;
  rates[42] = koff;
  rates[43] = k1 / r;
  rates[44] = 2.0 * k4 * r * amp;
  rates[45] = H3;
  rates[46] = koff;
  rates[47] = 2.0 * k3 / r;
  rates[48] = k6 * r * amp;
  rates[49] = H5;
  rates[50] = koff;
  rates[51] = 3.0 * k5 / r;
  rates[52] = L3;
  rates[53] = H7;
  rates[54] = koff;
  rates[55] = 3.0 * k2 * r * amp;
  rates[56] = H1;
  rates[57] = koff;
  rates[58] = k1 / r;
  rates[59] = 2.0 * k4 * r * amp;
  rates[60] = H2;
  rates[61] = koff;
  rates[62] = 2.0 * k3 / r;
  rates[63] = k6 * r * amp;
  rates[64] = H4;
  rates[65] = koff;
  rates[66] = 3.0 * k5 / r;
  rates[67] = H6;
  rates[68] = koff;
  rates[69] = 3.0 * k2 * r * amp;
  rates[70] = L1;
  rates[71] = koff;
  rates[72] = k1 / r;
  rates[73] = 2.0 * k2 * r * amp;
  rates[74] = koff;
  rates[75] = 2.0 * k1 / r;
  rates[76] = k2 * r * amp;
  rates[77] = koff;
  rates[78] = 3.0 * k1 / r;
  rates[79] = L2;
  ixstart = 1;
  t = rates[0];
  if (muDoubleScalarIsNaN(rates[0])) {
    ix = 2;
    exitg1 = FALSE;
    while ((exitg1 == FALSE) && (ix < 81)) {
      ixstart = ix;
      if (!muDoubleScalarIsNaN(rates[ix - 1])) {
        t = rates[ix - 1];
        exitg1 = TRUE;
      } else {
        ix++;
      }
    }
  }

  if (ixstart < 80) {
    while (ixstart + 1 < 81) {
      if (rates[ixstart] > t) {
        t = rates[ixstart];
      }

      ixstart++;
    }
  }

  emlrtPopRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
  dt = muDoubleScalarMin(muDoubleScalarMax(1.0 / (10.0 * t),
    9.9999999999999991E-6), 0.1);
  emlrtPopRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  ixstart = T->size[0];
  ix = T->size[0];
  emlrtDynamicBoundsCheckFastR2012b(ix, 1, ixstart, &d_emlrtBCI,
    emlrtRootTLSGlobal);
  t = muDoubleScalarMin(Ttot, T->data[T->size[0] - 1]);
  memcpy(&ycurr[0], &b_y0[0], 24U * sizeof(real_T));
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
    yup[0] = (ycurr[0] + dt * (((koff * ycurr[12] + k1 * ycurr[1]) + L1 * ycurr
                [3]) + H1 * ycurr[8])) / (1.0 + dt * (kca * C + 3.0 * k2 * t));

    /* C1 */
    yup[1] = (ycurr[1] + dt * (((koff * ycurr[13] + 3.0 * k2 * t * ycurr[0]) +
                2.0 * k3 * ycurr[4]) + H2 * ycurr[9])) / (1.0 + dt * (((kca * C
      + k1) + 2.0 * k4 * t) + H3));

    /* C2 */
    yup[2] = (ycurr[2] + dt * ((koff * ycurr[21] + 3.0 * k2 * t * ycurr[3]) +
               2.0 * k1 * ycurr[7])) / (1.0 + dt * ((kca * C + k1) + 2.0 * k2 *
      t));

    /* C3 */
    yup[3] = (ycurr[3] + dt * (koff * ycurr[20] + k1 * ycurr[2])) / (1.0 + dt *
      ((kca * C + 3.0 * k2 * t) + L1));

    /* C4 */
    yup[4] = (ycurr[4] + dt * (((koff * ycurr[14] + 2.0 * k4 * t * ycurr[1]) +
                3.0 * k5 * ycurr[5]) + H4 * ycurr[10])) / (1.0 + dt * (((kca * C
      + 2.0 * k3) + k6 * t) + H5));

    /* O1 */
    yup[5] = (ycurr[5] + dt * (((koff * ycurr[15] + k6 * t * ycurr[4]) + L2 *
                ycurr[6]) + H6 * ycurr[11])) / (1.0 + dt * (((kca * C + 3.0 * k5)
      + L3) + H7));

    /* O2 */
    yup[6] = (ycurr[6] + dt * ((koff * ycurr[23] + k2 * t * ycurr[7]) + L3 *
               ycurr[5])) / (1.0 + dt * ((kca * C + 3.0 * k1) + L2));

    /* O3 */
    yup[7] = (ycurr[7] + dt * ((koff * ycurr[22] + 2.0 * k2 * t * ycurr[2]) +
               3.0 * k1 * ycurr[6])) / (1.0 + dt * ((kca * C + 2.0 * k1) + k2 *
      t));

    /* O4 */
    yup[8] = (ycurr[8] + dt * (koff * ycurr[16] + k1 * ycurr[9])) / (1.0 + dt *
      ((kca * C + 3.0 * k2 * t) + H1));

    /* D1 */
    yup[9] = (ycurr[9] + dt * (((koff * ycurr[17] + 3.0 * k2 * t * ycurr[8]) +
                2.0 * k3 * ycurr[10]) + H3 * ycurr[1])) / (1.0 + dt * (((kca * C
      + k1) + 2.0 * k4 * t) + H2));

    /* D2 */
    yup[10] = (ycurr[10] + dt * (((koff * ycurr[18] + 2.0 * k4 * t * ycurr[9]) +
      3.0 * k5 * ycurr[11]) + H5 * ycurr[4])) / (1.0 + dt * (((kca * C + 2.0 *
      k3) + k6 * t) + H4));

    /* D3 */
    yup[11] = (ycurr[11] + dt * ((koff * ycurr[19] + k6 * t * ycurr[10]) + H7 *
                ycurr[5])) / (1.0 + dt * ((kca * C + 3.0 * k5) + H6));

    /* D4 */
    yup[12] = (ycurr[12] + dt * (((kca * C * ycurr[0] + k1 / r * ycurr[13]) + L1
      * ycurr[20]) + H1 * ycurr[16])) / (1.0 + dt * (koff + 3.0 * k2 * r * t));

    /* C1ca */
    yup[13] = (ycurr[13] + dt * (((kca * C * ycurr[1] + 3.0 * k2 * r * t *
      ycurr[12]) + 2.0 * k3 / r * ycurr[14]) + H2 * ycurr[17])) / (1.0 + dt *
      (((koff + k1 / r) + 2.0 * k4 * r * t) + H3));

    /* C2ca */
    yup[14] = (ycurr[14] + dt * (((kca * C * ycurr[4] + 2.0 * k4 * r * t *
      ycurr[13]) + 3.0 * k5 / r * ycurr[15]) + H4 * ycurr[18])) / (1.0 + dt *
      (((koff + 2.0 * k3 / r) + k6 * r * t) + H5));

    /* O1ca */
    yup[15] = (ycurr[15] + dt * (((kca * C * ycurr[5] + k6 * r * t * ycurr[14])
      + L2 * ycurr[23]) + H6 * ycurr[19])) / (1.0 + dt * (((koff + 3.0 * k5 / r)
      + L3) + H7));

    /* O2ca */
    yup[16] = (ycurr[16] + dt * (kca * C * ycurr[8] + k1 / r * ycurr[17])) /
      (1.0 + dt * ((koff + 3.0 * k2 * r * t) + H1));

    /* D1ca */
    yup[17] = (ycurr[17] + dt * (((kca * C * ycurr[9] + 3.0 * k2 * r * t *
      ycurr[16]) + 2.0 * k3 / r * ycurr[18]) + H3 * ycurr[13])) / (1.0 + dt *
      (((koff + k1 / r) + 2.0 * k4 * r * t) + H2));

    /* D2ca */
    yup[18] = (ycurr[18] + dt * (((kca * C * ycurr[10] + 2.0 * k4 * r * t *
      ycurr[17]) + 3.0 * k5 / r * ycurr[19]) + H5 * ycurr[14])) / (1.0 + dt *
      (((koff + 2.0 * k3 / r) + k6 * r * t) + H4));

    /* D3ca */
    yup[19] = (ycurr[19] + dt * ((kca * C * ycurr[11] + k6 * r * t * ycurr[18])
                + H7 * ycurr[15])) / (1.0 + dt * ((koff + 3.0 * k5 / r) + H6));

    /* D4ca */
    yup[20] = (ycurr[20] + dt * (kca * C * ycurr[3] + k1 / r * ycurr[21])) /
      (1.0 + dt * ((koff + 3.0 * k2 * r * t) + L1));

    /* C4ca */
    yup[21] = (ycurr[21] + dt * ((kca * C * ycurr[2] + 3.0 * k2 * r * t * ycurr
      [20]) + 2.0 * k1 / r * ycurr[22])) / (1.0 + dt * ((koff + k1 / r) + 2.0 *
      k2 * r * t));

    /* C3ca */
    yup[22] = (ycurr[22] + dt * ((kca * C * ycurr[7] + 2.0 * k2 * r * t * ycurr
      [21]) + 3.0 * k1 / r * ycurr[23])) / (1.0 + dt * ((koff + 2.0 * k1 / r) +
      k2 * r * t));

    /* O4ca */
    yup[23] = (ycurr[23] + dt * ((kca * C * ycurr[6] + k2 * r * t * ycurr[22]) +
                L3 * ycurr[15])) / (1.0 + dt * ((koff + 3.0 * k1 / r) + L2));

    /* O3ca */
    memcpy(&ycurr[0], &yup[0], 24U * sizeof(real_T));
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
      x = Acell * 1.0E+12 * (g12 * (((yup[4] + yup[5]) + yup[14]) + yup[15]) * (
        -0.06 - E12) + g34 * (((yup[6] + yup[7]) + yup[23]) + yup[22]) * (-0.06
        - E34)) - I->data[emlrtDynamicBoundsCheckFastR2012b(ix, 1, ixstart,
        &f_emlrtBCI, emlrtRootTLSGlobal) - 1];
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

  return err;
}

/* End of code generation (errorIntegratorcalP2X7.c) */
