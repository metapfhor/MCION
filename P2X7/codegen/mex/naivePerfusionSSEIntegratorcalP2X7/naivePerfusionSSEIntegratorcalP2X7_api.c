/*
 * naivePerfusionSSEIntegratorcalP2X7_api.c
 *
 * Code generation for function 'naivePerfusionSSEIntegratorcalP2X7_api'
 *
 * C source code generated on: Fri May 16 09:59:48 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEIntegratorcalP2X7.h"
#include "naivePerfusionSSEIntegratorcalP2X7_api.h"
#include "naivePerfusionSSEIntegratorcalP2X7_emxutil.h"
#include "naivePerfusionSSEIntegratorcalP2X7_mexutil.h"
#include "naivePerfusionSSEIntegratorcalP2X7_data.h"

/* Variable Definitions */
static emlrtRTEInfo emlrtRTEI = { 1, 1, "naivePerfusionSSEIntegratorcalP2X7_api",
  "" };

/* Function Declarations */
static void c_emlrt_marshallIn(const mxArray *T, const char_T *identifier,
  emxArray_real_T *y);
static void d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y);
static void f_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret);
static void info_helper(ResolvedFunctionInfo info[44]);

/* Function Definitions */
static void c_emlrt_marshallIn(const mxArray *T, const char_T *identifier,
  emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  d_emlrt_marshallIn(emlrtAlias(T), &thisId, y);
  emlrtDestroyArray(&T);
}

static void d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y)
{
  f_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void f_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret)
{
  int32_T iv1[1];
  boolean_T bv0[1];
  int32_T iv2[1];
  iv1[0] = -1;
  bv0[0] = TRUE;
  emlrtCheckVsBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 1U,
    iv1, bv0, iv2);
  ret->size[0] = iv2[0];
  ret->allocatedSize = ret->size[0];
  ret->data = (real_T *)mxGetData(src);
  ret->canFreeData = FALSE;
  emlrtDestroyArray(&src);
}

