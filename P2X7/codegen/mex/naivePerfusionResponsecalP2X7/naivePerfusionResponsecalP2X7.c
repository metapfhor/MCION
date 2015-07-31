/*
 * naivePerfusionResponsecalP2X7.c
 *
 * Code generation for function 'naivePerfusionResponsecalP2X7'
 *
 * C source code generated on: Tue May 27 13:39:04 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionResponsecalP2X7.h"
#include "naivePerfusionResponsecalP2X7_emxutil.h"
#include "linearODESolvecalP2X7.h"
#include "naivePerfusionResponsecalP2X7_mexutil.h"
#include "mldivide.h"
#include "sum.h"
#include "naivePerfusionResponsecalP2X7_data.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 28, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRSInfo b_emlrtRSI = { 35, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRSInfo c_emlrtRSI = { 4, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRSInfo d_emlrtRSI = { 6, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRSInfo e_emlrtRSI = { 8, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRSInfo f_emlrtRSI = { 19, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRSInfo g_emlrtRSI = { 24, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRSInfo h_emlrtRSI = { 30, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRSInfo i_emlrtRSI = { 16, "max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/datafun/max.m" };

static emlrtRSInfo j_emlrtRSI = { 18, "eml_min_or_max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_min_or_max.m" };

static emlrtRSInfo k_emlrtRSI = { 38, "eml_min_or_max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_min_or_max.m" };

static emlrtRSInfo l_emlrtRSI = { 73, "eml_min_or_max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_min_or_max.m" };

static emlrtRSInfo m_emlrtRSI = { 88, "eml_min_or_max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_min_or_max.m" };

static emlrtRSInfo n_emlrtRSI = { 219, "eml_min_or_max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_min_or_max.m" };

static emlrtRSInfo o_emlrtRSI = { 192, "eml_min_or_max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_min_or_max.m" };

static emlrtRSInfo q_emlrtRSI = { 51, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

static emlrtRSInfo r_emlrtRSI = { 79, "colon",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/colon.m" };

static emlrtRSInfo s_emlrtRSI = { 280, "colon",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/colon.m" };

static emlrtRSInfo t_emlrtRSI = { 288, "colon",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/colon.m" };

static emlrtRSInfo u_emlrtRSI = { 401, "colon",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/colon.m" };

static emlrtRSInfo v_emlrtRSI = { 11, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo w_emlrtRSI = { 14, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo x_emlrtRSI = { 26, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo y_emlrtRSI = { 39, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo db_emlrtRSI = { 11, "repmat",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/repmat.m" };

static emlrtRSInfo eb_emlrtRSI = { 58, "repmat",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/repmat.m" };

static emlrtRSInfo fb_emlrtRSI = { 61, "repmat",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/repmat.m" };

static emlrtRSInfo gb_emlrtRSI = { 48, "eml_assert_valid_size_arg",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m"
};

static emlrtRSInfo hb_emlrtRSI = { 52, "eml_assert_valid_size_arg",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m"
};

static emlrtRSInfo ib_emlrtRSI = { 41, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtRSInfo kb_emlrtRSI = { 230, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtRSInfo lb_emlrtRSI = { 239, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtMCInfo emlrtMCI = { 41, 9, "eml_min_or_max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_min_or_max.m" };

static emlrtMCInfo b_emlrtMCI = { 38, 19, "eml_min_or_max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_min_or_max.m" };

static emlrtMCInfo c_emlrtMCI = { 74, 9, "eml_min_or_max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_min_or_max.m" };

static emlrtMCInfo d_emlrtMCI = { 73, 19, "eml_min_or_max",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_min_or_max.m" };

static emlrtMCInfo e_emlrtMCI = { 52, 9, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

static emlrtMCInfo f_emlrtMCI = { 51, 15, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

static emlrtMCInfo g_emlrtMCI = { 402, 5, "colon",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/colon.m" };

static emlrtMCInfo h_emlrtMCI = { 401, 15, "colon",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/colon.m" };

static emlrtMCInfo i_emlrtMCI = { 14, 5, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtMCInfo n_emlrtMCI = { 49, 13, "eml_assert_valid_size_arg",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m"
};

static emlrtMCInfo o_emlrtMCI = { 48, 23, "eml_assert_valid_size_arg",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m"
};

static emlrtMCInfo p_emlrtMCI = { 53, 5, "eml_assert_valid_size_arg",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m"
};

static emlrtMCInfo q_emlrtMCI = { 52, 15, "eml_assert_valid_size_arg",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m"
};

static emlrtMCInfo s_emlrtMCI = { 239, 9, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtRTEInfo d_emlrtRTEI = { 1, 31, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRTEInfo e_emlrtRTEI = { 281, 1, "colon",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/colon.m" };

static emlrtRTEInfo f_emlrtRTEI = { 45, 1, "repmat",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/repmat.m" };

static emlrtRTEInfo g_emlrtRTEI = { 127, 5, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtRTEInfo h_emlrtRTEI = { 18, 2, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRTEInfo i_emlrtRTEI = { 24, 3, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtRTEInfo j_emlrtRTEI = { 33, 6, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtRTEInfo k_emlrtRTEI = { 20, 9, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtECInfo emlrtECI = { -1, 19, 2, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtBCInfo emlrtBCI = { -1, -1, 34, 7, "toff",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtECInfo b_emlrtECI = { -1, 30, 12, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtBCInfo b_emlrtBCI = { -1, -1, 25, 8, "ind",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtECInfo c_emlrtECI = { -1, 24, 12, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtBCInfo c_emlrtBCI = { -1, -1, 24, 24, "toff",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtECInfo d_emlrtECI = { 1, 20, 6, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtBCInfo d_emlrtBCI = { -1, -1, 18, 11, "ton",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtBCInfo e_emlrtBCI = { -1, -1, 6, 22, "T",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtECInfo e_emlrtECI = { -1, 6, 10, "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m"
};

static emlrtBCInfo f_emlrtBCI = { -1, -1, 6, 10, "T",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtBCInfo g_emlrtBCI = { -1, -1, 5, 11, "T",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtBCInfo h_emlrtBCI = { -1, -1, 5, 6, "T",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtBCInfo i_emlrtBCI = { -1, -1, 8, 9, "T",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtBCInfo j_emlrtBCI = { -1, -1, 19, 4, "Y",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtBCInfo k_emlrtBCI = { -1, -1, 26, 8, "ind",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

static emlrtBCInfo l_emlrtBCI = { -1, -1, 33, 9, "ind",
  "naivePerfusionResponsecalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m",
  0 };

/* Function Declarations */
static const mxArray *b_message(const mxArray *b, const mxArray *c, emlrtMCInfo *
  location);
