/*
 * naivePerfusionSSEIntegratorcalP2X7_mexutil.c
 *
 * Code generation for function 'naivePerfusionSSEIntegratorcalP2X7_mexutil'
 *
 * C source code generated on: Fri May 16 09:59:48 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEIntegratorcalP2X7.h"
#include "naivePerfusionSSEIntegratorcalP2X7_mexutil.h"
#include "naivePerfusionSSEIntegratorcalP2X7_api.h"
#include "naivePerfusionSSEIntegratorcalP2X7_data.h"

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

void emlrt_checkEscapedGlobals(void)
{
  koff_dirty |= koff_dirty >> 1U;
  k1_dirty |= k1_dirty >> 1U;
  L1_dirty |= L1_dirty >> 1U;
  H1_dirty |= H1_dirty >> 1U;
  kca_dirty |= kca_dirty >> 1U;
  C_dirty |= C_dirty >> 1U;
  k2_dirty |= k2_dirty >> 1U;
  k3_dirty |= k3_dirty >> 1U;
  H2_dirty |= H2_dirty >> 1U;
  k4_dirty |= k4_dirty >> 1U;
  H3_dirty |= H3_dirty >> 1U;
  k5_dirty |= k5_dirty >> 1U;
  H4_dirty |= H4_dirty >> 1U;
  k6_dirty |= k6_dirty >> 1U;
  H5_dirty |= H5_dirty >> 1U;
  L2_dirty |= L2_dirty >> 1U;
  H6_dirty |= H6_dirty >> 1U;
  L3_dirty |= L3_dirty >> 1U;
  H7_dirty |= H7_dirty >> 1U;
  r_dirty |= r_dirty >> 1U;
  Acell_dirty |= Acell_dirty >> 1U;
  g12_dirty |= g12_dirty >> 1U;
  E12_dirty |= E12_dirty >> 1U;
  g34_dirty |= g34_dirty >> 1U;
  E34_dirty |= E34_dirty >> 1U;
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

const mxArray *emlrt_marshallOut(real_T u)
{
  const mxArray *y;
  const mxArray *m1;
  y = NULL;
  m1 = mxCreateDoubleScalar(u);
  emlrtAssign(&y, m1);
  return y;
}

void emlrt_synchGlobalsFromML(void)
{
  koff = emlrt_marshallIn(mexGetVariable("global", "koff"), "koff");
  k1 = emlrt_marshallIn(mexGetVariable("global", "k1"), "k1");
  L1 = emlrt_marshallIn(mexGetVariable("global", "L1"), "L1");
  H1 = emlrt_marshallIn(mexGetVariable("global", "H1"), "H1");
  kca = emlrt_marshallIn(mexGetVariable("global", "kca"), "kca");
  C = emlrt_marshallIn(mexGetVariable("global", "C"), "C");
  k2 = emlrt_marshallIn(mexGetVariable("global", "k2"), "k2");
  k3 = emlrt_marshallIn(mexGetVariable("global", "k3"), "k3");
  H2 = emlrt_marshallIn(mexGetVariable("global", "H2"), "H2");
  k4 = emlrt_marshallIn(mexGetVariable("global", "k4"), "k4");
  H3 = emlrt_marshallIn(mexGetVariable("global", "H3"), "H3");
  k5 = emlrt_marshallIn(mexGetVariable("global", "k5"), "k5");
  H4 = emlrt_marshallIn(mexGetVariable("global", "H4"), "H4");
  k6 = emlrt_marshallIn(mexGetVariable("global", "k6"), "k6");
  H5 = emlrt_marshallIn(mexGetVariable("global", "H5"), "H5");
  L2 = emlrt_marshallIn(mexGetVariable("global", "L2"), "L2");
  H6 = emlrt_marshallIn(mexGetVariable("global", "H6"), "H6");
  L3 = emlrt_marshallIn(mexGetVariable("global", "L3"), "L3");
  H7 = emlrt_marshallIn(mexGetVariable("global", "H7"), "H7");
  r = emlrt_marshallIn(mexGetVariable("global", "r"), "r");
  Acell = emlrt_marshallIn(mexGetVariable("global", "Acell"), "Acell");
  g12 = emlrt_marshallIn(mexGetVariable("global", "g12"), "g12");
  E12 = emlrt_marshallIn(mexGetVariable("global", "E12"), "E12");
  g34 = emlrt_marshallIn(mexGetVariable("global", "g34"), "g34");
  E34 = emlrt_marshallIn(mexGetVariable("global", "E34"), "E34");
}

void emlrt_synchGlobalsToML(void)
{
  if (koff_dirty & 1U) {
    mexPutVariable("global", "koff", emlrt_marshallOut(koff));
    koff_dirty &= 2U;
  }

  if (k1_dirty & 1U) {
    mexPutVariable("global", "k1", emlrt_marshallOut(k1));
    k1_dirty &= 2U;
  }

  if (L1_dirty & 1U) {
    mexPutVariable("global", "L1", emlrt_marshallOut(L1));
    L1_dirty &= 2U;
  }

  if (H1_dirty & 1U) {
    mexPutVariable("global", "H1", emlrt_marshallOut(H1));
    H1_dirty &= 2U;
  }

  if (kca_dirty & 1U) {
    mexPutVariable("global", "kca", emlrt_marshallOut(kca));
    kca_dirty &= 2U;
  }

  if (C_dirty & 1U) {
    mexPutVariable("global", "C", emlrt_marshallOut(C));
    C_dirty &= 2U;
  }

  if (k2_dirty & 1U) {
    mexPutVariable("global", "k2", emlrt_marshallOut(k2));
    k2_dirty &= 2U;
  }

  if (k3_dirty & 1U) {
    mexPutVariable("global", "k3", emlrt_marshallOut(k3));
    k3_dirty &= 2U;
  }

  if (H2_dirty & 1U) {
    mexPutVariable("global", "H2", emlrt_marshallOut(H2));
    H2_dirty &= 2U;
  }

  if (k4_dirty & 1U) {
    mexPutVariable("global", "k4", emlrt_marshallOut(k4));
    k4_dirty &= 2U;
  }

  if (H3_dirty & 1U) {
    mexPutVariable("global", "H3", emlrt_marshallOut(H3));
    H3_dirty &= 2U;
  }

  if (k5_dirty & 1U) {
    mexPutVariable("global", "k5", emlrt_marshallOut(k5));
    k5_dirty &= 2U;
  }

  if (H4_dirty & 1U) {
    mexPutVariable("global", "H4", emlrt_marshallOut(H4));
    H4_dirty &= 2U;
  }

  if (k6_dirty & 1U) {
    mexPutVariable("global", "k6", emlrt_marshallOut(k6));
    k6_dirty &= 2U;
  }

  if (H5_dirty & 1U) {
    mexPutVariable("global", "H5", emlrt_marshallOut(H5));
    H5_dirty &= 2U;
  }

  if (L2_dirty & 1U) {
    mexPutVariable("global", "L2", emlrt_marshallOut(L2));
    L2_dirty &= 2U;
  }

  if (H6_dirty & 1U) {
    mexPutVariable("global", "H6", emlrt_marshallOut(H6));
    H6_dirty &= 2U;
  }

  if (L3_dirty & 1U) {
    mexPutVariable("global", "L3", emlrt_marshallOut(L3));
    L3_dirty &= 2U;
  }

  if (H7_dirty & 1U) {
    mexPutVariable("global", "H7", emlrt_marshallOut(H7));
    H7_dirty &= 2U;
  }

  if (r_dirty & 1U) {
    mexPutVariable("global", "r", emlrt_marshallOut(r));
    r_dirty &= 2U;
  }

  if (Acell_dirty & 1U) {
    mexPutVariable("global", "Acell", emlrt_marshallOut(Acell));
    Acell_dirty &= 2U;
  }

  if (g12_dirty & 1U) {
    mexPutVariable("global", "g12", emlrt_marshallOut(g12));
    g12_dirty &= 2U;
  }

  if (E12_dirty & 1U) {
    mexPutVariable("global", "E12", emlrt_marshallOut(E12));
    E12_dirty &= 2U;
  }

  if (g34_dirty & 1U) {
    mexPutVariable("global", "g34", emlrt_marshallOut(g34));
    g34_dirty &= 2U;
  }

  if (E34_dirty & 1U) {
    mexPutVariable("global", "E34", emlrt_marshallOut(E34));
    E34_dirty &= 2U;
  }
}

/* End of code generation (naivePerfusionSSEIntegratorcalP2X7_mexutil.c) */