static void info_helper(ResolvedFunctionInfo info[44])
{
  info[0].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEIntegratorcalP2X7.m";
  info[0].name = "mpower";
  info[0].dominantType = "double";
  info[0].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mpower.m";
  info[0].fileTimeLo = 1286840442U;
  info[0].fileTimeHi = 0U;
  info[0].mFileTimeLo = 0U;
  info[0].mFileTimeHi = 0U;
  info[1].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mpower.m";
  info[1].name = "power";
  info[1].dominantType = "double";
  info[1].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m";
  info[1].fileTimeLo = 1348213530U;
  info[1].fileTimeHi = 0U;
  info[1].mFileTimeLo = 0U;
  info[1].mFileTimeHi = 0U;
  info[2].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[2].name = "eml_scalar_eg";
  info[2].dominantType = "double";
  info[2].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[2].fileTimeLo = 1286840396U;
  info[2].fileTimeHi = 0U;
  info[2].mFileTimeLo = 0U;
  info[2].mFileTimeHi = 0U;
  info[3].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[3].name = "eml_scalexp_alloc";
  info[3].dominantType = "double";
  info[3].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[3].fileTimeLo = 1352446460U;
  info[3].fileTimeHi = 0U;
  info[3].mFileTimeLo = 0U;
  info[3].mFileTimeHi = 0U;
  info[4].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[4].name = "floor";
  info[4].dominantType = "double";
  info[4].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[4].fileTimeLo = 1343851980U;
  info[4].fileTimeHi = 0U;
  info[4].mFileTimeLo = 0U;
  info[4].mFileTimeHi = 0U;
  info[5].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[5].name = "eml_scalar_floor";
  info[5].dominantType = "double";
  info[5].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_floor.m";
  info[5].fileTimeLo = 1286840326U;
  info[5].fileTimeHi = 0U;
  info[5].mFileTimeLo = 0U;
  info[5].mFileTimeHi = 0U;
  info[6].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!scalar_float_power";
  info[6].name = "eml_scalar_eg";
  info[6].dominantType = "double";
  info[6].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[6].fileTimeLo = 1286840396U;
  info[6].fileTimeHi = 0U;
  info[6].mFileTimeLo = 0U;
  info[6].mFileTimeHi = 0U;
  info[7].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEIntegratorcalP2X7.m";
  info[7].name = "mtimes";
  info[7].dominantType = "double";
  info[7].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[7].fileTimeLo = 1289541292U;
  info[7].fileTimeHi = 0U;
  info[7].mFileTimeLo = 0U;
  info[7].mFileTimeHi = 0U;
  info[8].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEIntegratorcalP2X7.m";
  info[8].name = "errorIntegratorcalP2X7";
  info[8].dominantType = "double";
  info[8].resolved =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m";
  info[8].fileTimeLo = 1400248781U;
  info[8].fileTimeHi = 0U;
  info[8].mFileTimeLo = 0U;
  info[8].mFileTimeHi = 0U;
  info[9].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m";
  info[9].name = "getFDTimeStepcalP2X7";
  info[9].dominantType = "double";
  info[9].resolved =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/getFDTimeStepcalP2X7.m";
  info[9].fileTimeLo = 1400248537U;
  info[9].fileTimeHi = 0U;
  info[9].mFileTimeLo = 0U;
  info[9].mFileTimeHi = 0U;
  info[10].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/getFDTimeStepcalP2X7.m";
  info[10].name = "getDegradationRatescalP2X7";
  info[10].dominantType = "double";
  info[10].resolved =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/getDegradationRatescalP2X7.m";
  info[10].fileTimeLo = 1400248537U;
  info[10].fileTimeHi = 0U;
  info[10].mFileTimeLo = 0U;
  info[10].mFileTimeHi = 0U;
  info[11].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/getDegradationRatescalP2X7.m";
  info[11].name = "mtimes";
  info[11].dominantType = "double";
  info[11].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[11].fileTimeLo = 1289541292U;
  info[11].fileTimeHi = 0U;
  info[11].mFileTimeLo = 0U;
  info[11].mFileTimeHi = 0U;
  info[12].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/getDegradationRatescalP2X7.m";
  info[12].name = "mrdivide";
  info[12].dominantType = "double";
  info[12].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mrdivide.p";
  info[12].fileTimeLo = 1357973148U;
  info[12].fileTimeHi = 0U;
  info[12].mFileTimeLo = 1319751566U;
  info[12].mFileTimeHi = 0U;
  info[13].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mrdivide.p";
  info[13].name = "rdivide";
  info[13].dominantType = "double";
  info[13].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/rdivide.m";
  info[13].fileTimeLo = 1346531988U;
  info[13].fileTimeHi = 0U;
  info[13].mFileTimeLo = 0U;
  info[13].mFileTimeHi = 0U;
  info[14].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/rdivide.m";
  info[14].name = "eml_scalexp_compatible";
  info[14].dominantType = "double";
  info[14].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_compatible.m";
  info[14].fileTimeLo = 1286840396U;
  info[14].fileTimeHi = 0U;
  info[14].mFileTimeLo = 0U;
  info[14].mFileTimeHi = 0U;
  info[15].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/rdivide.m";
  info[15].name = "eml_div";
  info[15].dominantType = "double";
  info[15].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_div.m";
  info[15].fileTimeLo = 1313369410U;
  info[15].fileTimeHi = 0U;
  info[15].mFileTimeLo = 0U;
  info[15].mFileTimeHi = 0U;
  info[16].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/getFDTimeStepcalP2X7.m";
  info[16].name = "max";
  info[16].dominantType = "double";
  info[16].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/max.m";
  info[16].fileTimeLo = 1311276916U;
  info[16].fileTimeHi = 0U;
  info[16].mFileTimeLo = 0U;
  info[16].mFileTimeHi = 0U;
  info[17].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/max.m";
  info[17].name = "eml_min_or_max";
  info[17].dominantType = "char";
  info[17].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m";
  info[17].fileTimeLo = 1334093090U;
  info[17].fileTimeHi = 0U;
  info[17].mFileTimeLo = 0U;
  info[17].mFileTimeHi = 0U;
  info[18].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum";
  info[18].name = "eml_const_nonsingleton_dim";
  info[18].dominantType = "double";
  info[18].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_const_nonsingleton_dim.m";
  info[18].fileTimeLo = 1286840296U;
  info[18].fileTimeHi = 0U;
  info[18].mFileTimeLo = 0U;
  info[18].mFileTimeHi = 0U;
  info[19].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum";
  info[19].name = "eml_scalar_eg";
  info[19].dominantType = "double";
  info[19].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[19].fileTimeLo = 1286840396U;
  info[19].fileTimeHi = 0U;
  info[19].mFileTimeLo = 0U;
  info[19].mFileTimeHi = 0U;
  info[20].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum";
  info[20].name = "eml_index_class";
  info[20].dominantType = "";
  info[20].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[20].fileTimeLo = 1323192178U;
  info[20].fileTimeHi = 0U;
  info[20].mFileTimeLo = 0U;
  info[20].mFileTimeHi = 0U;
  info[21].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum_sub";
  info[21].name = "eml_index_class";
  info[21].dominantType = "";
  info[21].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[21].fileTimeLo = 1323192178U;
  info[21].fileTimeHi = 0U;
  info[21].mFileTimeLo = 0U;
  info[21].mFileTimeHi = 0U;
  info[22].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum_sub";
  info[22].name = "isnan";
  info[22].dominantType = "double";
  info[22].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isnan.m";
  info[22].fileTimeLo = 1286840360U;
  info[22].fileTimeHi = 0U;
  info[22].mFileTimeLo = 0U;
  info[22].mFileTimeHi = 0U;
  info[23].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum_sub";
  info[23].name = "eml_index_plus";
  info[23].dominantType = "coder.internal.indexInt";
  info[23].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[23].fileTimeLo = 1286840378U;
  info[23].fileTimeHi = 0U;
  info[23].mFileTimeLo = 0U;
  info[23].mFileTimeHi = 0U;
  info[24].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[24].name = "eml_index_class";
  info[24].dominantType = "";
  info[24].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[24].fileTimeLo = 1323192178U;
  info[24].fileTimeHi = 0U;
  info[24].mFileTimeLo = 0U;
  info[24].mFileTimeHi = 0U;
  info[25].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum_sub";
  info[25].name = "eml_int_forloop_overflow_check";
  info[25].dominantType = "";
  info[25].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[25].fileTimeLo = 1346531940U;
  info[25].fileTimeHi = 0U;
  info[25].mFileTimeLo = 0U;
  info[25].mFileTimeHi = 0U;
  info[26].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m!eml_int_forloop_overflow_check_helper";
  info[26].name = "intmax";
  info[26].dominantType = "char";
  info[26].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[26].fileTimeLo = 1311276916U;
  info[26].fileTimeHi = 0U;
  info[26].mFileTimeLo = 0U;
  info[26].mFileTimeHi = 0U;
  info[27].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum_sub";
  info[27].name = "eml_relop";
  info[27].dominantType = "function_handle";
  info[27].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_relop.m";
  info[27].fileTimeLo = 1342472782U;
  info[27].fileTimeHi = 0U;
  info[27].mFileTimeLo = 0U;
  info[27].mFileTimeHi = 0U;
  info[28].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/getFDTimeStepcalP2X7.m";
  info[28].name = "mtimes";
  info[28].dominantType = "double";
  info[28].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[28].fileTimeLo = 1289541292U;
  info[28].fileTimeHi = 0U;
  info[28].mFileTimeLo = 0U;
  info[28].mFileTimeHi = 0U;
  info[29].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/getFDTimeStepcalP2X7.m";
  info[29].name = "mrdivide";
  info[29].dominantType = "double";
  info[29].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mrdivide.p";
  info[29].fileTimeLo = 1357973148U;
  info[29].fileTimeHi = 0U;
  info[29].mFileTimeLo = 1319751566U;
  info[29].mFileTimeHi = 0U;
  info[30].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m";
  info[30].name = "mpower";
  info[30].dominantType = "double";
  info[30].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mpower.m";
  info[30].fileTimeLo = 1286840442U;
  info[30].fileTimeHi = 0U;
  info[30].mFileTimeLo = 0U;
  info[30].mFileTimeHi = 0U;
  info[31].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m";
  info[31].name = "max";
  info[31].dominantType = "double";
  info[31].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/max.m";
  info[31].fileTimeLo = 1311276916U;
  info[31].fileTimeHi = 0U;
  info[31].mFileTimeLo = 0U;
  info[31].mFileTimeHi = 0U;
  info[32].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[32].name = "eml_scalar_eg";
  info[32].dominantType = "double";
  info[32].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[32].fileTimeLo = 1286840396U;
  info[32].fileTimeHi = 0U;
  info[32].mFileTimeLo = 0U;
  info[32].mFileTimeHi = 0U;
  info[33].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[33].name = "eml_scalexp_alloc";
  info[33].dominantType = "double";
  info[33].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[33].fileTimeLo = 1352446460U;
  info[33].fileTimeHi = 0U;
  info[33].mFileTimeLo = 0U;
  info[33].mFileTimeHi = 0U;
  info[34].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[34].name = "eml_index_class";
  info[34].dominantType = "";
  info[34].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[34].fileTimeLo = 1323192178U;
  info[34].fileTimeHi = 0U;
  info[34].mFileTimeLo = 0U;
  info[34].mFileTimeHi = 0U;
  info[35].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_scalar_bin_extremum";
  info[35].name = "eml_scalar_eg";
  info[35].dominantType = "double";
  info[35].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[35].fileTimeLo = 1286840396U;
  info[35].fileTimeHi = 0U;
  info[35].mFileTimeLo = 0U;
  info[35].mFileTimeHi = 0U;
  info[36].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m";
  info[36].name = "min";
  info[36].dominantType = "double";
  info[36].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[36].fileTimeLo = 1311276918U;
  info[36].fileTimeHi = 0U;
  info[36].mFileTimeLo = 0U;
  info[36].mFileTimeHi = 0U;
  info[37].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[37].name = "eml_min_or_max";
  info[37].dominantType = "char";
  info[37].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m";
  info[37].fileTimeLo = 1334093090U;
  info[37].fileTimeHi = 0U;
  info[37].mFileTimeLo = 0U;
  info[37].mFileTimeHi = 0U;
  info[38].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m";
  info[38].name = "mrdivide";
  info[38].dominantType = "double";
  info[38].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mrdivide.p";
  info[38].fileTimeLo = 1357973148U;
  info[38].fileTimeHi = 0U;
  info[38].mFileTimeLo = 1319751566U;
  info[38].mFileTimeHi = 0U;
  info[39].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m";
  info[39].name = "abs";
  info[39].dominantType = "double";
  info[39].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[39].fileTimeLo = 1343851966U;
  info[39].fileTimeHi = 0U;
  info[39].mFileTimeLo = 0U;
  info[39].mFileTimeHi = 0U;
  info[40].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[40].name = "eml_scalar_abs";
  info[40].dominantType = "double";
  info[40].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_abs.m";
  info[40].fileTimeLo = 1286840312U;
  info[40].fileTimeHi = 0U;
  info[40].mFileTimeLo = 0U;
  info[40].mFileTimeHi = 0U;
  info[41].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m";
  info[41].name = "mtimes";
  info[41].dominantType = "double";
  info[41].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[41].fileTimeLo = 1289541292U;
  info[41].fileTimeHi = 0U;
  info[41].mFileTimeLo = 0U;
  info[41].mFileTimeHi = 0U;
  info[42].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/errorIntegratorcalP2X7.m";
  info[42].name = "heavi";
  info[42].dominantType = "double";
  info[42].resolved =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/MATLAB/heavi.m";
  info[42].fileTimeLo = 1389914189U;
  info[42].fileTimeHi = 0U;
  info[42].mFileTimeLo = 0U;
  info[42].mFileTimeHi = 0U;
  info[43].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!scalar_float_power";
  info[43].name = "mtimes";
  info[43].dominantType = "double";
  info[43].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[43].fileTimeLo = 1289541292U;
  info[43].fileTimeHi = 0U;
  info[43].mFileTimeLo = 0U;
  info[43].mFileTimeHi = 0U;
}

