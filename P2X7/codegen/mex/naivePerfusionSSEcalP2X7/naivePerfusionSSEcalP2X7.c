/*
 * naivePerfusionSSEcalP2X7.c
 *
 * Code generation for function 'naivePerfusionSSEcalP2X7'
 *
 * C source code generated on: Tue May 27 13:41:56 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEcalP2X7.h"
#include "linearODESSEcalP2X7.h"
#include "naivePerfusionSSEcalP2X7_emxutil.h"
#include "naivePerfusionSSEcalP2X7_mexutil.h"
#include "naivePerfusionSSEcalP2X7_data.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 12, "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m"
};

static emlrtRSInfo b_emlrtRSI = { 14, "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m"
};

static emlrtRSInfo c_emlrtRSI = { 11, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo d_emlrtRSI = { 14, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo e_emlrtRSI = { 26, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo f_emlrtRSI = { 39, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo g_emlrtRSI = { 12, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

static emlrtRSInfo h_emlrtRSI = { 51, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

static emlrtMCInfo emlrtMCI = { 14, 5, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtMCInfo b_emlrtMCI = { 52, 9, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

static emlrtMCInfo c_emlrtMCI = { 51, 15, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

static emlrtRTEInfo emlrtRTEI = { 1, 18, "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m"
};

static emlrtRTEInfo b_emlrtRTEI = { 9, 3, "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m"
};

static emlrtRTEInfo c_emlrtRTEI = { 10, 3, "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m"
};

static emlrtRTEInfo d_emlrtRTEI = { 20, 9, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtECInfo emlrtECI = { -1, 9, 9, "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m"
};

static emlrtECInfo b_emlrtECI = { -1, 10, 10, "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m"
};

static emlrtBCInfo emlrtBCI = { -1, -1, 9, 11, "ton", "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m",
  0 };

static emlrtBCInfo b_emlrtBCI = { -1, -1, 9, 21, "toff",
  "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m",
  0 };

static emlrtBCInfo c_emlrtBCI = { -1, -1, 10, 12, "toff",
  "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m",
  0 };

static emlrtBCInfo d_emlrtBCI = { -1, -1, 10, 23, "ton",
  "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m",
  0 };

static emlrtBCInfo e_emlrtBCI = { -1, -1, 12, 32, "ton",
  "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m",
  0 };

static emlrtBCInfo f_emlrtBCI = { -1, -1, 12, 23, "T",
  "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m",
  0 };

static emlrtBCInfo g_emlrtBCI = { -1, -1, 12, 39, "I",
  "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m",
  0 };

static emlrtBCInfo h_emlrtBCI = { -1, -1, 14, 33, "toff",
  "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m",
  0 };

static emlrtBCInfo i_emlrtBCI = { -1, -1, 14, 23, "T",
  "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m",
  0 };

static emlrtBCInfo j_emlrtBCI = { -1, -1, 14, 41, "I",
  "naivePerfusionSSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m",
  0 };

/* Function Declarations */
static void check_forloop_overflow_error(void);
static void eml_li_find(const emxArray_boolean_T *x, emxArray_int32_T *y);
static void error(const mxArray *b, emlrtMCInfo *location);
static const mxArray *message(const mxArray *b, const mxArray *c, emlrtMCInfo
  *location);

/* Function Definitions */
static void check_forloop_overflow_error(void)
{
  const mxArray *y;
  static const int32_T iv0[2] = { 1, 34 };

  const mxArray *m1;
  char_T cv0[34];
  int32_T i;
  static const char_T cv1[34] = { 'C', 'o', 'd', 'e', 'r', ':', 't', 'o', 'o',
    'l', 'b', 'o', 'x', ':', 'i', 'n', 't', '_', 'f', 'o', 'r', 'l', 'o', 'o',
    'p', '_', 'o', 'v', 'e', 'r', 'f', 'l', 'o', 'w' };

  const mxArray *b_y;
  static const int32_T iv1[2] = { 1, 23 };

  char_T cv2[23];
  static const char_T cv3[23] = { 'c', 'o', 'd', 'e', 'r', '.', 'i', 'n', 't',
    'e', 'r', 'n', 'a', 'l', '.', 'i', 'n', 'd', 'e', 'x', 'I', 'n', 't' };

  emlrtPushRtStackR2012b(&h_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_synchGlobalsToML();
  y = NULL;
  m1 = mxCreateCharArray(2, iv0);
  for (i = 0; i < 34; i++) {
    cv0[i] = cv1[i];
  }

  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 34, m1, cv0);
  emlrtAssign(&y, m1);
  b_y = NULL;
  m1 = mxCreateCharArray(2, iv1);
  for (i = 0; i < 23; i++) {
    cv2[i] = cv3[i];
  }

  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 23, m1, cv2);
  emlrtAssign(&b_y, m1);
  error(message(y, b_y, &b_emlrtMCI), &c_emlrtMCI);
  emlrt_synchGlobalsFromML();
  emlrtPopRtStackR2012b(&h_emlrtRSI, emlrtRootTLSGlobal);
}

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

