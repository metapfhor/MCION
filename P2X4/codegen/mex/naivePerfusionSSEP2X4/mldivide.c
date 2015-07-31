/*
 * mldivide.c
 *
 * Code generation for function 'mldivide'
 *
 * C source code generated on: Tue May 20 14:16:12 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4.h"
#include "mldivide.h"
#include "naivePerfusionSSEP2X4_mexutil.h"
#include "naivePerfusionSSEP2X4_data.h"

/* Variable Definitions */
static emlrtRSInfo h_emlrtRSI = { 51, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

static emlrtRSInfo pb_emlrtRSI = { 1, "mldivide",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/mldivide.p" };

static emlrtRSInfo qb_emlrtRSI = { 20, "eml_lusolve",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_lusolve.m" };

static emlrtRSInfo rb_emlrtRSI = { 70, "eml_lusolve",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_lusolve.m" };

static emlrtRSInfo sb_emlrtRSI = { 68, "eml_lusolve",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_lusolve.m" };

static emlrtRSInfo tb_emlrtRSI = { 88, "eml_lusolve",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_lusolve.m" };

static emlrtRSInfo ub_emlrtRSI = { 90, "eml_lusolve",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_lusolve.m" };

static emlrtRSInfo vb_emlrtRSI = { 8, "eml_xgetrf",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/lapack/eml_xgetrf.m"
};

static emlrtRSInfo wb_emlrtRSI = { 8, "eml_lapack_xgetrf",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/lapack/internal/eml_lapack_xgetrf.m"
};

static emlrtRSInfo xb_emlrtRSI = { 36, "eml_matlab_zgetrf",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m"
};

static emlrtRSInfo yb_emlrtRSI = { 50, "eml_matlab_zgetrf",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m"
};

static emlrtRSInfo ac_emlrtRSI = { 58, "eml_matlab_zgetrf",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m"
};

static emlrtRSInfo bc_emlrtRSI = { 20, "eml_ixamax",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/eml_ixamax.m" };

static emlrtRSInfo cc_emlrtRSI = { 18, "eml_blas_ixamax",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_ixamax.m"
};

static emlrtRSInfo dc_emlrtRSI = { 23, "eml_refblas_ixamax",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m"
};

static emlrtRSInfo ec_emlrtRSI = { 42, "eml_xgeru",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/eml_xgeru.m" };

static emlrtRSInfo fc_emlrtRSI = { 37, "eml_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/eml_xger.m" };

static emlrtRSInfo gc_emlrtRSI = { 18, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo hc_emlrtRSI = { 14, "eml_refblas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xger.m"
};

static emlrtRSInfo ic_emlrtRSI = { 53, "eml_refblas_xgerx",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m"
};

static emlrtRSInfo jc_emlrtRSI = { 40, "eml_refblas_xgerx",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m"
};

static emlrtRSInfo kc_emlrtRSI = { 54, "eml_lusolve",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_lusolve.m" };

static emlrtRSInfo lc_emlrtRSI = { 16, "eml_warning",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_warning.m" };

static emlrtRSInfo mc_emlrtRSI = { 54, "eml_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/eml_xtrsm.m" };

static emlrtRSInfo nc_emlrtRSI = { 28, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo oc_emlrtRSI = { 87, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo pc_emlrtRSI = { 88, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo qc_emlrtRSI = { 89, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo rc_emlrtRSI = { 90, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo sc_emlrtRSI = { 94, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo tc_emlrtRSI = { 97, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo uc_emlrtRSI = { 100, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo vc_emlrtRSI = { 103, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtMCInfo b_emlrtMCI = { 52, 9, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

static emlrtMCInfo c_emlrtMCI = { 51, 15, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

static emlrtMCInfo d_emlrtMCI = { 16, 13, "eml_warning",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_warning.m" };

static emlrtMCInfo e_emlrtMCI = { 16, 5, "eml_warning",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_warning.m" };

/* Function Declarations */
static const mxArray *b_message(const mxArray *b, emlrtMCInfo *location);
static void eml_warning(void);
static void eml_xswap(real_T x[289], int32_T ix0, int32_T iy0);
static const mxArray *message(const mxArray *b, const mxArray *c, emlrtMCInfo
  *location);
static void warning(const mxArray *b, emlrtMCInfo *location);

/* Function Definitions */
static const mxArray *b_message(const mxArray *b, emlrtMCInfo *location)
{
  const mxArray *pArray;
  const mxArray *m6;
  pArray = b;
  return emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 1, &m6, 1, &pArray, "message",
    TRUE, location);
}

static void eml_warning(void)
{
  const mxArray *y;
  static const int32_T iv3[2] = { 1, 27 };

  const mxArray *m2;
  char_T cv4[27];
  int32_T i;
  static const char_T cv5[27] = { 'C', 'o', 'd', 'e', 'r', ':', 'M', 'A', 'T',
    'L', 'A', 'B', ':', 's', 'i', 'n', 'g', 'u', 'l', 'a', 'r', 'M', 'a', 't',
    'r', 'i', 'x' };

  emlrtPushRtStackR2012b(&lc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_synchGlobalsToML();
  y = NULL;
  m2 = mxCreateCharArray(2, iv3);
  for (i = 0; i < 27; i++) {
    cv4[i] = cv5[i];
  }

  emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 27, m2, cv4);
  emlrtAssign(&y, m2);
  warning(b_message(y, &d_emlrtMCI), &e_emlrtMCI);
  emlrt_synchGlobalsFromML();
  emlrtPopRtStackR2012b(&lc_emlrtRSI, emlrtRootTLSGlobal);
}

static void eml_xswap(real_T x[289], int32_T ix0, int32_T iy0)
{
  int32_T ix;
  int32_T iy;
  int32_T k;
  real_T temp;
  ix = ix0 - 1;
  iy = iy0 - 1;
  for (k = 0; k < 17; k++) {
    temp = x[ix];
    x[ix] = x[iy];
    x[iy] = temp;
    ix += 17;
    iy += 17;
  }
}

static const mxArray *message(const mxArray *b, const mxArray *c, emlrtMCInfo
  *location)
{
  const mxArray *pArrays[2];
  const mxArray *m5;
  pArrays[0] = b;
  pArrays[1] = c;
  return emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 1, &m5, 2, pArrays, "message",
    TRUE, location);
}

static void warning(const mxArray *b, emlrtMCInfo *location)
{
  const mxArray *pArray;
  pArray = b;
  emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 0, NULL, 1, &pArray, "warning", TRUE,
                        location);
}

void check_forloop_overflow_error(void)
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

void mldivide(const real_T A[289], real_T B[289])
{
  real_T b_A[289];
  int8_T ipiv[17];
  int32_T jA;
  int32_T info;
  int32_T j;
  int32_T c;
  int32_T ix;
  real_T temp;
  int32_T jy;
  real_T s;
  int32_T b;
  int32_T b_j;
  boolean_T b_jA;
  int32_T ijA;
  char_T DIAGA;
  char_T TRANSA;
  char_T UPLO;
  char_T SIDE;
  ptrdiff_t m_t;
  ptrdiff_t n_t;
  ptrdiff_t lda_t;
  ptrdiff_t ldb_t;
  double * Aia0_t;
  double * Bib0_t;
  double * alpha1_t;
  emlrtPushRtStackR2012b(&pb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&qb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&sb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&wb_emlrtRSI, emlrtRootTLSGlobal);
  memcpy(&b_A[0], &A[0], 289U * sizeof(real_T));
  for (jA = 0; jA < 17; jA++) {
    ipiv[jA] = (int8_T)(1 + jA);
  }

  info = 0;
  for (j = 0; j < 16; j++) {
    c = j * 18;
    emlrtPushRtStackR2012b(&xb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&bc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&cc_emlrtRSI, emlrtRootTLSGlobal);
    jA = 1;
    ix = c;
    temp = muDoubleScalarAbs(b_A[c]);
    emlrtPushRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
    for (jy = 2; jy <= 17 - j; jy++) {
      ix++;
      s = muDoubleScalarAbs(b_A[ix]);
      if (s > temp) {
        jA = jy;
        temp = s;
      }
    }

    emlrtPopRtStackR2012b(&cc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&bc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&xb_emlrtRSI, emlrtRootTLSGlobal);
    if (b_A[(c + jA) - 1] != 0.0) {
      if (jA - 1 != 0) {
        ipiv[j] = (int8_T)(j + jA);
        eml_xswap(b_A, j + 1, j + jA);
      }

      b = (c - j) + 17;
      emlrtPushRtStackR2012b(&yb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&yb_emlrtRSI, emlrtRootTLSGlobal);
      for (jA = c + 1; jA + 1 <= b; jA++) {
        b_A[jA] /= b_A[c];
      }
    } else {
      info = j + 1;
    }

    emlrtPushRtStackR2012b(&ac_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
    jA = c;
    jy = c + 17;
    emlrtPushRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&jc_emlrtRSI, emlrtRootTLSGlobal);
    for (b_j = 1; b_j <= 16 - j; b_j++) {
      temp = b_A[jy];
      if (b_A[jy] != 0.0) {
        ix = c + 1;
        b = (jA - j) + 34;
        emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        if (jA + 19 > b) {
          b_jA = FALSE;
        } else {
          b_jA = (b > 2147483646);
        }

        if (b_jA) {
          emlrtPushRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
          check_forloop_overflow_error();
          emlrtPopRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
        }

        emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        for (ijA = jA + 18; ijA + 1 <= b; ijA++) {
          b_A[ijA] += b_A[ix] * -temp;
          ix++;
        }
      }

      jy += 17;
      jA += 17;
    }

    emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&ac_emlrtRSI, emlrtRootTLSGlobal);
  }

  if ((info == 0) && (!(b_A[288] != 0.0))) {
    info = 17;
  }

  emlrtPopRtStackR2012b(&wb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&sb_emlrtRSI, emlrtRootTLSGlobal);
  if (info > 0) {
    emlrtPushRtStackR2012b(&rb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&kc_emlrtRSI, emlrtRootTLSGlobal);
    eml_warning();
    emlrtPopRtStackR2012b(&kc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&rb_emlrtRSI, emlrtRootTLSGlobal);
  }

  for (jA = 0; jA < 17; jA++) {
    if (ipiv[jA] != jA + 1) {
      for (j = 0; j < 17; j++) {
        temp = B[jA + 17 * j];
        B[jA + 17 * j] = B[(ipiv[jA] + 17 * j) - 1];
        B[(ipiv[jA] + 17 * j) - 1] = temp;
      }
    }
  }

  emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&mc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&nc_emlrtRSI, emlrtRootTLSGlobal);
  temp = 1.0;
  DIAGA = 'U';
  TRANSA = 'N';
  UPLO = 'L';
  SIDE = 'L';
  emlrtPushRtStackR2012b(&oc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  m_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&oc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&pc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  n_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&pc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&qc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  lda_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&qc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&rc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  ldb_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&rc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&sc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Aia0_t = (double *)(&b_A[0]);
  emlrtPopRtStackR2012b(&sc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&tc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Bib0_t = (double *)(&B[0]);
  emlrtPopRtStackR2012b(&tc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&uc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  alpha1_t = (double *)(&temp);
  emlrtPopRtStackR2012b(&uc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&vc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  dtrsm(&SIDE, &UPLO, &TRANSA, &DIAGA, &m_t, &n_t, alpha1_t, Aia0_t, &lda_t,
        Bib0_t, &ldb_t);
  emlrtPopRtStackR2012b(&vc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&nc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&mc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&mc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&nc_emlrtRSI, emlrtRootTLSGlobal);
  temp = 1.0;
  DIAGA = 'N';
  TRANSA = 'N';
  UPLO = 'U';
  SIDE = 'L';
  emlrtPushRtStackR2012b(&oc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  m_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&oc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&pc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  n_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&pc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&qc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  lda_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&qc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&rc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  ldb_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&rc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&sc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Aia0_t = (double *)(&b_A[0]);
  emlrtPopRtStackR2012b(&sc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&tc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Bib0_t = (double *)(&B[0]);
  emlrtPopRtStackR2012b(&tc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&uc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  alpha1_t = (double *)(&temp);
  emlrtPopRtStackR2012b(&uc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&vc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  dtrsm(&SIDE, &UPLO, &TRANSA, &DIAGA, &m_t, &n_t, alpha1_t, Aia0_t, &lda_t,
        Bib0_t, &ldb_t);
  emlrtPopRtStackR2012b(&vc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&nc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&mc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&qb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&pb_emlrtRSI, emlrtRootTLSGlobal);
}

/* End of code generation (mldivide.c) */
