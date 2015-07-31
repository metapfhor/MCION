/*
 * naivePerfusionSSEP2X4Pulse_data.c
 *
 * Code generation for function 'naivePerfusionSSEP2X4Pulse_data'
 *
 * C source code generated on: Wed Jun  4 10:08:42 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4Pulse.h"
#include "naivePerfusionSSEP2X4Pulse_data.h"

/* Variable Definitions */
const volatile char_T *emlrtBreakCheckR2012bFlagVar;
real_T p0[17];
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
real_T Q[289];
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
real_T k1;
uint32_T k1_dirty;
real_T k4;
uint32_T k4_dirty;
real_T H2;
uint32_T H2_dirty;
real_T L1;
uint32_T L1_dirty;
real_T k8;
uint32_T k8_dirty;
real_T L4;
uint32_T L4_dirty;
real_T k7;
uint32_T k7_dirty;
real_T k10;
uint32_T k10_dirty;
real_T L3;
uint32_T L3_dirty;
real_T alpha;
uint32_T alpha_dirty;
real_T k3;
uint32_T k3_dirty;
real_T k6;
uint32_T k6_dirty;
real_T k5;
uint32_T k5_dirty;
real_T k9;
uint32_T k9_dirty;
real_T k12;
uint32_T k12_dirty;
real_T k11;
uint32_T k11_dirty;
real_T H1;
uint32_T H1_dirty;
real_T H3;
uint32_T H3_dirty;
real_T H4;
uint32_T H4_dirty;
emlrtRSInfo t_emlrtRSI = { 65, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

emlrtRSInfo w_emlrtRSI = { 12, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

emlrtRSInfo tb_emlrtRSI = { 55, "mtimes",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/mtimes.m" };

emlrtRSInfo ub_emlrtRSI = { 54, "eml_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m" };

emlrtRSInfo vb_emlrtRSI = { 32, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo wb_emlrtRSI = { 110, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo xb_emlrtRSI = { 111, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo yb_emlrtRSI = { 112, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo ac_emlrtRSI = { 113, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo bc_emlrtRSI = { 114, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo cc_emlrtRSI = { 115, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo dc_emlrtRSI = { 119, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo ec_emlrtRSI = { 122, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo fc_emlrtRSI = { 125, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo gc_emlrtRSI = { 128, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo hc_emlrtRSI = { 131, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo ic_emlrtRSI = { 134, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo jc_emlrtRSI = { 14, "eml_c_cast",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_c_cast.m"
};

emlrtRSInfo rd_emlrtRSI = { 20, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

emlrtRSInfo sd_emlrtRSI = { 57, "eml_refblas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m"
};

emlrtRSInfo td_emlrtRSI = { 20, "eml_error",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_error.m" };

emlrtMCInfo emlrtMCI = { 65, 1, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

/* End of code generation (naivePerfusionSSEP2X4Pulse_data.c) */