const mxArray *emlrtMexFcnResolvedFunctionsInfo(void)
{
  const mxArray *nameCaptureInfo;
  ResolvedFunctionInfo info[44];
  ResolvedFunctionInfo u[44];
  int32_T i;
  const mxArray *y;
  int32_T iv0[1];
  ResolvedFunctionInfo *r0;
  const char * b_u;
  const mxArray *b_y;
  const mxArray *m0;
  const mxArray *c_y;
  const mxArray *d_y;
  const mxArray *e_y;
  uint32_T c_u;
  const mxArray *f_y;
  const mxArray *g_y;
  const mxArray *h_y;
  const mxArray *i_y;
  nameCaptureInfo = NULL;
  info_helper(info);
  for (i = 0; i < 44; i++) {
    u[i] = info[i];
  }

  y = NULL;
  iv0[0] = 44;
  emlrtAssign(&y, mxCreateStructArray(1, iv0, 0, NULL));
  for (i = 0; i < 44; i++) {
    r0 = &u[i];
    b_u = r0->context;
    b_y = NULL;
    m0 = mxCreateString(b_u);
    emlrtAssign(&b_y, m0);
    emlrtAddField(y, b_y, "context", i);
    b_u = r0->name;
    c_y = NULL;
    m0 = mxCreateString(b_u);
    emlrtAssign(&c_y, m0);
    emlrtAddField(y, c_y, "name", i);
    b_u = r0->dominantType;
    d_y = NULL;
    m0 = mxCreateString(b_u);
    emlrtAssign(&d_y, m0);
    emlrtAddField(y, d_y, "dominantType", i);
    b_u = r0->resolved;
    e_y = NULL;
    m0 = mxCreateString(b_u);
    emlrtAssign(&e_y, m0);
    emlrtAddField(y, e_y, "resolved", i);
    c_u = r0->fileTimeLo;
    f_y = NULL;
    m0 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m0) = c_u;
    emlrtAssign(&f_y, m0);
    emlrtAddField(y, f_y, "fileTimeLo", i);
    c_u = r0->fileTimeHi;
    g_y = NULL;
    m0 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m0) = c_u;
    emlrtAssign(&g_y, m0);
    emlrtAddField(y, g_y, "fileTimeHi", i);
    c_u = r0->mFileTimeLo;
    h_y = NULL;
    m0 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m0) = c_u;
    emlrtAssign(&h_y, m0);
    emlrtAddField(y, h_y, "mFileTimeLo", i);
    c_u = r0->mFileTimeHi;
    i_y = NULL;
    m0 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m0) = c_u;
    emlrtAssign(&i_y, m0);
    emlrtAddField(y, i_y, "mFileTimeHi", i);
  }

  emlrtAssign(&nameCaptureInfo, y);
  emlrtNameCapturePostProcessR2012a(emlrtAlias(nameCaptureInfo));
  return nameCaptureInfo;
}

