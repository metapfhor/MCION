/*
 * naivePerfusionSSEProlP2X4.c
 *
 * Code generation for function 'naivePerfusionSSEProlP2X4'
 *
 * C source code generated on: Mon Jun 23 18:45:45 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEProlP2X4.h"
#include "naivePerfusionSSEProlP2X4_emxutil.h"
#include "linearODESSEP2X4.h"
#include "mldivide.h"
#include "naivePerfusionSSEProlP2X4_mexutil.h"
#include "naivePerfusionSSEProlP2X4_data.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 27, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtRSInfo b_emlrtRSI = { 30, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtRSInfo c_emlrtRSI = { 33, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtRSInfo d_emlrtRSI = { 40, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtRSInfo e_emlrtRSI = { 44, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtRSInfo f_emlrtRSI = { 11, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo g_emlrtRSI = { 14, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo h_emlrtRSI = { 26, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo i_emlrtRSI = { 39, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtMCInfo emlrtMCI = { 14, 5, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRTEInfo emlrtRTEI = { 1, 18, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtRTEInfo b_emlrtRTEI = { 22, 9, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtRTEInfo c_emlrtRTEI = { 23, 3, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtRTEInfo d_emlrtRTEI = { 24, 9, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtRTEInfo e_emlrtRTEI = { 20, 9, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtECInfo emlrtECI = { -1, 22, 16, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtBCInfo emlrtBCI = { -1, -1, 23, 21, "toff",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtECInfo b_emlrtECI = { -1, 23, 9, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtBCInfo b_emlrtBCI = { -1, -1, 24, 18, "toff",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo c_emlrtBCI = { -1, -1, 24, 29, "ton",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtECInfo c_emlrtECI = { -1, 24, 16, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtBCInfo d_emlrtBCI = { -1, -1, 33, 30, "toff",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo e_emlrtBCI = { -1, -1, 35, 18, "ton",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo f_emlrtBCI = { -1, -1, 35, 28, "toff",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtECInfo d_emlrtECI = { -1, 35, 16, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtBCInfo g_emlrtBCI = { -1, -1, 36, 19, "toff",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtECInfo e_emlrtECI = { -1, 36, 17, "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m"
};

static emlrtBCInfo h_emlrtBCI = { -1, -1, 40, 36, "ton",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo i_emlrtBCI = { -1, -1, 44, 37, "toff",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo j_emlrtBCI = { -1, -1, 27, 26, "T",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo k_emlrtBCI = { -1, -1, 27, 42, "I",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo l_emlrtBCI = { -1, -1, 30, 20, "T",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo m_emlrtBCI = { -1, -1, 30, 36, "I",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo n_emlrtBCI = { -1, -1, 33, 20, "T",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo o_emlrtBCI = { -1, -1, 33, 38, "I",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo p_emlrtBCI = { -1, -1, 40, 26, "T",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo q_emlrtBCI = { -1, -1, 40, 43, "I",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo r_emlrtBCI = { -1, -1, 44, 26, "T",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

static emlrtBCInfo s_emlrtBCI = { -1, -1, 44, 45, "I",
  "naivePerfusionSSEProlP2X4",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m",
  0 };

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
  emlrtPushRtStackR2012b(&f_emlrtRSI, emlrtRootTLSGlobal);
  k = 0;
  emlrtPushRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  if (1 > x->size[0]) {
    overflow = FALSE;
  } else {
    overflow = (x->size[0] > 2147483646);
  }

  if (overflow) {
    emlrtPushRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  for (i = 1; i <= x->size[0]; i++) {
    if (x->data[i - 1]) {
      k++;
    }
  }

  emlrtPopRtStackR2012b(&f_emlrtRSI, emlrtRootTLSGlobal);
  if (k <= x->size[0]) {
  } else {
    emlrtPushRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    b_y = NULL;
    m0 = mxCreateString("Assertion failed.");
    emlrtAssign(&b_y, m0);
    error(b_y, &emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
  }

  j = y->size[0];
  y->size[0] = k;
  emxEnsureCapacity((emxArray__common *)y, j, (int32_T)sizeof(int32_T),
                    &e_emlrtRTEI);
  j = 0;
  emlrtPushRtStackR2012b(&h_emlrtRSI, emlrtRootTLSGlobal);
  if (1 > x->size[0]) {
    overflow = FALSE;
  } else {
    overflow = (x->size[0] > 2147483646);
  }

  if (overflow) {
    emlrtPushRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&h_emlrtRSI, emlrtRootTLSGlobal);
  for (i = 1; i <= x->size[0]; i++) {
    if (x->data[i - 1]) {
      y->data[j] = i;
      j++;
    }
  }
}

real_T naivePerfusionSSEProlP2X4(emxArray_real_T *ton, const emxArray_real_T
  *toff, real_T Ttot, const emxArray_real_T *T, const emxArray_real_T *I)
{
  real_T b_error;
  emxArray_boolean_T *indPre;
  int32_T xs;
  int32_T i0;
  real_T A0;
  emxArray_boolean_T *r0;
  real_T b_ton;
  int32_T i1;
  emxArray_boolean_T *indOn;
  emxArray_boolean_T *indOff;
  emxArray_int32_T *r1;
  emxArray_int32_T *r2;
  emxArray_real_T *b_T;
  int32_T i2;
  emxArray_real_T *b_I;
  emxArray_real_T *c_T;
  emxArray_real_T *c_I;
  emxArray_real_T *d_T;
  emxArray_real_T *d_I;
  emxArray_real_T *e_T;
  emxArray_real_T *e_I;
  emxArray_real_T *f_T;
  emxArray_real_T *f_I;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);

  /* This is the function which the sum of squared errors for the Pulse */
  /* protocol is calculated. The globals are declared above so they can be */
  /* used in this function. */
  /* The variable p0 is initialized here. */
  memset(&p0[0], 0, 9U * sizeof(real_T));
  emxInit_boolean_T(&indPre, 1, &b_emlrtRTEI, TRUE);
  p0_dirty |= 1U;
  p0[0] = 1.0;
  p0_dirty |= 1U;

  /* The matrix ton contains the elements ton and Ttot. MAY WANT TO CHECK */
  /* THIS. */
  xs = ton->size[1];
  i0 = ton->size[0] * ton->size[1];
  ton->size[1] = xs + 1;
  emxEnsureCapacity((emxArray__common *)ton, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  ton->data[xs] = Ttot;

  /* The variable 'err' is initialized at 0. */
  err = 0.0;
  err_dirty |= 1U;

  /* A0 is made equal to the concentration of ATP that is applied and */
  /* declared in the globals of the experimental array. The same thing */
  /* applies to J0, which corresponds to the concentration of IVM. */
  A0 = A;
  J_dirty |= 1U;
  i0 = indPre->size[0];
  indPre->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indPre, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indPre->data[i0] = (T->data[i0] > IVMon);
  }

  emxInit_boolean_T(&r0, 1, &emlrtRTEI, TRUE);
  b_ton = ton->data[0];
  i0 = r0->size[0];
  r0->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)r0, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    r0->data[i0] = (T->data[i0] <= b_ton);
  }

  i0 = indPre->size[0];
  i1 = r0->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &emlrtECI, emlrtRootTLSGlobal);
  i0 = indPre->size[0];
  emxEnsureCapacity((emxArray__common *)indPre, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = indPre->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indPre->data[i0] = (indPre->data[i0] && r0->data[i0]);
  }

  emxInit_boolean_T(&indOn, 1, &c_emlrtRTEI, TRUE);
  b_ton = ton->data[0];
  i0 = indOn->size[0];
  indOn->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOn->data[i0] = (T->data[i0] > b_ton);
  }

  i0 = toff->size[1];
  emlrtDynamicBoundsCheckFastR2012b(1, 1, i0, &emlrtBCI, emlrtRootTLSGlobal);
  b_ton = toff->data[0];
  i0 = r0->size[0];
  r0->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)r0, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    r0->data[i0] = (T->data[i0] <= b_ton);
  }

  i0 = indOn->size[0];
  i1 = r0->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &b_emlrtECI, emlrtRootTLSGlobal);
  i0 = indOn->size[0];
  emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = indOn->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOn->data[i0] = (indOn->data[i0] && r0->data[i0]);
  }

  emxInit_boolean_T(&indOff, 1, &d_emlrtRTEI, TRUE);
  i0 = toff->size[1];
  emlrtDynamicBoundsCheckFastR2012b(1, 1, i0, &b_emlrtBCI, emlrtRootTLSGlobal);
  b_ton = toff->data[0];
  i0 = indOff->size[0];
  indOff->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOff->data[i0] = (T->data[i0] > b_ton);
  }

  i0 = ton->size[1];
  emlrtDynamicBoundsCheckFastR2012b(2, 1, i0, &c_emlrtBCI, emlrtRootTLSGlobal);
  b_ton = ton->data[1];
  i0 = r0->size[0];
  r0->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)r0, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    r0->data[i0] = (T->data[i0] <= b_ton);
  }

  i0 = indOff->size[0];
  i1 = r0->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &c_emlrtECI, emlrtRootTLSGlobal);
  i0 = indOff->size[0];
  emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = indOff->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOff->data[i0] = (indOff->data[i0] && r0->data[i0]);
  }

  emxInit_int32_T(&r1, 1, &emlrtRTEI, TRUE);
  emxInit_int32_T(&r2, 1, &emlrtRTEI, TRUE);
  emxInit_real_T(&b_T, 1, &emlrtRTEI, TRUE);
  A = 0.0;
  A_dirty |= 1U;
  emlrtPushRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indPre, r1);
  eml_li_find(indPre, r2);
  i0 = b_T->size[0];
  b_T->size[0] = r1->size[0];
  emxEnsureCapacity((emxArray__common *)b_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r1->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = T->size[0];
    i2 = r1->data[i0];
    b_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &j_emlrtBCI, emlrtRootTLSGlobal) - 1] - IVMon;
  }

  emxInit_real_T(&b_I, 1, &emlrtRTEI, TRUE);
  i0 = b_I->size[0];
  b_I->size[0] = r2->size[0];
  emxEnsureCapacity((emxArray__common *)b_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r2->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = I->size[0];
    i2 = r2->data[i0];
    b_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &k_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  emxInit_real_T(&c_T, 1, &emlrtRTEI, TRUE);
  linearODESSEP2X4(b_T, b_I);
  emlrtPopRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  A = A0;
  A_dirty |= 1U;
  emlrtPushRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indOn, r1);
  eml_li_find(indOn, r2);
  b_ton = ton->data[0];
  i0 = c_T->size[0];
  c_T->size[0] = r1->size[0];
  emxEnsureCapacity((emxArray__common *)c_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r1->size[0];
  emxFree_real_T(&b_I);
  emxFree_real_T(&b_T);
  for (i0 = 0; i0 < xs; i0++) {
    i1 = T->size[0];
    i2 = r1->data[i0];
    c_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &l_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
  }

  emxInit_real_T(&c_I, 1, &emlrtRTEI, TRUE);
  i0 = c_I->size[0];
  c_I->size[0] = r2->size[0];
  emxEnsureCapacity((emxArray__common *)c_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r2->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = I->size[0];
    i2 = r2->data[i0];
    c_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &m_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  emxInit_real_T(&d_T, 1, &emlrtRTEI, TRUE);
  linearODESSEP2X4(c_T, c_I);
  emlrtPopRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  A = 0.0;
  A_dirty |= 1U;
  i0 = toff->size[1];
  emlrtDynamicBoundsCheckFastR2012b(1, 1, i0, &d_emlrtBCI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indOff, r1);
  eml_li_find(indOff, r2);
  b_ton = toff->data[0];
  i0 = d_T->size[0];
  d_T->size[0] = r1->size[0];
  emxEnsureCapacity((emxArray__common *)d_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r1->size[0];
  emxFree_real_T(&c_I);
  emxFree_real_T(&c_T);
  emxFree_boolean_T(&indOff);
  for (i0 = 0; i0 < xs; i0++) {
    i1 = T->size[0];
    i2 = r1->data[i0];
    d_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &n_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
  }

  emxInit_real_T(&d_I, 1, &emlrtRTEI, TRUE);
  i0 = d_I->size[0];
  d_I->size[0] = r2->size[0];
  emxEnsureCapacity((emxArray__common *)d_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r2->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = I->size[0];
    i2 = r2->data[i0];
    d_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &o_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  linearODESSEP2X4(d_T, d_I);
  emlrtPopRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
  i0 = ton->size[1];
  emlrtDynamicBoundsCheckFastR2012b(2, 1, i0, &e_emlrtBCI, emlrtRootTLSGlobal);
  b_ton = ton->data[1];
  i0 = indPre->size[0];
  indPre->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indPre, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  emxFree_real_T(&d_I);
  emxFree_real_T(&d_T);
  for (i0 = 0; i0 < xs; i0++) {
    indPre->data[i0] = (T->data[i0] > b_ton);
  }

  i0 = toff->size[1];
  emlrtDynamicBoundsCheckFastR2012b(2, 1, i0, &f_emlrtBCI, emlrtRootTLSGlobal);
  b_ton = toff->data[1];
  i0 = r0->size[0];
  r0->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)r0, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    r0->data[i0] = (T->data[i0] <= b_ton);
  }

  i0 = indPre->size[0];
  i1 = r0->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &d_emlrtECI, emlrtRootTLSGlobal);
  i0 = indPre->size[0];
  emxEnsureCapacity((emxArray__common *)indPre, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = indPre->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indPre->data[i0] = (indPre->data[i0] && r0->data[i0]);
  }

  i0 = toff->size[1];
  emlrtDynamicBoundsCheckFastR2012b(2, 1, i0, &g_emlrtBCI, emlrtRootTLSGlobal);
  b_ton = toff->data[1];
  i0 = indOn->size[0];
  indOn->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOn->data[i0] = (T->data[i0] > b_ton);
  }

  i0 = r0->size[0];
  r0->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)r0, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    r0->data[i0] = (T->data[i0] <= IVMoff);
  }

  i0 = indOn->size[0];
  i1 = r0->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &e_emlrtECI, emlrtRootTLSGlobal);
  i0 = indOn->size[0];
  emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = indOn->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOn->data[i0] = (indOn->data[i0] && r0->data[i0]);
  }

  emxFree_boolean_T(&r0);
  emxInit_real_T(&e_T, 1, &emlrtRTEI, TRUE);
  A = A0;
  A_dirty |= 1U;
  i0 = ton->size[1];
  emlrtDynamicBoundsCheckFastR2012b(2, 1, i0, &h_emlrtBCI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&d_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indPre, r1);
  eml_li_find(indPre, r2);
  b_ton = ton->data[1];
  i0 = e_T->size[0];
  e_T->size[0] = r1->size[0];
  emxEnsureCapacity((emxArray__common *)e_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r1->size[0];
  emxFree_boolean_T(&indPre);
  for (i0 = 0; i0 < xs; i0++) {
    i1 = T->size[0];
    i2 = r1->data[i0];
    e_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &p_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
  }

  emxInit_real_T(&e_I, 1, &emlrtRTEI, TRUE);
  i0 = e_I->size[0];
  e_I->size[0] = r2->size[0];
  emxEnsureCapacity((emxArray__common *)e_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r2->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = I->size[0];
    i2 = r2->data[i0];
    e_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &q_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  emxInit_real_T(&f_T, 1, &emlrtRTEI, TRUE);
  linearODESSEP2X4(e_T, e_I);
  emlrtPopRtStackR2012b(&d_emlrtRSI, emlrtRootTLSGlobal);
  A = 0.0;
  A_dirty |= 1U;
  i0 = toff->size[1];
  emlrtDynamicBoundsCheckFastR2012b(2, 1, i0, &i_emlrtBCI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&e_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indOn, r1);
  eml_li_find(indOn, r2);
  b_ton = toff->data[1];
  i0 = f_T->size[0];
  f_T->size[0] = r1->size[0];
  emxEnsureCapacity((emxArray__common *)f_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r1->size[0];
  emxFree_real_T(&e_I);
  emxFree_real_T(&e_T);
  emxFree_boolean_T(&indOn);
  for (i0 = 0; i0 < xs; i0++) {
    i1 = T->size[0];
    i2 = r1->data[i0];
    f_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &r_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
  }

  emxFree_int32_T(&r1);
  emxInit_real_T(&f_I, 1, &emlrtRTEI, TRUE);
  i0 = f_I->size[0];
  f_I->size[0] = r2->size[0];
  emxEnsureCapacity((emxArray__common *)f_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r2->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = I->size[0];
    i2 = r2->data[i0];
    f_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &s_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  emxFree_int32_T(&r2);
  linearODESSEP2X4(f_T, f_I);
  emlrtPopRtStackR2012b(&e_emlrtRSI, emlrtRootTLSGlobal);
  b_error = err;
  emxFree_real_T(&f_I);
  emxFree_real_T(&f_T);
  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
  return b_error;
}

/* End of code generation (naivePerfusionSSEProlP2X4.c) */
