/*
 * naivePerfusionResponsecalP2X7_mexutil.c
 *
 * Code generation for function 'naivePerfusionResponsecalP2X7_mexutil'
 *
 * C source code generated on: Tue May 27 13:39:04 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionResponsecalP2X7.h"
#include "naivePerfusionResponsecalP2X7_mexutil.h"
#include "naivePerfusionResponsecalP2X7_emxutil.h"
#include "naivePerfusionResponsecalP2X7_data.h"

/* Function Declarations */
static real_T d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId);
static void f_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y);
static void h_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y);
static void j_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[24]);
static void l_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[576]);
static real_T n_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId);
static void o_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret);
static void p_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret);
static void q_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[24]);
static void r_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[576]);

/* Function Definitions */
static real_T d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId)
{
  real_T y;
  y = n_emlrt_marshallIn(emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static void f_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y)
{
  o_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void h_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y)
{
  p_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void j_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[24])
{
  q_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void l_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, real_T y[576])
{
  r_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
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
  *msgId, emxArray_real_T *ret)
{
  int32_T iv19[1];
  boolean_T bv1[1];
  int32_T iv20[1];
  int32_T i8;
  iv19[0] = -1;
  bv1[0] = TRUE;
  emlrtCheckVsBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 1U,
    iv19, bv1, iv20);
  i8 = ret->size[0];
  ret->size[0] = iv20[0];
  emxEnsureCapacity((emxArray__common *)ret, i8, (int32_T)sizeof(real_T),
                    (emlrtRTEInfo *)NULL);
  emlrtImportArrayR2011b(src, ret->data, 8, FALSE);
  emlrtDestroyArray(&src);
}

static void p_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret)
{
  int32_T iv21[2];
  boolean_T bv2[2];
  int32_T i9;
  static const boolean_T bv3[2] = { TRUE, FALSE };

  int32_T iv22[2];
  for (i9 = 0; i9 < 2; i9++) {
    iv21[i9] = 25 * i9 - 1;
    bv2[i9] = bv3[i9];
  }

  emlrtCheckVsBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 2U,
    iv21, bv2, iv22);
  i9 = ret->size[0] * ret->size[1];
  ret->size[0] = iv22[0];
  ret->size[1] = iv22[1];
  emxEnsureCapacity((emxArray__common *)ret, i9, (int32_T)sizeof(real_T),
                    (emlrtRTEInfo *)NULL);
  emlrtImportArrayR2011b(src, ret->data, 8, FALSE);
  emlrtDestroyArray(&src);
}

static void q_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[24])
{
  int32_T iv23[2];
  int32_T i10;
  for (i10 = 0; i10 < 2; i10++) {
    iv23[i10] = 1 + 23 * i10;
  }

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 2U,
    iv23);
  for (i10 = 0; i10 < 24; i10++) {
    ret[i10] = (*(real_T (*)[24])mxGetData(src))[i10];
  }

  emlrtDestroyArray(&src);
}

static void r_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, real_T ret[576])
{
  int32_T iv24[2];
  int32_T i;
  int32_T i11;
  for (i = 0; i < 2; i++) {
    iv24[i] = 24;
  }

  emlrtCheckBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 2U,
    iv24);
  for (i = 0; i < 24; i++) {
    for (i11 = 0; i11 < 24; i11++) {
      ret[i11 + 24 * i] = (*(real_T (*)[576])mxGetData(src))[i11 + 24 * i];
    }
  }

  emlrtDestroyArray(&src);
}

