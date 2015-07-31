/*
 * naivePerfusionSSEP2X4.c
 *
 * Code generation for function 'naivePerfusionSSEP2X4'
 *
 * C source code generated on: Tue May 20 14:16:12 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4.h"
#include "expm.h"
#include "naivePerfusionSSEP2X4_emxutil.h"
#include "mldivide.h"
#include "naivePerfusionSSEP2X4_mexutil.h"
#include "naivePerfusionSSEP2X4_data.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 11, "naivePerfusionSSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/naivePerfusionSSEP2X4.m"
};

static emlrtRSInfo b_emlrtRSI = { 12, "naivePerfusionSSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/naivePerfusionSSEP2X4.m"
};

static emlrtRSInfo c_emlrtRSI = { 11, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo d_emlrtRSI = { 14, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo e_emlrtRSI = { 26, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo f_emlrtRSI = { 39, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo i_emlrtRSI = { 5, "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/linearODESSEP2X4.m" };

static emlrtRSInfo j_emlrtRSI = { 14, "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/linearODESSEP2X4.m" };

static emlrtMCInfo emlrtMCI = { 14, 5, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRTEInfo emlrtRTEI = { 1, 16, "naivePerfusionSSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/naivePerfusionSSEP2X4.m"
};

static emlrtRTEInfo b_emlrtRTEI = { 8, 2, "naivePerfusionSSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/naivePerfusionSSEP2X4.m"
};

static emlrtRTEInfo c_emlrtRTEI = { 9, 2, "naivePerfusionSSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/naivePerfusionSSEP2X4.m"
};

static emlrtRTEInfo d_emlrtRTEI = { 20, 9, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtECInfo emlrtECI = { -1, 8, 8, "naivePerfusionSSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/naivePerfusionSSEP2X4.m"
};

static emlrtBCInfo emlrtBCI = { -1, -1, 14, 15, "T", "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/linearODESSEP2X4.m", 0 };

static emlrtBCInfo b_emlrtBCI = { -1, -1, 11, 35, "T", "naivePerfusionSSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/naivePerfusionSSEP2X4.m",
  0 };

static emlrtBCInfo c_emlrtBCI = { -1, -1, 11, 48, "I", "naivePerfusionSSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/naivePerfusionSSEP2X4.m",
  0 };

static emlrtBCInfo d_emlrtBCI = { -1, -1, 12, 27, "T", "naivePerfusionSSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/naivePerfusionSSEP2X4.m",
  0 };

static emlrtBCInfo e_emlrtBCI = { -1, -1, 12, 42, "I", "naivePerfusionSSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/naivePerfusionSSEP2X4.m",
  0 };

static emlrtBCInfo f_emlrtBCI = { -1, -1, 15, 86, "I", "linearODESSEP2X4",
  "/home/cnd/omar.khan/Desktop/final_mcmc_folder/Models/linearODESSEP2X4.m", 0 };

/* Function Declarations */
static void eml_li_find(const emxArray_boolean_T *x, emxArray_int32_T *y);

