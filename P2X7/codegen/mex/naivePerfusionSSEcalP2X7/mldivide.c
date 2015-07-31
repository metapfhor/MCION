/*
 * mldivide.c
 *
 * Code generation for function 'mldivide'
 *
 * C source code generated on: Tue May 27 13:41:57 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEcalP2X7.h"
#include "mldivide.h"
#include "naivePerfusionSSEcalP2X7_mexutil.h"
#include "naivePerfusionSSEcalP2X7_data.h"

/* Variable Definitions */
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

static emlrtRSInfo gc_emlrtRSI = { 26, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo lc_emlrtRSI = { 88, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo mc_emlrtRSI = { 89, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo nc_emlrtRSI = { 90, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo oc_emlrtRSI = { 91, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo pc_emlrtRSI = { 92, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo qc_emlrtRSI = { 96, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo rc_emlrtRSI = { 99, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo sc_emlrtRSI = { 105, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo tc_emlrtRSI = { 108, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo uc_emlrtRSI = { 110, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

static emlrtRSInfo vc_emlrtRSI = { 54, "eml_lusolve",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_lusolve.m" };

static emlrtRSInfo wc_emlrtRSI = { 16, "eml_warning",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_warning.m" };

static emlrtRSInfo xc_emlrtRSI = { 54, "eml_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/eml_xtrsm.m" };

static emlrtRSInfo yc_emlrtRSI = { 28, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo ad_emlrtRSI = { 87, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo bd_emlrtRSI = { 88, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo cd_emlrtRSI = { 89, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo dd_emlrtRSI = { 90, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo ed_emlrtRSI = { 94, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo fd_emlrtRSI = { 97, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo gd_emlrtRSI = { 100, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtRSInfo hd_emlrtRSI = { 103, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

static emlrtMCInfo d_emlrtMCI = { 16, 13, "eml_warning",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_warning.m" };

static emlrtMCInfo e_emlrtMCI = { 16, 5, "eml_warning",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_warning.m" };

/* Function Declarations */
static void b_eml_xtrsm(const real_T c_A[576], real_T B[576]);
static const mxArray *b_message(const mxArray *b, emlrtMCInfo *location);
static void eml_warning(void);
static void eml_xswap(real_T x[576], int32_T ix0, int32_T iy0);
static void eml_xtrsm(const real_T c_A[576], real_T B[576]);
static void warning(const mxArray *b, emlrtMCInfo *location);

/* Function Definitions */
static void b_eml_xtrsm(const real_T c_A[576], real_T B[576])
{
  real_T alpha1;
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
  emlrtPushRtStackR2012b(&xc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&yc_emlrtRSI, emlrtRootTLSGlobal);
  alpha1 = 1.0;
  DIAGA = 'N';
  TRANSA = 'N';
  UPLO = 'U';
  SIDE = 'L';
  emlrtPushRtStackR2012b(&ad_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  m_t = (ptrdiff_t)(24);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&ad_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&bd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  n_t = (ptrdiff_t)(24);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&bd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&cd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  lda_t = (ptrdiff_t)(24);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&cd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&dd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  ldb_t = (ptrdiff_t)(24);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&dd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ed_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Aia0_t = (double *)(&c_A[0]);
  emlrtPopRtStackR2012b(&ed_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&fd_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Bib0_t = (double *)(&B[0]);
  emlrtPopRtStackR2012b(&fd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&gd_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  alpha1_t = (double *)(&alpha1);
  emlrtPopRtStackR2012b(&gd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&hd_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  dtrsm(&SIDE, &UPLO, &TRANSA, &DIAGA, &m_t, &n_t, alpha1_t, Aia0_t, &lda_t,
        Bib0_t, &ldb_t);
  emlrtPopRtStackR2012b(&hd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&yc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&xc_emlrtRSI, emlrtRootTLSGlobal);
}

static const mxArray *b_message(const mxArray *b, emlrtMCInfo *location)
{
  const mxArray *pArray;
  const mxArray *m8;
  pArray = b;
  return emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 1, &m8, 1, &pArray, "message",
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

  emlrtPushRtStackR2012b(&wc_emlrtRSI, emlrtRootTLSGlobal);
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
  emlrtPopRtStackR2012b(&wc_emlrtRSI, emlrtRootTLSGlobal);
}

static void eml_xswap(real_T x[576], int32_T ix0, int32_T iy0)
{
  int32_T ix;
  int32_T iy;
  int32_T k;
  real_T temp;
  ix = ix0 - 1;
  iy = iy0 - 1;
  for (k = 0; k < 24; k++) {
    temp = x[ix];
    x[ix] = x[iy];
    x[iy] = temp;
    ix += 24;
    iy += 24;
  }
}

static void eml_xtrsm(const real_T c_A[576], real_T B[576])
{
  real_T alpha1;
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
  emlrtPushRtStackR2012b(&xc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&yc_emlrtRSI, emlrtRootTLSGlobal);
  alpha1 = 1.0;
  DIAGA = 'U';
  TRANSA = 'N';
  UPLO = 'L';
  SIDE = 'L';
  emlrtPushRtStackR2012b(&ad_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  m_t = (ptrdiff_t)(24);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&ad_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&bd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  n_t = (ptrdiff_t)(24);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&bd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&cd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  lda_t = (ptrdiff_t)(24);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&cd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&dd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  ldb_t = (ptrdiff_t)(24);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&dd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ed_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Aia0_t = (double *)(&c_A[0]);
  emlrtPopRtStackR2012b(&ed_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&fd_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Bib0_t = (double *)(&B[0]);
  emlrtPopRtStackR2012b(&fd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&gd_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  alpha1_t = (double *)(&alpha1);
  emlrtPopRtStackR2012b(&gd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&hd_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  dtrsm(&SIDE, &UPLO, &TRANSA, &DIAGA, &m_t, &n_t, alpha1_t, Aia0_t, &lda_t,
        Bib0_t, &ldb_t);
  emlrtPopRtStackR2012b(&hd_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&yc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&xc_emlrtRSI, emlrtRootTLSGlobal);
}

static void warning(const mxArray *b, emlrtMCInfo *location)
{
  const mxArray *pArray;
  pArray = b;
  emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 0, NULL, 1, &pArray, "warning", TRUE,
                        location);
}

void mldivide(const real_T c_A[576], real_T B[576])
{
  real_T d_A[576];
  int8_T ipiv[24];
  int32_T i;
  int32_T info;
  int32_T j;
  int32_T c;
  int32_T ix;
  real_T temp;
  int32_T k;
  real_T s;
  ptrdiff_t m_t;
  ptrdiff_t n_t;
  ptrdiff_t incx_t;
  ptrdiff_t incy_t;
  ptrdiff_t lda_t;
  double * alpha1_t;
  double * Aia0_t;
  double * Aix0_t;
  double * Aiy0_t;
  emlrtPushRtStackR2012b(&pb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&qb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&sb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&wb_emlrtRSI, emlrtRootTLSGlobal);
  memcpy(&d_A[0], &c_A[0], 576U * sizeof(real_T));
  for (i = 0; i < 24; i++) {
    ipiv[i] = (int8_T)(1 + i);
  }

  info = 0;
  for (j = 0; j < 23; j++) {
    c = j * 25;
    emlrtPushRtStackR2012b(&xb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&bc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&cc_emlrtRSI, emlrtRootTLSGlobal);
    i = 1;
    ix = c;
    temp = muDoubleScalarAbs(d_A[c]);
    emlrtPushRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
    for (k = 2; k <= 24 - j; k++) {
      ix++;
      s = muDoubleScalarAbs(d_A[ix]);
      if (s > temp) {
        i = k;
        temp = s;
      }
    }

    emlrtPopRtStackR2012b(&cc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&bc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&xb_emlrtRSI, emlrtRootTLSGlobal);
    if (d_A[(c + i) - 1] != 0.0) {
      if (i - 1 != 0) {
        ipiv[j] = (int8_T)(j + i);
        eml_xswap(d_A, j + 1, j + i);
      }

      ix = (c - j) + 24;
      emlrtPushRtStackR2012b(&yb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&yb_emlrtRSI, emlrtRootTLSGlobal);
      for (i = c + 1; i + 1 <= ix; i++) {
        d_A[i] /= d_A[c];
      }
    } else {
      info = j + 1;
    }

    emlrtPushRtStackR2012b(&ac_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
    temp = -1.0;
    emlrtPushRtStackR2012b(&lc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    m_t = (ptrdiff_t)(23 - j);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&lc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&mc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    n_t = (ptrdiff_t)(23 - j);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&mc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&nc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    incx_t = (ptrdiff_t)(1);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&nc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&oc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    incy_t = (ptrdiff_t)(24);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&oc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&pc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    lda_t = (ptrdiff_t)(24);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&pc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&qc_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    alpha1_t = (double *)(&temp);
    emlrtPopRtStackR2012b(&qc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&rc_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Aia0_t = (double *)(&d_A[c + 25]);
    emlrtPopRtStackR2012b(&rc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&sc_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Aix0_t = (double *)(&d_A[c + 1]);
    emlrtPopRtStackR2012b(&sc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&tc_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Aiy0_t = (double *)(&d_A[c + 24]);
    emlrtPopRtStackR2012b(&tc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&uc_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    dger(&m_t, &n_t, alpha1_t, Aix0_t, &incx_t, Aiy0_t, &incy_t, Aia0_t, &lda_t);
    emlrtPopRtStackR2012b(&uc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&ac_emlrtRSI, emlrtRootTLSGlobal);
  }

  if ((info == 0) && (!(d_A[575] != 0.0))) {
    info = 24;
  }

  emlrtPopRtStackR2012b(&wb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&sb_emlrtRSI, emlrtRootTLSGlobal);
  if (info > 0) {
    emlrtPushRtStackR2012b(&rb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&vc_emlrtRSI, emlrtRootTLSGlobal);
    eml_warning();
    emlrtPopRtStackR2012b(&vc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&rb_emlrtRSI, emlrtRootTLSGlobal);
  }

  for (i = 0; i < 24; i++) {
    if (ipiv[i] != i + 1) {
      for (j = 0; j < 24; j++) {
        temp = B[i + 24 * j];
        B[i + 24 * j] = B[(ipiv[i] + 24 * j) - 1];
        B[(ipiv[i] + 24 * j) - 1] = temp;
      }
    }
  }

  emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
  eml_xtrsm(d_A, B);
  emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
  b_eml_xtrsm(d_A, B);
  emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&qb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&pb_emlrtRSI, emlrtRootTLSGlobal);
}

/* End of code generation (mldivide.c) */
