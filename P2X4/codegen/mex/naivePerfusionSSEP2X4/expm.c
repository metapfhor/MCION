/*
 * expm.c
 *
 * Code generation for function 'expm'
 *
 * C source code generated on: Tue May 20 14:16:12 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4.h"
#include "expm.h"
#include "mldivide.h"
#include "naivePerfusionSSEP2X4_mexutil.h"
#include "naivePerfusionSSEP2X4_data.h"

/* Variable Definitions */
static emlrtRSInfo k_emlrtRSI = { 52, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo l_emlrtRSI = { 62, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo m_emlrtRSI = { 64, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo n_emlrtRSI = { 118, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo o_emlrtRSI = { 124, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo p_emlrtRSI = { 128, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo q_emlrtRSI = { 134, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo r_emlrtRSI = { 138, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo s_emlrtRSI = { 144, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo t_emlrtRSI = { 148, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo u_emlrtRSI = { 153, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo v_emlrtRSI = { 161, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo w_emlrtRSI = { 162, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo x_emlrtRSI = { 175, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo y_emlrtRSI = { 55, "mtimes",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/mtimes.m" };

static emlrtRSInfo ab_emlrtRSI = { 54, "eml_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m" };

static emlrtRSInfo bb_emlrtRSI = { 32, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo cb_emlrtRSI = { 110, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo db_emlrtRSI = { 111, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo eb_emlrtRSI = { 112, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo fb_emlrtRSI = { 113, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo gb_emlrtRSI = { 114, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo hb_emlrtRSI = { 115, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo ib_emlrtRSI = { 119, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo jb_emlrtRSI = { 122, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo kb_emlrtRSI = { 125, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo lb_emlrtRSI = { 128, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo mb_emlrtRSI = { 131, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRSInfo nb_emlrtRSI = { 134, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

static emlrtRTEInfo f_emlrtRTEI = { 63, 5, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

/* Function Declarations */
static void PadeApproximantOfDegree(const real_T A[289], real_T m, real_T F[289]);

/* Function Definitions */
static void PadeApproximantOfDegree(const real_T A[289], real_T m, real_T F[289])
{
  real_T d;
  real_T beta1;
  char_T TRANSB;
  char_T TRANSA;
  real_T A2[289];
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
  real_T U[289];
  int32_T k;
  real_T y[289];
  real_T A3[289];
  real_T A4[289];
  real_T b[289];
  emlrtPushRtStackR2012b(&n_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
  d = 1.0;
  beta1 = 0.0;
  TRANSB = 'N';
  TRANSA = 'N';
  memset(&A2[0], 0, 289U * sizeof(real_T));
  emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  m_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  n_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  k_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  lda_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  ldb_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  ldc_t = (ptrdiff_t)(17);
  emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  alpha1_t = (double *)(&d);
  emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Aia0_t = (double *)(&A[0]);
  emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Bib0_t = (double *)(&A[0]);
  emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  beta1_t = (double *)(&beta1);
  emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Cic0_t = (double *)(&A2[0]);
  emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
        &ldb_t, beta1_t, Cic0_t, &ldc_t);
  emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&n_emlrtRSI, emlrtRootTLSGlobal);
  if (m == 3.0) {
    memcpy(&U[0], &A2[0], 289U * sizeof(real_T));
    for (k = 0; k < 17; k++) {
      U[k + 17 * k] += 60.0;
    }

    emlrtPushRtStackR2012b(&o_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
    memcpy(&y[0], &U[0], 289U * sizeof(real_T));
    emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
    d = 1.0;
    beta1 = 0.0;
    TRANSB = 'N';
    TRANSA = 'N';
    memset(&U[0], 0, 289U * sizeof(real_T));
    emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    m_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    n_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    k_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    lda_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    ldb_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    ldc_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    alpha1_t = (double *)(&d);
    emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Aia0_t = (double *)(&A[0]);
    emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Bib0_t = (double *)(&y[0]);
    emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    beta1_t = (double *)(&beta1);
    emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Cic0_t = (double *)(&U[0]);
    emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
          &ldb_t, beta1_t, Cic0_t, &ldc_t);
    emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&o_emlrtRSI, emlrtRootTLSGlobal);
    for (k = 0; k < 289; k++) {
      F[k] = 12.0 * A2[k];
    }

    d = 120.0;
  } else {
    emlrtPushRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
    d = 1.0;
    beta1 = 0.0;
    TRANSB = 'N';
    TRANSA = 'N';
    memset(&A3[0], 0, 289U * sizeof(real_T));
    emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    m_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    n_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    k_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    lda_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    ldb_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    ldc_t = (ptrdiff_t)(17);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    alpha1_t = (double *)(&d);
    emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Aia0_t = (double *)(&A2[0]);
    emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Bib0_t = (double *)(&A2[0]);
    emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    beta1_t = (double *)(&beta1);
    emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Cic0_t = (double *)(&A3[0]);
    emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
          &ldb_t, beta1_t, Cic0_t, &ldc_t);
    emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
    if (m == 5.0) {
      for (k = 0; k < 289; k++) {
        U[k] = A3[k] + 420.0 * A2[k];
      }

      for (k = 0; k < 17; k++) {
        U[k + 17 * k] += 15120.0;
      }

      emlrtPushRtStackR2012b(&q_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
      memcpy(&y[0], &U[0], 289U * sizeof(real_T));
      emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
      d = 1.0;
      beta1 = 0.0;
      TRANSB = 'N';
      TRANSA = 'N';
      memset(&U[0], 0, 289U * sizeof(real_T));
      emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      m_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      n_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      k_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      lda_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      ldb_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      ldc_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      alpha1_t = (double *)(&d);
      emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Aia0_t = (double *)(&A[0]);
      emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Bib0_t = (double *)(&y[0]);
      emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      beta1_t = (double *)(&beta1);
      emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Cic0_t = (double *)(&U[0]);
      emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
            &ldb_t, beta1_t, Cic0_t, &ldc_t);
      emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&q_emlrtRSI, emlrtRootTLSGlobal);
      for (k = 0; k < 289; k++) {
        F[k] = 30.0 * A3[k] + 3360.0 * A2[k];
      }

      d = 30240.0;
    } else {
      emlrtPushRtStackR2012b(&r_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
      d = 1.0;
      beta1 = 0.0;
      TRANSB = 'N';
      TRANSA = 'N';
      memset(&A4[0], 0, 289U * sizeof(real_T));
      emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      m_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      n_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      k_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      lda_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      ldb_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      ldc_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      alpha1_t = (double *)(&d);
      emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Aia0_t = (double *)(&A3[0]);
      emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Bib0_t = (double *)(&A2[0]);
      emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      beta1_t = (double *)(&beta1);
      emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Cic0_t = (double *)(&A4[0]);
      emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
            &ldb_t, beta1_t, Cic0_t, &ldc_t);
      emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&r_emlrtRSI, emlrtRootTLSGlobal);
      if (m == 7.0) {
        for (k = 0; k < 289; k++) {
          U[k] = (A4[k] + 1512.0 * A3[k]) + 277200.0 * A2[k];
        }

        for (k = 0; k < 17; k++) {
          U[k + 17 * k] += 8.64864E+6;
        }

        emlrtPushRtStackR2012b(&s_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        memcpy(&y[0], &U[0], 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&U[0], 0, 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        m_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        n_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        k_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        lda_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldb_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldc_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&A[0]);
        emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&y[0]);
        emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        beta1_t = (double *)(&beta1);
        emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Cic0_t = (double *)(&U[0]);
        emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&s_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          F[k] = (56.0 * A4[k] + 25200.0 * A3[k]) + 1.99584E+6 * A2[k];
        }

        d = 1.729728E+7;
      } else if (m == 9.0) {
        emlrtPushRtStackR2012b(&t_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&F[0], 0, 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        m_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        n_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        k_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        lda_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldb_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldc_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&A4[0]);
        emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&A2[0]);
        emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        beta1_t = (double *)(&beta1);
        emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Cic0_t = (double *)(&F[0]);
        emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&t_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          U[k] = ((F[k] + 3960.0 * A4[k]) + 2.16216E+6 * A3[k]) + 3.027024E+8 *
            A2[k];
        }

        for (k = 0; k < 17; k++) {
          U[k + 17 * k] += 8.8216128E+9;
        }

        emlrtPushRtStackR2012b(&u_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        memcpy(&y[0], &U[0], 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&U[0], 0, 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        m_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        n_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        k_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        lda_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldb_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldc_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&A[0]);
        emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&y[0]);
        emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        beta1_t = (double *)(&beta1);
        emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Cic0_t = (double *)(&U[0]);
        emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&u_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          F[k] = ((90.0 * F[k] + 110880.0 * A4[k]) + 3.027024E+7 * A3[k]) +
            2.0756736E+9 * A2[k];
        }

        d = 1.76432256E+10;
      } else {
        for (k = 0; k < 289; k++) {
          U[k] = (3.352212864E+10 * A4[k] + 1.05594705216E+13 * A3[k]) +
            1.1873537964288E+15 * A2[k];
        }

        for (k = 0; k < 17; k++) {
          U[k + 17 * k] += 3.238237626624E+16;
        }

        emlrtPushRtStackR2012b(&v_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          b[k] = (A4[k] + 16380.0 * A3[k]) + 4.08408E+7 * A2[k];
        }

        emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&y[0], 0, 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        m_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        n_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        k_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        lda_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldb_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldc_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&A4[0]);
        emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&b[0]);
        emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        beta1_t = (double *)(&beta1);
        emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Cic0_t = (double *)(&y[0]);
        emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          y[k] += U[k];
        }

        emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&U[0], 0, 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        m_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        n_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        k_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        lda_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldb_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldc_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&A[0]);
        emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&y[0]);
        emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        beta1_t = (double *)(&beta1);
        emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Cic0_t = (double *)(&U[0]);
        emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&v_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          b[k] = (182.0 * A4[k] + 960960.0 * A3[k]) + 1.32324192E+9 * A2[k];
        }

        emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&F[0], 0, 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        m_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        n_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        k_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        lda_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldb_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldc_t = (ptrdiff_t)(17);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&A4[0]);
        emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&b[0]);
        emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        beta1_t = (double *)(&beta1);
        emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Cic0_t = (double *)(&F[0]);
        emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          F[k] = ((F[k] + 6.704425728E+11 * A4[k]) + 1.29060195264E+14 * A3[k])
            + 7.7717703038976E+15 * A2[k];
        }

        emlrtPopRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
        d = 6.476475253248E+16;
      }
    }
  }

  for (k = 0; k < 17; k++) {
    F[k + 17 * k] += d;
  }

  for (k = 0; k < 289; k++) {
    d = F[k] - U[k];
    F[k] += U[k];
    U[k] = d;
  }

  emlrtPushRtStackR2012b(&x_emlrtRSI, emlrtRootTLSGlobal);
  mldivide(U, F);
  emlrtPopRtStackR2012b(&x_emlrtRSI, emlrtRootTLSGlobal);
}

void expm(real_T A[289], real_T F[289])
{
  real_T normA;
  int32_T j;
  boolean_T exitg2;
  real_T s;
  int32_T i;
  boolean_T exitg1;
  static const real_T theta[5] = { 0.01495585217958292, 0.253939833006323,
    0.95041789961629319, 2.097847961257068, 5.3719203511481517 };

  static const int8_T iv2[5] = { 3, 5, 7, 9, 13 };

  int32_T eint;
  real_T b_A[289];
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
  normA = 0.0;
  j = 0;
  exitg2 = FALSE;
  while ((exitg2 == FALSE) && (j < 17)) {
    s = 0.0;
    for (i = 0; i < 17; i++) {
      s += muDoubleScalarAbs(A[i + 17 * j]);
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
    i = 0;
    exitg1 = FALSE;
    while ((exitg1 == FALSE) && (i < 5)) {
      if (normA <= theta[i]) {
        emlrtPushRtStackR2012b(&k_emlrtRSI, emlrtRootTLSGlobal);
        PadeApproximantOfDegree(A, iv2[i], F);
        emlrtPopRtStackR2012b(&k_emlrtRSI, emlrtRootTLSGlobal);
        exitg1 = TRUE;
      } else {
        i++;
      }
    }
  } else {
    normA /= 5.3719203511481517;
    if ((!muDoubleScalarIsInf(normA)) && (!muDoubleScalarIsNaN(normA))) {
      normA = frexp(normA, &eint);
    } else {
      eint = 0;
    }

    s = eint;
    if (normA == 0.5) {
      s = (real_T)eint - 1.0;
    }

    normA = muDoubleScalarPower(2.0, s);
    for (j = 0; j < 289; j++) {
      A[j] /= normA;
    }

    emlrtPushRtStackR2012b(&l_emlrtRSI, emlrtRootTLSGlobal);
    PadeApproximantOfDegree(A, 13.0, F);
    emlrtPopRtStackR2012b(&l_emlrtRSI, emlrtRootTLSGlobal);
    emlrtForLoopVectorCheckR2012b(1.0, 1.0, s, mxDOUBLE_CLASS, (int32_T)s,
      &f_emlrtRTEI, emlrtRootTLSGlobal);
    for (j = 0; j < (int32_T)s; j++) {
      emlrtPushRtStackR2012b(&m_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
      memcpy(&b_A[0], &F[0], 289U * sizeof(real_T));
      emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
      normA = 1.0;
      beta1 = 0.0;
      TRANSB = 'N';
      TRANSA = 'N';
      memset(&F[0], 0, 289U * sizeof(real_T));
      emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      m_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      n_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      k_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      lda_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      ldb_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      ldc_t = (ptrdiff_t)(17);
      emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      alpha1_t = (double *)(&normA);
      emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Aia0_t = (double *)(&b_A[0]);
      emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Bib0_t = (double *)(&b_A[0]);
      emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      beta1_t = (double *)(&beta1);
      emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Cic0_t = (double *)(&F[0]);
      emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
            &ldb_t, beta1_t, Cic0_t, &ldc_t);
      emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&m_emlrtRSI, emlrtRootTLSGlobal);
    }
  }
}

/* End of code generation (expm.c) */
