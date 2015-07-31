/*
 * naivePerfusionSSEPulseP2X4_mexutil.c
 *
 * Code generation for function 'naivePerfusionSSEPulseP2X4_mexutil'
 *
 * C source code generated on: Mon Jun 23 18:46:09 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEPulseP2X4.h"
#include "naivePerfusionSSEPulseP2X4_mexutil.h"
#include "naivePerfusionSSEPulseP2X4_data.h"

/* Function Declarations */
static real_T d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId);
static void h_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[9]);
static void j_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[81]);
static real_T l_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId);
static void n_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[9]);
static void o_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[81]);

/* Function Definitions */
static real_T d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId)
{
  real_T y;
  y = l_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static void h_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[9])
{
  n_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void j_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[81])
{
  o_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static real_T l_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId)
{
  real_T ret;
  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 0U, 0);
  ret = *(real_T *)mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static void n_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[9])
{
  int32_T iv11[2];
  int32_T i6;
  for (i6 = 0; i6 < 2; i6++) {
    iv11[i6] = 1 + (i6 << 3);
  }

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 2U,
    iv11);
  for (i6 = 0; i6 < 9; i6++) {
    ret[i6] = (*(real_T (*)[9])mxGetData(src))[i6];
  }

  emlrtDestroyArray(&src);
}

static void o_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[81])
{
  int32_T iv12[2];
  int32_T i;
  int32_T i7;
  for (i = 0; i < 2; i++) {
    iv12[i] = 9;
  }

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 2U,
    iv12);
  for (i = 0; i < 9; i++) {
    for (i7 = 0; i7 < 9; i7++) {
      ret[i7 + 9 * i] = (*(real_T (*)[81])mxGetData(src))[i7 + 9 * i];
    }
  }

  emlrtDestroyArray(&src);
}

const mxArray *b_emlrt_marshallOut(const real_T u[9])
{
  const mxArray *y;
  static const int32_T iv5[2] = { 1, 9 };

  const mxArray *m5;
  real_T (*pData)[];
  int32_T i;
  y = NULL;
  m5 = mxCreateNumericArray(2, (int32_T *)&iv5, mxDOUBLE_CLASS, mxREAL);
  pData = (real_T (*)[])mxGetPr(m5);
  for (i = 0; i < 9; i++) {
    (*pData)[i] = u[i];
  }

  emlrtAssign(&y, m5);
  return y;
}

real_T c_emlrt_marshallIn(const mxArray *Ttot, const char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = d_emlrt_marshallIn(emlrtAlias(Ttot), &thisId);
  emlrtDestroyArray(&Ttot);
  return y;
}

const mxArray *c_emlrt_marshallOut(real_T u)
{
  const mxArray *y;
  const mxArray *m6;
  y = NULL;
  m6 = mxCreateDoubleScalar(u);
  emlrtAssign(&y, m6);
  return y;
}

const mxArray *d_emlrt_marshallOut(const real_T u[81])
{
  const mxArray *y;
  static const int32_T iv6[2] = { 9, 9 };

  const mxArray *m7;
  real_T (*pData)[];
  int32_T i;
  y = NULL;
  m7 = mxCreateNumericArray(2, (int32_T *)&iv6, mxDOUBLE_CLASS, mxREAL);
  pData = (real_T (*)[])mxGetPr(m7);
  for (i = 0; i < 81; i++) {
    (*pData)[i] = u[i];
  }

  emlrtAssign(&y, m7);
  return y;
}

