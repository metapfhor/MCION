/*
 * naivePerfusionSSEProlP2X4_data.c
 *
 * Code generation for function 'naivePerfusionSSEProlP2X4_data'
 *
 * C source code generated on: Mon Jun 23 18:45:45 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEProlP2X4.h"
#include "naivePerfusionSSEProlP2X4_data.h"

/* Variable Definitions */
const volatile char_T *emlrtBreakCheckR2012bFlagVar;
real_T p0[9];
uint32_T p0_dirty;
real_T err;
uint32_T err_dirty;
real_T A;
uint32_T A_dirty;
real_T J;
uint32_T J_dirty;
real_T IVMon;
uint32_T IVMon_dirty;
real_T IVMoff;
uint32_T IVMoff_dirty;
real_T Q[81];
uint32_T Q_dirty;
real_T Acell;
uint32_T Acell_dirty;
real_T g1;
uint32_T g1_dirty;
real_T V;
uint32_T V_dirty;
real_T E1;
uint32_T E1_dirty;
real_T g2;
uint32_T g2_dirty;
real_T E2;
uint32_T E2_dirty;
real_T k2;
uint32_T k2_dirty;
real_T L2;
uint32_T L2_dirty;
real_T L1;
uint32_T L1_dirty;
real_T k4;
uint32_T k4_dirty;
real_T L4;
uint32_T L4_dirty;
real_T L3;
uint32_T L3_dirty;
real_T k6;
uint32_T k6_dirty;
real_T k1;
uint32_T k1_dirty;
real_T H2;
uint32_T H2_dirty;
real_T k3;
uint32_T k3_dirty;
real_T k5;
uint32_T k5_dirty;
real_T H1;
uint32_T H1_dirty;
real_T H3;
uint32_T H3_dirty;
real_T H4;
uint32_T H4_dirty;
emlrtRSInfo j_emlrtRSI = { 12, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

emlrtRSInfo cb_emlrtRSI = { 55, "mtimes",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/mtimes.m" };

emlrtRSInfo db_emlrtRSI = { 54, "eml_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m" };

emlrtRSInfo eb_emlrtRSI = { 32, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo fb_emlrtRSI = { 110, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo gb_emlrtRSI = { 111, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo hb_emlrtRSI = { 112, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo ib_emlrtRSI = { 113, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo jb_emlrtRSI = { 114, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo kb_emlrtRSI = { 115, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo lb_emlrtRSI = { 119, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo mb_emlrtRSI = { 122, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo nb_emlrtRSI = { 125, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo ob_emlrtRSI = { 128, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo pb_emlrtRSI = { 131, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo qb_emlrtRSI = { 134, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo rb_emlrtRSI = { 14, "eml_c_cast",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_c_cast.m"
};

emlrtRSInfo ad_emlrtRSI = { 20, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

emlrtRSInfo bd_emlrtRSI = { 57, "eml_refblas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m"
};

emlrtRSInfo cd_emlrtRSI = { 20, "eml_error",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_error.m" };

/* End of code generation (naivePerfusionSSEProlP2X4_data.c) */
