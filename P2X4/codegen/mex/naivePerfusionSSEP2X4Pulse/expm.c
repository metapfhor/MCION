/*
 * expm.c
 *
 * Code generation for function 'expm'
 *
 * C source code generated on: Wed Jun  4 10:08:42 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4Pulse.h"
#include "expm.h"
#include "mldivide.h"
#include "naivePerfusionSSEP2X4Pulse_mexutil.h"
#include "naivePerfusionSSEP2X4Pulse_data.h"

/* Variable Definitions */
static emlrtRSInfo ib_emlrtRSI = { 118, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo jb_emlrtRSI = { 124, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo kb_emlrtRSI = { 128, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo lb_emlrtRSI = { 134, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo mb_emlrtRSI = { 138, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo nb_emlrtRSI = { 144, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo ob_emlrtRSI = { 148, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo pb_emlrtRSI = { 153, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo qb_emlrtRSI = { 161, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo rb_emlrtRSI = { 162, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo sb_emlrtRSI = { 175, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

/* Function Definitions */
void PadeApproximantOfDegree(const real_T c_A[289], real_T m, real_T F[289])
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
  emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
  d = 1.0;
  beta1 = 0.0;
  TRANSB = 'N';
  TRANSA = 'N';
  memset(&A2[0], 0, 289U * sizeof(real_T));
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
  alpha1_t = (double *)(&d);
  emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Aia0_t = (double *)(&c_A[0]);
  emlrtPopRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Bib0_t = (double *)(&c_A[0]);
  emlrtPopRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  beta1_t = (double *)(&beta1);
  emlrtPopRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  Cic0_t = (double *)(&A2[0]);
  emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
  emlrt_checkEscapedGlobals();
  dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
        &ldb_t, beta1_t, Cic0_t, &ldc_t);
  emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
  emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
  if (m == 3.0) {
    memcpy(&U[0], &A2[0], 289U * sizeof(real_T));
    for (k = 0; k < 17; k++) {
      U[k + 17 * k] += 60.0;
    }

    emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
    memcpy(&y[0], &U[0], 289U * sizeof(real_T));
    emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
    d = 1.0;
    beta1 = 0.0;
    TRANSB = 'N';
    TRANSA = 'N';
    memset(&U[0], 0, 289U * sizeof(real_T));
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
    alpha1_t = (double *)(&d);
    emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Aia0_t = (double *)(&c_A[0]);
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
    Cic0_t = (double *)(&U[0]);
    emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
          &ldb_t, beta1_t, Cic0_t, &ldc_t);
    emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
    for (k = 0; k < 289; k++) {
      F[k] = 12.0 * A2[k];
    }

    d = 120.0;
  } else {
    emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
    d = 1.0;
    beta1 = 0.0;
    TRANSB = 'N';
    TRANSA = 'N';
    memset(&A3[0], 0, 289U * sizeof(real_T));
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
    alpha1_t = (double *)(&d);
    emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Aia0_t = (double *)(&A2[0]);
    emlrtPopRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Bib0_t = (double *)(&A2[0]);
    emlrtPopRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    beta1_t = (double *)(&beta1);
    emlrtPopRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Cic0_t = (double *)(&A3[0]);
    emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
          &ldb_t, beta1_t, Cic0_t, &ldc_t);
    emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
    if (m == 5.0) {
      for (k = 0; k < 289; k++) {
        U[k] = A3[k] + 420.0 * A2[k];
      }

      for (k = 0; k < 17; k++) {
        U[k + 17 * k] += 15120.0;
      }

      emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
      memcpy(&y[0], &U[0], 289U * sizeof(real_T));
      emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
      d = 1.0;
      beta1 = 0.0;
      TRANSB = 'N';
      TRANSA = 'N';
      memset(&U[0], 0, 289U * sizeof(real_T));
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
      alpha1_t = (double *)(&d);
      emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Aia0_t = (double *)(&c_A[0]);
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
      Cic0_t = (double *)(&U[0]);
      emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
            &ldb_t, beta1_t, Cic0_t, &ldc_t);
      emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
      for (k = 0; k < 289; k++) {
        F[k] = 30.0 * A3[k] + 3360.0 * A2[k];
      }

      d = 30240.0;
    } else {
      emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
      d = 1.0;
      beta1 = 0.0;
      TRANSB = 'N';
      TRANSA = 'N';
      memset(&A4[0], 0, 289U * sizeof(real_T));
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
      alpha1_t = (double *)(&d);
      emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Aia0_t = (double *)(&A3[0]);
      emlrtPopRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Bib0_t = (double *)(&A2[0]);
      emlrtPopRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      beta1_t = (double *)(&beta1);
      emlrtPopRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      Cic0_t = (double *)(&A4[0]);
      emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
      emlrt_checkEscapedGlobals();
      dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
            &ldb_t, beta1_t, Cic0_t, &ldc_t);
      emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
      emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
      if (m == 7.0) {
        for (k = 0; k < 289; k++) {
          U[k] = (A4[k] + 1512.0 * A3[k]) + 277200.0 * A2[k];
        }

        for (k = 0; k < 17; k++) {
          U[k + 17 * k] += 8.64864E+6;
        }

        emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        memcpy(&y[0], &U[0], 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&U[0], 0, 289U * sizeof(real_T));
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
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&c_A[0]);
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
        Cic0_t = (double *)(&U[0]);
        emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          F[k] = (56.0 * A4[k] + 25200.0 * A3[k]) + 1.99584E+6 * A2[k];
        }

        d = 1.729728E+7;
      } else if (m == 9.0) {
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
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
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&A4[0]);
        emlrtPopRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&A2[0]);
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
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          U[k] = ((F[k] + 3960.0 * A4[k]) + 2.16216E+6 * A3[k]) + 3.027024E+8 *
            A2[k];
        }

        for (k = 0; k < 17; k++) {
          U[k + 17 * k] += 8.8216128E+9;
        }

        emlrtPushRtStackR2012b(&pb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        memcpy(&y[0], &U[0], 289U * sizeof(real_T));
        emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&U[0], 0, 289U * sizeof(real_T));
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
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&c_A[0]);
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
        Cic0_t = (double *)(&U[0]);
        emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&pb_emlrtRSI, emlrtRootTLSGlobal);
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

        emlrtPushRtStackR2012b(&qb_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          b[k] = (A4[k] + 16380.0 * A3[k]) + 4.08408E+7 * A2[k];
        }

        emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&y[0], 0, 289U * sizeof(real_T));
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
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&A4[0]);
        emlrtPopRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&b[0]);
        emlrtPopRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        beta1_t = (double *)(&beta1);
        emlrtPopRtStackR2012b(&gc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Cic0_t = (double *)(&y[0]);
        emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          y[k] += U[k];
        }

        emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&U[0], 0, 289U * sizeof(real_T));
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
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&c_A[0]);
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
        Cic0_t = (double *)(&U[0]);
        emlrtPopRtStackR2012b(&hc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&ic_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&qb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&rb_emlrtRSI, emlrtRootTLSGlobal);
        for (k = 0; k < 289; k++) {
          b[k] = (182.0 * A4[k] + 960960.0 * A3[k]) + 1.32324192E+9 * A2[k];
        }

        emlrtPushRtStackR2012b(&tb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ub_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&vb_emlrtRSI, emlrtRootTLSGlobal);
        d = 1.0;
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
        alpha1_t = (double *)(&d);
        emlrtPopRtStackR2012b(&dc_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&A4[0]);
        emlrtPopRtStackR2012b(&ec_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fc_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&b[0]);
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
        for (k = 0; k < 289; k++) {
          F[k] = ((F[k] + 6.704425728E+11 * A4[k]) + 1.29060195264E+14 * A3[k])
            + 7.7717703038976E+15 * A2[k];
        }

        emlrtPopRtStackR2012b(&rb_emlrtRSI, emlrtRootTLSGlobal);
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

  emlrtPushRtStackR2012b(&sb_emlrtRSI, emlrtRootTLSGlobal);
  mldivide(U, F);
  emlrtPopRtStackR2012b(&sb_emlrtRSI, emlrtRootTLSGlobal);
}

/* End of code generation (expm.c) */