void emlrt_checkEscapedGlobals(void)
{
  p0_dirty |= p0_dirty >> 1U;
  err_dirty |= err_dirty >> 1U;
  A_dirty |= A_dirty >> 1U;
  J_dirty |= J_dirty >> 1U;
  IVMon_dirty |= IVMon_dirty >> 1U;
  IVMoff_dirty |= IVMoff_dirty >> 1U;
  Q_dirty |= Q_dirty >> 1U;
  Acell_dirty |= Acell_dirty >> 1U;
  g1_dirty |= g1_dirty >> 1U;
  V_dirty |= V_dirty >> 1U;
  E1_dirty |= E1_dirty >> 1U;
  g2_dirty |= g2_dirty >> 1U;
  E2_dirty |= E2_dirty >> 1U;
  k2_dirty |= k2_dirty >> 1U;
  L2_dirty |= L2_dirty >> 1U;
  L1_dirty |= L1_dirty >> 1U;
  k4_dirty |= k4_dirty >> 1U;
  L4_dirty |= L4_dirty >> 1U;
  L3_dirty |= L3_dirty >> 1U;
  k6_dirty |= k6_dirty >> 1U;
  k1_dirty |= k1_dirty >> 1U;
  H2_dirty |= H2_dirty >> 1U;
  k3_dirty |= k3_dirty >> 1U;
  k5_dirty |= k5_dirty >> 1U;
  H1_dirty |= H1_dirty >> 1U;
  H3_dirty |= H3_dirty >> 1U;
  H4_dirty |= H4_dirty >> 1U;
}

void emlrt_synchGlobalsFromML(void)
{
  g_emlrt_marshallIn(mexGetVariable("global", "p0"), "p0", p0);
  err = c_emlrt_marshallIn(mexGetVariable("global", "err"), "err");
  A = c_emlrt_marshallIn(mexGetVariable("global", "A"), "A");
  J = c_emlrt_marshallIn(mexGetVariable("global", "J"), "J");
  IVMon = c_emlrt_marshallIn(mexGetVariable("global", "IVMon"), "IVMon");
  IVMoff = c_emlrt_marshallIn(mexGetVariable("global", "IVMoff"), "IVMoff");
  i_emlrt_marshallIn(mexGetVariable("global", "Q"), "Q", Q);
  Acell = c_emlrt_marshallIn(mexGetVariable("global", "Acell"), "Acell");
  g1 = c_emlrt_marshallIn(mexGetVariable("global", "g1"), "g1");
  V = c_emlrt_marshallIn(mexGetVariable("global", "V"), "V");
  E1 = c_emlrt_marshallIn(mexGetVariable("global", "E1"), "E1");
  g2 = c_emlrt_marshallIn(mexGetVariable("global", "g2"), "g2");
  E2 = c_emlrt_marshallIn(mexGetVariable("global", "E2"), "E2");
  k2 = c_emlrt_marshallIn(mexGetVariable("global", "k2"), "k2");
  L2 = c_emlrt_marshallIn(mexGetVariable("global", "L2"), "L2");
  L1 = c_emlrt_marshallIn(mexGetVariable("global", "L1"), "L1");
  k4 = c_emlrt_marshallIn(mexGetVariable("global", "k4"), "k4");
  L4 = c_emlrt_marshallIn(mexGetVariable("global", "L4"), "L4");
  L3 = c_emlrt_marshallIn(mexGetVariable("global", "L3"), "L3");
  k6 = c_emlrt_marshallIn(mexGetVariable("global", "k6"), "k6");
  k1 = c_emlrt_marshallIn(mexGetVariable("global", "k1"), "k1");
  H2 = c_emlrt_marshallIn(mexGetVariable("global", "H2"), "H2");
  k3 = c_emlrt_marshallIn(mexGetVariable("global", "k3"), "k3");
  k5 = c_emlrt_marshallIn(mexGetVariable("global", "k5"), "k5");
  H1 = c_emlrt_marshallIn(mexGetVariable("global", "H1"), "H1");
  H3 = c_emlrt_marshallIn(mexGetVariable("global", "H3"), "H3");
  H4 = c_emlrt_marshallIn(mexGetVariable("global", "H4"), "H4");
}

