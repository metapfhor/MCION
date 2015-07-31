/*
 * naivePerfusionSSEcalP2X7_data.c
 *
 * Code generation for function 'naivePerfusionSSEcalP2X7_data'
 *
 * C source code generated on: Tue May 27 13:41:56 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEcalP2X7.h"
#include "naivePerfusionSSEcalP2X7_data.h"

/* Variable Definitions */
const volatile char_T *emlrtBreakCheckR2012bFlagVar;
real_T p0[24];
uint32_T p0_dirty;
real_T err;
uint32_T err_dirty;
real_T A;
uint32_T A_dirty;
real_T ATP;
uint32_T ATP_dirty;
real_T Q[576];
uint32_T Q_dirty;
real_T Acell;
uint32_T Acell_dirty;
real_T g12;
uint32_T g12_dirty;
real_T V;
uint32_T V_dirty;
real_T E12;
uint32_T E12_dirty;
real_T g34;
uint32_T g34_dirty;
real_T E34;
uint32_T E34_dirty;
real_T kca;
uint32_T kca_dirty;
real_T C;
uint32_T C_dirty;
real_T k2;
uint32_T k2_dirty;
real_T k1;
uint32_T k1_dirty;
real_T k4;
uint32_T k4_dirty;
real_T H3;
uint32_T H3_dirty;
real_T L1;
uint32_T L1_dirty;
real_T k3;
uint32_T k3_dirty;
real_T k6;
uint32_T k6_dirty;
real_T H5;
uint32_T H5_dirty;
real_T k5;
uint32_T k5_dirty;
real_T L3;
uint32_T L3_dirty;
real_T H7;
uint32_T H7_dirty;
real_T L2;
uint32_T L2_dirty;
real_T H1;
uint32_T H1_dirty;
real_T H2;
uint32_T H2_dirty;
real_T H4;
uint32_T H4_dirty;
real_T H6;
uint32_T H6_dirty;
real_T koff;
uint32_T koff_dirty;
real_T r2;
uint32_T r2_dirty;
real_T r1;
uint32_T r1_dirty;
emlrtRSInfo y_emlrtRSI = { 55, "mtimes",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/mtimes.m" };

emlrtRSInfo ab_emlrtRSI = { 54, "eml_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m" };

emlrtRSInfo bb_emlrtRSI = { 32, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo cb_emlrtRSI = { 110, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo db_emlrtRSI = { 111, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo eb_emlrtRSI = { 112, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo fb_emlrtRSI = { 113, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo gb_emlrtRSI = { 114, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo hb_emlrtRSI = { 115, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo ib_emlrtRSI = { 119, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo jb_emlrtRSI = { 122, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo kb_emlrtRSI = { 125, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo lb_emlrtRSI = { 128, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo mb_emlrtRSI = { 131, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo nb_emlrtRSI = { 134, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo ob_emlrtRSI = { 14, "eml_c_cast",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_c_cast.m"
};

emlrtRSInfo hc_emlrtRSI = { 18, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

emlrtRSInfo ic_emlrtRSI = { 14, "eml_refblas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xger.m"
};

emlrtRSInfo jc_emlrtRSI = { 53, "eml_refblas_xgerx",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m"
};

emlrtRSInfo kc_emlrtRSI = { 40, "eml_refblas_xgerx",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m"
};

emlrtRSInfo id_emlrtRSI = { 20, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

emlrtRSInfo jd_emlrtRSI = { 57, "eml_refblas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m"
};

emlrtRSInfo kd_emlrtRSI = { 20, "eml_error",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_error.m" };

/* End of code generation (naivePerfusionSSEcalP2X7_data.c) */