const mxArray *b_emlrt_marshallOut(emxArray_real_T *u)
{
  const mxArray *y;
  const mxArray *m6;
  real_T (*pData)[];
  int32_T i5;
  int32_T i;
  y = NULL;
  m6 = mxCreateNumericArray(1, u->size, mxDOUBLE_CLASS, mxREAL);
  pData = (real_T (*)[])mxGetPr(m6);
  i5 = 0;
  for (i = 0; i < u->size[0]; i++) {
    (*pData)[i5] = u->data[i];
    i5++;
  }

  emlrtAssign(&y, m6);
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

const mxArray *c_emlrt_marshallOut(emxArray_real_T *u)
{
  const mxArray *y;
  const mxArray *m7;
  real_T (*pData)[];
  int32_T i6;
  int32_T i;
  int32_T b_i;
  y = NULL;
  m7 = mxCreateNumericArray(2, u->size, mxDOUBLE_CLASS, mxREAL);
  pData = (real_T (*)[])mxGetPr(m7);
  i6 = 0;
  for (i = 0; i < 24; i++) {
    for (b_i = 0; b_i < u->size[0]; b_i++) {
      (*pData)[i6] = u->data[b_i + u->size[0] * i];
      i6++;
    }
  }

  emlrtAssign(&y, m7);
  return y;
}

const mxArray *d_emlrt_marshallOut(const real_T u[24])
{
  const mxArray *y;
  static const int32_T iv13[2] = { 1, 24 };

  const mxArray *m8;
  real_T (*pData)[];
  int32_T i;
  y = NULL;
  m8 = mxCreateNumericArray(2, (int32_T *)&iv13, mxDOUBLE_CLASS, mxREAL);
  pData = (real_T (*)[])mxGetPr(m8);
  for (i = 0; i < 24; i++) {
    (*pData)[i] = u[i];
  }

  emlrtAssign(&y, m8);
  return y;
}

void e_emlrt_marshallIn(const mxArray *c_Tsoln, const char_T *identifier,
  emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  f_emlrt_marshallIn(emlrtAlias(c_Tsoln), &thisId, y);
  emlrtDestroyArray(&c_Tsoln);
}

const mxArray *e_emlrt_marshallOut(real_T u)
{
  const mxArray *y;
  const mxArray *m9;
  y = NULL;
  m9 = mxCreateDoubleScalar(u);
  emlrtAssign(&y, m9);
  return y;
}

void emlrt_checkEscapedGlobals(void)
{
  Tsoln_dirty |= Tsoln_dirty >> 1U;
  I_dirty |= I_dirty >> 1U;
  Y_dirty |= Y_dirty >> 1U;
  p0_dirty |= p0_dirty >> 1U;
  A_dirty |= A_dirty >> 1U;
  ATP_dirty |= ATP_dirty >> 1U;
  imin_dirty |= imin_dirty >> 1U;
  imax_dirty |= imax_dirty >> 1U;
  t0_dirty |= t0_dirty >> 1U;
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
  e_emlrt_marshallIn(mexGetVariable("global", "Tsoln"), "Tsoln", Tsoln);
  e_emlrt_marshallIn(mexGetVariable("global", "I"), "I", I);
  g_emlrt_marshallIn(mexGetVariable("global", "Y"), "Y", Y);
  i_emlrt_marshallIn(mexGetVariable("global", "p0"), "p0", p0);
  A = c_emlrt_marshallIn(mexGetVariable("global", "A"), "A");
  ATP = c_emlrt_marshallIn(mexGetVariable("global", "ATP"), "ATP");
  imin = c_emlrt_marshallIn(mexGetVariable("global", "imin"), "imin");
  imax = c_emlrt_marshallIn(mexGetVariable("global", "imax"), "imax");
  t0 = c_emlrt_marshallIn(mexGetVariable("global", "t0"), "t0");
  k_emlrt_marshallIn(mexGetVariable("global", "Q"), "Q", Q);
  Acell = c_emlrt_marshallIn(mexGetVariable("global", "Acell"), "Acell");
  g12 = c_emlrt_marshallIn(mexGetVariable("global", "g12"), "g12");
  V = c_emlrt_marshallIn(mexGetVariable("global", "V"), "V");
  E12 = c_emlrt_marshallIn(mexGetVariable("global", "E12"), "E12");
  g34 = c_emlrt_marshallIn(mexGetVariable("global", "g34"), "g34");
  E34 = c_emlrt_marshallIn(mexGetVariable("global", "E34"), "E34");
  kca = c_emlrt_marshallIn(mexGetVariable("global", "kca"), "kca");
  C = c_emlrt_marshallIn(mexGetVariable("global", "C"), "C");
  k2 = c_emlrt_marshallIn(mexGetVariable("global", "k2"), "k2");
  k1 = c_emlrt_marshallIn(mexGetVariable("global", "k1"), "k1");
  k4 = c_emlrt_marshallIn(mexGetVariable("global", "k4"), "k4");
  H3 = c_emlrt_marshallIn(mexGetVariable("global", "H3"), "H3");
  L1 = c_emlrt_marshallIn(mexGetVariable("global", "L1"), "L1");
  k3 = c_emlrt_marshallIn(mexGetVariable("global", "k3"), "k3");
  k6 = c_emlrt_marshallIn(mexGetVariable("global", "k6"), "k6");
  H5 = c_emlrt_marshallIn(mexGetVariable("global", "H5"), "H5");
  k5 = c_emlrt_marshallIn(mexGetVariable("global", "k5"), "k5");
  L3 = c_emlrt_marshallIn(mexGetVariable("global", "L3"), "L3");
  H7 = c_emlrt_marshallIn(mexGetVariable("global", "H7"), "H7");
  L2 = c_emlrt_marshallIn(mexGetVariable("global", "L2"), "L2");
  H1 = c_emlrt_marshallIn(mexGetVariable("global", "H1"), "H1");
  H2 = c_emlrt_marshallIn(mexGetVariable("global", "H2"), "H2");
  H4 = c_emlrt_marshallIn(mexGetVariable("global", "H4"), "H4");
  H6 = c_emlrt_marshallIn(mexGetVariable("global", "H6"), "H6");
  koff = c_emlrt_marshallIn(mexGetVariable("global", "koff"), "koff");
  r2 = c_emlrt_marshallIn(mexGetVariable("global", "r2"), "r2");
  r1 = c_emlrt_marshallIn(mexGetVariable("global", "r1"), "r1");
}

void emlrt_synchGlobalsToML(void)
{
  emxArray_real_T *r6;
  int32_T i7;
  int32_T loop_ub;
  emxArray_real_T *r7;
  emxArray_real_T *r8;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);
  if (Tsoln_dirty & 1U) {
    emxInit_real_T(&r6, 1, (emlrtRTEInfo *)NULL, TRUE);
    i7 = r6->size[0];
    r6->size[0] = Tsoln->size[0];
    emxEnsureCapacity((emxArray__common *)r6, i7, (int32_T)sizeof(real_T),
                      (emlrtRTEInfo *)NULL);
    loop_ub = Tsoln->size[0];
    for (i7 = 0; i7 < loop_ub; i7++) {
      r6->data[i7] = Tsoln->data[i7];
    }

    mexPutVariable("global", "Tsoln", b_emlrt_marshallOut(r6));
    Tsoln_dirty &= 2U;
    emxFree_real_T(&r6);
  }

  if (I_dirty & 1U) {
    emxInit_real_T(&r7, 1, (emlrtRTEInfo *)NULL, TRUE);
    i7 = r7->size[0];
    r7->size[0] = I->size[0];
    emxEnsureCapacity((emxArray__common *)r7, i7, (int32_T)sizeof(real_T),
                      (emlrtRTEInfo *)NULL);
    loop_ub = I->size[0];
    for (i7 = 0; i7 < loop_ub; i7++) {
      r7->data[i7] = I->data[i7];
    }

    mexPutVariable("global", "I", b_emlrt_marshallOut(r7));
    I_dirty &= 2U;
    emxFree_real_T(&r7);
  }

  if (Y_dirty & 1U) {
    b_emxInit_real_T(&r8, 2, (emlrtRTEInfo *)NULL, TRUE);
    i7 = r8->size[0] * r8->size[1];
    r8->size[0] = Y->size[0];
    r8->size[1] = 24;
    emxEnsureCapacity((emxArray__common *)r8, i7, (int32_T)sizeof(real_T),
                      (emlrtRTEInfo *)NULL);
    loop_ub = Y->size[0] * Y->size[1];
    for (i7 = 0; i7 < loop_ub; i7++) {
      r8->data[i7] = Y->data[i7];
    }

    mexPutVariable("global", "Y", c_emlrt_marshallOut(r8));
    Y_dirty &= 2U;
    emxFree_real_T(&r8);
  }

  if (p0_dirty & 1U) {
    mexPutVariable("global", "p0", d_emlrt_marshallOut(p0));
    p0_dirty &= 2U;
  }

  if (A_dirty & 1U) {
    mexPutVariable("global", "A", e_emlrt_marshallOut(A));
    A_dirty &= 2U;
  }

  if (ATP_dirty & 1U) {
    mexPutVariable("global", "ATP", e_emlrt_marshallOut(ATP));
    ATP_dirty &= 2U;
  }

  if (imin_dirty & 1U) {
    mexPutVariable("global", "imin", e_emlrt_marshallOut(imin));
    imin_dirty &= 2U;
  }

  if (imax_dirty & 1U) {
    mexPutVariable("global", "imax", e_emlrt_marshallOut(imax));
    imax_dirty &= 2U;
  }

  if (t0_dirty & 1U) {
    mexPutVariable("global", "t0", e_emlrt_marshallOut(t0));
    t0_dirty &= 2U;
  }

  if (Q_dirty & 1U) {
    mexPutVariable("global", "Q", f_emlrt_marshallOut(Q));
    Q_dirty &= 2U;
  }

  if (Acell_dirty & 1U) {
    mexPutVariable("global", "Acell", e_emlrt_marshallOut(Acell));
    Acell_dirty &= 2U;
  }

  if (g12_dirty & 1U) {
    mexPutVariable("global", "g12", e_emlrt_marshallOut(g12));
    g12_dirty &= 2U;
  }

  if (V_dirty & 1U) {
    mexPutVariable("global", "V", e_emlrt_marshallOut(V));
    V_dirty &= 2U;
  }

  if (E12_dirty & 1U) {
    mexPutVariable("global", "E12", e_emlrt_marshallOut(E12));
    E12_dirty &= 2U;
  }

  if (g34_dirty & 1U) {
    mexPutVariable("global", "g34", e_emlrt_marshallOut(g34));
    g34_dirty &= 2U;
  }

  if (E34_dirty & 1U) {
    mexPutVariable("global", "E34", e_emlrt_marshallOut(E34));
    E34_dirty &= 2U;
  }

  if (kca_dirty & 1U) {
    mexPutVariable("global", "kca", e_emlrt_marshallOut(kca));
    kca_dirty &= 2U;
  }

  if (C_dirty & 1U) {
    mexPutVariable("global", "C", e_emlrt_marshallOut(C));
    C_dirty &= 2U;
  }

  if (k2_dirty & 1U) {
    mexPutVariable("global", "k2", e_emlrt_marshallOut(k2));
    k2_dirty &= 2U;
  }

  if (k1_dirty & 1U) {
    mexPutVariable("global", "k1", e_emlrt_marshallOut(k1));
    k1_dirty &= 2U;
  }

  if (k4_dirty & 1U) {
    mexPutVariable("global", "k4", e_emlrt_marshallOut(k4));
    k4_dirty &= 2U;
  }

  if (H3_dirty & 1U) {
    mexPutVariable("global", "H3", e_emlrt_marshallOut(H3));
    H3_dirty &= 2U;
  }

  if (L1_dirty & 1U) {
    mexPutVariable("global", "L1", e_emlrt_marshallOut(L1));
    L1_dirty &= 2U;
  }

  if (k3_dirty & 1U) {
    mexPutVariable("global", "k3", e_emlrt_marshallOut(k3));
    k3_dirty &= 2U;
  }

  if (k6_dirty & 1U) {
    mexPutVariable("global", "k6", e_emlrt_marshallOut(k6));
    k6_dirty &= 2U;
  }

  if (H5_dirty & 1U) {
    mexPutVariable("global", "H5", e_emlrt_marshallOut(H5));
    H5_dirty &= 2U;
  }

  if (k5_dirty & 1U) {
    mexPutVariable("global", "k5", e_emlrt_marshallOut(k5));
    k5_dirty &= 2U;
  }

  if (L3_dirty & 1U) {
    mexPutVariable("global", "L3", e_emlrt_marshallOut(L3));
    L3_dirty &= 2U;
  }

  if (H7_dirty & 1U) {
    mexPutVariable("global", "H7", e_emlrt_marshallOut(H7));
    H7_dirty &= 2U;
  }

  if (L2_dirty & 1U) {
    mexPutVariable("global", "L2", e_emlrt_marshallOut(L2));
    L2_dirty &= 2U;
  }

  if (H1_dirty & 1U) {
    mexPutVariable("global", "H1", e_emlrt_marshallOut(H1));
    H1_dirty &= 2U;
  }

  if (H2_dirty & 1U) {
    mexPutVariable("global", "H2", e_emlrt_marshallOut(H2));
    H2_dirty &= 2U;
  }

  if (H4_dirty & 1U) {
    mexPutVariable("global", "H4", e_emlrt_marshallOut(H4));
    H4_dirty &= 2U;
  }

  if (H6_dirty & 1U) {
    mexPutVariable("global", "H6", e_emlrt_marshallOut(H6));
    H6_dirty &= 2U;
  }

  if (koff_dirty & 1U) {
    mexPutVariable("global", "koff", e_emlrt_marshallOut(koff));
    koff_dirty &= 2U;
  }

  if (r2_dirty & 1U) {
    mexPutVariable("global", "r2", e_emlrt_marshallOut(r2));
    r2_dirty &= 2U;
  }

  if (r1_dirty & 1U) {
    mexPutVariable("global", "r1", e_emlrt_marshallOut(r1));
    r1_dirty &= 2U;
  }

  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
}