void emlrt_synchGlobalsToML(void)
{
  if (p0_dirty & 1U) {
    mexPutVariable("global", "p0", b_emlrt_marshallOut(p0));
    p0_dirty &= 2U;
  }

  if (err_dirty & 1U) {
    mexPutVariable("global", "err", c_emlrt_marshallOut(err));
    err_dirty &= 2U;
  }

  if (A_dirty & 1U) {
    mexPutVariable("global", "A", c_emlrt_marshallOut(A));
    A_dirty &= 2U;
  }

  if (J_dirty & 1U) {
    mexPutVariable("global", "J", c_emlrt_marshallOut(J));
    J_dirty &= 2U;
  }

  if (IVMon_dirty & 1U) {
    mexPutVariable("global", "IVMon", c_emlrt_marshallOut(IVMon));
    IVMon_dirty &= 2U;
  }

  if (IVMoff_dirty & 1U) {
    mexPutVariable("global", "IVMoff", c_emlrt_marshallOut(IVMoff));
    IVMoff_dirty &= 2U;
  }

  if (Q_dirty & 1U) {
    mexPutVariable("global", "Q", d_emlrt_marshallOut(Q));
    Q_dirty &= 2U;
  }

  if (Acell_dirty & 1U) {
    mexPutVariable("global", "Acell", c_emlrt_marshallOut(Acell));
    Acell_dirty &= 2U;
  }

  if (g1_dirty & 1U) {
    mexPutVariable("global", "g1", c_emlrt_marshallOut(g1));
    g1_dirty &= 2U;
  }

  if (V_dirty & 1U) {
    mexPutVariable("global", "V", c_emlrt_marshallOut(V));
    V_dirty &= 2U;
  }

  if (E1_dirty & 1U) {
    mexPutVariable("global", "E1", c_emlrt_marshallOut(E1));
    E1_dirty &= 2U;
  }

  if (g2_dirty & 1U) {
    mexPutVariable("global", "g2", c_emlrt_marshallOut(g2));
    g2_dirty &= 2U;
  }

  if (E2_dirty & 1U) {
    mexPutVariable("global", "E2", c_emlrt_marshallOut(E2));
    E2_dirty &= 2U;
  }

  if (k2_dirty & 1U) {
    mexPutVariable("global", "k2", c_emlrt_marshallOut(k2));
    k2_dirty &= 2U;
  }

  if (L2_dirty & 1U) {
    mexPutVariable("global", "L2", c_emlrt_marshallOut(L2));
    L2_dirty &= 2U;
  }

  if (L1_dirty & 1U) {
    mexPutVariable("global", "L1", c_emlrt_marshallOut(L1));
    L1_dirty &= 2U;
  }

  if (k4_dirty & 1U) {
    mexPutVariable("global", "k4", c_emlrt_marshallOut(k4));
    k4_dirty &= 2U;
  }

  if (L4_dirty & 1U) {
    mexPutVariable("global", "L4", c_emlrt_marshallOut(L4));
    L4_dirty &= 2U;
  }

  if (L3_dirty & 1U) {
    mexPutVariable("global", "L3", c_emlrt_marshallOut(L3));
    L3_dirty &= 2U;
  }

  if (k6_dirty & 1U) {
    mexPutVariable("global", "k6", c_emlrt_marshallOut(k6));
    k6_dirty &= 2U;
  }

  if (k1_dirty & 1U) {
    mexPutVariable("global", "k1", c_emlrt_marshallOut(k1));
    k1_dirty &= 2U;
  }

  if (H2_dirty & 1U) {
    mexPutVariable("global", "H2", c_emlrt_marshallOut(H2));
    H2_dirty &= 2U;
  }

  if (k3_dirty & 1U) {
    mexPutVariable("global", "k3", c_emlrt_marshallOut(k3));
    k3_dirty &= 2U;
  }

  if (k5_dirty & 1U) {
    mexPutVariable("global", "k5", c_emlrt_marshallOut(k5));
    k5_dirty &= 2U;
  }

  if (H1_dirty & 1U) {
    mexPutVariable("global", "H1", c_emlrt_marshallOut(H1));
    H1_dirty &= 2U;
  }

  if (H3_dirty & 1U) {
    mexPutVariable("global", "H3", c_emlrt_marshallOut(H3));
    H3_dirty &= 2U;
  }

  if (H4_dirty & 1U) {
    mexPutVariable("global", "H4", c_emlrt_marshallOut(H4));
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

void g_emlrt_marshallIn(const mxArray *c_p0, const char_T *identifier, real_T y
  [9])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  h_emlrt_marshallIn(emlrtAlias(c_p0), &thisId, y);
  emlrtDestroyArray(&c_p0);
}

void i_emlrt_marshallIn(const mxArray *c_Q, const char_T *identifier, real_T y
  [81])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  j_emlrt_marshallIn(emlrtAlias(c_Q), &thisId, y);
  emlrtDestroyArray(&c_Q);
}

/* End of code generation (naivePerfusionSSEPulseP2X4_mexutil.c) */
