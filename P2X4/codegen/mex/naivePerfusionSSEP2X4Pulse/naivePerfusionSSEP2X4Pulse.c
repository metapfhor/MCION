/*
 * naivePerfusionSSEP2X4Pulse.c
 *
 * Code generation for function 'naivePerfusionSSEP2X4Pulse'
 *
 * C source code generated on: Wed Jun  4 10:08:42 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4Pulse.h"
#include "linearODESSEP2X4.h"
#include "naivePerfusionSSEP2X4Pulse_emxutil.h"
#include "mldivide.h"
#include "naivePerfusionSSEP2X4Pulse_mexutil.h"
#include "naivePerfusionSSEP2X4Pulse_data.h"

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = { 12, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo b_emlrtRSI = { 14, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo c_emlrtRSI = { 22, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo d_emlrtRSI = { 25, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo e_emlrtRSI = { 32, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo f_emlrtRSI = { 35, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo g_emlrtRSI = { 43, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo h_emlrtRSI = { 46, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo i_emlrtRSI = { 49, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo j_emlrtRSI = { 58, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo k_emlrtRSI = { 61, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo l_emlrtRSI = { 72, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo m_emlrtRSI = { 75, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo n_emlrtRSI = { 83, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo o_emlrtRSI = { 86, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo p_emlrtRSI = { 89, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo q_emlrtRSI = { 96, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo r_emlrtRSI = { 99, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRSInfo s_emlrtRSI = { 41, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtRSInfo u_emlrtRSI = { 230, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtRSInfo v_emlrtRSI = { 239, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtRSInfo y_emlrtRSI = { 11, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo ab_emlrtRSI = { 14, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo bb_emlrtRSI = { 26, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRSInfo cb_emlrtRSI = { 39, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtMCInfo b_emlrtMCI = { 239, 9, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtMCInfo e_emlrtMCI = { 14, 5, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtRTEInfo emlrtRTEI = { 1, 18, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRTEInfo b_emlrtRTEI = { 111, 5, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtRTEInfo c_emlrtRTEI = { 12, 5, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRTEInfo d_emlrtRTEI = { 18, 6, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRTEInfo e_emlrtRTEI = { 19, 3, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRTEInfo f_emlrtRTEI = { 39, 9, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRTEInfo g_emlrtRTEI = { 33, 6, "find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/elmat/find.m" };

static emlrtRTEInfo h_emlrtRTEI = { 20, 9, "eml_li_find",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/eml/eml_li_find.m" };

static emlrtECInfo emlrtECI = { -1, 93, 16, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo b_emlrtECI = { -1, 92, 15, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRTEInfo j_emlrtRTEI = { 91, 5, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo c_emlrtECI = { -1, 81, 16, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo d_emlrtECI = { -1, 80, 9, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo e_emlrtECI = { -1, 79, 16, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo f_emlrtECI = { -1, 69, 10, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo g_emlrtECI = { -1, 68, 15, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo h_emlrtECI = { -1, 55, 10, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo i_emlrtECI = { -1, 54, 9, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtRTEInfo k_emlrtRTEI = { 53, 2, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo j_emlrtECI = { -1, 41, 16, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo k_emlrtECI = { -1, 40, 9, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo l_emlrtECI = { -1, 39, 16, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo m_emlrtECI = { -1, 29, 10, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo n_emlrtECI = { -1, 28, 15, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo o_emlrtECI = { -1, 19, 10, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtECInfo p_emlrtECI = { -1, 18, 12, "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m"
};

static emlrtBCInfo emlrtBCI = { -1, -1, 15, 10, "ind",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo b_emlrtBCI = { -1, -1, 13, 9, "ind",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo c_emlrtBCI = { -1, -1, 28, 17, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo d_emlrtBCI = { -1, -1, 28, 29, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo e_emlrtBCI = { -1, -1, 29, 12, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo f_emlrtBCI = { -1, -1, 32, 29, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo g_emlrtBCI = { -1, -1, 32, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo h_emlrtBCI = { -1, -1, 32, 38, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo i_emlrtBCI = { -1, -1, 35, 30, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo j_emlrtBCI = { -1, -1, 35, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo k_emlrtBCI = { -1, -1, 35, 40, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo l_emlrtBCI = { -1, -1, 39, 27, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo m_emlrtBCI = { -1, -1, 40, 11, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo n_emlrtBCI = { -1, -1, 40, 25, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo o_emlrtBCI = { -1, -1, 41, 18, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo p_emlrtBCI = { -1, -1, 41, 33, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo q_emlrtBCI = { -1, -1, 43, 26, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo r_emlrtBCI = { -1, -1, 43, 42, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo s_emlrtBCI = { -1, -1, 46, 29, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo t_emlrtBCI = { -1, -1, 46, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo u_emlrtBCI = { -1, -1, 46, 40, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo v_emlrtBCI = { -1, -1, 49, 30, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo w_emlrtBCI = { -1, -1, 49, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo x_emlrtBCI = { -1, -1, 49, 42, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo y_emlrtBCI = { -1, -1, 68, 17, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo ab_emlrtBCI = { -1, -1, 68, 30, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo bb_emlrtBCI = { -1, -1, 69, 12, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo cb_emlrtBCI = { -1, -1, 72, 29, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo db_emlrtBCI = { -1, -1, 72, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo eb_emlrtBCI = { -1, -1, 72, 39, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo fb_emlrtBCI = { -1, -1, 75, 30, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo gb_emlrtBCI = { -1, -1, 75, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo hb_emlrtBCI = { -1, -1, 75, 41, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo ib_emlrtBCI = { -1, -1, 79, 28, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo jb_emlrtBCI = { -1, -1, 80, 11, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo kb_emlrtBCI = { -1, -1, 80, 26, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo lb_emlrtBCI = { -1, -1, 81, 18, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo mb_emlrtBCI = { -1, -1, 81, 34, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo nb_emlrtBCI = { -1, -1, 83, 26, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo ob_emlrtBCI = { -1, -1, 83, 43, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo pb_emlrtBCI = { -1, -1, 86, 29, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo qb_emlrtBCI = { -1, -1, 86, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo rb_emlrtBCI = { -1, -1, 86, 41, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo sb_emlrtBCI = { -1, -1, 89, 30, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo tb_emlrtBCI = { -1, -1, 89, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo ub_emlrtBCI = { -1, -1, 89, 43, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo vb_emlrtBCI = { -1, -1, 92, 17, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo wb_emlrtBCI = { -1, -1, 92, 27, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo xb_emlrtBCI = { -1, -1, 93, 18, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo yb_emlrtBCI = { -1, -1, 93, 29, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo ac_emlrtBCI = { -1, -1, 96, 35, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo bc_emlrtBCI = { -1, -1, 96, 26, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo cc_emlrtBCI = { -1, -1, 96, 42, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo dc_emlrtBCI = { -1, -1, 99, 36, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo ec_emlrtBCI = { -1, -1, 99, 26, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo fc_emlrtBCI = { -1, -1, 99, 44, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo gc_emlrtBCI = { -1, -1, 54, 11, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo hc_emlrtBCI = { -1, -1, 54, 21, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo ic_emlrtBCI = { -1, -1, 55, 12, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo jc_emlrtBCI = { -1, -1, 55, 23, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo kc_emlrtBCI = { -1, -1, 58, 29, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo lc_emlrtBCI = { -1, -1, 58, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo mc_emlrtBCI = { -1, -1, 58, 36, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo nc_emlrtBCI = { -1, -1, 61, 30, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo oc_emlrtBCI = { -1, -1, 61, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo pc_emlrtBCI = { -1, -1, 61, 38, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo qc_emlrtBCI = { -1, -1, 18, 14, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo rc_emlrtBCI = { -1, -1, 18, 24, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo sc_emlrtBCI = { -1, -1, 19, 12, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo tc_emlrtBCI = { -1, -1, 19, 23, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo uc_emlrtBCI = { -1, -1, 22, 29, "ton",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo vc_emlrtBCI = { -1, -1, 22, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo wc_emlrtBCI = { -1, -1, 22, 36, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo xc_emlrtBCI = { -1, -1, 25, 30, "toff",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo yc_emlrtBCI = { -1, -1, 25, 20, "T",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

static emlrtBCInfo ad_emlrtBCI = { -1, -1, 25, 38, "I",
  "naivePerfusionSSEP2X4Pulse",
  "/home/cnd/omar.khan/Desktop/Final_MCMC_folder/Models/naivePerfusionSSEP2X4Pulse.m",
  0 };

/* Function Declarations */
static void eml_li_find(const emxArray_boolean_T *x, emxArray_int32_T *y);