void error(const mxArray *b, emlrtMCInfo *location)
{
  const mxArray *pArray;
  pArray = b;
  emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 0, NULL, 1, &pArray, "error", TRUE,
                        location);
}

const mxArray *f_emlrt_marshallOut(const real_T u[576])
{
  const mxArray *y;
  static const int32_T iv14[2] = { 24, 24 };

  const mxArray *m10;
  real_T (*pData)[];
  int32_T i;
  y = NULL;
  m10 = mxCreateNumericArray(2, (int32_T *)&iv14, mxDOUBLE_CLASS, mxREAL);
  pData = (real_T (*)[])mxGetPr(m10);
  for (i = 0; i < 576; i++) {
    (*pData)[i] = u[i];
  }

  emlrtAssign(&y, m10);
  return y;
}

void g_emlrt_marshallIn(const mxArray *c_Y, const char_T *identifier,
  emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  h_emlrt_marshallIn(emlrtAlias(c_Y), &thisId, y);
  emlrtDestroyArray(&c_Y);
}

void i_emlrt_marshallIn(const mxArray *c_p0, const char_T *identifier, real_T y
  [24])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  j_emlrt_marshallIn(emlrtAlias(c_p0), &thisId, y);
  emlrtDestroyArray(&c_p0);
}

void k_emlrt_marshallIn(const mxArray *c_Q, const char_T *identifier, real_T y
  [576])
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  l_emlrt_marshallIn(emlrtAlias(c_Q), &thisId, y);
  emlrtDestroyArray(&c_Q);
}

const mxArray *message(const mxArray *b, emlrtMCInfo *location)
{
  const mxArray *pArray;
  const mxArray *m13;
  pArray = b;
  return emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 1, &m13, 1, &pArray,
    "message", TRUE, location);
}

/* End of code generation (naivePerfusionResponsecalP2X7_mexutil.c) */