void naivePerfusionSSEIntegratorcalP2X7_api(const mxArray * const prhs[6], const
  mxArray *plhs[1])
{
  emxArray_real_T *T;
  emxArray_real_T *I;
  real_T ton;
  real_T toff;
  real_T Ttot;
  real_T amp;
  const mxArray *tmp;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);
  emxInit_real_T(&T, 1, &emlrtRTEI, TRUE);
  emxInit_real_T(&I, 1, &emlrtRTEI, TRUE);

  /* Marshall function inputs */
  ton = emlrt_marshallIn(emlrtAliasP(prhs[0]), "ton");
  toff = emlrt_marshallIn(emlrtAliasP(prhs[1]), "toff");
  Ttot = emlrt_marshallIn(emlrtAliasP(prhs[2]), "Ttot");
  amp = emlrt_marshallIn(emlrtAliasP(prhs[3]), "amp");
  c_emlrt_marshallIn(emlrtAlias(prhs[4]), "T", T);
  c_emlrt_marshallIn(emlrtAlias(prhs[5]), "I", I);

  /* Marshall in global variables */
  tmp = mexGetVariable("global", "koff");
  if (tmp) {
    koff = emlrt_marshallIn(tmp, "koff");
    koff_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k1");
  if (tmp) {
    k1 = emlrt_marshallIn(tmp, "k1");
    k1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L1");
  if (tmp) {
    L1 = emlrt_marshallIn(tmp, "L1");
    L1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H1");
  if (tmp) {
    H1 = emlrt_marshallIn(tmp, "H1");
    H1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "kca");
  if (tmp) {
    kca = emlrt_marshallIn(tmp, "kca");
    kca_dirty = 0U;
  }

  tmp = mexGetVariable("global", "C");
  if (tmp) {
    C = emlrt_marshallIn(tmp, "C");
    C_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k2");
  if (tmp) {
    k2 = emlrt_marshallIn(tmp, "k2");
    k2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k3");
  if (tmp) {
    k3 = emlrt_marshallIn(tmp, "k3");
    k3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H2");
  if (tmp) {
    H2 = emlrt_marshallIn(tmp, "H2");
    H2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k4");
  if (tmp) {
    k4 = emlrt_marshallIn(tmp, "k4");
    k4_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H3");
  if (tmp) {
    H3 = emlrt_marshallIn(tmp, "H3");
    H3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k5");
  if (tmp) {
    k5 = emlrt_marshallIn(tmp, "k5");
    k5_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H4");
  if (tmp) {
    H4 = emlrt_marshallIn(tmp, "H4");
    H4_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k6");
  if (tmp) {
    k6 = emlrt_marshallIn(tmp, "k6");
    k6_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H5");
  if (tmp) {
    H5 = emlrt_marshallIn(tmp, "H5");
    H5_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L2");
  if (tmp) {
    L2 = emlrt_marshallIn(tmp, "L2");
    L2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H6");
  if (tmp) {
    H6 = emlrt_marshallIn(tmp, "H6");
    H6_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L3");
  if (tmp) {
    L3 = emlrt_marshallIn(tmp, "L3");
    L3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H7");
  if (tmp) {
    H7 = emlrt_marshallIn(tmp, "H7");
    H7_dirty = 0U;
  }

  tmp = mexGetVariable("global", "r");
  if (tmp) {
    r = emlrt_marshallIn(tmp, "r");
    r_dirty = 0U;
  }

  tmp = mexGetVariable("global", "Acell");
  if (tmp) {
    Acell = emlrt_marshallIn(tmp, "Acell");
    Acell_dirty = 0U;
  }

  tmp = mexGetVariable("global", "g12");
  if (tmp) {
    g12 = emlrt_marshallIn(tmp, "g12");
    g12_dirty = 0U;
  }

  tmp = mexGetVariable("global", "E12");
  if (tmp) {
    E12 = emlrt_marshallIn(tmp, "E12");
    E12_dirty = 0U;
  }

  tmp = mexGetVariable("global", "g34");
  if (tmp) {
    g34 = emlrt_marshallIn(tmp, "g34");
    g34_dirty = 0U;
  }

  tmp = mexGetVariable("global", "E34");
  if (tmp) {
    E34 = emlrt_marshallIn(tmp, "E34");
    E34_dirty = 0U;
  }

  /* Invoke the target function */
  ton = naivePerfusionSSEIntegratorcalP2X7(ton, toff, Ttot, amp, T, I);

  /* Marshall out global variables */
  mexPutVariable("global", "koff", emlrt_marshallOut(koff));
  mexPutVariable("global", "k1", emlrt_marshallOut(k1));
  mexPutVariable("global", "L1", emlrt_marshallOut(L1));
  mexPutVariable("global", "H1", emlrt_marshallOut(H1));
  mexPutVariable("global", "kca", emlrt_marshallOut(kca));
  mexPutVariable("global", "C", emlrt_marshallOut(C));
  mexPutVariable("global", "k2", emlrt_marshallOut(k2));
  mexPutVariable("global", "k3", emlrt_marshallOut(k3));
  mexPutVariable("global", "H2", emlrt_marshallOut(H2));
  mexPutVariable("global", "k4", emlrt_marshallOut(k4));
  mexPutVariable("global", "H3", emlrt_marshallOut(H3));
  mexPutVariable("global", "k5", emlrt_marshallOut(k5));
  mexPutVariable("global", "H4", emlrt_marshallOut(H4));
  mexPutVariable("global", "k6", emlrt_marshallOut(k6));
  mexPutVariable("global", "H5", emlrt_marshallOut(H5));
  mexPutVariable("global", "L2", emlrt_marshallOut(L2));
  mexPutVariable("global", "H6", emlrt_marshallOut(H6));
  mexPutVariable("global", "L3", emlrt_marshallOut(L3));
  mexPutVariable("global", "H7", emlrt_marshallOut(H7));
  mexPutVariable("global", "r", emlrt_marshallOut(r));
  mexPutVariable("global", "Acell", emlrt_marshallOut(Acell));
  mexPutVariable("global", "g12", emlrt_marshallOut(g12));
  mexPutVariable("global", "E12", emlrt_marshallOut(E12));
  mexPutVariable("global", "g34", emlrt_marshallOut(g34));
  mexPutVariable("global", "E34", emlrt_marshallOut(E34));

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(ton);
  I->canFreeData = FALSE;
  emxFree_real_T(&I);
  T->canFreeData = FALSE;
  emxFree_real_T(&T);
  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionSSEIntegratorcalP2X7_api.c) */