/* Function Definitions */
static void eml_li_find(const emxArray_boolean_T *x, emxArray_int32_T *y)
{
  int32_T k;
  boolean_T overflow;
  int32_T i;
  const mxArray *b_y;
  const mxArray *m0;
  int32_T j;
  emlrtPushRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
  k = 0;
  emlrtPushRtStackR2012b(&f_emlrtRSI, emlrtRootTLSGlobal);
  if (1 > x->size[0]) {
    overflow = FALSE;
  } else {
    overflow = (x->size[0] > 2147483646);
  }

  if (overflow) {
    emlrtPushRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&f_emlrtRSI, emlrtRootTLSGlobal);
  for (i = 1; i <= x->size[0]; i++) {
    if (x->data[i - 1]) {
      k++;
    }
  }

  emlrtPopRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
  if (k <= x->size[0]) {
  } else {
    emlrtPushRtStackR2012b(&d_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    b_y = NULL;
    m0 = mxCreateString("Assertion failed.");
    emlrtAssign(&b_y, m0);
    error(b_y, &emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&d_emlrtRSI, emlrtRootTLSGlobal);
  }

  j = y->size[0];
  y->size[0] = k;
  emxEnsureCapacity((emxArray__common *)y, j, (int32_T)sizeof(int32_T),
                    &d_emlrtRTEI);
  j = 0;
  emlrtPushRtStackR2012b(&e_emlrtRSI, emlrtRootTLSGlobal);
  if (1 > x->size[0]) {
    overflow = FALSE;
  } else {
    overflow = (x->size[0] > 2147483646);
  }

  if (overflow) {
    emlrtPushRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&e_emlrtRSI, emlrtRootTLSGlobal);
  for (i = 1; i <= x->size[0]; i++) {
    if (x->data[i - 1]) {
      y->data[j] = i;
      j++;
    }
  }
}

real_T naivePerfusionSSEP2X4(real_T ton, real_T toff, real_T Ttot, real_T amp,
  const emxArray_real_T *T, const emxArray_real_T *I)
{
  real_T err;
  real_T naive[17];
  emxArray_boolean_T *indOn;
  int32_T i0;
  int32_T loop_ub;
  emxArray_boolean_T *indOff;
  int32_T i1;
  emxArray_real_T *b_T;
  emxArray_int32_T *r0;
  int32_T i2;
  emxArray_real_T *b_I;
  real_T Q[289];
  real_T p1[17];
  real_T err1;
  real_T c_T;
  real_T b_Q[289];
  real_T b[289];
  real_T err2;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);
  J = amp;
  J_dirty |= 1U;

  /* #codgen; */
  memset(&naive[0], 0, 17U * sizeof(real_T));
  emxInit_boolean_T(&indOn, 1, &b_emlrtRTEI, TRUE);
  naive[0] = 1.0;
  i0 = indOn->size[0];
  indOn->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  loop_ub = T->size[0];
  for (i0 = 0; i0 < loop_ub; i0++) {
    indOn->data[i0] = (T->data[i0] >= ton);
  }

  emxInit_boolean_T(&indOff, 1, &c_emlrtRTEI, TRUE);
  i0 = indOff->size[0];
  indOff->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  loop_ub = T->size[0];
  for (i0 = 0; i0 < loop_ub; i0++) {
    indOff->data[i0] = (T->data[i0] <= toff);
  }

  i0 = indOn->size[0];
  i1 = indOff->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &emlrtECI, emlrtRootTLSGlobal);
  i0 = indOn->size[0];
  emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  loop_ub = indOn->size[0];
  for (i0 = 0; i0 < loop_ub; i0++) {
    indOn->data[i0] = (indOn->data[i0] && indOff->data[i0]);
  }

  i0 = indOff->size[0];
  indOff->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  loop_ub = T->size[0];
  for (i0 = 0; i0 < loop_ub; i0++) {
    indOff->data[i0] = (T->data[i0] > toff);
  }

  emxInit_real_T(&b_T, 1, &emlrtRTEI, TRUE);
  emxInit_int32_T(&r0, 1, &emlrtRTEI, TRUE);
  emlrtPushRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indOn, r0);
  i0 = b_T->size[0];
  b_T->size[0] = r0->size[0];
  emxEnsureCapacity((emxArray__common *)b_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  loop_ub = r0->size[0];
  for (i0 = 0; i0 < loop_ub; i0++) {
    i1 = T->size[0];
    i2 = r0->data[i0];
    b_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &b_emlrtBCI, emlrtRootTLSGlobal) - 1] - ton;
  }

  emxInit_real_T(&b_I, 1, &emlrtRTEI, TRUE);
  eml_li_find(indOn, r0);
  i0 = b_I->size[0];
  b_I->size[0] = r0->size[0];
  emxEnsureCapacity((emxArray__common *)b_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  loop_ub = r0->size[0];
  emxFree_boolean_T(&indOn);
  for (i0 = 0; i0 < loop_ub; i0++) {
    i1 = I->size[0];
    i2 = r0->data[i0];
    b_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &c_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  emlrtPushRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  Q[0] = -k2 * 9.9999999999999991E-5 - L2 * J;
  Q[17] = k2 * 9.9999999999999991E-5;
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
  Q[18] = ((-k1 - k4 * 9.9999999999999991E-5) - H2) - L2 * J;
  Q[35] = 0.0;
  Q[52] = L2 * J;
  Q[69] = 0.0;
  Q[86] = 0.0;
  Q[103] = k4 * 9.9999999999999991E-5;
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
  Q[36] = (-k8 * 9.9999999999999991E-5 - L1) - L4 * J;
  Q[53] = k8 * 9.9999999999999991E-5;
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
  Q[54] = ((-k7 - k10 * 9.9999999999999991E-5) - L1) - L4 * J;
  Q[71] = 0.0;
  Q[88] = L4 * J;
  Q[105] = 0.0;
  Q[122] = 0.0;
  Q[139] = k10 * 9.9999999999999991E-5;
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
  Q[72] = -k14 * 9.9999999999999991E-5 - L3;
  Q[89] = k14 * 9.9999999999999991E-5;
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
  Q[73] = k13;
  Q[90] = (-k13 - k16 * 9.9999999999999991E-5) - L3;
  Q[107] = 0.0;
  Q[124] = 0.0;
  Q[141] = 0.0;
  Q[158] = 0.0;
  Q[175] = k16 * 9.9999999999999991E-5;
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
  Q[108] = ((-k3 - k6 * 9.9999999999999991E-5) - H2) - L2 * J;
  Q[125] = k6 * 9.9999999999999991E-5;
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
  Q[144] = ((-k9 - k12 * 9.9999999999999991E-5) - L1) - L4 * J;
  Q[161] = k12 * 9.9999999999999991E-5;
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
  Q[95] = k15;
  Q[112] = 0.0;
  Q[129] = 0.0;
  Q[146] = L3;
  Q[163] = 0.0;
  Q[180] = (-k15 - k18 * 9.9999999999999991E-5) - L3;
  Q[197] = k18 * 9.9999999999999991E-5;
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
  Q[181] = k17;
  Q[198] = -k17 - L3;
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
  Q[216] = -k2 * 9.9999999999999991E-5 - H1;
  Q[233] = k2 * 9.9999999999999991E-5;
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
  Q[234] = -k1 - k4 * 9.9999999999999991E-5;
  Q[251] = k4 * 9.9999999999999991E-5;
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
  Q[252] = -k3 - k6 * 9.9999999999999991E-5;
  Q[269] = k6 * 9.9999999999999991E-5;
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
  emlrtPopRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  memset(&p1[0], 0, 17U * sizeof(real_T));
  err1 = 0.0;
  loop_ub = 0;
  while (loop_ub <= b_T->size[0] - 1) {
    emlrtPushRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
    i0 = b_T->size[0];
    i1 = (int32_T)(1.0 + (real_T)loop_ub);
    emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &emlrtBCI, emlrtRootTLSGlobal);
    c_T = b_T->data[(int32_T)(1.0 + (real_T)loop_ub) - 1];
    for (i0 = 0; i0 < 289; i0++) {
      b_Q[i0] = Q[i0] * c_T;
    }

    expm(b_Q, b);
    for (i0 = 0; i0 < 17; i0++) {
      p1[i0] = 0.0;
      for (i1 = 0; i1 < 17; i1++) {
        p1[i0] += naive[i1] * b[i1 + 17 * i0];
      }
    }

    emlrtPopRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
    i0 = b_I->size[0];
    i1 = (int32_T)(1.0 + (real_T)loop_ub);
    c_T = Acell * 1.0E+12 * (g1 * (p1[6] + p1[7]) * (-0.06 - E1) + g2 * (((p1[8]
      + p1[9]) + p1[10]) + p1[11]) * (-0.06 - E2)) - b_I->
      data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &f_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    c_T = muDoubleScalarAbs(c_T);
    err1 += c_T * c_T;
    loop_ub++;
    emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indOff, r0);
  i0 = b_T->size[0];
  b_T->size[0] = r0->size[0];
  emxEnsureCapacity((emxArray__common *)b_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  loop_ub = r0->size[0];
  for (i0 = 0; i0 < loop_ub; i0++) {
    i1 = T->size[0];
    i2 = r0->data[i0];
    b_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &d_emlrtBCI, emlrtRootTLSGlobal) - 1] - toff;
  }

  eml_li_find(indOff, r0);
  i0 = b_I->size[0];
  b_I->size[0] = r0->size[0];
  emxEnsureCapacity((emxArray__common *)b_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  loop_ub = r0->size[0];
  emxFree_boolean_T(&indOff);
  for (i0 = 0; i0 < loop_ub; i0++) {
    i1 = I->size[0];
    i2 = r0->data[i0];
    b_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &e_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  emxFree_int32_T(&r0);
  emlrtPushRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  Q[0] = -k2 * 0.0 - L2 * J;
  Q[17] = k2 * 0.0;
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
  Q[18] = ((-k1 - k4 * 0.0) - H2) - L2 * J;
  Q[35] = 0.0;
  Q[52] = L2 * J;
  Q[69] = 0.0;
  Q[86] = 0.0;
  Q[103] = k4 * 0.0;
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
  Q[36] = (-k8 * 0.0 - L1) - L4 * J;
  Q[53] = k8 * 0.0;
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
  Q[54] = ((-k7 - k10 * 0.0) - L1) - L4 * J;
  Q[71] = 0.0;
  Q[88] = L4 * J;
  Q[105] = 0.0;
  Q[122] = 0.0;
  Q[139] = k10 * 0.0;
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
  Q[72] = -k14 * 0.0 - L3;
  Q[89] = k14 * 0.0;
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
  Q[73] = k13;
  Q[90] = (-k13 - k16 * 0.0) - L3;
  Q[107] = 0.0;
  Q[124] = 0.0;
  Q[141] = 0.0;
  Q[158] = 0.0;
  Q[175] = k16 * 0.0;
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
  Q[108] = ((-k3 - k6 * 0.0) - H2) - L2 * J;
  Q[125] = k6 * 0.0;
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
  Q[144] = ((-k9 - k12 * 0.0) - L1) - L4 * J;
  Q[161] = k12 * 0.0;
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
  Q[95] = k15;
  Q[112] = 0.0;
  Q[129] = 0.0;
  Q[146] = L3;
  Q[163] = 0.0;
  Q[180] = (-k15 - k18 * 0.0) - L3;
  Q[197] = k18 * 0.0;
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
  Q[181] = k17;
  Q[198] = -k17 - L3;
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
  Q[216] = -k2 * 0.0 - H1;
  Q[233] = k2 * 0.0;
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
  Q[234] = -k1 - k4 * 0.0;
  Q[251] = k4 * 0.0;
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
  Q[252] = -k3 - k6 * 0.0;
  Q[269] = k6 * 0.0;
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
  emlrtPopRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  err2 = 0.0;
  loop_ub = 0;
  while (loop_ub <= b_T->size[0] - 1) {
    emlrtPushRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
    i0 = b_T->size[0];
    i1 = (int32_T)(1.0 + (real_T)loop_ub);
    emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &emlrtBCI, emlrtRootTLSGlobal);
    c_T = b_T->data[(int32_T)(1.0 + (real_T)loop_ub) - 1];
    for (i0 = 0; i0 < 289; i0++) {
      b_Q[i0] = Q[i0] * c_T;
    }

    expm(b_Q, b);
    for (i0 = 0; i0 < 17; i0++) {
      naive[i0] = 0.0;
      for (i1 = 0; i1 < 17; i1++) {
        naive[i0] += p1[i1] * b[i1 + 17 * i0];
      }
    }

    emlrtPopRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
    i0 = b_I->size[0];
    i1 = (int32_T)(1.0 + (real_T)loop_ub);
    c_T = Acell * 1.0E+12 * (g1 * (naive[6] + naive[7]) * (-0.06 - E1) + g2 *
                             (((naive[8] + naive[9]) + naive[10]) + naive[11]) *
                             (-0.06 - E2)) - b_I->
      data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &f_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    c_T = muDoubleScalarAbs(c_T);
    err2 += c_T * c_T;
    loop_ub++;
    emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, emlrtRootTLSGlobal);
  }

  emxFree_real_T(&b_I);
  emxFree_real_T(&b_T);
  emlrtPopRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  err = err1 + err2;
  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
  return err;
}

/* End of code generation (naivePerfusionSSEP2X4.c) */
