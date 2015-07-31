/*
 * sum.c
 *
 * Code generation for function 'sum'
 *
 * C source code generated on: Tue May 27 13:39:04 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionResponsecalP2X7.h"
#include "sum.h"
#include "naivePerfusionResponsecalP2X7_mexutil.h"
#include "mldivide.h"
#include "naivePerfusionResponsecalP2X7_data.h"

/* Variable Definitions */
static emlrtRSInfo ab_emlrtRSI = { 17, "sum",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/datafun/sum.m" };

static emlrtRSInfo bb_emlrtRSI = { 20, "sum",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/datafun/sum.m" };

static emlrtRSInfo cb_emlrtRSI = { 61, "sum",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/datafun/sum.m" };

static emlrtMCInfo j_emlrtMCI = { 18, 9, "sum",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/datafun/sum.m" };

static emlrtMCInfo k_emlrtMCI = { 17, 19, "sum",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/datafun/sum.m" };

static emlrtMCInfo l_emlrtMCI = { 23, 9, "sum",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/datafun/sum.m" };

static emlrtMCInfo m_emlrtMCI = { 20, 19, "sum",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/datafun/sum.m" };

/* Function Definitions */
real_T sum(const emxArray_boolean_T *x)
{
  real_T y;
  boolean_T overflow;
  boolean_T p;
  int32_T i;
  int32_T exitg1;
  int32_T i1;
  const mxArray *b_y;
  static const int32_T iv8[2] = { 1, 30 };

  const mxArray *m3;
  char_T cv12[30];
  static const char_T cv13[30] = { 'C', 'o', 'd', 'e', 'r', ':', 't', 'o', 'o',
    'l', 'b', 'o', 'x', ':', 's', 'u', 'm', '_', 's', 'p', 'e', 'c', 'i', 'a',
    'l', 'E', 'm', 'p', 't', 'y' };

  const mxArray *c_y;
  static const int32_T iv9[2] = { 1, 36 };

  char_T cv14[36];
  static const char_T cv15[36] = { 'C', 'o', 'd', 'e', 'r', ':', 't', 'o', 'o',
    'l', 'b', 'o', 'x', ':', 'a', 'u', 't', 'o', 'D', 'i', 'm', 'I', 'n', 'c',
    'o', 'm', 'p', 'a', 't', 'i', 'b', 'i', 'l', 'i', 't', 'y' };

  overflow = FALSE;
  p = FALSE;
  i = 0;
  do {
    exitg1 = 0;
    if (i < 2) {
      if (i + 1 <= 1) {
        i1 = x->size[0];
      } else {
        i1 = 1;
      }

      if (i1 != 0) {
        exitg1 = 1;
      } else {
        i++;
      }
    } else {
      p = TRUE;
      exitg1 = 1;
    }
  } while (exitg1 == 0);

  if (!p) {
  } else {
    overflow = TRUE;
  }

  if (!overflow) {
  } else {
    emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    b_y = NULL;
    m3 = mxCreateCharArray(2, iv8);
    for (i = 0; i < 30; i++) {
      cv12[i] = cv13[i];
    }

    emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 30, m3, cv12);
    emlrtAssign(&b_y, m3);
    error(message(b_y, &j_emlrtMCI), &k_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
  }

  if ((x->size[0] == 1) || (x->size[0] != 1)) {
    overflow = TRUE;
  } else {
    overflow = FALSE;
  }

  if (overflow) {
  } else {
    emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    c_y = NULL;
    m3 = mxCreateCharArray(2, iv9);
    for (i = 0; i < 36; i++) {
      cv14[i] = cv15[i];
    }

    emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 36, m3, cv14);
    emlrtAssign(&c_y, m3);
    error(message(c_y, &l_emlrtMCI), &m_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
  }

  if (x->size[0] == 0) {
    y = 0.0;
  } else {
    y = x->data[0];
    emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
    if (2 > x->size[0]) {
      overflow = FALSE;
    } else {
      overflow = (x->size[0] > 2147483646);
    }

    if (overflow) {
      emlrtPushRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
      check_forloop_overflow_error();
      emlrtPopRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
    }

    emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
    for (i = 2; i <= x->size[0]; i++) {
      y += (real_T)x->data[i - 1];
    }
  }

  return y;
}

/* End of code generation (sum.c) */
