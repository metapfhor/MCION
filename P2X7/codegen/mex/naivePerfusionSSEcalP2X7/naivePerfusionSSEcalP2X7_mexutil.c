/*
 * naivePerfusionSSEcalP2X7_mexutil.c
 *
 * Code generation for function 'naivePerfusionSSEcalP2X7_mexutil'
 *
 * C source code generated on: Tue May 27 13:41:56 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEcalP2X7.h"
#include "naivePerfusionSSEcalP2X7_mexutil.h"
#include "naivePerfusionSSEcalP2X7_data.h"

/* Function Declarations */
static void f_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[24]);
static real_T h_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId);
static void j_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[576]);
static void m_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[24]);
static real_T n_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId);
static void o_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[576]);

/* Function Definitions */
static void f_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[24])
{
  m_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static real_T h_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId)
{
  real_T y;
  y = n_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static void j_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[576])
{
  o_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void m_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[24])
{
  int32_T iv11[2];
  int32_T i6;
  for (i6 = 0; i6 < 2; i6++) {
    iv11[i6] = 1 + 23 * i6;
  }

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 2U,
    iv11);
  for (i6 = 0; i6 < 24; i6++) {
    ret[i6] = (*(real_T (*)[24])mxGetData(src))[i6];
  }

  emlrtDestroyArray(&src);
}

static real_T n_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId)
{
  real_T ret;
  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 0U, 0);
  ret = *(real_T *)mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static void o_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[576])
{
  int32_T iv12[2];
  int32_T i;
  int32_T i7;
  for (i = 0; i < 2; i++) {
    iv12[i] = 24;
  }

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 2U,
    iv12);
  for (i = 0; i < 24; i++) {
    for (i7 = 0; i7 < 24; i7++) {
      ret[i7 + 24 * i] = (*(real_T (*)[576])mxGetData(src))[i7 + 24 * i];
    }
  }

  emlrtDestroyArray(&src);
}

const mxArray *b_emlrt_marshallOut(const real_T u[24])
{
  const mxArray *y;
  static const int32_T iv5[2] = { 1, 24 };

  const mxArray *m4;
  real_T (*pData)[];
  int32_T i;
  y = NULL;
  m4 = mxCreateNumericArray(2, (int32_T *)&iv5, mxDOUBLE_CLASS, mxREAL);
  pData = (real_T (*)[])mxGetPr(m4);
  for (i = 0; i < 24; i++) {
    (*pData)[i] = u[i];
  }

  emlrtAssign(&y, m4);
  return y;
}

const mxArray *c_emlrt_marshallOut(real_T u)
{
  const mxArray *y;
  const mxArray *m5;
  y = NULL;
  m5 = mxCreateDoubleScalar(u);
  emlrtAssign(&y, m5);
  return y;
}

const mxArray *d_emlrt_marshallOut(const real_T u[576])
{
  const mxArray *y;
  static const int32_T iv6[2] = { 24, 24 };

  const mxArray *m6;
  real_T (*pData)[];
  int32_T i;
  y = NULL;
  m6 = mxCreateNumericArray(2, (int32_T *)&iv6, mxDOUBLE_CLASS, mxREAL);
  pData = (real_T (*)[])mxGetPr(m6);
  for (i = 0; i < 576; i++) {
    (*pData)[i] = u[i];
  }

  emlrtAssign(&y, m6);
  return y;
}

void e_emlrt_marshallIn(const mxArray *c_p0, const char_T *identifier, real_T y
  [24])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  f_emlrt_marshallIn(emlrtAlias(c_p0), &thisId, y);
  emlrtDestroyArray(&c_p0);
}

void emlrt_checkEscapedGlobals(void)
{
  p0_dirty |= p0_dirty >> 1U;
  err_dirty |= err_dirty >> 1U;
  A_dirty |= A_dirty >> 1U;
  ATP_dirty |= ATP_dirty >> 1U;
  Q_dirty |= Q_dirty >> 1U;
  Acell_dirty |= Acell_dirty >> 1U;
  g12_dirty |= g12_dirty >> 1U;
  V_dirty |= V_dirty >> 1U;
  E12_dirty |= E12_dirty >> 1U;
  g34_dirty |= g34_dirty >> 1U;
  E34_dirty |= E34_dirty >> 1U;
  kca_dirty |= kca_dirty >> 1U;
  C_dirty |= C_dirty >> 1U;
  k2_dirty |= k2_dirty >> 1U;
  k1_dirty |= k1_dirty >> 1U;
  k4_dirty |= k4_dirty >> 1U;
  H3_dirty |= H3_dirty >> 1U;
  L1_dirty |= L1_dirty >> 1U;
  k3_dirty |= k3_dirty >> 1U;
  k6_dirty |= k6_dirty >> 1U;
  H5_dirty |= H5_dirty >> 1U;
  k5_dirty |= k5_dirty >> 1U;
  L3_dirty |= L3_dirty >> 1U;
  H7_dirty |= H7_dirty >> 1U;
  L2_dirty |= L2_dirty >> 1U;
  H1_dirty |= H1_dirty >> 1U;
  H2_dirty |= H2_dirty >> 1U;
  H4_dirty |= H4_dirty >> 1U;
  H6_dirty |= H6_dirty >> 1U;
  koff_dirty |= koff_dirty >> 1U;
  r2_dirty |= r2_dirty >> 1U;
  r1_dirty |= r1_dirty >> 1U;
}

