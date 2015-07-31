/*
 * naivePerfusionSSEIntegratorcalP2X7_initialize.c
 *
 * Code generation for function 'naivePerfusionSSEIntegratorcalP2X7_initialize'
 *
 * C source code generated on: Fri May 16 09:59:48 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEIntegratorcalP2X7.h"
#include "naivePerfusionSSEIntegratorcalP2X7_initialize.h"
#include "naivePerfusionSSEIntegratorcalP2X7_data.h"

/* Named Constants */
#define b_koff                         (2.2515190700255709E-20)
#define b_k1                           (9.077565330274096)
#define b_L1                           (0.00029490567122699443)
#define b_H1                           (0.0014166701937792002)
#define b_kca                          (0.0030237419135657351)
#define b_C                            (0.002)
#define b_k2                           (7.4469896737652374E+6)
#define b_k3                           (0.8541025109891125)
#define b_H2                           (0.0)
#define b_k4                           (329126.39586163964)
#define b_H3                           (0.0)
#define b_k5                           (6.5188589640538313)
#define b_H4                           (0.0)
#define b_k6                           (535039.46364075935)
#define b_H5                           (0.0)
#define b_L2                           (0.0069060862348617946)
#define b_H6                           (0.0)
#define b_L3                           (6.0694122774996311)
#define b_H7                           (3.0997918230868144E-19)
#define b_r                            (0.10479250967245539)
#define b_Acell                        (1.0)
#define b_g12                          (1.8000000000000002E-8)
#define b_E12                          (0.0)
#define b_g34                          (4.5E-8)
#define b_E34                          (0.0)

/* Function Declarations */
static void c_naivePerfusionSSEIntegratorca(void);

/* Function Definitions */
static void c_naivePerfusionSSEIntegratorca(void)
{
  E34 = b_E34;
  E34_dirty = 1U;
  g34 = b_g34;
  g34_dirty = 1U;
  E12 = b_E12;
  E12_dirty = 1U;
  g12 = b_g12;
  g12_dirty = 1U;
  Acell = b_Acell;
  Acell_dirty = 1U;
  r = b_r;
  r_dirty = 1U;
  H7 = b_H7;
  H7_dirty = 1U;
  L3 = b_L3;
  L3_dirty = 1U;
  H6 = b_H6;
  H6_dirty = 1U;
  L2 = b_L2;
  L2_dirty = 1U;
  H5 = b_H5;
  H5_dirty = 1U;
  k6 = b_k6;
  k6_dirty = 1U;
  H4 = b_H4;
  H4_dirty = 1U;
  k5 = b_k5;
  k5_dirty = 1U;
  H3 = b_H3;
  H3_dirty = 1U;
  k4 = b_k4;
  k4_dirty = 1U;
  H2 = b_H2;
  H2_dirty = 1U;
  k3 = b_k3;
  k3_dirty = 1U;
  k2 = b_k2;
  k2_dirty = 1U;
  C = b_C;
  C_dirty = 1U;
  kca = b_kca;
  kca_dirty = 1U;
  H1 = b_H1;
  H1_dirty = 1U;
  L1 = b_L1;
  L1_dirty = 1U;
  k1 = b_k1;
  k1_dirty = 1U;
  koff = b_koff;
  koff_dirty = 1U;
}

void naivePerfusionSSEIntegratorcalP2X7_initialize(emlrtContext *aContext)
{
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, aContext, NULL, 1);
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, FALSE, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    c_naivePerfusionSSEIntegratorca();
  }
}

/* End of code generation (naivePerfusionSSEIntegratorcalP2X7_initialize.c) */
