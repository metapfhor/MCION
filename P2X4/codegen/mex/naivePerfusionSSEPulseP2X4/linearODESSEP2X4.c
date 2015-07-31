/*
 * linearODESSEP2X4.c
 *
 * Code generation for function 'linearODESSEP2X4'
 *
 * C source code generated on: Mon Jun 23 18:46:09 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEPulseP2X4.h"
#include "linearODESSEP2X4.h"
#include "expm.h"
#include "naivePerfusionSSEPulseP2X4_mexutil.h"
#include "naivePerfusionSSEPulseP2X4_data.h"

/* Variable Definitions */
static emlrtRSInfo db_emlrtRSI = { 5, "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m"
};

static emlrtRSInfo eb_emlrtRSI = { 10, "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m"
};

static emlrtRSInfo fb_emlrtRSI = { 52, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo gb_emlrtRSI = { 62, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo hb_emlrtRSI = { 64, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtBCInfo bd_emlrtBCI = { -1, -1, 10, 16, "T", "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m",
  0 };

static emlrtRTEInfo k_emlrtRTEI = { 63, 5, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtBCInfo cd_emlrtBCI = { -1, -1, 11, 71, "I", "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m",
  0 };

/* Function Definitions */
void linearODESSEP2X4(const emxArray_real_T *T, const emxArray_real_T *I)
{
  int32_T i;
  real_T hoistedGlobal[9];
  int32_T j;
  int32_T b_i;
  real_T normA;
  real_T y[81];
  real_T F[81];
  boolean_T exitg2;
  real_T s;
  boolean_T exitg1;
  static const real_T theta[5] = { 0.01495585217958292, 0.253939833006323,
    0.95041789961629319, 2.097847961257068, 5.3719203511481517 };

  static const int8_T iv2[5] = { 3, 5, 7, 9, 13 };

  int32_T eint;
  real_T b_y[81];
  real_T beta1;
  char_T TRANSB;
  char_T TRANSA;
  ptrdiff_t m_t;
  ptrdiff_t n_t;
  ptrdiff_t k_t;
  ptrdiff_t lda_t;
  ptrdiff_t ldb_t;
  ptrdiff_t ldc_t;
  double * alpha1_t;
  double * Aia0_t;
  double * Bib0_t;
  double * beta1_t;
  double * Cic0_t;
  emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);

  /* global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 L1 L2 L3 L4 H1 H2 H3 H4 g1 g2 E1 E2 alpha A J Q; */
  /* Right */
  /* [C1,C2,C3,Q1,Q2,Q3,D1,D2,Z] */
  Q[0] = -k2 * A - L2 * J;
  Q[9] = L2 * J;
  Q[18] = 0.0;
  Q[27] = k2 * A;
  Q[36] = 0.0;
  Q[45] = 0.0;
  Q[54] = 0.0;
  Q[63] = 0.0;
  Q[72] = 0.0;
  Q[1] = L1;
  Q[10] = (-k4 * A - L1) - L4 * J;
  Q[19] = L4 * J;
  Q[28] = 0.0;
  Q[37] = k4 * A;
  Q[46] = 0.0;
  Q[55] = 0.0;
  Q[64] = 0.0;
  Q[73] = 0.0;
  Q[2] = 0.0;
  Q[11] = L3;
  Q[20] = -k6 * A - L3;
  Q[29] = 0.0;
  Q[38] = 0.0;
  Q[47] = k6 * A;
  Q[56] = 0.0;
  Q[65] = 0.0;
  Q[74] = 0.0;
  Q[3] = k1;
  Q[12] = 0.0;
  Q[21] = 0.0;
  Q[30] = (-k1 - L2 * J) - H2;
  Q[39] = L2 * J;
  Q[48] = 0.0;
  Q[57] = 0.0;
  Q[66] = H2;
  Q[75] = 0.0;
  Q[4] = 0.0;
  Q[13] = k3;
  Q[22] = 0.0;
  Q[31] = L1;
  Q[40] = (-k3 - L1) - L4 * J;
  Q[49] = L4 * J;
  Q[58] = 0.0;
  Q[67] = 0.0;
  Q[76] = 0.0;
  Q[5] = 0.0;
  Q[14] = 0.0;
  Q[23] = k5;
  Q[32] = 0.0;
  Q[41] = L3;
  Q[50] = -k5 - L3;
  Q[59] = 0.0;
  Q[68] = 0.0;
  Q[77] = 0.0;
  Q[6] = H1;
  Q[15] = 0.0;
  Q[24] = 0.0;
  Q[33] = 0.0;
  Q[42] = 0.0;
  Q[51] = 0.0;
  Q[60] = -k2 * A - H1;
  Q[69] = k2 * A;
  Q[78] = 0.0;
  Q[7] = 0.0;
  Q[16] = 0.0;
  Q[25] = 0.0;
  Q[34] = 0.0;
  Q[43] = 0.0;
  Q[52] = 0.0;
  Q[61] = k1;
  Q[70] = -k1 - H3;
  Q[79] = H3;
  Q[8] = H4;
  Q[17] = 0.0;
  Q[26] = 0.0;
  Q[35] = 0.0;
  Q[44] = 0.0;
  Q[53] = 0.0;
  Q[62] = 0.0;
  Q[71] = 0.0;
  Q[80] = -H4;
  Q_dirty |= 1U;
  emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
  i = 0;
  while (i <= T->size[0] - 1) {
    emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    memcpy(&hoistedGlobal[0], &p0[0], 9U * sizeof(real_T));
    j = T->size[0];
    b_i = (int32_T)(1.0 + (real_T)i);
    emlrtDynamicBoundsCheckFastR2012b(b_i, 1, j, &bd_emlrtBCI,
      emlrtRootTLSGlobal);
    normA = T->data[i];
    for (j = 0; j < 81; j++) {
      y[j] = Q[j] * normA;
    }

    normA = 0.0;
    j = 0;
    exitg2 = FALSE;
    while ((exitg2 == FALSE) && (j < 9)) {
      s = 0.0;
      for (b_i = 0; b_i < 9; b_i++) {
        s += muDoubleScalarAbs(y[b_i + 9 * j]);
      }

      if (muDoubleScalarIsNaN(s)) {
        normA = rtNaN;
        exitg2 = TRUE;
      } else {
        if (s > normA) {
          normA = s;
        }

        j++;
      }
    }

    if (normA <= 5.3719203511481517) {
      b_i = 0;
      exitg1 = FALSE;
      while ((exitg1 == FALSE) && (b_i < 5)) {
        if (normA <= theta[b_i]) {
          emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
          PadeApproximantOfDegree(y, iv2[b_i], F);
          emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
          exitg1 = TRUE;
        } else {
          b_i++;
        }
      }
    } else {
      normA /= 5.3719203511481517;
      if ((!muDoubleScalarIsInf(normA)) && (!muDoubleScalarIsNaN(normA))) {
        normA = frexp(normA, &eint);
        j = eint;
      } else {
        j = 0;
      }

      s = j;
      if (normA == 0.5) {
        s = (real_T)j - 1.0;
      }

      normA = muDoubleScalarPower(2.0, s);
      emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
      for (j = 0; j < 81; j++) {
        b_y[j] = y[j] / normA;
      }

      PadeApproximantOfDegree(b_y, 13.0, F);
      emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtForLoopVectorCheckR2012b(1.0, 1.0, s, mxDOUBLE_CLASS, (int32_T)s,
        &k_emlrtRTEI, emlrtRootTLSGlobal);
      for (j = 0; j < (int32_T)s; j++) {
        emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        memcpy(&y[0], &F[0], 81U * sizeof(real_T));
        emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        normA = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&F[0], 0, 81U * sizeof(real_T));
        emlrtPushRtStackR2012b(&wb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        m_t = (ptrdiff_t)(9);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&wb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&xb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        n_t = (ptrdiff_t)(9);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&xb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&yb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        k_t = (ptrdiff_t)(9);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&yb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ac_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        lda_t = (ptrdiff_t)(9);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ac_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&bc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldb_t = (ptrdiff_t)(9);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&bc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&cc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldc_t = (ptrdiff_t)(9);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&cc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        alpha1_t = (double *)(&normA);
        emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&y[0]);
        emlrtPopRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&y[0]);
        emlrtPopRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        beta1_t = (double *)(&beta1);
        emlrtPopRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Cic0_t = (double *)(&F[0]);
        emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
      }
    }

    for (j = 0; j < 9; j++) {
      p0[j] = 0.0;
      for (b_i = 0; b_i < 9; b_i++) {
        p0[j] += hoistedGlobal[b_i] * F[b_i + 9 * j];
      }
    }

    p0_dirty |= 1U;
    emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    j = I->size[0];
    b_i = 1 + i;
    normA = Acell * 1.0E+12 * (g1 * p0[3] * (V - E1) + g2 * (p0[4] + p0[5]) * (V
      - E2)) - I->data[emlrtDynamicBoundsCheckFastR2012b(b_i, 1, j, &cd_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    normA = muDoubleScalarAbs(normA);
    err += normA * normA;
    err_dirty |= 1U;
    i++;
    emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, emlrtRootTLSGlobal);
  }
}

/* End of code generation (linearODESSEP2X4.c) */