void emlrt_synchGlobalsFromML(void)
{
  e_emlrt_marshallIn(mexGetVariable("global", "p0"), "p0", p0);
  err = g_emlrt_marshallIn(mexGetVariable("global", "err"), "err");
  A = g_emlrt_marshallIn(mexGetVariable("global", "A"), "A");
  ATP = g_emlrt_marshallIn(mexGetVariable("global", "ATP"), "ATP");
  i_emlrt_marshallIn(mexGetVariable("global", "Q"), "Q", Q);
  Acell = g_emlrt_marshallIn(mexGetVariable("global", "Acell"), "Acell");
  g12 = g_emlrt_marshallIn(mexGetVariable("global", "g12"), "g12");
  V = g_emlrt_marshallIn(mexGetVariable("global", "V"), "V");
  E12 = g_emlrt_marshallIn(mexGetVariable("global", "E12"), "E12");
  g34 = g_emlrt_marshallIn(mexGetVariable("global", "g34"), "g34");
  E34 = g_emlrt_marshallIn(mexGetVariable("global", "E34"), "E34");
  kca = g_emlrt_marshallIn(mexGetVariable("global", "kca"), "kca");
  C = g_emlrt_marshallIn(mexGetVariable("global", "C"), "C");
  k2 = g_emlrt_marshallIn(mexGetVariable("global", "k2"), "k2");
  k1 = g_emlrt_marshallIn(mexGetVariable("global", "k1"), "k1");
  k4 = g_emlrt_marshallIn(mexGetVariable("global", "k4"), "k4");
  H3 = g_emlrt_marshallIn(mexGetVariable("global", "H3"), "H3");
  L1 = g_emlrt_marshallIn(mexGetVariable("global", "L1"), "L1");
  k3 = g_emlrt_marshallIn(mexGetVariable("global", "k3"), "k3");
  k6 = g_emlrt_marshallIn(mexGetVariable("global", "k6"), "k6");
  H5 = g_emlrt_marshallIn(mexGetVariable("global", "H5"), "H5");
  k5 = g_emlrt_marshallIn(mexGetVariable("global", "k5"), "k5");
  L3 = g_emlrt_marshallIn(mexGetVariable("global", "L3"), "L3");
  H7 = g_emlrt_marshallIn(mexGetVariable("global", "H7"), "H7");
  L2 = g_emlrt_marshallIn(mexGetVariable("global", "L2"), "L2");
  H1 = g_emlrt_marshallIn(mexGetVariable("global", "H1"), "H1");
  H2 = g_emlrt_marshallIn(mexGetVariable("global", "H2"), "H2");
  H4 = g_emlrt_marshallIn(mexGetVariable("global", "H4"), "H4");
  H6 = g_emlrt_marshallIn(mexGetVariable("global", "H6"), "H6");
  koff = g_emlrt_marshallIn(mexGetVariable("global", "koff"), "koff");
  r2 = g_emlrt_marshallIn(mexGetVariable("global", "r2"), "r2");
  r1 = g_emlrt_marshallIn(mexGetVariable("global", "r1"), "r1");
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

  if (ATP_dirty & 1U) {
    mexPutVariable("global", "ATP", c_emlrt_marshallOut(ATP));
    ATP_dirty &= 2U;
  }

  if (Q_dirty & 1U) {
    mexPutVariable("global", "Q", d_emlrt_marshallOut(Q));
    Q_dirty &= 2U;
  }

  if (Acell_dirty & 1U) {
    mexPutVariable("global", "Acell", c_emlrt_marshallOut(Acell));
    Acell_dirty &= 2U;
  }

  if (g12_dirty & 1U) {
    mexPutVariable("global", "g12", c_emlrt_marshallOut(g12));
    g12_dirty &= 2U;
  }

  if (V_dirty & 1U) {
    mexPutVariable("global", "V", c_emlrt_marshallOut(V));
    V_dirty &= 2U;
  }

  if (E12_dirty & 1U) {
    mexPutVariable("global", "E12", c_emlrt_marshallOut(E12));
    E12_dirty &= 2U;
  }

  if (g34_dirty & 1U) {
    mexPutVariable("global", "g34", c_emlrt_marshallOut(g34));
    g34_dirty &= 2U;
  }

  if (E34_dirty & 1U) {
    mexPutVariable("global", "E34", c_emlrt_marshallOut(E34));
    E34_dirty &= 2U;
  }

  if (kca_dirty & 1U) {
    mexPutVariable("global", "kca", c_emlrt_marshallOut(kca));
    kca_dirty &= 2U;
  }

  if (C_dirty & 1U) {
    mexPutVariable("global", "C", c_emlrt_marshallOut(C));
    C_dirty &= 2U;
  }

  if (k2_dirty & 1U) {
    mexPutVariable("global", "k2", c_emlrt_marshallOut(k2));
    k2_dirty &= 2U;
  }

  if (k1_dirty & 1U) {
    mexPutVariable("global", "k1", c_emlrt_marshallOut(k1));
    k1_dirty &= 2U;
  }

  if (k4_dirty & 1U) {
    mexPutVariable("global", "k4", c_emlrt_marshallOut(k4));
    k4_dirty &= 2U;
  }

  if (H3_dirty & 1U) {
    mexPutVariable("global", "H3", c_emlrt_marshallOut(H3));
    H3_dirty &= 2U;
  }

  if (L1_dirty & 1U) {
    mexPutVariable("global", "L1", c_emlrt_marshallOut(L1));
    L1_dirty &= 2U;
  }

  if (k3_dirty & 1U) {
    mexPutVariable("global", "k3", c_emlrt_marshallOut(k3));
    k3_dirty &= 2U;
  }

  if (k6_dirty & 1U) {
    mexPutVariable("global", "k6", c_emlrt_marshallOut(k6));
    k6_dirty &= 2U;
  }

  if (H5_dirty & 1U) {
    mexPutVariable("global", "H5", c_emlrt_marshallOut(H5));
    H5_dirty &= 2U;
  }

  if (k5_dirty & 1U) {
    mexPutVariable("global", "k5", c_emlrt_marshallOut(k5));
    k5_dirty &= 2U;
  }

  if (L3_dirty & 1U) {
    mexPutVariable("global", "L3", c_emlrt_marshallOut(L3));
    L3_dirty &= 2U;
  }

  if (H7_dirty & 1U) {
    mexPutVariable("global", "H7", c_emlrt_marshallOut(H7));
    H7_dirty &= 2U;
  }

  if (L2_dirty & 1U) {
    mexPutVariable("global", "L2", c_emlrt_marshallOut(L2));
    L2_dirty &= 2U;
  }

  if (H1_dirty & 1U) {
    mexPutVariable("global", "H1", c_emlrt_marshallOut(H1));
    H1_dirty &= 2U;
  }

  if (H2_dirty & 1U) {
    mexPutVariable("global", "H2", c_emlrt_marshallOut(H2));
    H2_dirty &= 2U;
  }

  if (H4_dirty & 1U) {
    mexPutVariable("global", "H4", c_emlrt_marshallOut(H4));
    H4_dirty &= 2U;
  }

  if (H6_dirty & 1U) {
    mexPutVariable("global", "H6", c_emlrt_marshallOut(H6));
    H6_dirty &= 2U;
  }

  if (koff_dirty & 1U) {
    mexPutVariable("global", "koff", c_emlrt_marshallOut(koff));
    koff_dirty &= 2U;
  }

  if (r2_dirty & 1U) {
    mexPutVariable("global", "r2", c_emlrt_marshallOut(r2));
    r2_dirty &= 2U;
  }

  if (r1_dirty & 1U) {
    mexPutVariable("global", "r1", c_emlrt_marshallOut(r1));
    r1_dirty &= 2U;
  }
}

real_T g_emlrt_marshallIn(const mxArray *c_err, const char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = h_emlrt_marshallIn(emlrtAlias(c_err), &thisId);
  emlrtDestroyArray(&c_err);
  return y;
}

void i_emlrt_marshallIn(const mxArray *c_Q, const char_T *identifier, real_T y
  [576])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  j_emlrt_marshallIn(emlrtAlias(c_Q), &thisId, y);
  emlrtDestroyArray(&c_Q);
}

/* End of code generation (naivePerfusionSSEcalP2X7_mexutil.c) */
