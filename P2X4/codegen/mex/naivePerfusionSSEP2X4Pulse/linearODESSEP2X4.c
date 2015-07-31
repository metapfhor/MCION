/*
 * linearODESSEP2X4.c
 *
 * Code generation for function 'linearODESSEP2X4'
 *
 * C source code generated on: Wed Jun  4 10:08:42 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4Pulse.h"
#include "linearODESSEP2X4.h"
#include "expm.h"
#include "naivePerfusionSSEP2X4Pulse_mexutil.h"
#include "naivePerfusionSSEP2X4Pulse_data.h"

/* Variable Definitions */
static emlrtRSInfo db_emlrtRSI = { 5, "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/linearODESSEP2X4.m" };

static emlrtRSInfo eb_emlrtRSI = { 10, "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/linearODESSEP2X4.m" };

static emlrtRSInfo fb_emlrtRSI = { 52, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo gb_emlrtRSI = { 62, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo hb_emlrtRSI = { 64, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtBCInfo bd_emlrtBCI = { -1, -1, 10, 16, "T", "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/linearODESSEP2X4.m", 0 };

static emlrtRTEInfo l_emlrtRTEI = { 63, 5, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtBCInfo cd_emlrtBCI = { -1, -1, 11, 92, "I", "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/linearODESSEP2X4.m", 0 };

/* Function Definitions */
void linearODESSEP2X4(const emxArray_real_T *T, const emxArray_real_T *I)
{
  int32_T i;
  real_T hoistedGlobal[17];
  int32_T j;
  int32_T b_i;
  real_T normA;
  real_T y[289];
  real_T F[289];
  boolean_T exitg2;
  real_T s;
  boolean_T exitg1;
  static const real_T theta[5] = { 0.01495585217958292, 0.253939833006323,
    0.95041789961629319, 2.097847961257068, 5.3719203511481517 };

  static const int8_T iv2[5] = { 3, 5, 7, 9, 13 };

  int32_T eint;
  real_T b_y[289];
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
  Q[0] = -k2 * A - L2 * J;
  Q[17] = k2 * A;
  Q[34] = L2 * J;
  Q[51] = 0.0;
  Q[68] = 0.0;
  Q[85] = 0.0;
  Q[102] = 0.0;
  Q[119] = 0.0;
  Q[136] = 0.0;
  Q[153] = 0.0;
  Q[170] = 0.0;
  Q[187] = 0.0;
  Q[204] = 0.0;
  Q[221] = 0.0;
  Q[238] = 0.0;
  Q[255] = 0.0;
  Q[272] = 0.0;
  Q[1] = k1;
  Q[18] = ((-k1 - k4 * A) - H2) - L2 * J;
  Q[35] = 0.0;
  Q[52] = L2 * J;
  Q[69] = 0.0;
  Q[86] = 0.0;
  Q[103] = k4 * A;
  Q[120] = 0.0;
  Q[137] = 0.0;
  Q[154] = 0.0;
  Q[171] = 0.0;
  Q[188] = 0.0;
  Q[205] = 0.0;
  Q[222] = H2;
  Q[239] = 0.0;
  Q[256] = 0.0;
  Q[273] = 0.0;
  Q[2] = L1;
  Q[19] = 0.0;
  Q[36] = (-k8 * A - L1) - L4 * J;
  Q[53] = k8 * A;
  Q[70] = L4 * J;
  Q[87] = 0.0;
  Q[104] = 0.0;
  Q[121] = 0.0;
  Q[138] = 0.0;
  Q[155] = 0.0;
  Q[172] = 0.0;
  Q[189] = 0.0;
  Q[206] = 0.0;
  Q[223] = 0.0;
  Q[240] = 0.0;
  Q[257] = 0.0;
  Q[274] = 0.0;
  Q[3] = 0.0;
  Q[20] = L1;
  Q[37] = k7;
  Q[54] = ((-k7 - k10 * A) - L1) - L4 * J;
  Q[71] = 0.0;
  Q[88] = L4 * J;
  Q[105] = 0.0;
  Q[122] = 0.0;
  Q[139] = k10 * A;
  Q[156] = 0.0;
  Q[173] = 0.0;
  Q[190] = 0.0;
  Q[207] = 0.0;
  Q[224] = 0.0;
  Q[241] = 0.0;
  Q[258] = 0.0;
  Q[275] = 0.0;
  Q[4] = 0.0;
  Q[21] = 0.0;
  Q[38] = L3;
  Q[55] = 0.0;
  Q[72] = -k8 * alpha * A - L3;
  Q[89] = k8 * alpha * A;
  Q[106] = 0.0;
  Q[123] = 0.0;
  Q[140] = 0.0;
  Q[157] = 0.0;
  Q[174] = 0.0;
  Q[191] = 0.0;
  Q[208] = 0.0;
  Q[225] = 0.0;
  Q[242] = 0.0;
  Q[259] = 0.0;
  Q[276] = 0.0;
  Q[5] = 0.0;
  Q[22] = 0.0;
  Q[39] = 0.0;
  Q[56] = L3;
  Q[73] = k7;
  Q[90] = (-k7 - k10 * alpha * A) - L3;
  Q[107] = 0.0;
  Q[124] = 0.0;
  Q[141] = 0.0;
  Q[158] = 0.0;
  Q[175] = k10 * alpha * A;
  Q[192] = 0.0;
  Q[209] = 0.0;
  Q[226] = 0.0;
  Q[243] = 0.0;
  Q[260] = 0.0;
  Q[277] = 0.0;
  Q[6] = 0.0;
  Q[23] = k3;
  Q[40] = 0.0;
  Q[57] = 0.0;
  Q[74] = 0.0;
  Q[91] = 0.0;
  Q[108] = ((-k3 - k6 * A) - H2) - L2 * J;
  Q[125] = k6 * A;
  Q[142] = L2 * J;
  Q[159] = 0.0;
  Q[176] = 0.0;
  Q[193] = 0.0;
  Q[210] = 0.0;
  Q[227] = 0.0;
  Q[244] = H2;
  Q[261] = 0.0;
  Q[278] = 0.0;
  Q[7] = 0.0;
  Q[24] = 0.0;
  Q[41] = 0.0;
  Q[58] = 0.0;
  Q[75] = 0.0;
  Q[92] = 0.0;
  Q[109] = k5;
  Q[126] = (-k5 - H2) - L2 * J;
  Q[143] = 0.0;
  Q[160] = L2 * J;
  Q[177] = 0.0;
  Q[194] = 0.0;
  Q[211] = 0.0;
  Q[228] = 0.0;
  Q[245] = 0.0;
  Q[262] = H2;
  Q[279] = 0.0;
  Q[8] = 0.0;
  Q[25] = 0.0;
  Q[42] = 0.0;
  Q[59] = k9;
  Q[76] = 0.0;
  Q[93] = 0.0;
  Q[110] = L1;
  Q[127] = 0.0;
  Q[144] = ((-k9 - k12 * A) - L1) - L4 * J;
  Q[161] = k12 * A;
  Q[178] = L4 * J;
  Q[195] = 0.0;
  Q[212] = 0.0;
  Q[229] = 0.0;
  Q[246] = 0.0;
  Q[263] = 0.0;
  Q[280] = 0.0;
  Q[9] = 0.0;
  Q[26] = 0.0;
  Q[43] = 0.0;
  Q[60] = 0.0;
  Q[77] = 0.0;
  Q[94] = 0.0;
  Q[111] = 0.0;
  Q[128] = L1;
  Q[145] = k11;
  Q[162] = (-k11 - L1) - L4 * J;
  Q[179] = 0.0;
  Q[196] = L4 * J;
  Q[213] = 0.0;
  Q[230] = 0.0;
  Q[247] = 0.0;
  Q[264] = 0.0;
  Q[281] = 0.0;
  Q[10] = 0.0;
  Q[27] = 0.0;
  Q[44] = 0.0;
  Q[61] = 0.0;
  Q[78] = 0.0;
  Q[95] = k9;
  Q[112] = 0.0;
  Q[129] = 0.0;
  Q[146] = L3;
  Q[163] = 0.0;
  Q[180] = (-k9 - k12 * alpha * A) - L3;
  Q[197] = k12 * alpha * A;
  Q[214] = 0.0;
  Q[231] = 0.0;
  Q[248] = 0.0;
  Q[265] = 0.0;
  Q[282] = 0.0;
  Q[11] = 0.0;
  Q[28] = 0.0;
  Q[45] = 0.0;
  Q[62] = 0.0;
  Q[79] = 0.0;
  Q[96] = 0.0;
  Q[113] = 0.0;
  Q[130] = 0.0;
  Q[147] = 0.0;
  Q[164] = L3;
  Q[181] = k11;
  Q[198] = -k11 - L3;
  Q[215] = 0.0;
  Q[232] = 0.0;
  Q[249] = 0.0;
  Q[266] = 0.0;
  Q[283] = 0.0;
  Q[12] = H1;
  Q[29] = 0.0;
  Q[46] = 0.0;
  Q[63] = 0.0;
  Q[80] = 0.0;
  Q[97] = 0.0;
  Q[114] = 0.0;
  Q[131] = 0.0;
  Q[148] = 0.0;
  Q[165] = 0.0;
  Q[182] = 0.0;
  Q[199] = 0.0;
  Q[216] = -k2 * A - H1;
  Q[233] = k2 * A;
  Q[250] = 0.0;
  Q[267] = 0.0;
  Q[284] = 0.0;
  Q[13] = 0.0;
  Q[30] = 0.0;
  Q[47] = 0.0;
  Q[64] = 0.0;
  Q[81] = 0.0;
  Q[98] = 0.0;
  Q[115] = 0.0;
  Q[132] = 0.0;
  Q[149] = 0.0;
  Q[166] = 0.0;
  Q[183] = 0.0;
  Q[200] = 0.0;
  Q[217] = k1;
  Q[234] = -k1 - k4 * A;
  Q[251] = k4 * A;
  Q[268] = 0.0;
  Q[285] = 0.0;
  Q[14] = 0.0;
  Q[31] = 0.0;
  Q[48] = 0.0;
  Q[65] = 0.0;
  Q[82] = 0.0;
  Q[99] = 0.0;
  Q[116] = 0.0;
  Q[133] = 0.0;
  Q[150] = 0.0;
  Q[167] = 0.0;
  Q[184] = 0.0;
  Q[201] = 0.0;
  Q[218] = 0.0;
  Q[235] = k3;
  Q[252] = -k3 - k6 * A;
  Q[269] = k6 * A;
  Q[286] = 0.0;
  Q[15] = 0.0;
  Q[32] = 0.0;
  Q[49] = 0.0;
  Q[66] = 0.0;
  Q[83] = 0.0;
  Q[100] = 0.0;
  Q[117] = 0.0;
  Q[134] = 0.0;
  Q[151] = 0.0;
  Q[168] = 0.0;
  Q[185] = 0.0;
  Q[202] = 0.0;
  Q[219] = 0.0;
  Q[236] = 0.0;
  Q[253] = k5;
  Q[270] = -k5 - H3;
  Q[287] = H3;
  Q[16] = H4;
  Q[33] = 0.0;
  Q[50] = 0.0;
  Q[67] = 0.0;
  Q[84] = 0.0;
  Q[101] = 0.0;
  Q[118] = 0.0;
  Q[135] = 0.0;
  Q[152] = 0.0;
  Q[169] = 0.0;
  Q[186] = 0.0;
  Q[203] = 0.0;
  Q[220] = 0.0;
  Q[237] = 0.0;
  Q[254] = 0.0;
  Q[271] = 0.0;
  Q[288] = -H4;
  Q_dirty |= 1U;
  emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
  i = 0;
  while (i <= T->size[0] - 1) {
    emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    memcpy(&hoistedGlobal[0], &p0[0], 17U * sizeof(real_T));
    j = T->size[0];
    b_i = (int32_T)(1.0 + (real_T)i);
    emlrtDynamicBoundsCheckFastR2012b(b_i, 1, j, &bd_emlrtBCI,
      emlrtRootTLSGlobal);
    normA = T->data[i];
    for (j = 0; j < 289; j++) {
      y[j] = Q[j] * normA;
    }

    normA = 0.0;
    j = 0;
    exitg2 = FALSE;
    while ((exitg2 == FALSE) && (j < 17)) {
      s = 0.0;
      for (b_i = 0; b_i < 17; b_i++) {
        s += muDoubleScalarAbs(y[b_i + 17 * j]);
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
      for (j = 0; j < 289; j++) {
        b_y[j] = y[j] / normA;
      }

      PadeApproximantOfDegree(b_y, 13.0, F);
      emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtForLoopVectorCheckR2012b(1.0, 1.0, s, mxDOUBLE_CLASS, (int32_T)s,
        &l_emlrtRTEI, emlrtRootTLSGlobal);
      for (j = 0; j < (int32_T)s; j++) {
        emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        memcpy(&y[0], &F[0], 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        normA = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&F[0], 0, 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&wb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        m_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&wb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&xb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        n_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&xb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&yb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        k_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&yb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ac_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        lda_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ac_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&bc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldb_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&bc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&cc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldc_t = (ptrdiff_t)(17);
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

    for (j = 0; j < 17; j++) {
      p0[j] = 0.0;
      for (b_i = 0; b_i < 17; b_i++) {
        p0[j] += hoistedGlobal[b_i] * F[b_i + 17 * j];
      }
    }

    p0_dirty |= 1U;
    emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    j = I->size[0];
    b_i = 1 + i;
    normA = Acell * 1.0E+12 * (g1 * (p0[6] + p0[7]) * (V - E1) + g2 * (((p0[8] +
      p0[9]) + p0[10]) + p0[11]) * (V - E2)) - I->
      data[emlrtDynamicBoundsCheckFastR2012b(b_i, 1, j, &cd_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    normA = muDoubleScalarAbs(normA);
    err += normA * normA;
    err_dirty |= 1U;
    i++;
    emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, emlrtRootTLSGlobal);
  }
}

/* End of code generation (linearODESSEP2X4.c) */
