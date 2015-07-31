/*
 * naivePerfusionSSEP2X4_mexutil.c
 *
 * Code generation for function 'naivePerfusionSSEP2X4_mexutil'
 *
 * C source code generated on: Tue May 20 14:16:12 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4.h"
#include "naivePerfusionSSEP2X4_mexutil.h"
#include "naivePerfusionSSEP2X4_data.h"

/* Function Declarations */
static real_T b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId);
static real_T e_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId);

/* Function Definitions */
static real_T b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId)
{
  real_T y;
  y = e_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T e_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId)
{
  real_T ret;
  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 0U, 0);
  ret = *(real_T *)mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

const mxArray *b_emlrt_marshallOut(real_T u)
{
  const mxArray *y;
  const mxArray *m4;
  y = NULL;
  m4 = mxCreateDoubleScalar(u);
  emlrtAssign(&y, m4);
  return y;
}

void emlrt_checkEscapedGlobals(void)
{
  J_dirty |= J_dirty >> 1U;
  Acell_dirty |= Acell_dirty >> 1U;
  g1_dirty |= g1_dirty >> 1U;
  E1_dirty |= E1_dirty >> 1U;
  g2_dirty |= g2_dirty >> 1U;
  E2_dirty |= E2_dirty >> 1U;
  k2_dirty |= k2_dirty >> 1U;
  L2_dirty |= L2_dirty >> 1U;
  k1_dirty |= k1_dirty >> 1U;
  k4_dirty |= k4_dirty >> 1U;
  H2_dirty |= H2_dirty >> 1U;
  L1_dirty |= L1_dirty >> 1U;
  k8_dirty |= k8_dirty >> 1U;
  L4_dirty |= L4_dirty >> 1U;
  k7_dirty |= k7_dirty >> 1U;
  k10_dirty |= k10_dirty >> 1U;
  L3_dirty |= L3_dirty >> 1U;
  k14_dirty |= k14_dirty >> 1U;
  k13_dirty |= k13_dirty >> 1U;
  k16_dirty |= k16_dirty >> 1U;
  k3_dirty |= k3_dirty >> 1U;
  k6_dirty |= k6_dirty >> 1U;
  k5_dirty |= k5_dirty >> 1U;
  k9_dirty |= k9_dirty >> 1U;
  k12_dirty |= k12_dirty >> 1U;
  k11_dirty |= k11_dirty >> 1U;
  k15_dirty |= k15_dirty >> 1U;
  k18_dirty |= k18_dirty >> 1U;
  k17_dirty |= k17_dirty >> 1U;
  H1_dirty |= H1_dirty >> 1U;
  H3_dirty |= H3_dirty >> 1U;
  H4_dirty |= H4_dirty >> 1U;
}

real_T emlrt_marshallIn(const mxArray *ton, const char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = b_emlrt_marshallIn(emlrtAlias(ton), &thisId);
  emlrtDestroyArray(&ton);
  return y;
}

void emlrt_synchGlobalsFromML(void)
{
  J = emlrt_marshallIn(mexGetVariable("global", "J"), "J");
  Acell = emlrt_marshallIn(mexGetVariable("global", "Acell"), "Acell");
  g1 = emlrt_marshallIn(mexGetVariable("global", "g1"), "g1");
  E1 = emlrt_marshallIn(mexGetVariable("global", "E1"), "E1");
  g2 = emlrt_marshallIn(mexGetVariable("global", "g2"), "g2");
  E2 = emlrt_marshallIn(mexGetVariable("global", "E2"), "E2");
  k2 = emlrt_marshallIn(mexGetVariable("global", "k2"), "k2");
  L2 = emlrt_marshallIn(mexGetVariable("global", "L2"), "L2");
  k1 = emlrt_marshallIn(mexGetVariable("global", "k1"), "k1");
  k4 = emlrt_marshallIn(mexGetVariable("global", "k4"), "k4");
  H2 = emlrt_marshallIn(mexGetVariable("global", "H2"), "H2");
  L1 = emlrt_marshallIn(mexGetVariable("global", "L1"), "L1");
  k8 = emlrt_marshallIn(mexGetVariable("global", "k8"), "k8");
  L4 = emlrt_marshallIn(mexGetVariable("global", "L4"), "L4");
  k7 = emlrt_marshallIn(mexGetVariable("global", "k7"), "k7");
  k10 = emlrt_marshallIn(mexGetVariable("global", "k10"), "k10");
  L3 = emlrt_marshallIn(mexGetVariable("global", "L3"), "L3");
  k14 = emlrt_marshallIn(mexGetVariable("global", "k14"), "k14");
  k13 = emlrt_marshallIn(mexGetVariable("global", "k13"), "k13");
  k16 = emlrt_marshallIn(mexGetVariable("global", "k16"), "k16");
  k3 = emlrt_marshallIn(mexGetVariable("global", "k3"), "k3");
  k6 = emlrt_marshallIn(mexGetVariable("global", "k6"), "k6");
  k5 = emlrt_marshallIn(mexGetVariable("global", "k5"), "k5");
  k9 = emlrt_marshallIn(mexGetVariable("global", "k9"), "k9");
  k12 = emlrt_marshallIn(mexGetVariable("global", "k12"), "k12");
  k11 = emlrt_marshallIn(mexGetVariable("global", "k11"), "k11");
  k15 = emlrt_marshallIn(mexGetVariable("global", "k15"), "k15");
  k18 = emlrt_marshallIn(mexGetVariable("global", "k18"), "k18");
  k17 = emlrt_marshallIn(mexGetVariable("global", "k17"), "k17");
  H1 = emlrt_marshallIn(mexGetVariable("global", "H1"), "H1");
  H3 = emlrt_marshallIn(mexGetVariable("global", "H3"), "H3");
  H4 = emlrt_marshallIn(mexGetVariable("global", "H4"), "H4");
}

