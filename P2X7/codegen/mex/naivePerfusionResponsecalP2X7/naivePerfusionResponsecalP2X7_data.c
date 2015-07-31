/*
 * naivePerfusionResponsecalP2X7_data.c
 *
 * Code generation for function 'naivePerfusionResponsecalP2X7_data'
 *
 * C source code generated on: Tue May 27 13:39:04 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionResponsecalP2X7.h"
#include "naivePerfusionResponsecalP2X7_data.h"

/* Variable Definitions */
const volatile char_T *emlrtBreakCheckR2012bFlagVar;
emxArray_real_T *Tsoln;
uint32_T Tsoln_dirty;
emxArray_real_T *I;
uint32_T I_dirty;
emxArray_real_T *Y;
uint32_T Y_dirty;
real_T p0[24];
uint32_T p0_dirty;
real_T A;
uint32_T A_dirty;
real_T ATP;
uint32_T ATP_dirty;
real_T imin;
uint32_T imin_dirty;
real_T imax;
uint32_T imax_dirty;
real_T t0;
uint32_T t0_dirty;
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
emlrtRSInfo p_emlrtRSI = { 12, "eml_int_forloop_overflow_check",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m"
};

emlrtRSInfo jb_emlrtRSI = { 65, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

emlrtRSInfo dc_emlrtRSI = { 55, "mtimes",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/mtimes.m" };

emlrtRSInfo ec_emlrtRSI = { 54, "eml_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m" };

emlrtRSInfo fc_emlrtRSI = { 32, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo gc_emlrtRSI = { 110, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo hc_emlrtRSI = { 111, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo ic_emlrtRSI = { 112, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo jc_emlrtRSI = { 113, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo kc_emlrtRSI = { 114, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo lc_emlrtRSI = { 115, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo mc_emlrtRSI = { 119, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo nc_emlrtRSI = { 122, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo oc_emlrtRSI = { 125, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo pc_emlrtRSI = { 128, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo qc_emlrtRSI = { 131, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo rc_emlrtRSI = { 134, "eml_blas_xgemm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m"
};

emlrtRSInfo sc_emlrtRSI = { 14, "eml_c_cast",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_c_cast.m"
};

emlrtRSInfo ad_emlrtRSI = { 238, "colon",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/colon.m" };

emlrtRSInfo bd_emlrtRSI = { 265, "colon",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/ops/colon.m" };

emlrtRSInfo nd_emlrtRSI = { 18, "eml_blas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m"
};

emlrtRSInfo od_emlrtRSI = { 14, "eml_refblas_xger",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xger.m"
};

emlrtRSInfo pd_emlrtRSI = { 53, "eml_refblas_xgerx",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m"
};

emlrtRSInfo qd_emlrtRSI = { 40, "eml_refblas_xgerx",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m"
};

emlrtRSInfo oe_emlrtRSI = { 20, "eml_blas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m"
};

emlrtRSInfo pe_emlrtRSI = { 57, "eml_refblas_xtrsm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m"
};

emlrtRSInfo qe_emlrtRSI = { 20, "eml_error",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_error.m" };

emlrtMCInfo r_emlrtMCI = { 65, 1, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

/* End of code generation (naivePerfusionResponsecalP2X7_data.c) */