/* Function Definitions */
static void eml_li_find(const emxArray_boolean_T *x, emxArray_int32_T *y)
{
  int32_T k;
  boolean_T overflow;
  int32_T i;
  const mxArray *b_y;
  const mxArray *m2;
  int32_T j;
  emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
  k = 0;
  emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
  if (1 > x->size[0]) {
    overflow = FALSE;
  } else {
    overflow = (x->size[0] > 2147483646);
  }

  if (overflow) {
    emlrtPushRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
  for (i = 1; i <= x->size[0]; i++) {
    if (x->data[i - 1]) {
      k++;
    }
  }

  emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
  if (k <= x->size[0]) {
  } else {
    emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    b_y = NULL;
    m2 = mxCreateString("Assertion failed.");
    emlrtAssign(&b_y, m2);
    error(b_y, &e_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
  }

  j = y->size[0];
  y->size[0] = k;
  emxEnsureCapacity((emxArray__common *)y, j, (int32_T)sizeof(int32_T),
                    &h_emlrtRTEI);
  j = 0;
  emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
  if (1 > x->size[0]) {
    overflow = FALSE;
  } else {
    overflow = (x->size[0] > 2147483646);
  }

  if (overflow) {
    emlrtPushRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
  for (i = 1; i <= x->size[0]; i++) {
    if (x->data[i - 1]) {
      y->data[j] = i;
      j++;
    }
  }
}

real_T naivePerfusionSSEP2X4Pulse(emxArray_real_T *ton, const emxArray_real_T
  *toff, real_T Ttot, const emxArray_real_T *T, const emxArray_real_T *I)
{
  real_T b_error;
  emxArray_boolean_T *x;
  int32_T xs;
  int32_T i0;
  real_T A0;
  real_T J0;
  emxArray_int32_T *ii;
  int32_T idx;
  boolean_T overflow;
  boolean_T exitg2;
  boolean_T guard2 = FALSE;
  const mxArray *y;
  const mxArray *m0;
  emxArray_int32_T *r0;
  emxArray_int32_T *b_ii;
  int32_T i1;
  emxArray_real_T *ind;
  int32_T ion;
  boolean_T exitg1;
  boolean_T guard1 = FALSE;
  const mxArray *b_y;
  emxArray_int32_T *r1;
  emxArray_int32_T *c_ii;
  emxArray_boolean_T *indOn;
  emxArray_boolean_T *indOff;
  emxArray_boolean_T *r2;
  emxArray_int32_T *r3;
  emxArray_int32_T *r4;
  emxArray_real_T *b_T;
  emxArray_real_T *b_I;
  emxArray_real_T *c_T;
  emxArray_real_T *c_I;
  real_T b_ton;
  int32_T i2;
  emxArray_real_T *d_T;
  emxArray_real_T *d_I;
  emxArray_real_T *e_T;
  emxArray_real_T *e_I;
  emxArray_boolean_T *indPre;
  emxArray_real_T *f_T;
  emxArray_real_T *f_I;
  emxArray_real_T *g_T;
  emxArray_real_T *g_I;
  emxArray_real_T *h_T;
  emxArray_real_T *h_I;
  emxArray_real_T *i_T;
  emxArray_real_T *i_I;
  emxArray_real_T *j_T;
  emxArray_real_T *j_I;
  int32_T i3;
  emxArray_real_T *k_T;
  emxArray_real_T *k_I;
  emxArray_real_T *l_T;
  emxArray_real_T *l_I;
  emxArray_real_T *m_T;
  emxArray_real_T *m_I;
  emxArray_real_T *n_T;
  emxArray_real_T *n_I;
  emxArray_real_T *o_T;
  emxArray_real_T *o_I;
  emxArray_real_T *p_T;
  emxArray_real_T *p_I;
  emxArray_real_T *q_T;
  emxArray_real_T *q_I;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);

  /* #codgen; */
  memset(&p0[0], 0, 17U * sizeof(real_T));
  b_emxInit_boolean_T(&x, 2, &emlrtRTEI, TRUE);
  p0_dirty |= 1U;
  p0[0] = 1.0;
  p0_dirty |= 1U;
  xs = ton->size[1];
  i0 = ton->size[0] * ton->size[1];
  ton->size[1] = xs + 1;
  emxEnsureCapacity((emxArray__common *)ton, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  ton->data[xs] = Ttot;
  err = 0.0;
  err_dirty |= 1U;
  A0 = A;
  J0 = J;
  J = 0.0;
  J_dirty |= 1U;
  emlrtPushRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  i0 = x->size[0] * x->size[1];
  x->size[0] = 1;
  x->size[1] = ton->size[1];
  emxEnsureCapacity((emxArray__common *)x, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = ton->size[0] * ton->size[1];
  for (i0 = 0; i0 < xs; i0++) {
    x->data[i0] = (ton->data[i0] < IVMon);
  }

  emxInit_int32_T(&ii, 2, &g_emlrtRTEI, TRUE);
  emlrtPushRtStackR2012b(&s_emlrtRSI, emlrtRootTLSGlobal);
  idx = 0;
  i0 = ii->size[0] * ii->size[1];
  ii->size[0] = 1;
  ii->size[1] = x->size[1];
  emxEnsureCapacity((emxArray__common *)ii, i0, (int32_T)sizeof(int32_T),
                    &b_emlrtRTEI);
  emlrtPushRtStackR2012b(&u_emlrtRSI, emlrtRootTLSGlobal);
  overflow = (x->size[1] > 2147483646);
  if (overflow) {
    emlrtPushRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&u_emlrtRSI, emlrtRootTLSGlobal);
  xs = 1;
  exitg2 = FALSE;
  while ((exitg2 == FALSE) && (xs <= x->size[1])) {
    guard2 = FALSE;
    if (x->data[xs - 1]) {
      idx++;
      ii->data[idx - 1] = xs;
      if (idx >= x->size[1]) {
        exitg2 = TRUE;
      } else {
        guard2 = TRUE;
      }
    } else {
      guard2 = TRUE;
    }

    if (guard2 == TRUE) {
      xs++;
    }
  }

  if (idx <= x->size[1]) {
  } else {
    emlrtPushRtStackR2012b(&v_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    y = NULL;
    m0 = mxCreateString("Assertion failed.");
    emlrtAssign(&y, m0);
    error(y, &b_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&v_emlrtRSI, emlrtRootTLSGlobal);
  }

  if (x->size[1] == 1) {
    if (idx == 0) {
      i0 = ii->size[0] * ii->size[1];
      ii->size[0] = 1;
      ii->size[1] = 0;
      emxEnsureCapacity((emxArray__common *)ii, i0, (int32_T)sizeof(int32_T),
                        &emlrtRTEI);
    }
  } else {
    if (1 > idx) {
      xs = 0;
    } else {
      xs = idx;
    }

    b_emxInit_int32_T(&r0, 1, &emlrtRTEI, TRUE);
    i0 = r0->size[0];
    r0->size[0] = xs;
    emxEnsureCapacity((emxArray__common *)r0, i0, (int32_T)sizeof(int32_T),
                      &emlrtRTEI);
    for (i0 = 0; i0 < xs; i0++) {
      r0->data[i0] = 1 + i0;
    }

    emxInit_int32_T(&b_ii, 2, &emlrtRTEI, TRUE);
    xs = r0->size[0];
    i0 = b_ii->size[0] * b_ii->size[1];
    b_ii->size[0] = 1;
    b_ii->size[1] = xs;
    emxEnsureCapacity((emxArray__common *)b_ii, i0, (int32_T)sizeof(int32_T),
                      &emlrtRTEI);
    for (i0 = 0; i0 < xs; i0++) {
      i1 = 0;
      while (i1 <= 0) {
        b_ii->data[b_ii->size[0] * i0] = ii->data[r0->data[i0] - 1];
        i1 = 1;
      }
    }

    emxFree_int32_T(&r0);
    i0 = ii->size[0] * ii->size[1];
    ii->size[0] = 1;
    ii->size[1] = b_ii->size[1];
    emxEnsureCapacity((emxArray__common *)ii, i0, (int32_T)sizeof(int32_T),
                      &emlrtRTEI);
    xs = b_ii->size[1];
    for (i0 = 0; i0 < xs; i0++) {
      ii->data[ii->size[0] * i0] = b_ii->data[b_ii->size[0] * i0];
    }

    emxFree_int32_T(&b_ii);
  }

  emxInit_real_T(&ind, 2, &c_emlrtRTEI, TRUE);
  emlrtPopRtStackR2012b(&s_emlrtRSI, emlrtRootTLSGlobal);
  i0 = ind->size[0] * ind->size[1];
  ind->size[0] = 1;
  ind->size[1] = ii->size[1];
  emxEnsureCapacity((emxArray__common *)ind, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = ii->size[0] * ii->size[1];
  for (i0 = 0; i0 < xs; i0++) {
    ind->data[i0] = ii->data[i0];
  }

  emlrtPopRtStackR2012b(&emlrtRSI, emlrtRootTLSGlobal);
  i0 = ind->size[1];
  i1 = ind->size[1];
  ion = (int32_T)ind->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0,
    &b_emlrtBCI, emlrtRootTLSGlobal) - 1];
  emlrtPushRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  i0 = x->size[0] * x->size[1];
  x->size[0] = 1;
  x->size[1] = ton->size[1];
  emxEnsureCapacity((emxArray__common *)x, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = ton->size[0] * ton->size[1];
  for (i0 = 0; i0 < xs; i0++) {
    x->data[i0] = (ton->data[i0] < IVMoff);
  }

  emlrtPushRtStackR2012b(&s_emlrtRSI, emlrtRootTLSGlobal);
  idx = 0;
  i0 = ii->size[0] * ii->size[1];
  ii->size[0] = 1;
  ii->size[1] = x->size[1];
  emxEnsureCapacity((emxArray__common *)ii, i0, (int32_T)sizeof(int32_T),
                    &b_emlrtRTEI);
  emlrtPushRtStackR2012b(&u_emlrtRSI, emlrtRootTLSGlobal);
  overflow = (x->size[1] > 2147483646);
  if (overflow) {
    emlrtPushRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
    check_forloop_overflow_error();
    emlrtPopRtStackR2012b(&w_emlrtRSI, emlrtRootTLSGlobal);
  }

  emlrtPopRtStackR2012b(&u_emlrtRSI, emlrtRootTLSGlobal);
  xs = 1;
  exitg1 = FALSE;
  while ((exitg1 == FALSE) && (xs <= x->size[1])) {
    guard1 = FALSE;
    if (x->data[xs - 1]) {
      idx++;
      ii->data[idx - 1] = xs;
      if (idx >= x->size[1]) {
        exitg1 = TRUE;
      } else {
        guard1 = TRUE;
      }
    } else {
      guard1 = TRUE;
    }

    if (guard1 == TRUE) {
      xs++;
    }
  }

  if (idx <= x->size[1]) {
  } else {
    emlrtPushRtStackR2012b(&v_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_synchGlobalsToML();
    b_y = NULL;
    m0 = mxCreateString("Assertion failed.");
    emlrtAssign(&b_y, m0);
    error(b_y, &b_emlrtMCI);
    emlrt_synchGlobalsFromML();
    emlrtPopRtStackR2012b(&v_emlrtRSI, emlrtRootTLSGlobal);
  }

  if (x->size[1] == 1) {
    if (idx == 0) {
      i0 = ii->size[0] * ii->size[1];
      ii->size[0] = 1;
      ii->size[1] = 0;
      emxEnsureCapacity((emxArray__common *)ii, i0, (int32_T)sizeof(int32_T),
                        &emlrtRTEI);
    }
  } else {
    if (1 > idx) {
      xs = 0;
    } else {
      xs = idx;
    }

    b_emxInit_int32_T(&r1, 1, &emlrtRTEI, TRUE);
    i0 = r1->size[0];
    r1->size[0] = xs;
    emxEnsureCapacity((emxArray__common *)r1, i0, (int32_T)sizeof(int32_T),
                      &emlrtRTEI);
    for (i0 = 0; i0 < xs; i0++) {
      r1->data[i0] = 1 + i0;
    }

    emxInit_int32_T(&c_ii, 2, &emlrtRTEI, TRUE);
    xs = r1->size[0];
    i0 = c_ii->size[0] * c_ii->size[1];
    c_ii->size[0] = 1;
    c_ii->size[1] = xs;
    emxEnsureCapacity((emxArray__common *)c_ii, i0, (int32_T)sizeof(int32_T),
                      &emlrtRTEI);
    for (i0 = 0; i0 < xs; i0++) {
      i1 = 0;
      while (i1 <= 0) {
        c_ii->data[c_ii->size[0] * i0] = ii->data[r1->data[i0] - 1];
        i1 = 1;
      }
    }

    emxFree_int32_T(&r1);
    i0 = ii->size[0] * ii->size[1];
    ii->size[0] = 1;
    ii->size[1] = c_ii->size[1];
    emxEnsureCapacity((emxArray__common *)ii, i0, (int32_T)sizeof(int32_T),
                      &emlrtRTEI);
    xs = c_ii->size[1];
    for (i0 = 0; i0 < xs; i0++) {
      ii->data[ii->size[0] * i0] = c_ii->data[c_ii->size[0] * i0];
    }

    emxFree_int32_T(&c_ii);
  }

  emxFree_boolean_T(&x);
  emlrtPopRtStackR2012b(&s_emlrtRSI, emlrtRootTLSGlobal);
  i0 = ind->size[0] * ind->size[1];
  ind->size[0] = 1;
  ind->size[1] = ii->size[1];
  emxEnsureCapacity((emxArray__common *)ind, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = ii->size[0] * ii->size[1];
  for (i0 = 0; i0 < xs; i0++) {
    ind->data[i0] = ii->data[i0];
  }

  emxFree_int32_T(&ii);
  emlrtPopRtStackR2012b(&b_emlrtRSI, emlrtRootTLSGlobal);
  i0 = ind->size[1];
  i1 = ind->size[1];
  emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &emlrtBCI, emlrtRootTLSGlobal);
  idx = 0;
  emxInit_boolean_T(&indOn, 1, &d_emlrtRTEI, TRUE);
  emxInit_boolean_T(&indOff, 1, &e_emlrtRTEI, TRUE);
  emxInit_boolean_T(&r2, 1, &emlrtRTEI, TRUE);
  b_emxInit_int32_T(&r3, 1, &emlrtRTEI, TRUE);
  b_emxInit_int32_T(&r4, 1, &emlrtRTEI, TRUE);
  b_emxInit_real_T(&b_T, 1, &emlrtRTEI, TRUE);
  b_emxInit_real_T(&b_I, 1, &emlrtRTEI, TRUE);
  b_emxInit_real_T(&c_T, 1, &emlrtRTEI, TRUE);
  b_emxInit_real_T(&c_I, 1, &emlrtRTEI, TRUE);
  while (idx <= (int32_T)((real_T)ion - 1.0) - 1) {
    i0 = ton->size[1];
    i1 = (int32_T)(1.0 + (real_T)idx);
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &qc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = indOn->size[0];
    indOn->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOn->data[i0] = (T->data[i0] > b_ton);
    }

    i0 = toff->size[1];
    i1 = (int32_T)(1.0 + (real_T)idx);
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &rc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = r2->size[0];
    r2->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      r2->data[i0] = (T->data[i0] <= b_ton);
    }

    i0 = indOn->size[0];
    i1 = r2->size[0];
    emlrtSizeEqCheck1DFastR2012b(i0, i1, &p_emlrtECI, emlrtRootTLSGlobal);
    i0 = indOn->size[0];
    emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = indOn->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOn->data[i0] = (indOn->data[i0] && r2->data[i0]);
    }

    i0 = toff->size[1];
    i1 = (int32_T)(1.0 + (real_T)idx);
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &sc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = indOff->size[0];
    indOff->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOff->data[i0] = (T->data[i0] > b_ton);
    }

    i0 = ton->size[1];
    i1 = (int32_T)((1.0 + (real_T)idx) + 1.0);
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &tc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = r2->size[0];
    r2->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      r2->data[i0] = (T->data[i0] <= b_ton);
    }

    i0 = indOff->size[0];
    i1 = r2->size[0];
    emlrtSizeEqCheck1DFastR2012b(i0, i1, &o_emlrtECI, emlrtRootTLSGlobal);
    i0 = indOff->size[0];
    emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = indOff->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOff->data[i0] = (indOff->data[i0] && r2->data[i0]);
    }

    A = A0;
    A_dirty |= 1U;
    emlrtPushRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indOn, r3);
    eml_li_find(indOn, r4);
    i0 = ton->size[1];
    i1 = (int32_T)(1.0 + (real_T)idx);
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &uc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = c_T->size[0];
    c_T->size[0] = r3->size[0];
    emxEnsureCapacity((emxArray__common *)c_T, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r3->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = T->size[0];
      i2 = r3->data[i0];
      c_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &vc_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
    }

    i0 = c_I->size[0];
    c_I->size[0] = r4->size[0];
    emxEnsureCapacity((emxArray__common *)c_I, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r4->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = I->size[0];
      i2 = r4->data[i0];
      c_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &wc_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    linearODESSEP2X4(c_T, c_I);
    emlrtPopRtStackR2012b(&c_emlrtRSI, emlrtRootTLSGlobal);
    A = 0.0;
    A_dirty |= 1U;
    emlrtPushRtStackR2012b(&d_emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indOff, r3);
    eml_li_find(indOff, r4);
    i0 = toff->size[1];
    i1 = (int32_T)(1.0 + (real_T)idx);
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &xc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = b_T->size[0];
    b_T->size[0] = r3->size[0];
    emxEnsureCapacity((emxArray__common *)b_T, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r3->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = T->size[0];
      i2 = r3->data[i0];
      b_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &yc_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
    }

    i0 = b_I->size[0];
    b_I->size[0] = r4->size[0];
    emxEnsureCapacity((emxArray__common *)b_I, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r4->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = I->size[0];
      i2 = r4->data[i0];
      b_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &ad_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    linearODESSEP2X4(b_T, b_I);
    emlrtPopRtStackR2012b(&d_emlrtRSI, emlrtRootTLSGlobal);
    idx++;
    emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, emlrtRootTLSGlobal);
  }

  emxFree_real_T(&c_I);
  emxFree_real_T(&c_T);
  emxFree_real_T(&b_I);
  emxFree_real_T(&b_T);
  i0 = ton->size[1];
  b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(ion, 1, i0, &c_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = indOn->size[0];
  indOn->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOn->data[i0] = (T->data[i0] > b_ton);
  }

  i0 = toff->size[1];
  b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(ion, 1, i0, &d_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = r2->size[0];
  r2->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    r2->data[i0] = (T->data[i0] <= b_ton);
  }

  i0 = indOn->size[0];
  i1 = r2->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &n_emlrtECI, emlrtRootTLSGlobal);
  i0 = indOn->size[0];
  emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = indOn->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOn->data[i0] = (indOn->data[i0] && r2->data[i0]);
  }

  i0 = toff->size[1];
  b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(ion, 1, i0, &e_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = indOff->size[0];
  indOff->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOff->data[i0] = (T->data[i0] > b_ton);
  }

  i0 = r2->size[0];
  r2->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    r2->data[i0] = (T->data[i0] <= IVMon);
  }

  i0 = indOff->size[0];
  i1 = r2->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &m_emlrtECI, emlrtRootTLSGlobal);
  i0 = indOff->size[0];
  emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = indOff->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOff->data[i0] = (indOff->data[i0] && r2->data[i0]);
  }

  b_emxInit_real_T(&d_T, 1, &emlrtRTEI, TRUE);
  A = A0;
  A_dirty |= 1U;
  emlrtPushRtStackR2012b(&e_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indOn, r3);
  eml_li_find(indOn, r4);
  i0 = ton->size[1];
  b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(ion, 1, i0, &f_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = d_T->size[0];
  d_T->size[0] = r3->size[0];
  emxEnsureCapacity((emxArray__common *)d_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r3->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = T->size[0];
    i2 = r3->data[i0];
    d_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &g_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
  }

  b_emxInit_real_T(&d_I, 1, &emlrtRTEI, TRUE);
  i0 = d_I->size[0];
  d_I->size[0] = r4->size[0];
  emxEnsureCapacity((emxArray__common *)d_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r4->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = I->size[0];
    i2 = r4->data[i0];
    d_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &h_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  b_emxInit_real_T(&e_T, 1, &emlrtRTEI, TRUE);
  linearODESSEP2X4(d_T, d_I);
  emlrtPopRtStackR2012b(&e_emlrtRSI, emlrtRootTLSGlobal);
  A = 0.0;
  A_dirty |= 1U;
  emlrtPushRtStackR2012b(&f_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indOff, r3);
  eml_li_find(indOff, r4);
  i0 = toff->size[1];
  b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(ion, 1, i0, &i_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = e_T->size[0];
  e_T->size[0] = r3->size[0];
  emxEnsureCapacity((emxArray__common *)e_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r3->size[0];
  emxFree_real_T(&d_I);
  emxFree_real_T(&d_T);
  for (i0 = 0; i0 < xs; i0++) {
    i1 = T->size[0];
    i2 = r3->data[i0];
    e_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &j_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
  }

  b_emxInit_real_T(&e_I, 1, &emlrtRTEI, TRUE);
  i0 = e_I->size[0];
  e_I->size[0] = r4->size[0];
  emxEnsureCapacity((emxArray__common *)e_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r4->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = I->size[0];
    i2 = r4->data[i0];
    e_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &k_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  emxInit_boolean_T(&indPre, 1, &f_emlrtRTEI, TRUE);
  linearODESSEP2X4(e_T, e_I);
  emlrtPopRtStackR2012b(&f_emlrtRSI, emlrtRootTLSGlobal);
  J = J0;
  J_dirty |= 1U;
  i0 = indPre->size[0];
  indPre->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indPre, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  emxFree_real_T(&e_I);
  emxFree_real_T(&e_T);
  for (i0 = 0; i0 < xs; i0++) {
    indPre->data[i0] = (T->data[i0] > IVMon);
  }

  i0 = ton->size[1];
  i1 = (int32_T)(ion + 1U);
  b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &l_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = r2->size[0];
  r2->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    r2->data[i0] = (T->data[i0] <= b_ton);
  }

  i0 = indPre->size[0];
  i1 = r2->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &l_emlrtECI, emlrtRootTLSGlobal);
  i0 = indPre->size[0];
  emxEnsureCapacity((emxArray__common *)indPre, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = indPre->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indPre->data[i0] = (indPre->data[i0] && r2->data[i0]);
  }

  i0 = ton->size[1];
  i1 = (int32_T)(ion + 1U);
  b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &m_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = indOn->size[0];
  indOn->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOn->data[i0] = (T->data[i0] > b_ton);
  }

  i0 = toff->size[1];
  i1 = (int32_T)(ion + 1U);
  b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &n_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = r2->size[0];
  r2->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    r2->data[i0] = (T->data[i0] <= b_ton);
  }

  i0 = indOn->size[0];
  i1 = r2->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &k_emlrtECI, emlrtRootTLSGlobal);
  i0 = indOn->size[0];
  emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = indOn->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOn->data[i0] = (indOn->data[i0] && r2->data[i0]);
  }

  i0 = toff->size[1];
  i1 = (int32_T)(ion + 1U);
  b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &o_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = indOff->size[0];
  indOff->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOff->data[i0] = (T->data[i0] > b_ton);
  }

  i0 = ton->size[1];
  i1 = (int32_T)(ion + 2U);
  b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &p_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = r2->size[0];
  r2->size[0] = T->size[0];
  emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = T->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    r2->data[i0] = (T->data[i0] <= b_ton);
  }

  i0 = indOff->size[0];
  i1 = r2->size[0];
  emlrtSizeEqCheck1DFastR2012b(i0, i1, &j_emlrtECI, emlrtRootTLSGlobal);
  i0 = indOff->size[0];
  emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                    &emlrtRTEI);
  xs = indOff->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    indOff->data[i0] = (indOff->data[i0] && r2->data[i0]);
  }

  b_emxInit_real_T(&f_T, 1, &emlrtRTEI, TRUE);
  emlrtPushRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indPre, r3);
  eml_li_find(indPre, r4);
  i0 = f_T->size[0];
  f_T->size[0] = r3->size[0];
  emxEnsureCapacity((emxArray__common *)f_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r3->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = T->size[0];
    i2 = r3->data[i0];
    f_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &q_emlrtBCI, emlrtRootTLSGlobal) - 1] - IVMon;
  }

  b_emxInit_real_T(&f_I, 1, &emlrtRTEI, TRUE);
  i0 = f_I->size[0];
  f_I->size[0] = r4->size[0];
  emxEnsureCapacity((emxArray__common *)f_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r4->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = I->size[0];
    i2 = r4->data[i0];
    f_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &r_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  b_emxInit_real_T(&g_T, 1, &emlrtRTEI, TRUE);
  linearODESSEP2X4(f_T, f_I);
  emlrtPopRtStackR2012b(&g_emlrtRSI, emlrtRootTLSGlobal);
  A = A0;
  A_dirty |= 1U;
  emlrtPushRtStackR2012b(&h_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indOn, r3);
  eml_li_find(indOn, r4);
  i0 = ton->size[1];
  i1 = (int32_T)(ion + 1U);
  b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &s_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = g_T->size[0];
  g_T->size[0] = r3->size[0];
  emxEnsureCapacity((emxArray__common *)g_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r3->size[0];
  emxFree_real_T(&f_I);
  emxFree_real_T(&f_T);
  for (i0 = 0; i0 < xs; i0++) {
    i1 = T->size[0];
    i2 = r3->data[i0];
    g_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &t_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
  }

  b_emxInit_real_T(&g_I, 1, &emlrtRTEI, TRUE);
  i0 = g_I->size[0];
  g_I->size[0] = r4->size[0];
  emxEnsureCapacity((emxArray__common *)g_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r4->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = I->size[0];
    i2 = r4->data[i0];
    g_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &u_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  b_emxInit_real_T(&h_T, 1, &emlrtRTEI, TRUE);
  linearODESSEP2X4(g_T, g_I);
  emlrtPopRtStackR2012b(&h_emlrtRSI, emlrtRootTLSGlobal);
  A = 0.0;
  A_dirty |= 1U;
  emlrtPushRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  eml_li_find(indOff, r3);
  eml_li_find(indOff, r4);
  i0 = toff->size[1];
  i1 = (int32_T)(ion + 1U);
  b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &v_emlrtBCI,
    emlrtRootTLSGlobal) - 1];
  i0 = h_T->size[0];
  h_T->size[0] = r3->size[0];
  emxEnsureCapacity((emxArray__common *)h_T, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r3->size[0];
  emxFree_real_T(&g_I);
  emxFree_real_T(&g_T);
  for (i0 = 0; i0 < xs; i0++) {
    i1 = T->size[0];
    i2 = r3->data[i0];
    h_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &w_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
  }

  b_emxInit_real_T(&h_I, 1, &emlrtRTEI, TRUE);
  i0 = h_I->size[0];
  h_I->size[0] = r4->size[0];
  emxEnsureCapacity((emxArray__common *)h_I, i0, (int32_T)sizeof(real_T),
                    &emlrtRTEI);
  xs = r4->size[0];
  for (i0 = 0; i0 < xs; i0++) {
    i1 = I->size[0];
    i2 = r4->data[i0];
    h_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
      &x_emlrtBCI, emlrtRootTLSGlobal) - 1];
  }

  linearODESSEP2X4(h_T, h_I);
  emlrtPopRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  i0 = (int32_T)((ind->data[ind->size[1] - 1] - 1.0) + (1.0 - ((real_T)ion + 2.0)));
  emlrtForLoopVectorCheckR2012b((real_T)ion + 2.0, 1.0, ind->data[ind->size[1] -
    1] - 1.0, mxDOUBLE_CLASS, i0, &k_emlrtRTEI, emlrtRootTLSGlobal);
  idx = 0;
  emxFree_real_T(&h_I);
  emxFree_real_T(&h_T);
  b_emxInit_real_T(&i_T, 1, &emlrtRTEI, TRUE);
  b_emxInit_real_T(&i_I, 1, &emlrtRTEI, TRUE);
  b_emxInit_real_T(&j_T, 1, &emlrtRTEI, TRUE);
  b_emxInit_real_T(&j_I, 1, &emlrtRTEI, TRUE);
  while (idx <= i0 - 1) {
    J0 = ((real_T)ion + 2.0) + (real_T)idx;
    i1 = ton->size[1];
    i2 = (int32_T)J0;
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1, &gc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = indOn->size[0];
    indOn->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indOn, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i1 = 0; i1 < xs; i1++) {
      indOn->data[i1] = (T->data[i1] > b_ton);
    }

    i1 = toff->size[1];
    i2 = (int32_T)J0;
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1, &hc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = r2->size[0];
    r2->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r2, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i1 = 0; i1 < xs; i1++) {
      r2->data[i1] = (T->data[i1] <= b_ton);
    }

    i1 = indOn->size[0];
    i2 = r2->size[0];
    emlrtSizeEqCheck1DFastR2012b(i1, i2, &i_emlrtECI, emlrtRootTLSGlobal);
    i1 = indOn->size[0];
    emxEnsureCapacity((emxArray__common *)indOn, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = indOn->size[0];
    for (i1 = 0; i1 < xs; i1++) {
      indOn->data[i1] = (indOn->data[i1] && r2->data[i1]);
    }

    i1 = toff->size[1];
    i2 = (int32_T)J0;
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1, &ic_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = indOff->size[0];
    indOff->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indOff, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i1 = 0; i1 < xs; i1++) {
      indOff->data[i1] = (T->data[i1] > b_ton);
    }

    i1 = ton->size[1];
    i2 = (int32_T)((uint32_T)J0 + 1U);
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1, &jc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = r2->size[0];
    r2->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r2, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i1 = 0; i1 < xs; i1++) {
      r2->data[i1] = (T->data[i1] <= b_ton);
    }

    i1 = indOff->size[0];
    i2 = r2->size[0];
    emlrtSizeEqCheck1DFastR2012b(i1, i2, &h_emlrtECI, emlrtRootTLSGlobal);
    i1 = indOff->size[0];
    emxEnsureCapacity((emxArray__common *)indOff, i1, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = indOff->size[0];
    for (i1 = 0; i1 < xs; i1++) {
      indOff->data[i1] = (indOff->data[i1] && r2->data[i1]);
    }

    A = A0;
    A_dirty |= 1U;
    emlrtPushRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indOn, r3);
    eml_li_find(indOn, r4);
    i1 = ton->size[1];
    i2 = (int32_T)J0;
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1, &kc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = j_T->size[0];
    j_T->size[0] = r3->size[0];
    emxEnsureCapacity((emxArray__common *)j_T, i1, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r3->size[0];
    for (i1 = 0; i1 < xs; i1++) {
      i2 = T->size[0];
      i3 = r3->data[i1];
      j_T->data[i1] = T->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
        &lc_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
    }

    i1 = j_I->size[0];
    j_I->size[0] = r4->size[0];
    emxEnsureCapacity((emxArray__common *)j_I, i1, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r4->size[0];
    for (i1 = 0; i1 < xs; i1++) {
      i2 = I->size[0];
      i3 = r4->data[i1];
      j_I->data[i1] = I->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
        &mc_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    linearODESSEP2X4(j_T, j_I);
    emlrtPopRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
    A = 0.0;
    A_dirty |= 1U;
    emlrtPushRtStackR2012b(&k_emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indOff, r3);
    eml_li_find(indOff, r4);
    i1 = toff->size[1];
    i2 = (int32_T)J0;
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1, &nc_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i1 = i_T->size[0];
    i_T->size[0] = r3->size[0];
    emxEnsureCapacity((emxArray__common *)i_T, i1, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r3->size[0];
    for (i1 = 0; i1 < xs; i1++) {
      i2 = T->size[0];
      i3 = r3->data[i1];
      i_T->data[i1] = T->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
        &oc_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
    }

    i1 = i_I->size[0];
    i_I->size[0] = r4->size[0];
    emxEnsureCapacity((emxArray__common *)i_I, i1, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r4->size[0];
    for (i1 = 0; i1 < xs; i1++) {
      i2 = I->size[0];
      i3 = r4->data[i1];
      i_I->data[i1] = I->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
        &pc_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    linearODESSEP2X4(i_T, i_I);
    emlrtPopRtStackR2012b(&k_emlrtRSI, emlrtRootTLSGlobal);
    idx++;
    emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, emlrtRootTLSGlobal);
  }

  emxFree_real_T(&j_I);
  emxFree_real_T(&j_T);
  emxFree_real_T(&i_I);
  emxFree_real_T(&i_T);
  if ((int32_T)ind->data[ind->size[1] - 1] > toff->size[1]) {
    b_error = err;
  } else {
    i0 = ton->size[1];
    i1 = (int32_T)ind->data[ind->size[1] - 1];
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &y_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = indOn->size[0];
    indOn->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOn->data[i0] = (T->data[i0] > b_ton);
    }

    i0 = toff->size[1];
    i1 = (int32_T)ind->data[ind->size[1] - 1];
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &ab_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = r2->size[0];
    r2->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      r2->data[i0] = (T->data[i0] <= b_ton);
    }

    i0 = indOn->size[0];
    i1 = r2->size[0];
    emlrtSizeEqCheck1DFastR2012b(i0, i1, &g_emlrtECI, emlrtRootTLSGlobal);
    i0 = indOn->size[0];
    emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = indOn->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOn->data[i0] = (indOn->data[i0] && r2->data[i0]);
    }

    i0 = toff->size[1];
    i1 = (int32_T)ind->data[ind->size[1] - 1];
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &bb_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = indOff->size[0];
    indOff->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOff->data[i0] = (T->data[i0] > b_ton);
    }

    i0 = r2->size[0];
    r2->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      r2->data[i0] = (T->data[i0] <= IVMoff);
    }

    i0 = indOff->size[0];
    i1 = r2->size[0];
    emlrtSizeEqCheck1DFastR2012b(i0, i1, &f_emlrtECI, emlrtRootTLSGlobal);
    i0 = indOff->size[0];
    emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = indOff->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOff->data[i0] = (indOff->data[i0] && r2->data[i0]);
    }

    b_emxInit_real_T(&k_T, 1, &emlrtRTEI, TRUE);
    A = A0;
    A_dirty |= 1U;
    emlrtPushRtStackR2012b(&l_emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indOn, r3);
    eml_li_find(indOn, r4);
    i0 = ton->size[1];
    i1 = (int32_T)ind->data[ind->size[1] - 1];
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &cb_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = k_T->size[0];
    k_T->size[0] = r3->size[0];
    emxEnsureCapacity((emxArray__common *)k_T, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r3->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = T->size[0];
      i2 = r3->data[i0];
      k_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &db_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
    }

    b_emxInit_real_T(&k_I, 1, &emlrtRTEI, TRUE);
    i0 = k_I->size[0];
    k_I->size[0] = r4->size[0];
    emxEnsureCapacity((emxArray__common *)k_I, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r4->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = I->size[0];
      i2 = r4->data[i0];
      k_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &eb_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    b_emxInit_real_T(&l_T, 1, &emlrtRTEI, TRUE);
    linearODESSEP2X4(k_T, k_I);
    emlrtPopRtStackR2012b(&l_emlrtRSI, emlrtRootTLSGlobal);
    A = 0.0;
    A_dirty |= 1U;
    emlrtPushRtStackR2012b(&m_emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indOff, r3);
    eml_li_find(indOff, r4);
    i0 = toff->size[1];
    i1 = (int32_T)ind->data[ind->size[1] - 1];
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &fb_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = l_T->size[0];
    l_T->size[0] = r3->size[0];
    emxEnsureCapacity((emxArray__common *)l_T, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r3->size[0];
    emxFree_real_T(&k_I);
    emxFree_real_T(&k_T);
    for (i0 = 0; i0 < xs; i0++) {
      i1 = T->size[0];
      i2 = r3->data[i0];
      l_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &gb_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
    }

    b_emxInit_real_T(&l_I, 1, &emlrtRTEI, TRUE);
    i0 = l_I->size[0];
    l_I->size[0] = r4->size[0];
    emxEnsureCapacity((emxArray__common *)l_I, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r4->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = I->size[0];
      i2 = r4->data[i0];
      l_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &hb_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    linearODESSEP2X4(l_T, l_I);
    emlrtPopRtStackR2012b(&m_emlrtRSI, emlrtRootTLSGlobal);
    J = 0.0;
    J_dirty |= 1U;
    i0 = indPre->size[0];
    indPre->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indPre, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    emxFree_real_T(&l_I);
    emxFree_real_T(&l_T);
    for (i0 = 0; i0 < xs; i0++) {
      indPre->data[i0] = (T->data[i0] > IVMoff);
    }

    i0 = ton->size[1];
    i1 = (int32_T)(ind->data[ind->size[1] - 1] + 1.0);
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &ib_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = r2->size[0];
    r2->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      r2->data[i0] = (T->data[i0] <= b_ton);
    }

    i0 = indPre->size[0];
    i1 = r2->size[0];
    emlrtSizeEqCheck1DFastR2012b(i0, i1, &e_emlrtECI, emlrtRootTLSGlobal);
    i0 = indPre->size[0];
    emxEnsureCapacity((emxArray__common *)indPre, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = indPre->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indPre->data[i0] = (indPre->data[i0] && r2->data[i0]);
    }

    i0 = ton->size[1];
    i1 = (int32_T)(ind->data[ind->size[1] - 1] + 1.0);
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &jb_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = indOn->size[0];
    indOn->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOn->data[i0] = (T->data[i0] > b_ton);
    }

    i0 = toff->size[1];
    i1 = (int32_T)(ind->data[ind->size[1] - 1] + 1.0);
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &kb_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = r2->size[0];
    r2->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      r2->data[i0] = (T->data[i0] <= b_ton);
    }

    i0 = indOn->size[0];
    i1 = r2->size[0];
    emlrtSizeEqCheck1DFastR2012b(i0, i1, &d_emlrtECI, emlrtRootTLSGlobal);
    i0 = indOn->size[0];
    emxEnsureCapacity((emxArray__common *)indOn, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = indOn->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOn->data[i0] = (indOn->data[i0] && r2->data[i0]);
    }

    i0 = toff->size[1];
    i1 = (int32_T)(ind->data[ind->size[1] - 1] + 1.0);
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &lb_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = indOff->size[0];
    indOff->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOff->data[i0] = (T->data[i0] > b_ton);
    }

    i0 = ton->size[1];
    i1 = (int32_T)(ind->data[ind->size[1] - 1] + 2.0);
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &mb_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = r2->size[0];
    r2->size[0] = T->size[0];
    emxEnsureCapacity((emxArray__common *)r2, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = T->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      r2->data[i0] = (T->data[i0] <= b_ton);
    }

    i0 = indOff->size[0];
    i1 = r2->size[0];
    emlrtSizeEqCheck1DFastR2012b(i0, i1, &c_emlrtECI, emlrtRootTLSGlobal);
    i0 = indOff->size[0];
    emxEnsureCapacity((emxArray__common *)indOff, i0, (int32_T)sizeof(boolean_T),
                      &emlrtRTEI);
    xs = indOff->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      indOff->data[i0] = (indOff->data[i0] && r2->data[i0]);
    }

    b_emxInit_real_T(&m_T, 1, &emlrtRTEI, TRUE);
    emlrtPushRtStackR2012b(&n_emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indPre, r3);
    eml_li_find(indPre, r4);
    i0 = m_T->size[0];
    m_T->size[0] = r3->size[0];
    emxEnsureCapacity((emxArray__common *)m_T, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r3->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = T->size[0];
      i2 = r3->data[i0];
      m_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &nb_emlrtBCI, emlrtRootTLSGlobal) - 1] - IVMoff;
    }

    b_emxInit_real_T(&m_I, 1, &emlrtRTEI, TRUE);
    i0 = m_I->size[0];
    m_I->size[0] = r4->size[0];
    emxEnsureCapacity((emxArray__common *)m_I, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r4->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = I->size[0];
      i2 = r4->data[i0];
      m_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &ob_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    b_emxInit_real_T(&n_T, 1, &emlrtRTEI, TRUE);
    linearODESSEP2X4(m_T, m_I);
    emlrtPopRtStackR2012b(&n_emlrtRSI, emlrtRootTLSGlobal);
    A = A0;
    A_dirty |= 1U;
    emlrtPushRtStackR2012b(&o_emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indOn, r3);
    eml_li_find(indOn, r4);
    i0 = ton->size[1];
    i1 = (int32_T)(ind->data[ind->size[1] - 1] + 1.0);
    b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &pb_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = n_T->size[0];
    n_T->size[0] = r3->size[0];
    emxEnsureCapacity((emxArray__common *)n_T, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r3->size[0];
    emxFree_real_T(&m_I);
    emxFree_real_T(&m_T);
    for (i0 = 0; i0 < xs; i0++) {
      i1 = T->size[0];
      i2 = r3->data[i0];
      n_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &qb_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
    }

    b_emxInit_real_T(&n_I, 1, &emlrtRTEI, TRUE);
    i0 = n_I->size[0];
    n_I->size[0] = r4->size[0];
    emxEnsureCapacity((emxArray__common *)n_I, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r4->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = I->size[0];
      i2 = r4->data[i0];
      n_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &rb_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    b_emxInit_real_T(&o_T, 1, &emlrtRTEI, TRUE);
    linearODESSEP2X4(n_T, n_I);
    emlrtPopRtStackR2012b(&o_emlrtRSI, emlrtRootTLSGlobal);
    A = 0.0;
    A_dirty |= 1U;
    emlrtPushRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
    eml_li_find(indOff, r3);
    eml_li_find(indOff, r4);
    i0 = toff->size[1];
    i1 = (int32_T)(ind->data[ind->size[1] - 1] + 1.0);
    b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i1, 1, i0, &sb_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    i0 = o_T->size[0];
    o_T->size[0] = r3->size[0];
    emxEnsureCapacity((emxArray__common *)o_T, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r3->size[0];
    emxFree_real_T(&n_I);
    emxFree_real_T(&n_T);
    for (i0 = 0; i0 < xs; i0++) {
      i1 = T->size[0];
      i2 = r3->data[i0];
      o_T->data[i0] = T->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &tb_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
    }

    b_emxInit_real_T(&o_I, 1, &emlrtRTEI, TRUE);
    i0 = o_I->size[0];
    o_I->size[0] = r4->size[0];
    emxEnsureCapacity((emxArray__common *)o_I, i0, (int32_T)sizeof(real_T),
                      &emlrtRTEI);
    xs = r4->size[0];
    for (i0 = 0; i0 < xs; i0++) {
      i1 = I->size[0];
      i2 = r4->data[i0];
      o_I->data[i0] = I->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &ub_emlrtBCI, emlrtRootTLSGlobal) - 1];
    }

    linearODESSEP2X4(o_T, o_I);
    emlrtPopRtStackR2012b(&p_emlrtRSI, emlrtRootTLSGlobal);
    i0 = (int32_T)(((real_T)ton->size[1] - 1.0) + (1.0 - (ind->data[ind->size[1]
      - 1] + 1.0)));
    emlrtForLoopVectorCheckR2012b(ind->data[ind->size[1] - 1] + 1.0, 1.0,
      (real_T)ton->size[1] - 1.0, mxDOUBLE_CLASS, i0, &j_emlrtRTEI,
      emlrtRootTLSGlobal);
    idx = 0;
    emxFree_real_T(&o_I);
    emxFree_real_T(&o_T);
    b_emxInit_real_T(&p_T, 1, &emlrtRTEI, TRUE);
    b_emxInit_real_T(&p_I, 1, &emlrtRTEI, TRUE);
    b_emxInit_real_T(&q_T, 1, &emlrtRTEI, TRUE);
    b_emxInit_real_T(&q_I, 1, &emlrtRTEI, TRUE);
    while (idx <= i0 - 1) {
      J0 = (ind->data[ind->size[1] - 1] + 1.0) + (real_T)idx;
      i1 = ton->size[1];
      i2 = (int32_T)J0;
      b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &vb_emlrtBCI, emlrtRootTLSGlobal) - 1];
      i1 = indOn->size[0];
      indOn->size[0] = T->size[0];
      emxEnsureCapacity((emxArray__common *)indOn, i1, (int32_T)sizeof(boolean_T),
                        &emlrtRTEI);
      xs = T->size[0];
      for (i1 = 0; i1 < xs; i1++) {
        indOn->data[i1] = (T->data[i1] > b_ton);
      }

      i1 = toff->size[1];
      i2 = (int32_T)J0;
      b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &wb_emlrtBCI, emlrtRootTLSGlobal) - 1];
      i1 = r2->size[0];
      r2->size[0] = T->size[0];
      emxEnsureCapacity((emxArray__common *)r2, i1, (int32_T)sizeof(boolean_T),
                        &emlrtRTEI);
      xs = T->size[0];
      for (i1 = 0; i1 < xs; i1++) {
        r2->data[i1] = (T->data[i1] <= b_ton);
      }

      i1 = indOn->size[0];
      i2 = r2->size[0];
      emlrtSizeEqCheck1DFastR2012b(i1, i2, &b_emlrtECI, emlrtRootTLSGlobal);
      i1 = indOn->size[0];
      emxEnsureCapacity((emxArray__common *)indOn, i1, (int32_T)sizeof(boolean_T),
                        &emlrtRTEI);
      xs = indOn->size[0];
      for (i1 = 0; i1 < xs; i1++) {
        indOn->data[i1] = (indOn->data[i1] && r2->data[i1]);
      }

      i1 = toff->size[1];
      i2 = (int32_T)J0;
      b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &xb_emlrtBCI, emlrtRootTLSGlobal) - 1];
      i1 = indOff->size[0];
      indOff->size[0] = T->size[0];
      emxEnsureCapacity((emxArray__common *)indOff, i1, (int32_T)sizeof
                        (boolean_T), &emlrtRTEI);
      xs = T->size[0];
      for (i1 = 0; i1 < xs; i1++) {
        indOff->data[i1] = (T->data[i1] > b_ton);
      }

      i1 = ton->size[1];
      i2 = (int32_T)((uint32_T)J0 + 1U);
      b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &yb_emlrtBCI, emlrtRootTLSGlobal) - 1];
      i1 = r2->size[0];
      r2->size[0] = T->size[0];
      emxEnsureCapacity((emxArray__common *)r2, i1, (int32_T)sizeof(boolean_T),
                        &emlrtRTEI);
      xs = T->size[0];
      for (i1 = 0; i1 < xs; i1++) {
        r2->data[i1] = (T->data[i1] <= b_ton);
      }

      i1 = indOff->size[0];
      i2 = r2->size[0];
      emlrtSizeEqCheck1DFastR2012b(i1, i2, &emlrtECI, emlrtRootTLSGlobal);
      i1 = indOff->size[0];
      emxEnsureCapacity((emxArray__common *)indOff, i1, (int32_T)sizeof
                        (boolean_T), &emlrtRTEI);
      xs = indOff->size[0];
      for (i1 = 0; i1 < xs; i1++) {
        indOff->data[i1] = (indOff->data[i1] && r2->data[i1]);
      }

      A = A0;
      A_dirty |= 1U;
      emlrtPushRtStackR2012b(&q_emlrtRSI, emlrtRootTLSGlobal);
      eml_li_find(indOn, r3);
      eml_li_find(indOn, r4);
      i1 = ton->size[1];
      i2 = (int32_T)J0;
      b_ton = ton->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &ac_emlrtBCI, emlrtRootTLSGlobal) - 1];
      i1 = q_T->size[0];
      q_T->size[0] = r3->size[0];
      emxEnsureCapacity((emxArray__common *)q_T, i1, (int32_T)sizeof(real_T),
                        &emlrtRTEI);
      xs = r3->size[0];
      for (i1 = 0; i1 < xs; i1++) {
        i2 = T->size[0];
        i3 = r3->data[i1];
        q_T->data[i1] = T->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
          &bc_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
      }

      i1 = q_I->size[0];
      q_I->size[0] = r4->size[0];
      emxEnsureCapacity((emxArray__common *)q_I, i1, (int32_T)sizeof(real_T),
                        &emlrtRTEI);
      xs = r4->size[0];
      for (i1 = 0; i1 < xs; i1++) {
        i2 = I->size[0];
        i3 = r4->data[i1];
        q_I->data[i1] = I->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
          &cc_emlrtBCI, emlrtRootTLSGlobal) - 1];
      }

      linearODESSEP2X4(q_T, q_I);
      emlrtPopRtStackR2012b(&q_emlrtRSI, emlrtRootTLSGlobal);
      A = 0.0;
      A_dirty |= 1U;
      emlrtPushRtStackR2012b(&r_emlrtRSI, emlrtRootTLSGlobal);
      eml_li_find(indOff, r3);
      eml_li_find(indOff, r4);
      i1 = toff->size[1];
      i2 = (int32_T)J0;
      b_ton = toff->data[emlrtDynamicBoundsCheckFastR2012b(i2, 1, i1,
        &dc_emlrtBCI, emlrtRootTLSGlobal) - 1];
      i1 = p_T->size[0];
      p_T->size[0] = r3->size[0];
      emxEnsureCapacity((emxArray__common *)p_T, i1, (int32_T)sizeof(real_T),
                        &emlrtRTEI);
      xs = r3->size[0];
      for (i1 = 0; i1 < xs; i1++) {
        i2 = T->size[0];
        i3 = r3->data[i1];
        p_T->data[i1] = T->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
          &ec_emlrtBCI, emlrtRootTLSGlobal) - 1] - b_ton;
      }

      i1 = p_I->size[0];
      p_I->size[0] = r4->size[0];
      emxEnsureCapacity((emxArray__common *)p_I, i1, (int32_T)sizeof(real_T),
                        &emlrtRTEI);
      xs = r4->size[0];
      for (i1 = 0; i1 < xs; i1++) {
        i2 = I->size[0];
        i3 = r4->data[i1];
        p_I->data[i1] = I->data[emlrtDynamicBoundsCheckFastR2012b(i3, 1, i2,
          &fc_emlrtBCI, emlrtRootTLSGlobal) - 1];
      }

      linearODESSEP2X4(p_T, p_I);
      emlrtPopRtStackR2012b(&r_emlrtRSI, emlrtRootTLSGlobal);
      idx++;
      emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, emlrtRootTLSGlobal);
    }

    emxFree_real_T(&q_I);
    emxFree_real_T(&q_T);
    emxFree_real_T(&p_I);
    emxFree_real_T(&p_T);
    b_error = err;
  }

  emxFree_int32_T(&r4);
  emxFree_int32_T(&r3);
  emxFree_boolean_T(&r2);
  emxFree_boolean_T(&indPre);
  emxFree_boolean_T(&indOff);
  emxFree_boolean_T(&indOn);
  emxFree_real_T(&ind);
  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
  return b_error;
}

/* End of code generation (naivePerfusionSSEP2X4Pulse.c) */