void emlrt_synchGlobalsToML(void)
{
  if (J_dirty & 1U) {
    mexPutVariable("global", "J", b_emlrt_marshallOut(J));
    J_dirty &= 2U;
  }

  if (Acell_dirty & 1U) {
    mexPutVariable("global", "Acell", b_emlrt_marshallOut(Acell));
    Acell_dirty &= 2U;
  }

  if (g1_dirty & 1U) {
    mexPutVariable("global", "g1", b_emlrt_marshallOut(g1));
    g1_dirty &= 2U;
  }

  if (E1_dirty & 1U) {
    mexPutVariable("global", "E1", b_emlrt_marshallOut(E1));
    E1_dirty &= 2U;
  }

  if (g2_dirty & 1U) {
    mexPutVariable("global", "g2", b_emlrt_marshallOut(g2));
    g2_dirty &= 2U;
  }

  if (E2_dirty & 1U) {
    mexPutVariable("global", "E2", b_emlrt_marshallOut(E2));
    E2_dirty &= 2U;
  }

  if (k2_dirty & 1U) {
    mexPutVariable("global", "k2", b_emlrt_marshallOut(k2));
    k2_dirty &= 2U;
  }

  if (L2_dirty & 1U) {
    mexPutVariable("global", "L2", b_emlrt_marshallOut(L2));
    L2_dirty &= 2U;
  }

  if (k1_dirty & 1U) {
    mexPutVariable("global", "k1", b_emlrt_marshallOut(k1));
    k1_dirty &= 2U;
  }

  if (k4_dirty & 1U) {
    mexPutVariable("global", "k4", b_emlrt_marshallOut(k4));
    k4_dirty &= 2U;
  }

  if (H2_dirty & 1U) {
    mexPutVariable("global", "H2", b_emlrt_marshallOut(H2));
    H2_dirty &= 2U;
  }

  if (L1_dirty & 1U) {
    mexPutVariable("global", "L1", b_emlrt_marshallOut(L1));
    L1_dirty &= 2U;
  }

  if (k8_dirty & 1U) {
    mexPutVariable("global", "k8", b_emlrt_marshallOut(k8));
    k8_dirty &= 2U;
  }

  if (L4_dirty & 1U) {
    mexPutVariable("global", "L4", b_emlrt_marshallOut(L4));
    L4_dirty &= 2U;
  }

  if (k7_dirty & 1U) {
    mexPutVariable("global", "k7", b_emlrt_marshallOut(k7));
    k7_dirty &= 2U;
  }

  if (k10_dirty & 1U) {
    mexPutVariable("global", "k10", b_emlrt_marshallOut(k10));
    k10_dirty &= 2U;
  }

  if (L3_dirty & 1U) {
    mexPutVariable("global", "L3", b_emlrt_marshallOut(L3));
    L3_dirty &= 2U;
  }

  if (k14_dirty & 1U) {
    mexPutVariable("global", "k14", b_emlrt_marshallOut(k14));
    k14_dirty &= 2U;
  }

  if (k13_dirty & 1U) {
    mexPutVariable("global", "k13", b_emlrt_marshallOut(k13));
    k13_dirty &= 2U;
  }

  if (k16_dirty & 1U) {
    mexPutVariable("global", "k16", b_emlrt_marshallOut(k16));
    k16_dirty &= 2U;
  }

  if (k3_dirty & 1U) {
    mexPutVariable("global", "k3", b_emlrt_marshallOut(k3));
    k3_dirty &= 2U;
  }

  if (k6_dirty & 1U) {
    mexPutVariable("global", "k6", b_emlrt_marshallOut(k6));
    k6_dirty &= 2U;
  }

  if (k5_dirty & 1U) {
    mexPutVariable("global", "k5", b_emlrt_marshallOut(k5));
    k5_dirty &= 2U;
  }

  if (k9_dirty & 1U) {
    mexPutVariable("global", "k9", b_emlrt_marshallOut(k9));
    k9_dirty &= 2U;
  }

  if (k12_dirty & 1U) {
    mexPutVariable("global", "k12", b_emlrt_marshallOut(k12));
    k12_dirty &= 2U;
  }

  if (k11_dirty & 1U) {
    mexPutVariable("global", "k11", b_emlrt_marshallOut(k11));
    k11_dirty &= 2U;
  }

  if (k15_dirty & 1U) {
    mexPutVariable("global", "k15", b_emlrt_marshallOut(k15));
    k15_dirty &= 2U;
  }

  if (k18_dirty & 1U) {
    mexPutVariable("global", "k18", b_emlrt_marshallOut(k18));
    k18_dirty &= 2U;
  }

  if (k17_dirty & 1U) {
    mexPutVariable("global", "k17", b_emlrt_marshallOut(k17));
    k17_dirty &= 2U;
  }

  if (H1_dirty & 1U) {
    mexPutVariable("global", "H1", b_emlrt_marshallOut(H1));
    H1_dirty &= 2U;
  }

  if (H3_dirty & 1U) {
    mexPutVariable("global", "H3", b_emlrt_marshallOut(H3));
    H3_dirty &= 2U;
  }

  if (H4_dirty & 1U) {
    mexPutVariable("global", "H4", b_emlrt_marshallOut(H4));
    H4_dirty &= 2U;
  }
}

void error(const mxArray *b, emlrtMCInfo *location)
{
  const mxArray *pArray;
  pArray = b;
  emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 0, NULL, 1, &pArray, "error", TRUE,
                        location);
}

/* End of code generation (naivePerfusionSSEP2X4_mexutil.c) */