static void error(const mxArray *b, emlrtMCInfo *location)
{
  const mxArray *pArray;
  pArray = b;
  emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 0, NULL, 1, &pArray, "error", TRUE,
                        location);
}

static const mxArray *message(const mxArray *b, const mxArray *c, emlrtMCInfo
  *location)
{
  const mxArray *pArrays[2];
  const mxArray *m7;
  pArrays[0] = b;
  pArrays[1] = c;
  return emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 1, &m7, 2, pArrays, "message",
    TRUE, location);
}

real_T naivePerfusionSSEcalP2X7(emxArray_real_T *ton, const emxArray_real_T
  *toff, const emxArray_real_T *Ttot, const emxArray_real_T *T, const
  emxArray_real_T *I)
{
  real_T b_error;
  int32_T xs;
  int32_T cs;
  int32_T i1;
  emxArray_boolean_T *indOn;
  emxArray_boolean_T *indOff;
  emxArray_boolean_T *r0;
  emxArray_int32_T *c_r1;
  emxArray_int32_T *c_r2;
  emxArray_real_T *b_T;
  emxArray_real_T *b_I;
  emxArray_real_T *c_T;
  emxArray_real_T *c_I;
  real_T b_ton;
  int32_T i2;
  int32_T i3;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);

  /* #codgen; */
  memset(&p0[0], 0, 24U * sizeof(real_T));
  p0_dirty |= 1U;
  p0[0] = 1.0;
  p0_dirty |= 1U;
  xs = ton->size[1];
  cs = Ttot->size[1];
  i1 = ton->size[0] * ton->size[1];
  ton->size[1] = xs + cs;
  emxEnsureCapacity((emxArray__common *)ton, i1, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  for (i1 = 0; i1 < cs; i1++) {
    ton->data[xs + i1] = Ttot->data[i1];
  }

  err = 0.0;
  err_dirty |= 1U;
  xs = 1;
  emxInit_boolean_T(&indOn, 1, &b_emlrtRTEI, TRUE);
  emxInit_boolean_T(&indOff, 1, &c_emlrtRTEI, TRUE);
  emxInit_boolean_T(&r0, 1, &emlrtRTEI, TRUE);
  emxInit_int32_T(&c_r1, 1, &emlrtRTEI, TRUE);
  emxInit_int32_T(&c_r2, 1, &emlrtRTEI, TRUE);
  emxInit_real_T(&b_T, 1, &emlrtRTEI, TRUE);
  emxInit_real_T(&b_I, 1, &emlrtRTEI, TRUE);
  emxInit_real_T(&c_T, 1, &emlrtRTEI, TRUE);
  emxInit_real_T(&c_I, 1, &emlrtRTEI, TRUE);
  while (xs - 1 <= ton->size[1] - 2) {
    i1 = ton->size[1];
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(xs, 1, i1, &emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = indOn->size[0];
    indOn->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indOn, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    cs = T->size[0];
    for (i1 = 0; i1 < cs; i1++) {
      indOn->data[i1] = (T->data[i1] > b_ton);
    }

    i1 = toff->size[1];
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(xs, 1, i1, &b_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = r0->size[0];
    r0->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r0, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    cs = T->size[0];
    for (i1 = 0; i1 < cs; i1++) {
      r0->data[i1] = (T->data[i1] <= b_ton);
    }

    i1 = indOn->size[0];
    i2 = r0->size[0];
    emlrtSizeEqCheck1DFastR2012b(i1, i2, &emlrtECI, emlrtRootTLSGlobal);
    i1 = indOn->size[0];
    emxEnsureCapacity((emxArray__common *)indOn, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    cs = indOn->size[0];
    for (i1 = 0; i1 < cs; i1++) {
      indOn->data[i1] = (indOn->data[i1] && r0->data[i1]);
    }

    i1 = toff->size[1];
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(xs, 1, i1, &c_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = indOff->size[0];
    indOff->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indOff, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    cs = T->size[0];
    for (i1 = 0; i1 < cs; i1++) {
      indOff->data[i1] = (T->data[i1] > b_ton);
    }

    i1 = ton->size[1];
    i2 = 1 + xs;
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1, &d_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = r0->size[0];
    r0->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r0, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    cs = T->size[0];
    for (i1 = 0; i1 < cs; i1++) {
      r0->data[i1] = (T->data[i1] <= b_ton);
    }

    i1 = indOff->size[0];
    i2 = r0->size[0];
    emlrtSizeEqCheck1DFastR2012b(i1, i2, &b_emlrtECI, emlrtRootTLSGlobal);
    i1 = indOff->size[0];
    emxEnsureCapacity((emxArray__common *)indOff, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    cs = indOff->size[0];
    for (i1 = 0; i1 < cs; i1++) {
      indOff->data[i1] = (indOff->data[i1] && r0->data[i1]);
    }

    A = ATP;
    A_dirty |= 1U;
    emlrtPushRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indOn, c_r1);
    eml_li_find(indOn, c_r2);
    i1 = ton->size[1];
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(xs, 1, i1, &e_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = c_T->size[0];
    c_T->size[0] = c_r1->size[0];
    emxEnsureCapacity((emxArray__common *)c_T, i1, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    cs = c_r1->size[0];
    for (i1 = 0; i1 < cs; i1++) {
      i2 = T->size[0];
      i3 = c_r1->data[i1];
      c_T->data[i1] = T->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
        &f_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
    }

    i1 = c_I->size[0];
    c_I->size[0] = c_r2->size[0];
    emxEnsureCapacity((emxArray__common *)c_I, i1, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    cs = c_r2->size[0];
    for (i1 = 0; i1 < cs; i1++) {
      i2 = I->size[0];
      i3 = c_r2->data[i1];
      c_I->data[i1] = I->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
        &g_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    linearODESSEcalP2X7(c_T, c_I);
    emlrtPopRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
    A = 0.0;
    A_dirty |= 1U;
    emlrtPushRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indOff, c_r1);
    eml_li_find(indOff, c_r2);
    i1 = toff->size[1];
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(xs, 1, i1, &h_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = b_T->size[0];
    b_T->size[0] = c_r1->size[0];
    emxEnsureCapacity((emxArray__common *)b_T, i1, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    cs = c_r1->size[0];
    for (i1 = 0; i1 < cs; i1++) {
      i2 = T->size[0];
      i3 = c_r1->data[i1];
      b_T->data[i1] = T->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
        &i_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
    }

    i1 = b_I->size[0];
    b_I->size[0] = c_r2->size[0];
    emxEnsureCapacity((emxArray__common *)b_I, i1, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    cs = c_r2->size[0];
    for (i1 = 0; i1 < cs; i1++) {
      i2 = I->size[0];
      i3 = c_r2->data[i1];
      b_I->data[i1] = I->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
        &j_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    linearODESSEcalP2X7(b_T, b_I);
    emlrtPopRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
    xs++;
    emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, emlrtRootTLSGlobal);
  }

  emxFree_real_T(&c_I);
  emxFree_real_T(&c_T);
  emxFree_real_T(&b_I);
  emxFree_real_T(&b_T);
  emxFree_int32_T(&c_r2);
  emxFree_int32_T(&c_r1);
  emxFree_boolean_T(&r0);
  emxFree_boolean_T(&indOff);
  emxFree_boolean_T(&indOn);
  b_error = err;
  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
  return b_error;
}

/* End of code generation (naivePerfusionSSEcalP2X7.c) */
