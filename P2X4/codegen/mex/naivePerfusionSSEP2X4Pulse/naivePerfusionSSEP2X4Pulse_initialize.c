/*
 * naivePerfusionSSEP2X4Pulse_initialize.c
 *
 * Code generation for function 'naivePerfusionSSEP2X4Pulse_initialize'
 *
 * C source code generated on: Wed Jun  4 10:08:42 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEP2X4Pulse.h"
#include "naivePerfusionSSEP2X4Pulse_initialize.h"
#include "naivePerfusionSSEP2X4Pulse_data.h"

/* Named Constants */
#define b_err                          (7.0926546683240861E+7)
#define b_A                            (0.0)
#define b_J                            (0.0)
#define b_IVMon                        (35.895)
#define b_IVMoff                       (220.91)
#define b_Acell                        (0.69045789893421117)
#define b_g1                           (9.0160078674721432E-8)
#define b_V                            (-0.06)
#define b_E1                           (0.0)
#define b_g2                           (7.7580139567134469E-9)
#define b_E2                           (0.0)
#define b_k2                           (2.5138105878309514E+6)
#define b_L2                           (-4523.86016921826)
#define b_k1                           (1.116688158991562)
#define b_k4                           (1.3596997425818441E+6)
#define b_H2                           (0.40116710818745527)
#define b_L1                           (-0.010883898406557695)
#define b_k8                           (274948.96588113857)
#define b_L4                           (-14575.184883126803)
#define b_k7                           (0.94525967279029688)
#define b_k10                          (836219.15268878662)
#define b_L3                           (0.0090137724960771513)
#define b_alpha                        (0.60214673700071086)
#define b_k3                           (-1.5652499943223959)
#define b_k6                           (1.2231881512812679E+6)
#define b_k5                           (1.8777173206192477)
#define b_k9                           (0.59042972131449)
#define b_k12                          (1884.6394040493906)
#define b_k11                          (2.5125015945443794)
#define b_H1                           (0.0047091320049010487)
#define b_H3                           (4.7034099304388022)
#define b_H4                           (0.0075367649426510879)

/* Function Declarations */
static void naivePerfusionSSEP2X4Pulse_once(void);

/* Function Definitions */
static void naivePerfusionSSEP2X4Pulse_once(void)
{
  static const real_T dv0[289] = { -0.0, 1.8355704579395951,
    0.049725674512648504, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0013896646304113714, 0.0, 0.0, 0.0, 0.0069457255817811448, 0.0,
    -2.2403127413408193, 0.0, 0.049725674512648504, 0.0, 0.0, 2.1606911402405564,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    -0.049725674512648504, 0.80953418616577166, 0.083035848195631076, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    -0.8592598606784202, 0.0, 0.083035848195631076, 0.0, 0.0,
    0.40149099630495488, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, -0.083035848195631076, 0.80953418616577166, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.8925700343614027,
    0.0, 0.0, 0.0, 0.0, 0.40149099630495488, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, -2.5654334236417808, 1.3695849849402422,
    0.049725674512648504, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, -1.7743272683414664, 0.0, 0.049725674512648504, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    -0.45121667081760342, 0.870766833373954, 0.083035848195631076, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    -0.92049250788660253, 0.0, 0.083035848195631076, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.484526844500586,
    0.870766833373954, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, -0.953802681569585, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    -0.0013896646304113714, 1.8355704579395951, 0.0, 0.0, 0.0, 0.0,
    0.40474228340122431, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    -1.8355704579395951, 2.1606911402405564, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.40474228340122431, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    -2.1606911402405564, 1.3695849849402422, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.40474228340122431, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    -5.6459390891444254, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 4.2763541042041835, -0.0069457255817811448 };

  static const real_T dv1[17] = { 0.60347657593400461, -9.4194687296148743E-27,
    3.4709052172618946E-98, 6.1577657817463041E-107, 1.2776526089255626E-171,
    2.7461820083020789E-180, 5.1308542202505819E-38, 2.9637082767565063E-38,
    6.2582584363566179E-107, 2.53384910397013E-117, 2.7909987741884194E-180,
    1.2540064121535016E-190, 0.3539520677501003, 2.5327219416410358E-17,
    6.4732008886675042E-38, 3.0982911272875425E-39, 0.042571356316105945 };

  memcpy(&Q[0], &dv0[0], 289U * sizeof(real_T));
  memcpy(&p0[0], &dv1[0], 17U * sizeof(real_T));
  H4 = b_H4;
  H4_dirty = 1U;
  H3 = b_H3;
  H3_dirty = 1U;
  H1 = b_H1;
  H1_dirty = 1U;
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
  alpha = b_alpha;
  alpha_dirty = 1U;
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

void naivePerfusionSSEP2X4Pulse_initialize(emlrtContext *aContext)
{
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, aContext, NULL, 1);
  emlrtClearAllocCountR2012b(emlrtRootTLSGlobal, FALSE, 0U, 0);
  emlrtEnterRtStackR2012b(emlrtRootTLSGlobal);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    naivePerfusionSSEP2X4Pulse_once();
  }
}

/* End of code generation (naivePerfusionSSEP2X4Pulse_initialize.c) */