static void eml_li_find(const emxArray_boolean_T *x, emxArray_int32_T *y);

/* Function Definitions */
static const mxArray *b_message(const mxArray *b, const mxArray *c, emlrtMCInfo *
  location)
{
  const mxArray *pArrays[2];
  const mxArray *m14;
  pArrays[0] = b;
  pArrays[1] = c;
  return emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 1, &m14, 2, pArrays,
    "message", TRUE, location);
}

static void eml_li_find(const emxArray_boolean_T *x, emxArray_int32_T *y)
{
  int32_T k;
  boolean_T overflow;
  int32_T i;
  const mxArray *b_y;
  const mxArray *m2;
  int32_T j;
  emlrtPushRtStackR2012b(&v_emlrtRSI, emlrtRootTLSGlobal);
  k = 0;
  emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
  if (1 > x->size[0]) {
    overflow = FALSE;
  } else {
    overflow = (x->size[0] > 2147483646);
  }

  if (overflow) {
    emlrtPushRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
  for (i = 1; i <= x->size[0]; i++) {
    if (x->data[i - 1]) {
      k++;
    }
  }

  emlrtPopRtStackR2012b(&v_emlrtRSI, emlrtRootTLSGlobal);
  if (k <= x->size[0]) {
  } else {
    emlrtPushRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    b_y = NULL;
    m2 = mxCreateString("Assertion failed.");
    emlrtAssign(&b_y, m2);
    error(b_y, &i_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
  }

  j = y->size[0];
  y->size[0] = k;
  emxEnsureCapacity((emxArray__common *)y, j, (int32_T)sizeof(int32_T),
                    &k_emlrtRTEI);
  j = 0;
  emlrtPushRtStackR2012b(&x_emlrtRSI, emlrtRootTLSGlobal);
  if (1 > x->size[0]) {
    overflow = FALSE;
  } else {
    overflow = (x->size[0] > 2147483646);
  }

  if (overflow) {
    emlrtPushRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&x_emlrtRSI, emlrtRootTLSGlobal);
  for (i = 1; i <= x->size[0]; i++) {
    if (x->data[i - 1]) {
      y->data[j] = i;
      j++;
    }
  }
}

void check_forloop_overflow_error(void)
{
  const mxArray *y;
  static const int32_T iv6[2] = { 1, 34 };

  const mxArray *m1;
  char_T cv8[34];
  int32_T i;
  static const char_T cv9[34] = { 'C', 'o', 'd', 'e', 'r', ':', 't', 'o', 'o',
    'l', 'b', 'o', 'x', ':', 'i', 'n', 't', '_', 'f', 'o', 'r', 'l', 'o', 'o',
    'p', '_', 'o', 'v', 'e', 'r', 'f', 'l', 'o', 'w' };

  const mxArray *b_y;
  static const int32_T iv7[2] = { 1, 23 };

  char_T cv10[23];
  static const char_T cv11[23] = { 'c', 'o', 'd', 'e', 'r', '.', 'i', 'n', 't',
    'e', 'r', 'n', 'a', 'l', '.', 'i', 'n', 'd', 'e', 'x', 'I', 'n', 't' };

  emlrtPushRtStackR2012b(&q_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_synchGlobalsToML();
  y = NULL;
  m1 = mxCreateCharArray(2, iv6);
  for (i = 0; i < 34; i++) {
    cv8[i] = cv9[i];
  }

  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 34, m1, cv8);
  emlrtAssign(&y, m1);
  b_y = NULL;
  m1 = mxCreateCharArray(2, iv7);
  for (i = 0; i < 23; i++) {
    cv10[i] = cv11[i];
  }

  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 23, m1, cv10);
  emlrtAssign(&b_y, m1);
  error(b_message(y, b_y, &e_emlrtMCI), &f_emlrtMCI);
  emlrt_synchGlobalsFromML();
  emlrtPopRtStackR2012b(&q_emlrtRSI, emlrtRootTLSGlobal);
}

void naivePerfusionResponsecalP2X7(const emxArray_real_T *ton, const
  emxArray_real_T *toff, real_T Ttot, const emxArray_real_T *T, emxArray_real_T *
  Tout, emxArray_real_T *Isoln, emxArray_real_T *Ysoln)
{
  boolean_T overflow;
  const mxArray *y;
  static const int32_T iv0[2] = { 1, 36 };

  const mxArray *m0;
  char_T cv0[36];
  int32_T i;
  static const char_T cv1[36] = { 'C', 'o', 'd', 'e', 'r', ':', 't', 'o', 'o',
    'l', 'b', 'o', 'x', ':', 'a', 'u', 't', 'o', 'D', 'i', 'm', 'I', 'n', 'c',
    'o', 'm', 'p', 'a', 't', 'i', 'b', 'i', 'l', 'i', 't', 'y' };

  const mxArray *b_y;
  static const int32_T iv1[2] = { 1, 39 };

  char_T cv2[39];
  static const char_T cv3[39] = { 'C', 'o', 'd', 'e', 'r', ':', 't', 'o', 'o',
    'l', 'b', 'o', 'x', ':', 'e', 'm', 'l', '_', 'm', 'i', 'n', '_', 'o', 'r',
    '_', 'm', 'a', 'x', '_', 'v', 'a', 'r', 'D', 'i', 'm', 'Z', 'e', 'r', 'o' };

  real_T ndbl;
  int32_T ib;
  boolean_T exitg3;
  emxArray_int32_T *ii;
  int32_T jcol;
  real_T dt;
  int32_T loop_ub;
  int32_T iacol;
  real_T anew;
  real_T apnd;
  real_T cdiff;
  real_T absa;
  real_T absb;
  real_T b_absa;
  const mxArray *c_y;
  static const int32_T iv2[2] = { 1, 21 };

  char_T cv4[21];
  static const char_T cv5[21] = { 'C', 'o', 'd', 'e', 'r', ':', 'M', 'A', 'T',
    'L', 'A', 'B', ':', 'p', 'm', 'a', 'x', 's', 'i', 'z', 'e' };

  emxArray_real_T *d_y;
  emxArray_boolean_T *b_T;
  emxArray_boolean_T *indBef;
  emxArray_int32_T *r0;
  real_T a[24];
  const mxArray *e_y;
  static const int32_T iv3[2] = { 1, 28 };

  char_T cv6[28];
  static const char_T cv7[28] = { 'C', 'o', 'd', 'e', 'r', ':', 'M', 'A', 'T',
    'L', 'A', 'B', ':', 'N', 'o', 'n', 'I', 'n', 't', 'e', 'g', 'e', 'r', 'I',
    'n', 'p', 'u', 't' };

  real_T b_ndbl;
  const mxArray *f_y;
  static const int32_T iv4[2] = { 1, 21 };

  int32_T mv[2];
  int32_T outsize[2];
  emxArray_real_T *c_r1;
  boolean_T b0;
  int32_T iv5[2];
  real_T b_ton[2];
  emxArray_boolean_T *x;
  boolean_T exitg2;
  boolean_T guard2 = FALSE;
  const mxArray *g_y;
  emxArray_int32_T *b_ii;
  emxArray_real_T *ind;
  boolean_T exitg1;
  boolean_T guard1 = FALSE;
  const mxArray *h_y;
  emxArray_int32_T *c_ii;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);

  /* #codgen; */
  emlrtPushRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
  if ((T->size[0] == 1) || (T->size[0] != 1)) {
    overflow = TRUE;
  } else {
    overflow = FALSE;
  }

  if (overflow) {
  } else {
    emlrtPushRtStackR2012b(&k_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    y = NULL;
    m0 = mxCreateCharArray(2, iv0);
    for (i = 0; i < 36; i++) {
      cv0[i] = cv1[i];
    }

    emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 36, m0, cv0);
    emlrtAssign(&y, m0);
    error(message(y, &emlrtMCI), &b_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&k_emlrtRSI, emlrtRootTLSGlobal);
  }

  if (T->size[0] > 0) {
  } else {
    emlrtPushRtStackR2012b(&l_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    b_y = NULL;
    m0 = mxCreateCharArray(2, iv1);
    for (i = 0; i < 39; i++) {
      cv2[i] = cv3[i];
    }

    emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 39, m0, cv2);
    emlrtAssign(&b_y, m0);
    error(message(b_y, &c_emlrtMCI), &d_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&l_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPushRtStackR2012b(&m_emlrtRSI, emlrtRootTLSGlobal);
  i = 1;
  ndbl = T->data[0];
  if (T->size[0] > 1) {
    if (muDoubleScalarIsNaN(T->data[0])) {
      emlrtPushRtStackR2012b(&o_emlrtRSI, emlrtRootTLSGlobal);
      if (2 > T->size[0]) {
        overflow = FALSE;
      } else {
        overflow = (T->size[0] > 2147483646);
      }

      if (overflow) {
        emlrtPushRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
        check_forloop_overflow_error();
        emlrtPopRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
      }

      emlrtPopRtStackR2012b(&o_emlrtRSI, emlrtRootTLSGlobal);
      ib = 2;
      exitg3 = FALSE;
      while ((exitg3 == FALSE) && (ib <= T->size[0])) {
        i = ib;
        if (!muDoubleScalarIsNaN(T->data[ib - 1])) {
          ndbl = T->data[ib - 1];
          exitg3 = TRUE;
        } else {
          ib++;
        }
      }
    }

    if (i < T->size[0]) {
      emlrtPushRtStackR2012b(&n_emlrtRSI, emlrtRootTLSGlobal);
      if (i + 1 > T->size[0]) {
        overflow = FALSE;
      } else {
        overflow = (T->size[0] > 2147483646);
      }

      if (overflow) {
        emlrtPushRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
        check_forloop_overflow_error();
        emlrtPopRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
      }

      emlrtPopRtStackR2012b(&n_emlrtRSI, emlrtRootTLSGlobal);
      while (i + 1 <= T->size[0]) {
        if (T->data[i] > ndbl) {
          ndbl = T->data[i];
        }

        i++;
      }
    }
  }

  emlrtPopRtStackR2012b(&m_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
  emxInit_int32_T(&ii, 1, &j_emlrtRTEI, TRUE);
  if (ndbl < Ttot) {
    jcol = T->size[0];
    emlrtDynamicBoundsCheckFastR2012b(2, 1, jcol, &h_emlrtBCI,
      emlrtRootTLSGlobal);
    jcol = T->size[0];
    emlrtDynamicBoundsCheckFastR2012b(1, 1, jcol, &g_emlrtBCI,
      emlrtRootTLSGlobal);
    dt = T->data[1] - T->data[0];
    if (1 > T->size[0] - 1) {
      loop_ub = 0;
    } else {
      jcol = T->size[0];
      emlrtDynamicBoundsCheckFastR2012b(1, 1, jcol, &f_emlrtBCI,
        emlrtRootTLSGlobal);
      jcol = T->size[0];
      i = T->size[0] - 1;
      loop_ub = emlrtDynamicBoundsCheckFastR2012b(i, 1, jcol, &f_emlrtBCI,
        emlrtRootTLSGlobal);
    }

    emlrtVectorVectorIndexCheckR2012b(T->size[0], 1, 1, loop_ub, &e_emlrtECI,
      emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&d_emlrtRSI, emlrtRootTLSGlobal);
    jcol = T->size[0];
    i = T->size[0];
    emlrtDynamicBoundsCheckFastR2012b(i, 1, jcol, &e_emlrtBCI,
      emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&r_emlrtRSI, emlrtRootTLSGlobal);
    if (muDoubleScalarIsNaN(T->data[T->size[0] - 1]) || muDoubleScalarIsNaN(dt))
    {
      iacol = 0;
      anew = rtNaN;
      apnd = Ttot;
      overflow = FALSE;
    } else if ((dt == 0.0) || ((T->data[T->size[0] - 1] < Ttot) && (dt < 0.0)) ||
               ((Ttot < T->data[T->size[0] - 1]) && (dt > 0.0))) {
      iacol = -1;
      anew = T->data[T->size[0] - 1];
      apnd = Ttot;
      overflow = FALSE;
    } else if (muDoubleScalarIsInf(T->data[T->size[0] - 1]) ||
               muDoubleScalarIsInf(Ttot)) {
      iacol = 0;
      anew = rtNaN;
      apnd = Ttot;
      if (muDoubleScalarIsInf(dt) || (T->data[T->size[0] - 1] == Ttot)) {
        overflow = TRUE;
      } else {
        overflow = FALSE;
      }

      overflow = !overflow;
    } else if (muDoubleScalarIsInf(dt)) {
      iacol = 0;
      anew = T->data[T->size[0] - 1];
      apnd = Ttot;
      overflow = FALSE;
    } else {
      anew = T->data[T->size[0] - 1];
      ndbl = muDoubleScalarFloor((Ttot - T->data[T->size[0] - 1]) / dt + 0.5);
      apnd = T->data[T->size[0] - 1] + ndbl * dt;
      if (dt > 0.0) {
        cdiff = apnd - Ttot;
      } else {
        cdiff = Ttot - apnd;
      }

      absa = muDoubleScalarAbs(T->data[T->size[0] - 1]);
      absb = muDoubleScalarAbs(Ttot);
      if (absa > absb) {
        b_absa = absa;
      } else {
        b_absa = absb;
      }

      if (muDoubleScalarAbs(cdiff) < 4.4408920985006262E-16 * b_absa) {
        ndbl++;
        apnd = Ttot;
      } else if (cdiff > 0.0) {
        apnd = T->data[T->size[0] - 1] + (ndbl - 1.0) * dt;
      } else {
        ndbl++;
      }

      overflow = (2.147483647E+9 < ndbl);
      if (ndbl >= 0.0) {
        iacol = (int32_T)ndbl - 1;
      } else {
        iacol = -1;
      }
    }

    emlrtPushRtStackR2012b(&s_emlrtRSI, emlrtRootTLSGlobal);
    if (!overflow) {
    } else {
      emlrtPushRtStackR2012b(&u_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_synchGlobalsToML();
      c_y = NULL;
      m0 = mxCreateCharArray(2, iv2);
      for (i = 0; i < 21; i++) {
        cv4[i] = cv5[i];
      }

      emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 21, m0, cv4);
      emlrtAssign(&c_y, m0);
      error(message(c_y, &g_emlrtMCI), &h_emlrtMCI);
      emlrt_synchGlobalsFromML();
      emlrtPopRtStackR2012b(&u_emlrtRSI, emlrtRootTLSGlobal);
    }

    b_emxInit_real_T(&d_y, 2, &d_emlrtRTEI, TRUE);
    emlrtPopRtStackR2012b(&s_emlrtRSI, emlrtRootTLSGlobal);
    jcol = d_y->size[0] * d_y->size[1];
    d_y->size[0] = 1;
    d_y->size[1] = iacol + 1;
    emxEnsureCapacity((emxArray__common *)d_y, jcol, (int32_T)sizeof(real_T),
                      &e_emlrtRTEI);
    if (iacol + 1 > 0) {
      d_y->data[0] = anew;
      if (iacol + 1 > 1) {
        d_y->data[iacol] = apnd;
        jcol = iacol + (iacol < 0);
        if (jcol >= 0) {
          i = (int32_T)((uint32_T)jcol >> 1);
        } else {
          i = ~(int32_T)((uint32_T)~jcol >> 1);
        }

        emlrtPushRtStackR2012b(&t_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&t_emlrtRSI, emlrtRootTLSGlobal);
        for (ib = 1; ib < i; ib++) {
          ndbl = (real_T)ib * dt;
          d_y->data[ib] = anew + ndbl;
          d_y->data[iacol - ib] = apnd - ndbl;
        }

        if (i << 1 == iacol) {
          d_y->data[i] = (anew + apnd) / 2.0;
        } else {
          ndbl = (real_T)i * dt;
          d_y->data[i] = anew + ndbl;
          d_y->data[i + 1] = apnd - ndbl;
        }
      }
    }

    emlrtPopRtStackR2012b(&r_emlrtRSI, emlrtRootTLSGlobal);
    ib = d_y->size[1];
    jcol = Tsoln->size[0];
    Tsoln->size[0] = loop_ub + ib;
    emxEnsureCapacity((emxArray__common *)Tsoln, jcol, (int32_T)sizeof(real_T),
                      &d_emlrtRTEI);
    for (jcol = 0; jcol < loop_ub; jcol++) {
      Tsoln->data[jcol] = T->data[jcol];
    }

    for (jcol = 0; jcol < ib; jcol++) {
      Tsoln->data[jcol + loop_ub] = d_y->data[jcol];
    }

    emxFree_real_T(&d_y);
    Tsoln_dirty |= 1U;
    emlrtPopRtStackR2012b(&d_emlrtRSI, emlrtRootTLSGlobal);
  } else {
    emxInit_boolean_T(&b_T, 1, &d_emlrtRTEI, TRUE);
    emlrtPushRtStackR2012b(&e_emlrtRSI, emlrtRootTLSGlobal);
    jcol = b_T->size[0];
    b_T->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)b_T, jcol, (int32_T)sizeof(boolean_T),
                      &d_emlrtRTEI);
    loop_ub = T->size[0];
    for (jcol = 0; jcol < loop_ub; jcol++) {
      b_T->data[jcol] = (T->data[jcol] <= Ttot);
    }

    eml_li_find(b_T, ii);
    jcol = Tsoln->size[0];
    Tsoln->size[0] = ii->size[0];
    emxEnsureCapacity((emxArray__common *)Tsoln, jcol, (int32_T)sizeof(real_T),
                      &d_emlrtRTEI);
    loop_ub = ii->size[0];
    emxFree_boolean_T(&b_T);
    for (jcol = 0; jcol < loop_ub; jcol++) {
      i = T->size[0];
      ib = ii->data[jcol];
      Tsoln->data[jcol] = T->data[emlrtDynamicBoundsCheckFastR2012b(ib, 1, i,
        &i_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    Tsoln_dirty |= 1U;
    emlrtPopRtStackR2012b(&e_emlrtRSI, emlrtRootTLSGlobal);
  }

  jcol = I->size[0];
  I->size[0] = Tsoln->size[0];
  emxEnsureCapacity((emxArray__common *)I, jcol, (int32_T)sizeof(real_T),
                    &d_emlrtRTEI);
  loop_ub = Tsoln->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    I->data[jcol] = 0.0;
  }

  I_dirty |= 1U;
  i = Tsoln->size[0];
  jcol = Y->size[0] * Y->size[1];
  Y->size[0] = i;
  Y->size[1] = 24;
  emxEnsureCapacity((emxArray__common *)Y, jcol, (int32_T)sizeof(real_T),
                    &d_emlrtRTEI);
  loop_ub = Tsoln->size[0] * 24;
  for (jcol = 0; jcol < loop_ub; jcol++) {
    Y->data[jcol] = 0.0;
  }

  Y_dirty |= 1U;
  memset(&p0[0], 0, 24U * sizeof(real_T));
  emxInit_boolean_T(&indBef, 1, &h_emlrtRTEI, TRUE);
  p0_dirty |= 1U;
  p0[0] = 1.0;
  p0_dirty |= 1U;
  jcol = ton->size[0];
  emlrtDynamicBoundsCheckFastR2012b(1, 1, jcol, &d_emlrtBCI, emlrtRootTLSGlobal);
  ndbl = ton->data[0];
  jcol = indBef->size[0];
  indBef->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indBef, jcol, (int32_T)sizeof(boolean_T),
                    &d_emlrtRTEI);
  loop_ub = T->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    indBef->data[jcol] = (T->data[jcol] < ndbl);
  }

  emxInit_int32_T(&r0, 1, &d_emlrtRTEI, TRUE);
  emlrtPushRtStackR2012b(&f_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indBef, ii);
  jcol = r0->size[0];
  r0->size[0] = ii->size[0];
  emxEnsureCapacity((emxArray__common *)r0, jcol, (int32_T)sizeof(int32_T),
                    &d_emlrtRTEI);
  loop_ub = ii->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    i = Y->size[0];
    ib = ii->data[jcol];
    r0->data[jcol] = emlrtDynamicBoundsCheckFastR2012b(ib, 1, i, &j_emlrtBCI,
      emlrtRootTLSGlobal) - 1;
  }

  emlrtPopRtStackR2012b(&f_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&f_emlrtRSI, emlrtRootTLSGlobal);
  memcpy(&a[0], &p0[0], 24U * sizeof(real_T));
  ndbl = sum(indBef);
  emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
  if ((ndbl != ndbl) || muDoubleScalarIsInf(ndbl)) {
    overflow = FALSE;
  } else {
    overflow = TRUE;
  }

  if (overflow) {
  } else {
    emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    e_y = NULL;
    m0 = mxCreateCharArray(2, iv3);
    for (i = 0; i < 28; i++) {
      cv6[i] = cv7[i];
    }

    emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 28, m0, cv6);
    emlrtAssign(&e_y, m0);
    error(message(e_y, &n_emlrtMCI), &o_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
  }

  if (ndbl <= 0.0) {
    b_ndbl = 0.0;
  } else {
    b_ndbl = ndbl;
  }

  if (2.147483647E+9 >= b_ndbl) {
  } else {
    emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    f_y = NULL;
    m0 = mxCreateCharArray(2, iv4);
    for (i = 0; i < 21; i++) {
      cv4[i] = cv5[i];
    }

    emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 21, m0, cv4);
    emlrtAssign(&f_y, m0);
    error(message(f_y, &p_emlrtMCI), &q_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
  mv[0] = (int32_T)ndbl;
  mv[1] = 1;
  for (jcol = 0; jcol < 2; jcol++) {
    outsize[jcol] = (1 + 23 * jcol) * mv[jcol];
  }

  b_emxInit_real_T(&c_r1, 2, &d_emlrtRTEI, TRUE);
  jcol = c_r1->size[0] * c_r1->size[1];
  c_r1->size[0] = outsize[0];
  c_r1->size[1] = 24;
  emxEnsureCapacity((emxArray__common *)c_r1, jcol, (int32_T)sizeof(real_T),
                    &f_emlrtRTEI);
  if (outsize[0] == 0) {
  } else {
    i = 0;
    ib = 0;
    emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    iacol = 0;
    for (jcol = 0; jcol < 24; jcol++) {
      emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
      if (1 > (int32_T)ndbl) {
        b0 = FALSE;
      } else {
        b0 = ((int32_T)ndbl > 2147483646);
      }

      if (b0) {
        emlrtPushRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
        check_forloop_overflow_error();
        emlrtPopRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
      }

      emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
      for (loop_ub = 1; loop_ub <= (int32_T)ndbl; loop_ub++) {
        c_r1->data[ib] = a[iacol];
        i = iacol + 1;
        ib++;
      }

      iacol = i;
    }
  }

  emlrtPopRtStackR2012b(&f_emlrtRSI, emlrtRootTLSGlobal);
  iv5[0] = r0->size[0];
  iv5[1] = 24;
  emlrtSubAssignSizeCheckR2012b(iv5, 2, *(int32_T (*)[2])c_r1->size, 2,
    &emlrtECI, emlrtRootTLSGlobal);
  for (jcol = 0; jcol < 24; jcol++) {
    loop_ub = c_r1->size[0];
    for (i = 0; i < loop_ub; i++) {
      Y->data[r0->data[i] + Y->size[0] * jcol] = c_r1->data[i + c_r1->size[0] *
        jcol];
    }
  }

  emxFree_real_T(&c_r1);
  emxFree_int32_T(&r0);
  Y_dirty |= 1U;
  i = ton->size[0];
  emlrtDimSizeEqCheckFastR2012b(1, i, &d_emlrtECI, emlrtRootTLSGlobal);
  i = ton->size[0];
  jcol = 0;
  while (jcol <= 0) {
    for (jcol = 0; jcol < i; jcol++) {
      b_ton[jcol] = ton->data[jcol];
    }

    jcol = 1;
  }

  emxInit_boolean_T(&x, 1, &d_emlrtRTEI, TRUE);
  A = ATP;
  A_dirty |= 1U;
  jcol = x->size[0];
  x->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)x, jcol, (int32_T)sizeof(boolean_T),
                    &d_emlrtRTEI);
  loop_ub = T->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    x->data[jcol] = (T->data[jcol] > b_ton[0]);
  }

  jcol = toff->size[0];
  emlrtDynamicBoundsCheckFastR2012b(1, 1, jcol, &c_emlrtBCI, emlrtRootTLSGlobal);
  ndbl = toff->data[0];
  jcol = indBef->size[0];
  indBef->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indBef, jcol, (int32_T)sizeof(boolean_T),
                    &d_emlrtRTEI);
  loop_ub = T->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    indBef->data[jcol] = (T->data[jcol] <= ndbl);
  }

  jcol = x->size[0];
  i = indBef->size[0];
  emlrtSizeEqCheck1DFastR2012b(jcol, i, &c_emlrtECI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
  jcol = x->size[0];
  emxEnsureCapacity((emxArray__common *)x, jcol, (int32_T)sizeof(boolean_T),
                    &d_emlrtRTEI);
  loop_ub = x->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    x->data[jcol] = (x->data[jcol] && indBef->data[jcol]);
  }

  emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
  ib = 0;
  jcol = ii->size[0];
  ii->size[0] = x->size[0];
  emxEnsureCapacity((emxArray__common *)ii, jcol, (int32_T)sizeof(int32_T),
                    &g_emlrtRTEI);
  emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
  if (1 > x->size[0]) {
    overflow = FALSE;
  } else {
    overflow = (x->size[0] > 2147483646);
  }

  if (overflow) {
    emlrtPushRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
  i = 1;
  exitg2 = FALSE;
  while ((exitg2 == FALSE) && (i <= x->size[0])) {
    guard2 = FALSE;
    if (x->data[i - 1]) {
      ib++;
      ii->data[ib - 1] = i;
      if (ib >= x->size[0]) {
        exitg2 = TRUE;
      } else {
        guard2 = TRUE;
      }
    } else {
      guard2 = TRUE;
    }

    if (guard2 == TRUE) {
      i++;
    }
  }

  if (ib <= x->size[0]) {
  } else {
    emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    g_y = NULL;
    m0 = mxCreateString("Assertion failed.");
    emlrtAssign(&g_y, m0);
    error(g_y, &s_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
  }

  if (x->size[0] == 1) {
    if (ib == 0) {
      jcol = ii->size[0];
      ii->size[0] = 0;
      emxEnsureCapacity((emxArray__common *)ii, jcol, (int32_T)sizeof(int32_T),
                        &d_emlrtRTEI);
    }
  } else {
    if (1 > ib) {
      loop_ub = 0;
    } else {
      loop_ub = ib;
    }

    emxInit_int32_T(&b_ii, 1, &d_emlrtRTEI, TRUE);
    jcol = b_ii->size[0];
    b_ii->size[0] = loop_ub;
    emxEnsureCapacity((emxArray__common *)b_ii, jcol, (int32_T)sizeof(int32_T),
                      &d_emlrtRTEI);
    for (jcol = 0; jcol < loop_ub; jcol++) {
      b_ii->data[jcol] = ii->data[jcol];
    }

    jcol = ii->size[0];
    ii->size[0] = b_ii->size[0];
    emxEnsureCapacity((emxArray__common *)ii, jcol, (int32_T)sizeof(int32_T),
                      &d_emlrtRTEI);
    loop_ub = b_ii->size[0];
    for (jcol = 0; jcol < loop_ub; jcol++) {
      ii->data[jcol] = b_ii->data[jcol];
    }

    emxFree_int32_T(&b_ii);
  }

  emxInit_real_T(&ind, 1, &i_emlrtRTEI, TRUE);
  emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
  jcol = ind->size[0];
  ind->size[0] = ii->size[0];
  emxEnsureCapacity((emxArray__common *)ind, jcol, (int32_T)sizeof(real_T),
                    &d_emlrtRTEI);
  loop_ub = ii->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    ind->data[jcol] = ii->data[jcol];
  }

  emlrtPopRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
  jcol = ind->size[0];
  emlrtDynamicBoundsCheckFastR2012b(1, 1, jcol, &b_emlrtBCI, emlrtRootTLSGlobal);
  imin = ind->data[0];
  imin_dirty |= 1U;
  jcol = ind->size[0];
  i = ind->size[0];
  imax = ind->data[emlrtDynamicBoundsCheckFastR2012b(i, 1, jcol, &k_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  imax_dirty |= 1U;
  t0 = b_ton[0];
  t0_dirty |= 1U;
  emlrtPushRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  linearODESolvecalP2X7();
  emlrtPopRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  A = 0.0;
  A_dirty |= 1U;
  jcol = T->size[0];
  i = toff->size[0];
  emlrtSizeEqCheck1DFastR2012b(jcol, i, &b_emlrtECI, emlrtRootTLSGlobal);
  jcol = x->size[0];
  x->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)x, jcol, (int32_T)sizeof(boolean_T),
                    &d_emlrtRTEI);
  loop_ub = T->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    x->data[jcol] = (T->data[jcol] > toff->data[jcol]);
  }

  jcol = indBef->size[0];
  indBef->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indBef, jcol, (int32_T)sizeof(boolean_T),
                    &d_emlrtRTEI);
  loop_ub = T->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    indBef->data[jcol] = (T->data[jcol] <= Ttot);
  }

  jcol = x->size[0];
  i = indBef->size[0];
  emlrtSizeEqCheck1DFastR2012b(jcol, i, &b_emlrtECI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&h_emlrtRSI, emlrtRootTLSGlobal);
  jcol = x->size[0];
  emxEnsureCapacity((emxArray__common *)x, jcol, (int32_T)sizeof(boolean_T),
                    &d_emlrtRTEI);
  loop_ub = x->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    x->data[jcol] = (x->data[jcol] && indBef->data[jcol]);
  }

  emxFree_boolean_T(&indBef);
  emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
  ib = 0;
  jcol = ii->size[0];
  ii->size[0] = x->size[0];
  emxEnsureCapacity((emxArray__common *)ii, jcol, (int32_T)sizeof(int32_T),
                    &g_emlrtRTEI);
  emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
  if (1 > x->size[0]) {
    overflow = FALSE;
  } else {
    overflow = (x->size[0] > 2147483646);
  }

  if (overflow) {
    emlrtPushRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
  i = 1;
  exitg1 = FALSE;
  while ((exitg1 == FALSE) && (i <= x->size[0])) {
    guard1 = FALSE;
    if (x->data[i - 1]) {
      ib++;
      ii->data[ib - 1] = i;
      if (ib >= x->size[0]) {
        exitg1 = TRUE;
      } else {
        guard1 = TRUE;
      }
    } else {
      guard1 = TRUE;
    }

    if (guard1 == TRUE) {
      i++;
    }
  }

  if (ib <= x->size[0]) {
  } else {
    emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    h_y = NULL;
    m0 = mxCreateString("Assertion failed.");
    emlrtAssign(&h_y, m0);
    error(h_y, &s_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
  }

  if (x->size[0] == 1) {
    if (ib == 0) {
      jcol = ii->size[0];
      ii->size[0] = 0;
      emxEnsureCapacity((emxArray__common *)ii, jcol, (int32_T)sizeof(int32_T),
                        &d_emlrtRTEI);
    }
  } else {
    if (1 > ib) {
      loop_ub = 0;
    } else {
      loop_ub = ib;
    }

    emxInit_int32_T(&c_ii, 1, &d_emlrtRTEI, TRUE);
    jcol = c_ii->size[0];
    c_ii->size[0] = loop_ub;
    emxEnsureCapacity((emxArray__common *)c_ii, jcol, (int32_T)sizeof(int32_T),
                      &d_emlrtRTEI);
    for (jcol = 0; jcol < loop_ub; jcol++) {
      c_ii->data[jcol] = ii->data[jcol];
    }

    jcol = ii->size[0];
    ii->size[0] = c_ii->size[0];
    emxEnsureCapacity((emxArray__common *)ii, jcol, (int32_T)sizeof(int32_T),
                      &d_emlrtRTEI);
    loop_ub = c_ii->size[0];
    for (jcol = 0; jcol < loop_ub; jcol++) {
      ii->data[jcol] = c_ii->data[jcol];
    }

    emxFree_int32_T(&c_ii);
  }

  emxFree_boolean_T(&x);
  emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
  jcol = ind->size[0];
  ind->size[0] = ii->size[0];
  emxEnsureCapacity((emxArray__common *)ind, jcol, (int32_T)sizeof(real_T),
                    &d_emlrtRTEI);
  loop_ub = ii->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    ind->data[jcol] = ii->data[jcol];
  }

  emxFree_int32_T(&ii);
  emlrtPopRtStackR2012b(&h_emlrtRSI, emlrtRootTLSGlobal);
  if (ind->size[0] != 0) {
    imin = ind->data[0];
    imin_dirty |= 1U;
    jcol = ind->size[0];
    i = ind->size[0];
    imax = ind->data[emlrtDynamicBoundsCheckFastR2012b(i, 1, jcol, &l_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    imax_dirty |= 1U;
    jcol = toff->size[0];
    emlrtDynamicBoundsCheckFastR2012b(1, 1, jcol, &emlrtBCI, emlrtRootTLSGlobal);
    t0 = toff->data[0];
    t0_dirty |= 1U;
    emlrtPushRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
    linearODESolvecalP2X7();
    emlrtPopRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  }

  emxFree_real_T(&ind);
  jcol = Tout->size[0];
  Tout->size[0] = Tsoln->size[0];
  emxEnsureCapacity((emxArray__common *)Tout, jcol, (int32_T)sizeof(real_T),
                    &d_emlrtRTEI);
  loop_ub = Tsoln->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    Tout->data[jcol] = Tsoln->data[jcol];
  }

  jcol = Isoln->size[0];
  Isoln->size[0] = I->size[0];
  emxEnsureCapacity((emxArray__common *)Isoln, jcol, (int32_T)sizeof(real_T),
                    &d_emlrtRTEI);
  loop_ub = I->size[0];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    Isoln->data[jcol] = I->data[jcol];
  }

  jcol = Ysoln->size[0] * Ysoln->size[1];
  Ysoln->size[0] = Y->size[0];
  Ysoln->size[1] = 24;
  emxEnsureCapacity((emxArray__common *)Ysoln, jcol, (int32_T)sizeof(real_T),
                    &d_emlrtRTEI);
  loop_ub = Y->size[0] * Y->size[1];
  for (jcol = 0; jcol < loop_ub; jcol++) {
    Ysoln->data[jcol] = Y->data[jcol];
  }

  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionResponsecalP2X7.c) */
