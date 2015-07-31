/*
 * naivePerfusionSSEP2X4_initialize.c
 *
 * Code generation for function 'naivePerfusionSSEP2X4_initialize'
 *
 * C source code generated on: Tue May 20 14:16:12 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4.h"
#include "naivePerfusionSSEP2X4_initialize.h"
#include "naivePerfusionSSEP2X4_data.h"

/* Named Constants */
#define b_J                            (0.0)
#define b_Acell                        (1.5871568725247078)
#define b_g1                           (2.7673130245658541E-8)
#define b_E1                           (0.0)
#define b_g2                           (1.4189584320695749E-7)
#define b_E2                           (0.0)
#define b_k2                           (9451.8551337936224)
#define b_L2                           (16739.544073078909)
#define b_k1                           (1.5777379440776031E-20)
#define b_k4                           (79483.232187002955)
#define b_H2                           (0.11624312101702003)
#define b_L1                           (0.052623079694273156)
#define b_k8                           (1.1502500250884653E+6)
#define b_L4                           (22850.948418394833)
#define b_k7                           (1.3932548205141881)
#define b_k10                          (507740.62247942347)
#define b_L3                           (0.025086609325606284)
#define b_k14                          (1.0000000000000001E-20)
#define b_k13                          (0.03327349264147185)
#define b_k16                          (54316.590351321967)
#define b_k3                           (0.638154386712952)
#define b_k6                           (6.729846321382843E+6)
#define b_k5                           (57.5426536114273)
#define b_k9                           (0.4322330177193584)
#define b_k12                          (748585.98896979867)
#define b_k11                          (1.4270002619069548)
#define b_k15                          (0.049180387645004806)
#define b_k18                          (1.0399366177313419E+6)
#define b_k17                          (0.14498514799202866)
#define b_H1                           (0.73470974918895293)
#define b_H3                           (624.47151221353261)
#define b_H4                           (0.0010862248616444342)

/* Function Declarations */
static void naivePerfusionSSEP2X4_once(void);

/* Function Definitions */
static void naivePerfusionSSEP2X4_once(void)
{
  H4 = b_H4;
  H4_dirty = 1U;
  H3 = b_H3;
  H3_dirty = 1U;
  H1 = b_H1;
  H1_dirty = 1U;
  k17 = b_k17;
  k17_dirty = 1U;
  k18 = b_k18;
  k18_dirty = 1U;
  k15 = b_k15;
  k15_dirty = 1U;
  k11 = b_k11;
  k11_dirty = 1U;
  k12 = b_k12;
  k12_dirty = 1U;
  k9 = b_k9;
  k9_dirty = 1U;
  k5 = b_k5;
  k5_dirty = 1U;
  k6 = b_k6;
  k6_dirty = 1U;
  k3 = b_k3;
  k3_dirty = 1U;
  k16 = b_k16;
  k16_dirty = 1U;
  k13 = b_k13;
  k13_dirty = 1U;
  k14 = b_k14;
  k14_dirty = 1U;
  L3 = b_L3;
  L3_dirty = 1U;
  k10 = b_k10;
  k10_dirty = 1U;
  k7 = b_k7;
  k7_dirty = 1U;
  L4 = b_L4;
  L4_dirty = 1U;
  k8 = b_k8;
  k8_dirty = 1U;
  L1 = b_L1;
  L1_dirty = 1U;
  H2 = b_H2;
  H2_dirty = 1U;
  k4 = b_k4;
  k4_dirty = 1U;
  k1 = b_k1;
  k1_dirty = 1U;
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
  g1 = b_g1;
  g1_dirty = 1U;
  Acell = b_Acell;
  Acell_dirty = 1U;
  J = b_J;
  J_dirty = 1U;
}

void naivePerfusionSSEP2X4_initialize(emlrtContext *aContext)
{
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, aContext, NULL, 1);
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, FALSE, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    naivePerfusionSSEP2X4_once();
  }
}

/* End of code generation (naivePerfusionSSEP2X4_initialize.c) */
