/*
 * naivePerfusionSSEProlP2X4_initialize.c
 *
 * Code generation for function 'naivePerfusionSSEProlP2X4_initialize'
 *
 * C source code generated on: Mon Jun 23 18:45:45 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEProlP2X4.h"
#include "naivePerfusionSSEProlP2X4_initialize.h"
#include "naivePerfusionSSEProlP2X4_data.h"

/* Named Constants */
#define b_err                          (2.682373689451322E+6)
#define b_A                            (0.0)
#define b_J                            (0.0)
#define b_IVMon                        (5.0)
#define b_IVMoff                       (155.0)
#define b_Acell                        (0.91560016941481537)
#define b_g1                           (3.2023039889225628E-8)
#define b_V                            (-0.06)
#define b_E1                           (0.0)
#define b_g2                           (8.0E-8)
#define b_E2                           (0.0)
#define b_k2                           (571.953726193402)
#define b_L2                           (17000.0)
#define b_L1                           (0.03)
#define b_k4                           (2.0548528383E+6)
#define b_L4                           (15000.0)
#define b_L3                           (0.04)
#define b_k6                           (4.8124480061E+6)
#define b_k1                           (1.0E-9)
#define b_H2                           (0.10564787753773441)
#define b_k3                           (2.59)
#define b_k5                           (3.8352)
#define b_H1                           (0.32718342752558982)
#define b_H3                           (5.93106859734406)
#define b_H4                           (4.6920245141632767E-5)

/* Function Declarations */
static void naivePerfusionSSEProlP2X4_once(void);

/* Function Definitions */
static void naivePerfusionSSEProlP2X4_once(void)
{
  static const real_T dv0[81] = { -0.0, 0.03, 0.0, 1.0E-9, 0.0, 0.0,
    0.32718342752558982, 0.0, 4.6920245141632767E-5, 0.0, -0.03, 0.04, 0.0, 2.59,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.04, 0.0, 0.0, 3.8352, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, -0.10564787853773441, 0.03, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    -2.6199999999999997, 0.04, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -3.8752,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.32718342752558982, 1.0E-9,
    0.0, 0.0, 0.0, 0.0, 0.10564787753773441, 0.0, 0.0, 0.0, -5.93106859834406,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 5.93106859734406,
    -4.6920245141632767E-5 };

  static const real_T dv1[9] = { 0.99387831562573237, 0.0, 0.0,
    2.0370514103840116E-14, 0.0, 0.0, 1.6676006060149807E-24,
    3.6943281574600885E-16, 0.0061216843742474296 };

  memcpy(&Q[0], &dv0[0], 81U * sizeof(real_T));
  memcpy(&p0[0], &dv1[0], 9U * sizeof(real_T));
  H4 = b_H4;
  H4_dirty = 1U;
  H3 = b_H3;
  H3_dirty = 1U;
  H1 = b_H1;
  H1_dirty = 1U;
  k5 = b_k5;
  k5_dirty = 1U;
  k3 = b_k3;
  k3_dirty = 1U;
  H2 = b_H2;
  H2_dirty = 1U;
  k1 = b_k1;
  k1_dirty = 1U;
  k6 = b_k6;
  k6_dirty = 1U;
  L3 = b_L3;
  L3_dirty = 1U;
  L4 = b_L4;
  L4_dirty = 1U;
  k4 = b_k4;
  k4_dirty = 1U;
  L1 = b_L1;
  L1_dirty = 1U;
  L2 = b_L2;
  L2_dirty = 1U;
  k2 = b_k2;
  k2_dirty = 1U;
  E2 = b_E2;
  E2_dirty = 1U;
  g2 = b_g2;
  g2_dirty = 1U;
  E1 = b_E1;
  E1_dirty = 1U;
  V = b_V;
  V_dirty = 1U;
  g1 = b_g1;
  g1_dirty = 1U;
  Acell = b_Acell;
  Acell_dirty = 1U;
  Q_dirty = 1U;
  IVMoff = b_IVMoff;
  IVMoff_dirty = 1U;
  IVMon = b_IVMon;
  IVMon_dirty = 1U;
  J = b_J;
  J_dirty = 1U;
  A = b_A;
  A_dirty = 1U;
  err = b_err;
  err_dirty = 1U;
  p0_dirty = 1U;
}

void naivePerfusionSSEProlP2X4_initialize(emlrtContext *aContext)
{
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, aContext, NULL, 1);
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, FALSE, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    naivePerfusionSSEProlP2X4_once();
  }
}

/* End of code generation (naivePerfusionSSEProlP2X4_initialize.c) */
