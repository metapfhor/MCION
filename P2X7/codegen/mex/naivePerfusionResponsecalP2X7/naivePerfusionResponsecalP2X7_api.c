/*
 * naivePerfusionResponsecalP2X7_api.c
 *
 * Code generation for function 'naivePerfusionResponsecalP2X7_api'
 *
 * C source code generated on: Tue May 27 13:39:04 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionResponsecalP2X7.h"
#include "naivePerfusionResponsecalP2X7_api.h"
#include "naivePerfusionResponsecalP2X7_emxutil.h"
#include "naivePerfusionResponsecalP2X7_mexutil.h"
#include "naivePerfusionResponsecalP2X7_data.h"

/* Variable Definitions */
static emlrtRTEInfo l_emlrtRTEI = { 1, 1, "naivePerfusionResponsecalP2X7_api",
  "" };

/* Function Declarations */
static void b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y);
static void b_info_helper(ResolvedFunctionInfo info[223]);
static void c_info_helper(ResolvedFunctionInfo info[223]);
static void d_info_helper(ResolvedFunctionInfo info[223]);
static void emlrt_marshallIn(const mxArray *ton, const char_T *identifier,
  emxArray_real_T *y);
static const mxArray *emlrt_marshallOut(ResolvedFunctionInfo u[223]);
static const mxArray *g_emlrt_marshallOut(emxArray_real_T *u);
static const mxArray *h_emlrt_marshallOut(emxArray_real_T *u);
static void info_helper(ResolvedFunctionInfo info[223]);
static void m_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret);

/* Function Definitions */
static void b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y)
{
  m_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void b_info_helper(ResolvedFunctionInfo info[223])
{
  info[64].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m!compute_nones";
  info[64].name = "eml_index_plus";
  info[64].dominantType = "double";
  info[64].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[64].fileTimeLo = 1286840378U;
  info[64].fileTimeHi = 0U;
  info[64].mFileTimeLo = 0U;
  info[64].mFileTimeHi = 0U;
  info[65].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[65].name = "eml_int_forloop_overflow_check";
  info[65].dominantType = "";
  info[65].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[65].fileTimeLo = 1346531940U;
  info[65].fileTimeHi = 0U;
  info[65].mFileTimeLo = 0U;
  info[65].mFileTimeHi = 0U;
  info[66].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[66].name = "eml_index_plus";
  info[66].dominantType = "double";
  info[66].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[66].fileTimeLo = 1286840378U;
  info[66].fileTimeHi = 0U;
  info[66].mFileTimeLo = 0U;
  info[66].mFileTimeHi = 0U;
  info[67].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m";
  info[67].name = "length";
  info[67].dominantType = "double";
  info[67].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/length.m";
  info[67].fileTimeLo = 1303167806U;
  info[67].fileTimeHi = 0U;
  info[67].mFileTimeLo = 0U;
  info[67].mFileTimeHi = 0U;
  info[68].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m";
  info[68].name = "sum";
  info[68].dominantType = "logical";
  info[68].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/sum.m";
  info[68].fileTimeLo = 1314758212U;
  info[68].fileTimeHi = 0U;
  info[68].mFileTimeLo = 0U;
  info[68].mFileTimeHi = 0U;
  info[69].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/sum.m";
  info[69].name = "isequal";
  info[69].dominantType = "double";
  info[69].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isequal.m";
  info[69].fileTimeLo = 1286840358U;
  info[69].fileTimeHi = 0U;
  info[69].mFileTimeLo = 0U;
  info[69].mFileTimeHi = 0U;
  info[70].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isequal.m";
  info[70].name = "eml_isequal_core";
  info[70].dominantType = "double";
  info[70].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_isequal_core.m";
  info[70].fileTimeLo = 1286840386U;
  info[70].fileTimeHi = 0U;
  info[70].mFileTimeLo = 0U;
  info[70].mFileTimeHi = 0U;
  info[71].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/sum.m";
  info[71].name = "eml_const_nonsingleton_dim";
  info[71].dominantType = "logical";
  info[71].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_const_nonsingleton_dim.m";
  info[71].fileTimeLo = 1286840296U;
  info[71].fileTimeHi = 0U;
  info[71].mFileTimeLo = 0U;
  info[71].mFileTimeHi = 0U;
  info[72].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/sum.m";
  info[72].name = "eml_scalar_eg";
  info[72].dominantType = "double";
  info[72].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[72].fileTimeLo = 1286840396U;
  info[72].fileTimeHi = 0U;
  info[72].mFileTimeLo = 0U;
  info[72].mFileTimeHi = 0U;
  info[73].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/sum.m";
  info[73].name = "eml_index_class";
  info[73].dominantType = "";
  info[73].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[73].fileTimeLo = 1323192178U;
  info[73].fileTimeHi = 0U;
  info[73].mFileTimeLo = 0U;
  info[73].mFileTimeHi = 0U;
  info[74].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/sum.m";
  info[74].name = "eml_int_forloop_overflow_check";
  info[74].dominantType = "";
  info[74].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[74].fileTimeLo = 1346531940U;
  info[74].fileTimeHi = 0U;
  info[74].mFileTimeLo = 0U;
  info[74].mFileTimeHi = 0U;
  info[75].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m";
  info[75].name = "repmat";
  info[75].dominantType = "double";
  info[75].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/repmat.m";
  info[75].fileTimeLo = 1352446460U;
  info[75].fileTimeHi = 0U;
  info[75].mFileTimeLo = 0U;
  info[75].mFileTimeHi = 0U;
  info[76].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/repmat.m";
  info[76].name = "eml_assert_valid_size_arg";
  info[76].dominantType = "double";
  info[76].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m";
  info[76].fileTimeLo = 1286840294U;
  info[76].fileTimeHi = 0U;
  info[76].mFileTimeLo = 0U;
  info[76].mFileTimeHi = 0U;
  info[77].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m!isintegral";
  info[77].name = "isinf";
  info[77].dominantType = "double";
  info[77].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isinf.m";
  info[77].fileTimeLo = 1286840360U;
  info[77].fileTimeHi = 0U;
  info[77].mFileTimeLo = 0U;
  info[77].mFileTimeHi = 0U;
  info[78].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m!numel_for_size";
  info[78].name = "mtimes";
  info[78].dominantType = "double";
  info[78].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[78].fileTimeLo = 1289541292U;
  info[78].fileTimeHi = 0U;
  info[78].mFileTimeLo = 0U;
  info[78].mFileTimeHi = 0U;
  info[79].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m";
  info[79].name = "eml_index_class";
  info[79].dominantType = "";
  info[79].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[79].fileTimeLo = 1323192178U;
  info[79].fileTimeHi = 0U;
  info[79].mFileTimeLo = 0U;
  info[79].mFileTimeHi = 0U;
  info[80].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m";
  info[80].name = "intmax";
  info[80].dominantType = "char";
  info[80].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[80].fileTimeLo = 1311276916U;
  info[80].fileTimeHi = 0U;
  info[80].mFileTimeLo = 0U;
  info[80].mFileTimeHi = 0U;
  info[81].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_assert_valid_size_arg.m";
  info[81].name = "coder.internal.indexIntRelop";
  info[81].dominantType = "";
  info[81].resolved =
    "[IXE]$matlabroot$/toolbox/shared/coder/coder/+coder/+internal/indexIntRelop.m";
  info[81].fileTimeLo = 1326749922U;
  info[81].fileTimeHi = 0U;
  info[81].mFileTimeLo = 0U;
  info[81].mFileTimeHi = 0U;
  info[82].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/repmat.m";
  info[82].name = "eml_index_class";
  info[82].dominantType = "";
  info[82].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[82].fileTimeLo = 1323192178U;
  info[82].fileTimeHi = 0U;
  info[82].mFileTimeLo = 0U;
  info[82].mFileTimeHi = 0U;
  info[83].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/repmat.m";
  info[83].name = "eml_index_minus";
  info[83].dominantType = "coder.internal.indexInt";
  info[83].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[83].fileTimeLo = 1286840378U;
  info[83].fileTimeHi = 0U;
  info[83].mFileTimeLo = 0U;
  info[83].mFileTimeHi = 0U;
  info[84].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/repmat.m";
  info[84].name = "eml_scalar_eg";
  info[84].dominantType = "double";
  info[84].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[84].fileTimeLo = 1286840396U;
  info[84].fileTimeHi = 0U;
  info[84].mFileTimeLo = 0U;
  info[84].mFileTimeHi = 0U;
  info[85].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/repmat.m";
  info[85].name = "eml_index_prod";
  info[85].dominantType = "double";
  info[85].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_prod.m";
  info[85].fileTimeLo = 1286840380U;
  info[85].fileTimeHi = 0U;
  info[85].mFileTimeLo = 0U;
  info[85].mFileTimeHi = 0U;
  info[86].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_prod.m";
  info[86].name = "eml_index_class";
  info[86].dominantType = "";
  info[86].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[86].fileTimeLo = 1323192178U;
  info[86].fileTimeHi = 0U;
  info[86].mFileTimeLo = 0U;
  info[86].mFileTimeHi = 0U;
  info[87].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_prod.m";
  info[87].name = "eml_index_times";
  info[87].dominantType = "coder.internal.indexInt";
  info[87].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[87].fileTimeLo = 1286840380U;
  info[87].fileTimeHi = 0U;
  info[87].mFileTimeLo = 0U;
  info[87].mFileTimeHi = 0U;
  info[88].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/repmat.m";
  info[88].name = "eml_int_forloop_overflow_check";
  info[88].dominantType = "";
  info[88].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[88].fileTimeLo = 1346531940U;
  info[88].fileTimeHi = 0U;
  info[88].mFileTimeLo = 0U;
  info[88].mFileTimeHi = 0U;
  info[89].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/repmat.m";
  info[89].name = "eml_index_plus";
  info[89].dominantType = "coder.internal.indexInt";
  info[89].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[89].fileTimeLo = 1286840378U;
  info[89].fileTimeHi = 0U;
  info[89].mFileTimeLo = 0U;
  info[89].mFileTimeHi = 0U;
  info[90].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m";
  info[90].name = "find";
  info[90].dominantType = "logical";
  info[90].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/find.m";
  info[90].fileTimeLo = 1303167806U;
  info[90].fileTimeHi = 0U;
  info[90].mFileTimeLo = 0U;
  info[90].mFileTimeHi = 0U;
  info[91].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/find.m!eml_find";
  info[91].name = "eml_index_class";
  info[91].dominantType = "";
  info[91].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[91].fileTimeLo = 1323192178U;
  info[91].fileTimeHi = 0U;
  info[91].mFileTimeLo = 0U;
  info[91].mFileTimeHi = 0U;
  info[92].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/find.m!eml_find";
  info[92].name = "eml_scalar_eg";
  info[92].dominantType = "logical";
  info[92].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[92].fileTimeLo = 1286840396U;
  info[92].fileTimeHi = 0U;
  info[92].mFileTimeLo = 0U;
  info[92].mFileTimeHi = 0U;
  info[93].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/find.m!eml_find";
  info[93].name = "eml_int_forloop_overflow_check";
  info[93].dominantType = "";
  info[93].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[93].fileTimeLo = 1346531940U;
  info[93].fileTimeHi = 0U;
  info[93].mFileTimeLo = 0U;
  info[93].mFileTimeHi = 0U;
  info[94].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/find.m!eml_find";
  info[94].name = "eml_index_plus";
  info[94].dominantType = "double";
  info[94].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[94].fileTimeLo = 1286840378U;
  info[94].fileTimeHi = 0U;
  info[94].mFileTimeLo = 0U;
  info[94].mFileTimeHi = 0U;
  info[95].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m";
  info[95].name = "linearODESolvecalP2X7";
  info[95].dominantType = "";
  info[95].resolved =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESolvecalP2X7.m";
  info[95].fileTimeLo = 1401122974U;
  info[95].fileTimeHi = 0U;
  info[95].mFileTimeLo = 0U;
  info[95].mFileTimeHi = 0U;
  info[96].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESolvecalP2X7.m";
  info[96].name = "generatorMatrixcalP2X7";
  info[96].dominantType = "";
  info[96].resolved =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/generatorMatrixcalP2X7.m";
  info[96].fileTimeLo = 1401122974U;
  info[96].fileTimeHi = 0U;
  info[96].mFileTimeLo = 0U;
  info[96].mFileTimeHi = 0U;
  info[97].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/generatorMatrixcalP2X7.m";
  info[97].name = "mtimes";
  info[97].dominantType = "double";
  info[97].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[97].fileTimeLo = 1289541292U;
  info[97].fileTimeHi = 0U;
  info[97].mFileTimeLo = 0U;
  info[97].mFileTimeHi = 0U;
  info[98].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESolvecalP2X7.m";
  info[98].name = "mtimes";
  info[98].dominantType = "double";
  info[98].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[98].fileTimeLo = 1289541292U;
  info[98].fileTimeHi = 0U;
  info[98].mFileTimeLo = 0U;
  info[98].mFileTimeHi = 0U;
  info[99].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESolvecalP2X7.m";
  info[99].name = "expm";
  info[99].dominantType = "double";
  info[99].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[99].fileTimeLo = 1286840424U;
  info[99].fileTimeHi = 0U;
  info[99].mFileTimeLo = 0U;
  info[99].mFileTimeHi = 0U;
  info[100].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[100].name = "norm";
  info[100].dominantType = "double";
  info[100].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m";
  info[100].fileTimeLo = 1336543694U;
  info[100].fileTimeHi = 0U;
  info[100].mFileTimeLo = 0U;
  info[100].mFileTimeHi = 0U;
  info[101].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m!mat1norm";
  info[101].name = "abs";
  info[101].dominantType = "double";
  info[101].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[101].fileTimeLo = 1343851966U;
  info[101].fileTimeHi = 0U;
  info[101].mFileTimeLo = 0U;
  info[101].mFileTimeHi = 0U;
  info[102].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m!mat1norm";
  info[102].name = "isnan";
  info[102].dominantType = "double";
  info[102].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isnan.m";
  info[102].fileTimeLo = 1286840360U;
  info[102].fileTimeHi = 0U;
  info[102].mFileTimeLo = 0U;
  info[102].mFileTimeHi = 0U;
  info[103].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m!mat1norm";
  info[103].name = "eml_guarded_nan";
  info[103].dominantType = "char";
  info[103].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_guarded_nan.m";
  info[103].fileTimeLo = 1286840376U;
  info[103].fileTimeHi = 0U;
  info[103].mFileTimeLo = 0U;
  info[103].mFileTimeHi = 0U;
  info[104].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m!PadeApproximantOfDegree";
  info[104].name = "mtimes";
  info[104].dominantType = "double";
  info[104].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[104].fileTimeLo = 1289541292U;
  info[104].fileTimeHi = 0U;
  info[104].mFileTimeLo = 0U;
  info[104].mFileTimeHi = 0U;
  info[105].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[105].name = "eml_index_class";
  info[105].dominantType = "";
  info[105].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[105].fileTimeLo = 1323192178U;
  info[105].fileTimeHi = 0U;
  info[105].mFileTimeLo = 0U;
  info[105].mFileTimeHi = 0U;
  info[106].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[106].name = "eml_scalar_eg";
  info[106].dominantType = "double";
  info[106].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[106].fileTimeLo = 1286840396U;
  info[106].fileTimeHi = 0U;
  info[106].mFileTimeLo = 0U;
  info[106].mFileTimeHi = 0U;
  info[107].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[107].name = "eml_xgemm";
  info[107].dominantType = "char";
  info[107].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m";
  info[107].fileTimeLo = 1299098372U;
  info[107].fileTimeHi = 0U;
  info[107].mFileTimeLo = 0U;
  info[107].mFileTimeHi = 0U;
  info[108].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m";
  info[108].name = "eml_blas_inline";
  info[108].dominantType = "";
  info[108].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[108].fileTimeLo = 1299098368U;
  info[108].fileTimeHi = 0U;
  info[108].mFileTimeLo = 0U;
  info[108].mFileTimeHi = 0U;
  info[109].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m!below_threshold";
  info[109].name = "mtimes";
  info[109].dominantType = "double";
  info[109].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[109].fileTimeLo = 1289541292U;
  info[109].fileTimeHi = 0U;
  info[109].mFileTimeLo = 0U;
  info[109].mFileTimeHi = 0U;
  info[110].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m";
  info[110].name = "eml_index_class";
  info[110].dominantType = "";
  info[110].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[110].fileTimeLo = 1323192178U;
  info[110].fileTimeHi = 0U;
  info[110].mFileTimeLo = 0U;
  info[110].mFileTimeHi = 0U;
  info[111].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m";
  info[111].name = "eml_scalar_eg";
  info[111].dominantType = "double";
  info[111].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[111].fileTimeLo = 1286840396U;
  info[111].fileTimeHi = 0U;
  info[111].mFileTimeLo = 0U;
  info[111].mFileTimeHi = 0U;
  info[112].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m";
  info[112].name = "eml_refblas_xgemm";
  info[112].dominantType = "char";
  info[112].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgemm.m";
  info[112].fileTimeLo = 1299098374U;
  info[112].fileTimeHi = 0U;
  info[112].mFileTimeLo = 0U;
  info[112].mFileTimeHi = 0U;
  info[113].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m!PadeApproximantOfDegree";
  info[113].name = "mldivide";
  info[113].dominantType = "double";
  info[113].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mldivide.p";
  info[113].fileTimeLo = 1357973148U;
  info[113].fileTimeHi = 0U;
  info[113].mFileTimeLo = 1319751566U;
  info[113].mFileTimeHi = 0U;
  info[114].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mldivide.p";
  info[114].name = "eml_lusolve";
  info[114].dominantType = "double";
  info[114].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m";
  info[114].fileTimeLo = 1309472796U;
  info[114].fileTimeHi = 0U;
  info[114].mFileTimeLo = 0U;
  info[114].mFileTimeHi = 0U;
  info[115].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m";
  info[115].name = "eml_index_class";
  info[115].dominantType = "";
  info[115].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[115].fileTimeLo = 1323192178U;
  info[115].fileTimeHi = 0U;
  info[115].mFileTimeLo = 0U;
  info[115].mFileTimeHi = 0U;
  info[116].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[116].name = "eml_index_class";
  info[116].dominantType = "";
  info[116].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[116].fileTimeLo = 1323192178U;
  info[116].fileTimeHi = 0U;
  info[116].mFileTimeLo = 0U;
  info[116].mFileTimeHi = 0U;
  info[117].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[117].name = "eml_xgetrf";
  info[117].dominantType = "double";
  info[117].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/eml_xgetrf.m";
  info[117].fileTimeLo = 1286840406U;
  info[117].fileTimeHi = 0U;
  info[117].mFileTimeLo = 0U;
  info[117].mFileTimeHi = 0U;
  info[118].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/eml_xgetrf.m";
  info[118].name = "eml_lapack_xgetrf";
  info[118].dominantType = "double";
  info[118].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/internal/eml_lapack_xgetrf.m";
  info[118].fileTimeLo = 1286840410U;
  info[118].fileTimeHi = 0U;
  info[118].mFileTimeLo = 0U;
  info[118].mFileTimeHi = 0U;
  info[119].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/internal/eml_lapack_xgetrf.m";
  info[119].name = "eml_matlab_zgetrf";
  info[119].dominantType = "double";
  info[119].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[119].fileTimeLo = 1302710594U;
  info[119].fileTimeHi = 0U;
  info[119].mFileTimeLo = 0U;
  info[119].mFileTimeHi = 0U;
  info[120].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[120].name = "realmin";
  info[120].dominantType = "char";
  info[120].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/realmin.m";
  info[120].fileTimeLo = 1307672842U;
  info[120].fileTimeHi = 0U;
  info[120].mFileTimeLo = 0U;
  info[120].mFileTimeHi = 0U;
  info[121].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/realmin.m";
  info[121].name = "eml_realmin";
  info[121].dominantType = "char";
  info[121].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmin.m";
  info[121].fileTimeLo = 1307672844U;
  info[121].fileTimeHi = 0U;
  info[121].mFileTimeLo = 0U;
  info[121].mFileTimeHi = 0U;
  info[122].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[122].name = "eps";
  info[122].dominantType = "char";
  info[122].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[122].fileTimeLo = 1326749596U;
  info[122].fileTimeHi = 0U;
  info[122].mFileTimeLo = 0U;
  info[122].mFileTimeHi = 0U;
  info[123].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[123].name = "min";
  info[123].dominantType = "coder.internal.indexInt";
  info[123].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[123].fileTimeLo = 1311276918U;
  info[123].fileTimeHi = 0U;
  info[123].mFileTimeLo = 0U;
  info[123].mFileTimeHi = 0U;
  info[124].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[124].name = "eml_min_or_max";
  info[124].dominantType = "char";
  info[124].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m";
  info[124].fileTimeLo = 1334093090U;
  info[124].fileTimeHi = 0U;
  info[124].mFileTimeLo = 0U;
  info[124].mFileTimeHi = 0U;
  info[125].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[125].name = "eml_scalar_eg";
  info[125].dominantType = "coder.internal.indexInt";
  info[125].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[125].fileTimeLo = 1286840396U;
  info[125].fileTimeHi = 0U;
  info[125].mFileTimeLo = 0U;
  info[125].mFileTimeHi = 0U;
  info[126].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[126].name = "eml_scalexp_alloc";
  info[126].dominantType = "coder.internal.indexInt";
  info[126].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[126].fileTimeLo = 1352446460U;
  info[126].fileTimeHi = 0U;
  info[126].mFileTimeLo = 0U;
  info[126].mFileTimeHi = 0U;
  info[127].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[127].name = "eml_index_class";
  info[127].dominantType = "";
  info[127].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[127].fileTimeLo = 1323192178U;
  info[127].fileTimeHi = 0U;
  info[127].mFileTimeLo = 0U;
  info[127].mFileTimeHi = 0U;
}

static void c_info_helper(ResolvedFunctionInfo info[223])
{
  info[128].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_scalar_bin_extremum";
  info[128].name = "eml_scalar_eg";
  info[128].dominantType = "coder.internal.indexInt";
  info[128].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[128].fileTimeLo = 1286840396U;
  info[128].fileTimeHi = 0U;
  info[128].mFileTimeLo = 0U;
  info[128].mFileTimeHi = 0U;
  info[129].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[129].name = "colon";
  info[129].dominantType = "double";
  info[129].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[129].fileTimeLo = 1348213528U;
  info[129].fileTimeHi = 0U;
  info[129].mFileTimeLo = 0U;
  info[129].mFileTimeHi = 0U;
  info[130].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[130].name = "colon";
  info[130].dominantType = "double";
  info[130].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[130].fileTimeLo = 1348213528U;
  info[130].fileTimeHi = 0U;
  info[130].mFileTimeLo = 0U;
  info[130].mFileTimeHi = 0U;
  info[131].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[131].name = "floor";
  info[131].dominantType = "double";
  info[131].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[131].fileTimeLo = 1343851980U;
  info[131].fileTimeHi = 0U;
  info[131].mFileTimeLo = 0U;
  info[131].mFileTimeHi = 0U;
  info[132].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!checkrange";
  info[132].name = "intmin";
  info[132].dominantType = "char";
  info[132].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmin.m";
  info[132].fileTimeLo = 1311276918U;
  info[132].fileTimeHi = 0U;
  info[132].mFileTimeLo = 0U;
  info[132].mFileTimeHi = 0U;
  info[133].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!checkrange";
  info[133].name = "intmax";
  info[133].dominantType = "char";
  info[133].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[133].fileTimeLo = 1311276916U;
  info[133].fileTimeHi = 0U;
  info[133].mFileTimeLo = 0U;
  info[133].mFileTimeHi = 0U;
  info[134].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_integer_colon_dispatcher";
  info[134].name = "intmin";
  info[134].dominantType = "char";
  info[134].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmin.m";
  info[134].fileTimeLo = 1311276918U;
  info[134].fileTimeHi = 0U;
  info[134].mFileTimeLo = 0U;
  info[134].mFileTimeHi = 0U;
  info[135].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_integer_colon_dispatcher";
  info[135].name = "intmax";
  info[135].dominantType = "char";
  info[135].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[135].fileTimeLo = 1311276916U;
  info[135].fileTimeHi = 0U;
  info[135].mFileTimeLo = 0U;
  info[135].mFileTimeHi = 0U;
  info[136].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_integer_colon_dispatcher";
  info[136].name = "eml_isa_uint";
  info[136].dominantType = "coder.internal.indexInt";
  info[136].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_isa_uint.m";
  info[136].fileTimeLo = 1286840384U;
  info[136].fileTimeHi = 0U;
  info[136].mFileTimeLo = 0U;
  info[136].mFileTimeHi = 0U;
  info[137].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[137].name = "eml_unsigned_class";
  info[137].dominantType = "char";
  info[137].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_unsigned_class.m";
  info[137].fileTimeLo = 1323192180U;
  info[137].fileTimeHi = 0U;
  info[137].mFileTimeLo = 0U;
  info[137].mFileTimeHi = 0U;
  info[138].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_unsigned_class.m";
  info[138].name = "eml_index_class";
  info[138].dominantType = "";
  info[138].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[138].fileTimeLo = 1323192178U;
  info[138].fileTimeHi = 0U;
  info[138].mFileTimeLo = 0U;
  info[138].mFileTimeHi = 0U;
  info[139].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[139].name = "eml_index_class";
  info[139].dominantType = "";
  info[139].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[139].fileTimeLo = 1323192178U;
  info[139].fileTimeHi = 0U;
  info[139].mFileTimeLo = 0U;
  info[139].mFileTimeHi = 0U;
  info[140].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[140].name = "intmax";
  info[140].dominantType = "char";
  info[140].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[140].fileTimeLo = 1311276916U;
  info[140].fileTimeHi = 0U;
  info[140].mFileTimeLo = 0U;
  info[140].mFileTimeHi = 0U;
  info[141].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[141].name = "eml_isa_uint";
  info[141].dominantType = "coder.internal.indexInt";
  info[141].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_isa_uint.m";
  info[141].fileTimeLo = 1286840384U;
  info[141].fileTimeHi = 0U;
  info[141].mFileTimeLo = 0U;
  info[141].mFileTimeHi = 0U;
  info[142].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[142].name = "eml_index_plus";
  info[142].dominantType = "double";
  info[142].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[142].fileTimeLo = 1286840378U;
  info[142].fileTimeHi = 0U;
  info[142].mFileTimeLo = 0U;
  info[142].mFileTimeHi = 0U;
  info[143].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_signed_integer_colon";
  info[143].name = "eml_int_forloop_overflow_check";
  info[143].dominantType = "";
  info[143].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[143].fileTimeLo = 1346531940U;
  info[143].fileTimeHi = 0U;
  info[143].mFileTimeLo = 0U;
  info[143].mFileTimeHi = 0U;
  info[144].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[144].name = "eml_index_class";
  info[144].dominantType = "";
  info[144].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[144].fileTimeLo = 1323192178U;
  info[144].fileTimeHi = 0U;
  info[144].mFileTimeLo = 0U;
  info[144].mFileTimeHi = 0U;
  info[145].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[145].name = "eml_index_plus";
  info[145].dominantType = "double";
  info[145].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[145].fileTimeLo = 1286840378U;
  info[145].fileTimeHi = 0U;
  info[145].mFileTimeLo = 0U;
  info[145].mFileTimeHi = 0U;
  info[146].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[146].name = "eml_int_forloop_overflow_check";
  info[146].dominantType = "";
  info[146].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[146].fileTimeLo = 1346531940U;
  info[146].fileTimeHi = 0U;
  info[146].mFileTimeLo = 0U;
  info[146].mFileTimeHi = 0U;
  info[147].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[147].name = "eml_index_minus";
  info[147].dominantType = "double";
  info[147].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[147].fileTimeLo = 1286840378U;
  info[147].fileTimeHi = 0U;
  info[147].mFileTimeLo = 0U;
  info[147].mFileTimeHi = 0U;
  info[148].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[148].name = "eml_index_minus";
  info[148].dominantType = "coder.internal.indexInt";
  info[148].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[148].fileTimeLo = 1286840378U;
  info[148].fileTimeHi = 0U;
  info[148].mFileTimeLo = 0U;
  info[148].mFileTimeHi = 0U;
  info[149].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[149].name = "eml_index_times";
  info[149].dominantType = "coder.internal.indexInt";
  info[149].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[149].fileTimeLo = 1286840380U;
  info[149].fileTimeHi = 0U;
  info[149].mFileTimeLo = 0U;
  info[149].mFileTimeHi = 0U;
  info[150].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[150].name = "eml_index_plus";
  info[150].dominantType = "coder.internal.indexInt";
  info[150].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[150].fileTimeLo = 1286840378U;
  info[150].fileTimeHi = 0U;
  info[150].mFileTimeLo = 0U;
  info[150].mFileTimeHi = 0U;
  info[151].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[151].name = "eml_ixamax";
  info[151].dominantType = "double";
  info[151].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_ixamax.m";
  info[151].fileTimeLo = 1299098370U;
  info[151].fileTimeHi = 0U;
  info[151].mFileTimeLo = 0U;
  info[151].mFileTimeHi = 0U;
  info[152].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_ixamax.m";
  info[152].name = "eml_blas_inline";
  info[152].dominantType = "";
  info[152].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[152].fileTimeLo = 1299098368U;
  info[152].fileTimeHi = 0U;
  info[152].mFileTimeLo = 0U;
  info[152].mFileTimeHi = 0U;
  info[153].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_ixamax.m!below_threshold";
  info[153].name = "length";
  info[153].dominantType = "double";
  info[153].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/length.m";
  info[153].fileTimeLo = 1303167806U;
  info[153].fileTimeHi = 0U;
  info[153].mFileTimeLo = 0U;
  info[153].mFileTimeHi = 0U;
  info[154].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/length.m!intlength";
  info[154].name = "eml_index_class";
  info[154].dominantType = "";
  info[154].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[154].fileTimeLo = 1323192178U;
  info[154].fileTimeHi = 0U;
  info[154].mFileTimeLo = 0U;
  info[154].mFileTimeHi = 0U;
  info[155].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_ixamax.m";
  info[155].name = "eml_index_class";
  info[155].dominantType = "";
  info[155].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[155].fileTimeLo = 1323192178U;
  info[155].fileTimeHi = 0U;
  info[155].mFileTimeLo = 0U;
  info[155].mFileTimeHi = 0U;
  info[156].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_ixamax.m";
  info[156].name = "eml_refblas_ixamax";
  info[156].dominantType = "double";
  info[156].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[156].fileTimeLo = 1299098370U;
  info[156].fileTimeHi = 0U;
  info[156].mFileTimeLo = 0U;
  info[156].mFileTimeHi = 0U;
  info[157].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[157].name = "eml_index_class";
  info[157].dominantType = "";
  info[157].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[157].fileTimeLo = 1323192178U;
  info[157].fileTimeHi = 0U;
  info[157].mFileTimeLo = 0U;
  info[157].mFileTimeHi = 0U;
  info[158].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[158].name = "eml_xcabs1";
  info[158].dominantType = "double";
  info[158].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xcabs1.m";
  info[158].fileTimeLo = 1286840306U;
  info[158].fileTimeHi = 0U;
  info[158].mFileTimeLo = 0U;
  info[158].mFileTimeHi = 0U;
  info[159].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xcabs1.m";
  info[159].name = "abs";
  info[159].dominantType = "double";
  info[159].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[159].fileTimeLo = 1343851966U;
  info[159].fileTimeHi = 0U;
  info[159].mFileTimeLo = 0U;
  info[159].mFileTimeHi = 0U;
  info[160].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[160].name = "eml_int_forloop_overflow_check";
  info[160].dominantType = "";
  info[160].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[160].fileTimeLo = 1346531940U;
  info[160].fileTimeHi = 0U;
  info[160].mFileTimeLo = 0U;
  info[160].mFileTimeHi = 0U;
  info[161].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[161].name = "eml_index_plus";
  info[161].dominantType = "coder.internal.indexInt";
  info[161].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[161].fileTimeLo = 1286840378U;
  info[161].fileTimeHi = 0U;
  info[161].mFileTimeLo = 0U;
  info[161].mFileTimeHi = 0U;
  info[162].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[162].name = "eml_xswap";
  info[162].dominantType = "double";
  info[162].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xswap.m";
  info[162].fileTimeLo = 1299098378U;
  info[162].fileTimeHi = 0U;
  info[162].mFileTimeLo = 0U;
  info[162].mFileTimeHi = 0U;
  info[163].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xswap.m";
  info[163].name = "eml_blas_inline";
  info[163].dominantType = "";
  info[163].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[163].fileTimeLo = 1299098368U;
  info[163].fileTimeHi = 0U;
  info[163].mFileTimeLo = 0U;
  info[163].mFileTimeHi = 0U;
  info[164].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xswap.m";
  info[164].name = "eml_index_class";
  info[164].dominantType = "";
  info[164].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[164].fileTimeLo = 1323192178U;
  info[164].fileTimeHi = 0U;
  info[164].mFileTimeLo = 0U;
  info[164].mFileTimeHi = 0U;
  info[165].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xswap.m";
  info[165].name = "eml_refblas_xswap";
  info[165].dominantType = "double";
  info[165].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[165].fileTimeLo = 1299098386U;
  info[165].fileTimeHi = 0U;
  info[165].mFileTimeLo = 0U;
  info[165].mFileTimeHi = 0U;
  info[166].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[166].name = "eml_index_class";
  info[166].dominantType = "";
  info[166].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[166].fileTimeLo = 1323192178U;
  info[166].fileTimeHi = 0U;
  info[166].mFileTimeLo = 0U;
  info[166].mFileTimeHi = 0U;
  info[167].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[167].name = "abs";
  info[167].dominantType = "coder.internal.indexInt";
  info[167].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[167].fileTimeLo = 1343851966U;
  info[167].fileTimeHi = 0U;
  info[167].mFileTimeLo = 0U;
  info[167].mFileTimeHi = 0U;
  info[168].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[168].name = "eml_scalar_abs";
  info[168].dominantType = "coder.internal.indexInt";
  info[168].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_abs.m";
  info[168].fileTimeLo = 1286840312U;
  info[168].fileTimeHi = 0U;
  info[168].mFileTimeLo = 0U;
  info[168].mFileTimeHi = 0U;
  info[169].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[169].name = "eml_int_forloop_overflow_check";
  info[169].dominantType = "";
  info[169].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[169].fileTimeLo = 1346531940U;
  info[169].fileTimeHi = 0U;
  info[169].mFileTimeLo = 0U;
  info[169].mFileTimeHi = 0U;
  info[170].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[170].name = "eml_index_plus";
  info[170].dominantType = "coder.internal.indexInt";
  info[170].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[170].fileTimeLo = 1286840378U;
  info[170].fileTimeHi = 0U;
  info[170].mFileTimeLo = 0U;
  info[170].mFileTimeHi = 0U;
  info[171].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[171].name = "eml_div";
  info[171].dominantType = "double";
  info[171].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_div.m";
  info[171].fileTimeLo = 1313369410U;
  info[171].fileTimeHi = 0U;
  info[171].mFileTimeLo = 0U;
  info[171].mFileTimeHi = 0U;
  info[172].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[172].name = "eml_xgeru";
  info[172].dominantType = "double";
  info[172].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgeru.m";
  info[172].fileTimeLo = 1299098374U;
  info[172].fileTimeHi = 0U;
  info[172].mFileTimeLo = 0U;
  info[172].mFileTimeHi = 0U;
  info[173].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgeru.m";
  info[173].name = "eml_blas_inline";
  info[173].dominantType = "";
  info[173].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[173].fileTimeLo = 1299098368U;
  info[173].fileTimeHi = 0U;
  info[173].mFileTimeLo = 0U;
  info[173].mFileTimeHi = 0U;
  info[174].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgeru.m";
  info[174].name = "eml_xger";
  info[174].dominantType = "double";
  info[174].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xger.m";
  info[174].fileTimeLo = 1299098374U;
  info[174].fileTimeHi = 0U;
  info[174].mFileTimeLo = 0U;
  info[174].mFileTimeHi = 0U;
  info[175].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xger.m";
  info[175].name = "eml_blas_inline";
  info[175].dominantType = "";
  info[175].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[175].fileTimeLo = 1299098368U;
  info[175].fileTimeHi = 0U;
  info[175].mFileTimeLo = 0U;
  info[175].mFileTimeHi = 0U;
  info[176].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m!below_threshold";
  info[176].name = "intmax";
  info[176].dominantType = "char";
  info[176].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[176].fileTimeLo = 1311276916U;
  info[176].fileTimeHi = 0U;
  info[176].mFileTimeLo = 0U;
  info[176].mFileTimeHi = 0U;
  info[177].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m!below_threshold";
  info[177].name = "min";
  info[177].dominantType = "double";
  info[177].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[177].fileTimeLo = 1311276918U;
  info[177].fileTimeHi = 0U;
  info[177].mFileTimeLo = 0U;
  info[177].mFileTimeHi = 0U;
  info[178].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[178].name = "eml_scalar_eg";
  info[178].dominantType = "double";
  info[178].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[178].fileTimeLo = 1286840396U;
  info[178].fileTimeHi = 0U;
  info[178].mFileTimeLo = 0U;
  info[178].mFileTimeHi = 0U;
  info[179].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[179].name = "eml_scalexp_alloc";
  info[179].dominantType = "double";
  info[179].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[179].fileTimeLo = 1352446460U;
  info[179].fileTimeHi = 0U;
  info[179].mFileTimeLo = 0U;
  info[179].mFileTimeHi = 0U;
  info[180].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_scalar_bin_extremum";
  info[180].name = "eml_scalar_eg";
  info[180].dominantType = "double";
  info[180].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[180].fileTimeLo = 1286840396U;
  info[180].fileTimeHi = 0U;
  info[180].mFileTimeLo = 0U;
  info[180].mFileTimeHi = 0U;
  info[181].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m!below_threshold";
  info[181].name = "mtimes";
  info[181].dominantType = "double";
  info[181].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[181].fileTimeLo = 1289541292U;
  info[181].fileTimeHi = 0U;
  info[181].mFileTimeLo = 0U;
  info[181].mFileTimeHi = 0U;
  info[182].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m";
  info[182].name = "eml_index_class";
  info[182].dominantType = "";
  info[182].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[182].fileTimeLo = 1323192178U;
  info[182].fileTimeHi = 0U;
  info[182].mFileTimeLo = 0U;
  info[182].mFileTimeHi = 0U;
  info[183].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m";
  info[183].name = "eml_refblas_xger";
  info[183].dominantType = "double";
  info[183].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xger.m";
  info[183].fileTimeLo = 1299098376U;
  info[183].fileTimeHi = 0U;
  info[183].mFileTimeLo = 0U;
  info[183].mFileTimeHi = 0U;
  info[184].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xger.m";
  info[184].name = "eml_refblas_xgerx";
  info[184].dominantType = "char";
  info[184].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[184].fileTimeLo = 1299098378U;
  info[184].fileTimeHi = 0U;
  info[184].mFileTimeLo = 0U;
  info[184].mFileTimeHi = 0U;
  info[185].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[185].name = "eml_index_class";
  info[185].dominantType = "";
  info[185].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[185].fileTimeLo = 1323192178U;
  info[185].fileTimeHi = 0U;
  info[185].mFileTimeLo = 0U;
  info[185].mFileTimeHi = 0U;
  info[186].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[186].name = "abs";
  info[186].dominantType = "coder.internal.indexInt";
  info[186].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[186].fileTimeLo = 1343851966U;
  info[186].fileTimeHi = 0U;
  info[186].mFileTimeLo = 0U;
  info[186].mFileTimeHi = 0U;
  info[187].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[187].name = "eml_index_minus";
  info[187].dominantType = "double";
  info[187].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[187].fileTimeLo = 1286840378U;
  info[187].fileTimeHi = 0U;
  info[187].mFileTimeLo = 0U;
  info[187].mFileTimeHi = 0U;
  info[188].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[188].name = "eml_int_forloop_overflow_check";
  info[188].dominantType = "";
  info[188].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[188].fileTimeLo = 1346531940U;
  info[188].fileTimeHi = 0U;
  info[188].mFileTimeLo = 0U;
  info[188].mFileTimeHi = 0U;
  info[189].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[189].name = "eml_index_plus";
  info[189].dominantType = "double";
  info[189].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[189].fileTimeLo = 1286840378U;
  info[189].fileTimeHi = 0U;
  info[189].mFileTimeLo = 0U;
  info[189].mFileTimeHi = 0U;
  info[190].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[190].name = "eml_index_plus";
  info[190].dominantType = "coder.internal.indexInt";
  info[190].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[190].fileTimeLo = 1286840378U;
  info[190].fileTimeHi = 0U;
  info[190].mFileTimeLo = 0U;
  info[190].mFileTimeHi = 0U;
  info[191].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!warn_singular";
  info[191].name = "eml_warning";
  info[191].dominantType = "char";
  info[191].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_warning.m";
  info[191].fileTimeLo = 1286840402U;
  info[191].fileTimeHi = 0U;
  info[191].mFileTimeLo = 0U;
  info[191].mFileTimeHi = 0U;
}

static void d_info_helper(ResolvedFunctionInfo info[223])
{
  info[192].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[192].name = "eml_scalar_eg";
  info[192].dominantType = "double";
  info[192].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[192].fileTimeLo = 1286840396U;
  info[192].fileTimeHi = 0U;
  info[192].mFileTimeLo = 0U;
  info[192].mFileTimeHi = 0U;
  info[193].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[193].name = "eml_int_forloop_overflow_check";
  info[193].dominantType = "";
  info[193].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[193].fileTimeLo = 1346531940U;
  info[193].fileTimeHi = 0U;
  info[193].mFileTimeLo = 0U;
  info[193].mFileTimeHi = 0U;
  info[194].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[194].name = "eml_xtrsm";
  info[194].dominantType = "char";
  info[194].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xtrsm.m";
  info[194].fileTimeLo = 1299098378U;
  info[194].fileTimeHi = 0U;
  info[194].mFileTimeLo = 0U;
  info[194].mFileTimeHi = 0U;
  info[195].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xtrsm.m";
  info[195].name = "eml_blas_inline";
  info[195].dominantType = "";
  info[195].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[195].fileTimeLo = 1299098368U;
  info[195].fileTimeHi = 0U;
  info[195].mFileTimeLo = 0U;
  info[195].mFileTimeHi = 0U;
  info[196].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m!below_threshold";
  info[196].name = "mtimes";
  info[196].dominantType = "double";
  info[196].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[196].fileTimeLo = 1289541292U;
  info[196].fileTimeHi = 0U;
  info[196].mFileTimeLo = 0U;
  info[196].mFileTimeHi = 0U;
  info[197].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m";
  info[197].name = "eml_index_class";
  info[197].dominantType = "";
  info[197].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[197].fileTimeLo = 1323192178U;
  info[197].fileTimeHi = 0U;
  info[197].mFileTimeLo = 0U;
  info[197].mFileTimeHi = 0U;
  info[198].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m";
  info[198].name = "eml_scalar_eg";
  info[198].dominantType = "double";
  info[198].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[198].fileTimeLo = 1286840396U;
  info[198].fileTimeHi = 0U;
  info[198].mFileTimeLo = 0U;
  info[198].mFileTimeHi = 0U;
  info[199].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m";
  info[199].name = "eml_refblas_xtrsm";
  info[199].dominantType = "char";
  info[199].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[199].fileTimeLo = 1299098386U;
  info[199].fileTimeHi = 0U;
  info[199].mFileTimeLo = 0U;
  info[199].mFileTimeHi = 0U;
  info[200].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[200].name = "eml_scalar_eg";
  info[200].dominantType = "double";
  info[200].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[200].fileTimeLo = 1286840396U;
  info[200].fileTimeHi = 0U;
  info[200].mFileTimeLo = 0U;
  info[200].mFileTimeHi = 0U;
  info[201].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[201].name = "eml_index_minus";
  info[201].dominantType = "double";
  info[201].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[201].fileTimeLo = 1286840378U;
  info[201].fileTimeHi = 0U;
  info[201].mFileTimeLo = 0U;
  info[201].mFileTimeHi = 0U;
  info[202].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[202].name = "eml_index_class";
  info[202].dominantType = "";
  info[202].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[202].fileTimeLo = 1323192178U;
  info[202].fileTimeHi = 0U;
  info[202].mFileTimeLo = 0U;
  info[202].mFileTimeHi = 0U;
  info[203].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[203].name = "eml_int_forloop_overflow_check";
  info[203].dominantType = "";
  info[203].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[203].fileTimeLo = 1346531940U;
  info[203].fileTimeHi = 0U;
  info[203].mFileTimeLo = 0U;
  info[203].mFileTimeHi = 0U;
  info[204].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[204].name = "eml_index_times";
  info[204].dominantType = "coder.internal.indexInt";
  info[204].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[204].fileTimeLo = 1286840380U;
  info[204].fileTimeHi = 0U;
  info[204].mFileTimeLo = 0U;
  info[204].mFileTimeHi = 0U;
  info[205].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[205].name = "eml_index_plus";
  info[205].dominantType = "coder.internal.indexInt";
  info[205].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[205].fileTimeLo = 1286840378U;
  info[205].fileTimeHi = 0U;
  info[205].mFileTimeLo = 0U;
  info[205].mFileTimeHi = 0U;
  info[206].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[206].name = "eml_index_plus";
  info[206].dominantType = "double";
  info[206].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[206].fileTimeLo = 1286840378U;
  info[206].fileTimeHi = 0U;
  info[206].mFileTimeLo = 0U;
  info[206].mFileTimeHi = 0U;
  info[207].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m!eml_int_forloop_overflow_check_helper";
  info[207].name = "intmin";
  info[207].dominantType = "char";
  info[207].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmin.m";
  info[207].fileTimeLo = 1311276918U;
  info[207].fileTimeHi = 0U;
  info[207].mFileTimeLo = 0U;
  info[207].mFileTimeHi = 0U;
  info[208].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[208].name = "eml_div";
  info[208].dominantType = "double";
  info[208].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_div.m";
  info[208].fileTimeLo = 1313369410U;
  info[208].fileTimeHi = 0U;
  info[208].mFileTimeLo = 0U;
  info[208].mFileTimeHi = 0U;
  info[209].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[209].name = "log2";
  info[209].dominantType = "double";
  info[209].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/log2.m";
  info[209].fileTimeLo = 1343851982U;
  info[209].fileTimeHi = 0U;
  info[209].mFileTimeLo = 0U;
  info[209].mFileTimeHi = 0U;
  info[210].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/log2.m!scalar_frexp";
  info[210].name = "isfinite";
  info[210].dominantType = "double";
  info[210].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[210].fileTimeLo = 1286840358U;
  info[210].fileTimeHi = 0U;
  info[210].mFileTimeLo = 0U;
  info[210].mFileTimeHi = 0U;
  info[211].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[211].name = "pow2";
  info[211].dominantType = "double";
  info[211].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/pow2.m";
  info[211].fileTimeLo = 1343851982U;
  info[211].fileTimeHi = 0U;
  info[211].mFileTimeLo = 0U;
  info[211].mFileTimeHi = 0U;
  info[212].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/pow2.m";
  info[212].name = "eml_scalar_pow2";
  info[212].dominantType = "double";
  info[212].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_pow2.m";
  info[212].fileTimeLo = 1286840332U;
  info[212].fileTimeHi = 0U;
  info[212].mFileTimeLo = 0U;
  info[212].mFileTimeHi = 0U;
  info[213].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_pow2.m";
  info[213].name = "power";
  info[213].dominantType = "double";
  info[213].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m";
  info[213].fileTimeLo = 1348213530U;
  info[213].fileTimeHi = 0U;
  info[213].mFileTimeLo = 0U;
  info[213].mFileTimeHi = 0U;
  info[214].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[214].name = "eml_scalar_eg";
  info[214].dominantType = "double";
  info[214].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[214].fileTimeLo = 1286840396U;
  info[214].fileTimeHi = 0U;
  info[214].mFileTimeLo = 0U;
  info[214].mFileTimeHi = 0U;
  info[215].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[215].name = "eml_scalexp_alloc";
  info[215].dominantType = "double";
  info[215].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[215].fileTimeLo = 1352446460U;
  info[215].fileTimeHi = 0U;
  info[215].mFileTimeLo = 0U;
  info[215].mFileTimeHi = 0U;
  info[216].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[216].name = "floor";
  info[216].dominantType = "double";
  info[216].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[216].fileTimeLo = 1343851980U;
  info[216].fileTimeHi = 0U;
  info[216].mFileTimeLo = 0U;
  info[216].mFileTimeHi = 0U;
  info[217].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[217].name = "eml_error";
  info[217].dominantType = "char";
  info[217].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_error.m";
  info[217].fileTimeLo = 1343851958U;
  info[217].fileTimeHi = 0U;
  info[217].mFileTimeLo = 0U;
  info[217].mFileTimeHi = 0U;
  info[218].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!scalar_float_power";
  info[218].name = "eml_scalar_eg";
  info[218].dominantType = "double";
  info[218].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[218].fileTimeLo = 1286840396U;
  info[218].fileTimeHi = 0U;
  info[218].mFileTimeLo = 0U;
  info[218].mFileTimeHi = 0U;
  info[219].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[219].name = "eml_div";
  info[219].dominantType = "double";
  info[219].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_div.m";
  info[219].fileTimeLo = 1313369410U;
  info[219].fileTimeHi = 0U;
  info[219].mFileTimeLo = 0U;
  info[219].mFileTimeHi = 0U;
  info[220].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[220].name = "mtimes";
  info[220].dominantType = "double";
  info[220].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[220].fileTimeLo = 1289541292U;
  info[220].fileTimeHi = 0U;
  info[220].mFileTimeLo = 0U;
  info[220].mFileTimeHi = 0U;
  info[221].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESolvecalP2X7.m";
  info[221].name = "mpower";
  info[221].dominantType = "double";
  info[221].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mpower.m";
  info[221].fileTimeLo = 1286840442U;
  info[221].fileTimeHi = 0U;
  info[221].mFileTimeLo = 0U;
  info[221].mFileTimeHi = 0U;
  info[222].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mpower.m";
  info[222].name = "power";
  info[222].dominantType = "double";
  info[222].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m";
  info[222].fileTimeLo = 1348213530U;
  info[222].fileTimeHi = 0U;
  info[222].mFileTimeLo = 0U;
  info[222].mFileTimeHi = 0U;
}

static void emlrt_marshallIn(const mxArray *ton, const char_T *identifier,
  emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  b_emlrt_marshallIn(emlrtAlias(ton), &thisId, y);
  emlrtDestroyArray(&ton);
}

static const mxArray *emlrt_marshallOut(ResolvedFunctionInfo u[223])
{
  const mxArray *y;
  int32_T iv12[1];
  int32_T i3;
  ResolvedFunctionInfo *c_r2;
  const char * b_u;
  const mxArray *b_y;
  const mxArray *m5;
  const mxArray *c_y;
  const mxArray *d_y;
  const mxArray *e_y;
  uint32_T c_u;
  const mxArray *f_y;
  const mxArray *g_y;
  const mxArray *h_y;
  const mxArray *i_y;
  y = NULL;
  iv12[0] = 223;
  emlrtAssign(&y, mxCreateStructArray(1, iv12, 0, NULL));
  for (i3 = 0; i3 < 223; i3++) {
    c_r2 = &u[i3];
    b_u = c_r2->context;
    b_y = NULL;
    m5 = mxCreateString(b_u);
    emlrtAssign(&b_y, m5);
    emlrtAddField(y, b_y, "context", i3);
    b_u = c_r2->name;
    c_y = NULL;
    m5 = mxCreateString(b_u);
    emlrtAssign(&c_y, m5);
    emlrtAddField(y, c_y, "name", i3);
    b_u = c_r2->dominantType;
    d_y = NULL;
    m5 = mxCreateString(b_u);
    emlrtAssign(&d_y, m5);
    emlrtAddField(y, d_y, "dominantType", i3);
    b_u = c_r2->resolved;
    e_y = NULL;
    m5 = mxCreateString(b_u);
    emlrtAssign(&e_y, m5);
    emlrtAddField(y, e_y, "resolved", i3);
    c_u = c_r2->fileTimeLo;
    f_y = NULL;
    m5 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m5) = c_u;
    emlrtAssign(&f_y, m5);
    emlrtAddField(y, f_y, "fileTimeLo", i3);
    c_u = c_r2->fileTimeHi;
    g_y = NULL;
    m5 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m5) = c_u;
    emlrtAssign(&g_y, m5);
    emlrtAddField(y, g_y, "fileTimeHi", i3);
    c_u = c_r2->mFileTimeLo;
    h_y = NULL;
    m5 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m5) = c_u;
    emlrtAssign(&h_y, m5);
    emlrtAddField(y, h_y, "mFileTimeLo", i3);
    c_u = c_r2->mFileTimeHi;
    i_y = NULL;
    m5 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m5) = c_u;
    emlrtAssign(&i_y, m5);
    emlrtAddField(y, i_y, "mFileTimeHi", i3);
  }

  return y;
}

static const mxArray *g_emlrt_marshallOut(emxArray_real_T *u)
{
  const mxArray *y;
  static const int32_T iv15[1] = { 0 };

  const mxArray *m11;
  y = NULL;
  m11 = mxCreateNumericArray(1, (int32_T *)&iv15, mxDOUBLE_CLASS, mxREAL);
  mxSetData((mxArray *)m11, (void *)u->data);
  mxSetDimensions((mxArray *)m11, u->size, 1);
  emlrtAssign(&y, m11);
  return y;
}

static const mxArray *h_emlrt_marshallOut(emxArray_real_T *u)
{
  const mxArray *y;
  static const int32_T iv16[2] = { 0, 0 };

  const mxArray *m12;
  y = NULL;
  m12 = mxCreateNumericArray(2, (int32_T *)&iv16, mxDOUBLE_CLASS, mxREAL);
  mxSetData((mxArray *)m12, (void *)u->data);
  mxSetDimensions((mxArray *)m12, u->size, 2);
  emlrtAssign(&y, m12);
  return y;
}

static void info_helper(ResolvedFunctionInfo info[223])
{
  info[0].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m";
  info[0].name = "max";
  info[0].dominantType = "double";
  info[0].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/max.m";
  info[0].fileTimeLo = 1311276916U;
  info[0].fileTimeHi = 0U;
  info[0].mFileTimeLo = 0U;
  info[0].mFileTimeHi = 0U;
  info[1].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/max.m";
  info[1].name = "eml_min_or_max";
  info[1].dominantType = "char";
  info[1].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m";
  info[1].fileTimeLo = 1334093090U;
  info[1].fileTimeHi = 0U;
  info[1].mFileTimeLo = 0U;
  info[1].mFileTimeHi = 0U;
  info[2].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum";
  info[2].name = "eml_const_nonsingleton_dim";
  info[2].dominantType = "double";
  info[2].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_const_nonsingleton_dim.m";
  info[2].fileTimeLo = 1286840296U;
  info[2].fileTimeHi = 0U;
  info[2].mFileTimeLo = 0U;
  info[2].mFileTimeHi = 0U;
  info[3].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum";
  info[3].name = "eml_scalar_eg";
  info[3].dominantType = "double";
  info[3].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[3].fileTimeLo = 1286840396U;
  info[3].fileTimeHi = 0U;
  info[3].mFileTimeLo = 0U;
  info[3].mFileTimeHi = 0U;
  info[4].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum";
  info[4].name = "eml_index_class";
  info[4].dominantType = "";
  info[4].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[4].fileTimeLo = 1323192178U;
  info[4].fileTimeHi = 0U;
  info[4].mFileTimeLo = 0U;
  info[4].mFileTimeHi = 0U;
  info[5].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum_sub";
  info[5].name = "eml_index_class";
  info[5].dominantType = "";
  info[5].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[5].fileTimeLo = 1323192178U;
  info[5].fileTimeHi = 0U;
  info[5].mFileTimeLo = 0U;
  info[5].mFileTimeHi = 0U;
  info[6].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum_sub";
  info[6].name = "isnan";
  info[6].dominantType = "double";
  info[6].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isnan.m";
  info[6].fileTimeLo = 1286840360U;
  info[6].fileTimeHi = 0U;
  info[6].mFileTimeLo = 0U;
  info[6].mFileTimeHi = 0U;
  info[7].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum_sub";
  info[7].name = "eml_index_plus";
  info[7].dominantType = "coder.internal.indexInt";
  info[7].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[7].fileTimeLo = 1286840378U;
  info[7].fileTimeHi = 0U;
  info[7].mFileTimeLo = 0U;
  info[7].mFileTimeHi = 0U;
  info[8].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[8].name = "eml_index_class";
  info[8].dominantType = "";
  info[8].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[8].fileTimeLo = 1323192178U;
  info[8].fileTimeHi = 0U;
  info[8].mFileTimeLo = 0U;
  info[8].mFileTimeHi = 0U;
  info[9].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum_sub";
  info[9].name = "eml_int_forloop_overflow_check";
  info[9].dominantType = "";
  info[9].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[9].fileTimeLo = 1346531940U;
  info[9].fileTimeHi = 0U;
  info[9].mFileTimeLo = 0U;
  info[9].mFileTimeHi = 0U;
  info[10].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m!eml_int_forloop_overflow_check_helper";
  info[10].name = "intmax";
  info[10].dominantType = "char";
  info[10].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[10].fileTimeLo = 1311276916U;
  info[10].fileTimeHi = 0U;
  info[10].mFileTimeLo = 0U;
  info[10].mFileTimeHi = 0U;
  info[11].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_extremum_sub";
  info[11].name = "eml_relop";
  info[11].dominantType = "function_handle";
  info[11].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_relop.m";
  info[11].fileTimeLo = 1342472782U;
  info[11].fileTimeHi = 0U;
  info[11].mFileTimeLo = 0U;
  info[11].mFileTimeHi = 0U;
  info[12].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m";
  info[12].name = "colon";
  info[12].dominantType = "double";
  info[12].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[12].fileTimeLo = 1348213528U;
  info[12].fileTimeHi = 0U;
  info[12].mFileTimeLo = 0U;
  info[12].mFileTimeHi = 0U;
  info[13].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!is_flint_colon";
  info[13].name = "isfinite";
  info[13].dominantType = "double";
  info[13].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[13].fileTimeLo = 1286840358U;
  info[13].fileTimeHi = 0U;
  info[13].mFileTimeLo = 0U;
  info[13].mFileTimeHi = 0U;
  info[14].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[14].name = "isinf";
  info[14].dominantType = "double";
  info[14].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isinf.m";
  info[14].fileTimeLo = 1286840360U;
  info[14].fileTimeHi = 0U;
  info[14].mFileTimeLo = 0U;
  info[14].mFileTimeHi = 0U;
  info[15].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[15].name = "isnan";
  info[15].dominantType = "double";
  info[15].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isnan.m";
  info[15].fileTimeLo = 1286840360U;
  info[15].fileTimeHi = 0U;
  info[15].mFileTimeLo = 0U;
  info[15].mFileTimeHi = 0U;
  info[16].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!is_flint_colon";
  info[16].name = "floor";
  info[16].dominantType = "double";
  info[16].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[16].fileTimeLo = 1343851980U;
  info[16].fileTimeHi = 0U;
  info[16].mFileTimeLo = 0U;
  info[16].mFileTimeHi = 0U;
  info[17].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[17].name = "eml_scalar_floor";
  info[17].dominantType = "double";
  info[17].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_floor.m";
  info[17].fileTimeLo = 1286840326U;
  info[17].fileTimeHi = 0U;
  info[17].mFileTimeLo = 0U;
  info[17].mFileTimeHi = 0U;
  info[18].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!maxabs";
  info[18].name = "abs";
  info[18].dominantType = "double";
  info[18].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[18].fileTimeLo = 1343851966U;
  info[18].fileTimeHi = 0U;
  info[18].mFileTimeLo = 0U;
  info[18].mFileTimeHi = 0U;
  info[19].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[19].name = "eml_scalar_abs";
  info[19].dominantType = "double";
  info[19].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_abs.m";
  info[19].fileTimeLo = 1286840312U;
  info[19].fileTimeHi = 0U;
  info[19].mFileTimeLo = 0U;
  info[19].mFileTimeHi = 0U;
  info[20].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!is_flint_colon";
  info[20].name = "eps";
  info[20].dominantType = "double";
  info[20].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[20].fileTimeLo = 1326749596U;
  info[20].fileTimeHi = 0U;
  info[20].mFileTimeLo = 0U;
  info[20].mFileTimeHi = 0U;
  info[21].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[21].name = "eml_mantissa_nbits";
  info[21].dominantType = "char";
  info[21].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_mantissa_nbits.m";
  info[21].fileTimeLo = 1307672842U;
  info[21].fileTimeHi = 0U;
  info[21].mFileTimeLo = 0U;
  info[21].mFileTimeHi = 0U;
  info[22].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_mantissa_nbits.m";
  info[22].name = "eml_float_model";
  info[22].dominantType = "char";
  info[22].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_float_model.m";
  info[22].fileTimeLo = 1326749596U;
  info[22].fileTimeHi = 0U;
  info[22].mFileTimeLo = 0U;
  info[22].mFileTimeHi = 0U;
  info[23].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[23].name = "eml_realmin";
  info[23].dominantType = "char";
  info[23].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmin.m";
  info[23].fileTimeLo = 1307672844U;
  info[23].fileTimeHi = 0U;
  info[23].mFileTimeLo = 0U;
  info[23].mFileTimeHi = 0U;
  info[24].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmin.m";
  info[24].name = "eml_float_model";
  info[24].dominantType = "char";
  info[24].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_float_model.m";
  info[24].fileTimeLo = 1326749596U;
  info[24].fileTimeHi = 0U;
  info[24].mFileTimeLo = 0U;
  info[24].mFileTimeHi = 0U;
  info[25].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[25].name = "eml_realmin_denormal";
  info[25].dominantType = "char";
  info[25].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmin_denormal.m";
  info[25].fileTimeLo = 1326749598U;
  info[25].fileTimeHi = 0U;
  info[25].mFileTimeLo = 0U;
  info[25].mFileTimeHi = 0U;
  info[26].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmin_denormal.m";
  info[26].name = "eml_float_model";
  info[26].dominantType = "char";
  info[26].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_float_model.m";
  info[26].fileTimeLo = 1326749596U;
  info[26].fileTimeHi = 0U;
  info[26].mFileTimeLo = 0U;
  info[26].mFileTimeHi = 0U;
  info[27].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[27].name = "abs";
  info[27].dominantType = "double";
  info[27].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[27].fileTimeLo = 1343851966U;
  info[27].fileTimeHi = 0U;
  info[27].mFileTimeLo = 0U;
  info[27].mFileTimeHi = 0U;
  info[28].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[28].name = "isfinite";
  info[28].dominantType = "double";
  info[28].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[28].fileTimeLo = 1286840358U;
  info[28].fileTimeHi = 0U;
  info[28].mFileTimeLo = 0U;
  info[28].mFileTimeHi = 0U;
  info[29].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[29].name = "eml_guarded_nan";
  info[29].dominantType = "";
  info[29].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_guarded_nan.m";
  info[29].fileTimeLo = 1286840376U;
  info[29].fileTimeHi = 0U;
  info[29].mFileTimeLo = 0U;
  info[29].mFileTimeHi = 0U;
  info[30].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!checkrange";
  info[30].name = "realmax";
  info[30].dominantType = "char";
  info[30].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/realmax.m";
  info[30].fileTimeLo = 1307672842U;
  info[30].fileTimeHi = 0U;
  info[30].mFileTimeLo = 0U;
  info[30].mFileTimeHi = 0U;
  info[31].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/realmax.m";
  info[31].name = "eml_realmax";
  info[31].dominantType = "char";
  info[31].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmax.m";
  info[31].fileTimeLo = 1326749596U;
  info[31].fileTimeHi = 0U;
  info[31].mFileTimeLo = 0U;
  info[31].mFileTimeHi = 0U;
  info[32].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmax.m";
  info[32].name = "eml_float_model";
  info[32].dominantType = "char";
  info[32].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_float_model.m";
  info[32].fileTimeLo = 1326749596U;
  info[32].fileTimeHi = 0U;
  info[32].mFileTimeLo = 0U;
  info[32].mFileTimeHi = 0U;
  info[33].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmax.m";
  info[33].name = "mtimes";
  info[33].dominantType = "double";
  info[33].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[33].fileTimeLo = 1289541292U;
  info[33].fileTimeHi = 0U;
  info[33].mFileTimeLo = 0U;
  info[33].mFileTimeHi = 0U;
  info[34].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!float_colon_length";
  info[34].name = "isnan";
  info[34].dominantType = "double";
  info[34].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isnan.m";
  info[34].fileTimeLo = 1286840360U;
  info[34].fileTimeHi = 0U;
  info[34].mFileTimeLo = 0U;
  info[34].mFileTimeHi = 0U;
  info[35].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!float_colon_length";
  info[35].name = "eml_index_class";
  info[35].dominantType = "";
  info[35].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[35].fileTimeLo = 1323192178U;
  info[35].fileTimeHi = 0U;
  info[35].mFileTimeLo = 0U;
  info[35].mFileTimeHi = 0U;
  info[36].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!float_colon_length";
  info[36].name = "eml_guarded_nan";
  info[36].dominantType = "char";
  info[36].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_guarded_nan.m";
  info[36].fileTimeLo = 1286840376U;
  info[36].fileTimeHi = 0U;
  info[36].mFileTimeLo = 0U;
  info[36].mFileTimeHi = 0U;
  info[37].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_guarded_nan.m";
  info[37].name = "eml_is_float_class";
  info[37].dominantType = "char";
  info[37].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_is_float_class.m";
  info[37].fileTimeLo = 1286840382U;
  info[37].fileTimeHi = 0U;
  info[37].mFileTimeLo = 0U;
  info[37].mFileTimeHi = 0U;
  info[38].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!float_colon_length";
  info[38].name = "isinf";
  info[38].dominantType = "double";
  info[38].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isinf.m";
  info[38].fileTimeLo = 1286840360U;
  info[38].fileTimeHi = 0U;
  info[38].mFileTimeLo = 0U;
  info[38].mFileTimeHi = 0U;
  info[39].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!float_colon_length";
  info[39].name = "floor";
  info[39].dominantType = "double";
  info[39].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[39].fileTimeLo = 1343851980U;
  info[39].fileTimeHi = 0U;
  info[39].mFileTimeLo = 0U;
  info[39].mFileTimeHi = 0U;
  info[40].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!float_colon_length";
  info[40].name = "mtimes";
  info[40].dominantType = "double";
  info[40].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[40].fileTimeLo = 1289541292U;
  info[40].fileTimeHi = 0U;
  info[40].mFileTimeLo = 0U;
  info[40].mFileTimeHi = 0U;
  info[41].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!float_colon_length";
  info[41].name = "abs";
  info[41].dominantType = "double";
  info[41].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[41].fileTimeLo = 1343851966U;
  info[41].fileTimeHi = 0U;
  info[41].mFileTimeLo = 0U;
  info[41].mFileTimeHi = 0U;
  info[42].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!float_colon_length";
  info[42].name = "eps";
  info[42].dominantType = "char";
  info[42].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[42].fileTimeLo = 1326749596U;
  info[42].fileTimeHi = 0U;
  info[42].mFileTimeLo = 0U;
  info[42].mFileTimeHi = 0U;
  info[43].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[43].name = "eml_is_float_class";
  info[43].dominantType = "char";
  info[43].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_is_float_class.m";
  info[43].fileTimeLo = 1286840382U;
  info[43].fileTimeHi = 0U;
  info[43].mFileTimeLo = 0U;
  info[43].mFileTimeHi = 0U;
  info[44].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[44].name = "eml_eps";
  info[44].dominantType = "char";
  info[44].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_eps.m";
  info[44].fileTimeLo = 1326749596U;
  info[44].fileTimeHi = 0U;
  info[44].mFileTimeLo = 0U;
  info[44].mFileTimeHi = 0U;
  info[45].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_eps.m";
  info[45].name = "eml_float_model";
  info[45].dominantType = "char";
  info[45].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_float_model.m";
  info[45].fileTimeLo = 1326749596U;
  info[45].fileTimeHi = 0U;
  info[45].mFileTimeLo = 0U;
  info[45].mFileTimeHi = 0U;
  info[46].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!float_colon_length";
  info[46].name = "intmax";
  info[46].dominantType = "char";
  info[46].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[46].fileTimeLo = 1311276916U;
  info[46].fileTimeHi = 0U;
  info[46].mFileTimeLo = 0U;
  info[46].mFileTimeHi = 0U;
  info[47].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!float_colon_length";
  info[47].name = "coder.internal.indexIntRelop";
  info[47].dominantType = "";
  info[47].resolved =
    "[IXE]$matlabroot$/toolbox/shared/coder/coder/+coder/+internal/indexIntRelop.m";
  info[47].fileTimeLo = 1326749922U;
  info[47].fileTimeHi = 0U;
  info[47].mFileTimeLo = 0U;
  info[47].mFileTimeHi = 0U;
  info[48].context =
    "[IXE]$matlabroot$/toolbox/shared/coder/coder/+coder/+internal/indexIntRelop.m!float_class_contains_indexIntClass";
  info[48].name = "eml_float_model";
  info[48].dominantType = "char";
  info[48].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_float_model.m";
  info[48].fileTimeLo = 1326749596U;
  info[48].fileTimeHi = 0U;
  info[48].mFileTimeLo = 0U;
  info[48].mFileTimeHi = 0U;
  info[49].context =
    "[IXE]$matlabroot$/toolbox/shared/coder/coder/+coder/+internal/indexIntRelop.m!is_signed_indexIntClass";
  info[49].name = "intmin";
  info[49].dominantType = "char";
  info[49].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmin.m";
  info[49].fileTimeLo = 1311276918U;
  info[49].fileTimeHi = 0U;
  info[49].mFileTimeLo = 0U;
  info[49].mFileTimeHi = 0U;
  info[50].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_float_colon";
  info[50].name = "eml_index_minus";
  info[50].dominantType = "double";
  info[50].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[50].fileTimeLo = 1286840378U;
  info[50].fileTimeHi = 0U;
  info[50].mFileTimeLo = 0U;
  info[50].mFileTimeHi = 0U;
  info[51].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[51].name = "eml_index_class";
  info[51].dominantType = "";
  info[51].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[51].fileTimeLo = 1323192178U;
  info[51].fileTimeHi = 0U;
  info[51].mFileTimeLo = 0U;
  info[51].mFileTimeHi = 0U;
  info[52].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_float_colon";
  info[52].name = "eml_index_rdivide";
  info[52].dominantType = "double";
  info[52].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_rdivide.m";
  info[52].fileTimeLo = 1286840380U;
  info[52].fileTimeHi = 0U;
  info[52].mFileTimeLo = 0U;
  info[52].mFileTimeHi = 0U;
  info[53].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_rdivide.m";
  info[53].name = "eml_index_class";
  info[53].dominantType = "";
  info[53].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[53].fileTimeLo = 1323192178U;
  info[53].fileTimeHi = 0U;
  info[53].mFileTimeLo = 0U;
  info[53].mFileTimeHi = 0U;
  info[54].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_float_colon";
  info[54].name = "eml_int_forloop_overflow_check";
  info[54].dominantType = "";
  info[54].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[54].fileTimeLo = 1346531940U;
  info[54].fileTimeHi = 0U;
  info[54].mFileTimeLo = 0U;
  info[54].mFileTimeHi = 0U;
  info[55].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_float_colon";
  info[55].name = "mtimes";
  info[55].dominantType = "double";
  info[55].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[55].fileTimeLo = 1289541292U;
  info[55].fileTimeHi = 0U;
  info[55].mFileTimeLo = 0U;
  info[55].mFileTimeHi = 0U;
  info[56].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_float_colon";
  info[56].name = "eml_index_times";
  info[56].dominantType = "double";
  info[56].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[56].fileTimeLo = 1286840380U;
  info[56].fileTimeHi = 0U;
  info[56].mFileTimeLo = 0U;
  info[56].mFileTimeHi = 0U;
  info[57].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[57].name = "eml_index_class";
  info[57].dominantType = "";
  info[57].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[57].fileTimeLo = 1323192178U;
  info[57].fileTimeHi = 0U;
  info[57].mFileTimeLo = 0U;
  info[57].mFileTimeHi = 0U;
  info[58].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_float_colon";
  info[58].name = "eml_index_plus";
  info[58].dominantType = "double";
  info[58].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[58].fileTimeLo = 1286840378U;
  info[58].fileTimeHi = 0U;
  info[58].mFileTimeLo = 0U;
  info[58].mFileTimeHi = 0U;
  info[59].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_float_colon";
  info[59].name = "eml_index_minus";
  info[59].dominantType = "coder.internal.indexInt";
  info[59].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[59].fileTimeLo = 1286840378U;
  info[59].fileTimeHi = 0U;
  info[59].mFileTimeLo = 0U;
  info[59].mFileTimeHi = 0U;
  info[60].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionResponsecalP2X7.m";
  info[60].name = "eml_li_find";
  info[60].dominantType = "";
  info[60].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[60].fileTimeLo = 1286840386U;
  info[60].fileTimeHi = 0U;
  info[60].mFileTimeLo = 0U;
  info[60].mFileTimeHi = 0U;
  info[61].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[61].name = "eml_index_class";
  info[61].dominantType = "";
  info[61].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[61].fileTimeLo = 1323192178U;
  info[61].fileTimeHi = 0U;
  info[61].mFileTimeLo = 0U;
  info[61].mFileTimeHi = 0U;
  info[62].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m!compute_nones";
  info[62].name = "eml_index_class";
  info[62].dominantType = "";
  info[62].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[62].fileTimeLo = 1323192178U;
  info[62].fileTimeHi = 0U;
  info[62].mFileTimeLo = 0U;
  info[62].mFileTimeHi = 0U;
  info[63].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m!compute_nones";
  info[63].name = "eml_int_forloop_overflow_check";
  info[63].dominantType = "";
  info[63].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[63].fileTimeLo = 1346531940U;
  info[63].fileTimeHi = 0U;
  info[63].mFileTimeLo = 0U;
  info[63].mFileTimeHi = 0U;
}

static void m_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret)
{
  int32_T iv17[1];
  boolean_T bv0[1];
  int32_T iv18[1];
  iv17[0] = -1;
  bv0[0] = TRUE;
  emlrtCheckVsBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 1U,
    iv17, bv0, iv18);
  ret->size[0] = iv18[0];
  ret->allocatedSize = ret->size[0];
  ret->data = (real_T *)mxGetData(src);
  ret->canFreeData = FALSE;
  emlrtDestroyArray(&src);
}

const mxArray *emlrtMexFcnResolvedFunctionsInfo(void)
{
  const mxArray *nameCaptureInfo;
  ResolvedFunctionInfo info[223];
  nameCaptureInfo = NULL;
  info_helper(info);
  b_info_helper(info);
  c_info_helper(info);
  d_info_helper(info);
  emlrtAssign(&nameCaptureInfo, emlrt_marshallOut(info));
  emlrtNameCapturePostProcessR2012a(emlrtAlias(nameCaptureInfo));
  return nameCaptureInfo;
}

void naivePerfusionResponsecalP2X7_api(const mxArray * const prhs[4], const
  mxArray *plhs[3])
{
  emxArray_real_T *ton;
  emxArray_real_T *toff;
  emxArray_real_T *T;
  real_T Ttot;
  const mxArray *tmp;
  emxArray_real_T *Tout;
  emxArray_real_T *Isoln;
  emxArray_real_T *Ysoln;
  emxArray_real_T *r3;
  int32_T i4;
  int32_T loop_ub;
  emxArray_real_T *r4;
  emxArray_real_T *r5;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);
  emxInit_real_T(&ton, 1, &l_emlrtRTEI, TRUE);
  emxInit_real_T(&toff, 1, &l_emlrtRTEI, TRUE);
  emxInit_real_T(&T, 1, &l_emlrtRTEI, TRUE);

  /* Marshall function inputs */
  emlrt_marshallIn(emlrtAlias(prhs[0]), "ton", ton);
  emlrt_marshallIn(emlrtAlias(prhs[1]), "toff", toff);
  Ttot = c_emlrt_marshallIn(emlrtAliasP(prhs[2]), "Ttot");
  emlrt_marshallIn(emlrtAlias(prhs[3]), "T", T);

  /* Marshall in global variables */
  tmp = mexGetVariable("global", "Tsoln");
  if (tmp) {
    e_emlrt_marshallIn(tmp, "Tsoln", Tsoln);
    Tsoln_dirty = 0U;
  }

  tmp = mexGetVariable("global", "I");
  if (tmp) {
    e_emlrt_marshallIn(tmp, "I", I);
    I_dirty = 0U;
  }

  tmp = mexGetVariable("global", "Y");
  if (tmp) {
    g_emlrt_marshallIn(tmp, "Y", Y);
    Y_dirty = 0U;
  }

  tmp = mexGetVariable("global", "p0");
  if (tmp) {
    i_emlrt_marshallIn(tmp, "p0", p0);
    p0_dirty = 0U;
  }

  tmp = mexGetVariable("global", "A");
  if (tmp) {
    A = c_emlrt_marshallIn(tmp, "A");
    A_dirty = 0U;
  }

  tmp = mexGetVariable("global", "ATP");
  if (tmp) {
    ATP = c_emlrt_marshallIn(tmp, "ATP");
    ATP_dirty = 0U;
  }

  tmp = mexGetVariable("global", "imin");
  if (tmp) {
    imin = c_emlrt_marshallIn(tmp, "imin");
    imin_dirty = 0U;
  }

  tmp = mexGetVariable("global", "imax");
  if (tmp) {
    imax = c_emlrt_marshallIn(tmp, "imax");
    imax_dirty = 0U;
  }

  tmp = mexGetVariable("global", "t0");
  if (tmp) {
    t0 = c_emlrt_marshallIn(tmp, "t0");
    t0_dirty = 0U;
  }

  tmp = mexGetVariable("global", "Q");
  if (tmp) {
    k_emlrt_marshallIn(tmp, "Q", Q);
    Q_dirty = 0U;
  }

  tmp = mexGetVariable("global", "Acell");
  if (tmp) {
    Acell = c_emlrt_marshallIn(tmp, "Acell");
    Acell_dirty = 0U;
  }

  tmp = mexGetVariable("global", "g12");
  if (tmp) {
    g12 = c_emlrt_marshallIn(tmp, "g12");
    g12_dirty = 0U;
  }

  tmp = mexGetVariable("global", "V");
  if (tmp) {
    V = c_emlrt_marshallIn(tmp, "V");
    V_dirty = 0U;
  }

  tmp = mexGetVariable("global", "E12");
  if (tmp) {
    E12 = c_emlrt_marshallIn(tmp, "E12");
    E12_dirty = 0U;
  }

  tmp = mexGetVariable("global", "g34");
  if (tmp) {
    g34 = c_emlrt_marshallIn(tmp, "g34");
    g34_dirty = 0U;
  }

  tmp = mexGetVariable("global", "E34");
  if (tmp) {
    E34 = c_emlrt_marshallIn(tmp, "E34");
    E34_dirty = 0U;
  }

  tmp = mexGetVariable("global", "kca");
  if (tmp) {
    kca = c_emlrt_marshallIn(tmp, "kca");
    kca_dirty = 0U;
  }

  tmp = mexGetVariable("global", "C");
  if (tmp) {
    C = c_emlrt_marshallIn(tmp, "C");
    C_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k2");
  if (tmp) {
    k2 = c_emlrt_marshallIn(tmp, "k2");
    k2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k1");
  if (tmp) {
    k1 = c_emlrt_marshallIn(tmp, "k1");
    k1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k4");
  if (tmp) {
    k4 = c_emlrt_marshallIn(tmp, "k4");
    k4_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H3");
  if (tmp) {
    H3 = c_emlrt_marshallIn(tmp, "H3");
    H3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L1");
  if (tmp) {
    L1 = c_emlrt_marshallIn(tmp, "L1");
    L1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k3");
  if (tmp) {
    k3 = c_emlrt_marshallIn(tmp, "k3");
    k3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k6");
  if (tmp) {
    k6 = c_emlrt_marshallIn(tmp, "k6");
    k6_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H5");
  if (tmp) {
    H5 = c_emlrt_marshallIn(tmp, "H5");
    H5_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k5");
  if (tmp) {
    k5 = c_emlrt_marshallIn(tmp, "k5");
    k5_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L3");
  if (tmp) {
    L3 = c_emlrt_marshallIn(tmp, "L3");
    L3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H7");
  if (tmp) {
    H7 = c_emlrt_marshallIn(tmp, "H7");
    H7_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L2");
  if (tmp) {
    L2 = c_emlrt_marshallIn(tmp, "L2");
    L2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H1");
  if (tmp) {
    H1 = c_emlrt_marshallIn(tmp, "H1");
    H1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H2");
  if (tmp) {
    H2 = c_emlrt_marshallIn(tmp, "H2");
    H2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H4");
  if (tmp) {
    H4 = c_emlrt_marshallIn(tmp, "H4");
    H4_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H6");
  if (tmp) {
    H6 = c_emlrt_marshallIn(tmp, "H6");
    H6_dirty = 0U;
  }

  tmp = mexGetVariable("global", "koff");
  if (tmp) {
    koff = c_emlrt_marshallIn(tmp, "koff");
    koff_dirty = 0U;
  }

  tmp = mexGetVariable("global", "r2");
  if (tmp) {
    r2 = c_emlrt_marshallIn(tmp, "r2");
    r2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "r1");
  if (tmp) {
    r1 = c_emlrt_marshallIn(tmp, "r1");
    r1_dirty = 0U;
  }

  emxInit_real_T(&Tout, 1, &l_emlrtRTEI, TRUE);
  emxInit_real_T(&Isoln, 1, &l_emlrtRTEI, TRUE);
  b_emxInit_real_T(&Ysoln, 2, &l_emlrtRTEI, TRUE);
  emxInit_real_T(&r3, 1, &l_emlrtRTEI, TRUE);

  /* Invoke the target function */
  naivePerfusionResponsecalP2X7(ton, toff, Ttot, T, Tout, Isoln, Ysoln);

  /* Marshall out global variables */
  i4 = r3->size[0];
  r3->size[0] = Tsoln->size[0];
  emxEnsureCapacity((emxArray__common *)r3, i4, (int32_T)sizeof(real_T),
                    &l_emlrtRTEI);
  loop_ub = Tsoln->size[0];
  T->canFreeData = FALSE;
  emxFree_real_T(&T);
  toff->canFreeData = FALSE;
  emxFree_real_T(&toff);
  ton->canFreeData = FALSE;
  emxFree_real_T(&ton);
  for (i4 = 0; i4 < loop_ub; i4++) {
    r3->data[i4] = Tsoln->data[i4];
  }

  emxInit_real_T(&r4, 1, &l_emlrtRTEI, TRUE);
  mexPutVariable("global", "Tsoln", b_emlrt_marshallOut(r3));
  i4 = r4->size[0];
  r4->size[0] = I->size[0];
  emxEnsureCapacity((emxArray__common *)r4, i4, (int32_T)sizeof(real_T),
                    &l_emlrtRTEI);
  loop_ub = I->size[0];
  emxFree_real_T(&r3);
  for (i4 = 0; i4 < loop_ub; i4++) {
    r4->data[i4] = I->data[i4];
  }

  b_emxInit_real_T(&r5, 2, &l_emlrtRTEI, TRUE);
  mexPutVariable("global", "I", b_emlrt_marshallOut(r4));
  i4 = r5->size[0] * r5->size[1];
  r5->size[0] = Y->size[0];
  r5->size[1] = 24;
  emxEnsureCapacity((emxArray__common *)r5, i4, (int32_T)sizeof(real_T),
                    &l_emlrtRTEI);
  loop_ub = Y->size[0] * Y->size[1];
  emxFree_real_T(&r4);
  for (i4 = 0; i4 < loop_ub; i4++) {
    r5->data[i4] = Y->data[i4];
  }

  mexPutVariable("global", "Y", c_emlrt_marshallOut(r5));
  mexPutVariable("global", "p0", d_emlrt_marshallOut(p0));
  mexPutVariable("global", "A", e_emlrt_marshallOut(A));
  mexPutVariable("global", "ATP", e_emlrt_marshallOut(ATP));
  mexPutVariable("global", "imin", e_emlrt_marshallOut(imin));
  mexPutVariable("global", "imax", e_emlrt_marshallOut(imax));
  mexPutVariable("global", "t0", e_emlrt_marshallOut(t0));
  mexPutVariable("global", "Q", f_emlrt_marshallOut(Q));
  mexPutVariable("global", "Acell", e_emlrt_marshallOut(Acell));
  mexPutVariable("global", "g12", e_emlrt_marshallOut(g12));
  mexPutVariable("global", "V", e_emlrt_marshallOut(V));
  mexPutVariable("global", "E12", e_emlrt_marshallOut(E12));
  mexPutVariable("global", "g34", e_emlrt_marshallOut(g34));
  mexPutVariable("global", "E34", e_emlrt_marshallOut(E34));
  mexPutVariable("global", "kca", e_emlrt_marshallOut(kca));
  mexPutVariable("global", "C", e_emlrt_marshallOut(C));
  mexPutVariable("global", "k2", e_emlrt_marshallOut(k2));
  mexPutVariable("global", "k1", e_emlrt_marshallOut(k1));
  mexPutVariable("global", "k4", e_emlrt_marshallOut(k4));
  mexPutVariable("global", "H3", e_emlrt_marshallOut(H3));
  mexPutVariable("global", "L1", e_emlrt_marshallOut(L1));
  mexPutVariable("global", "k3", e_emlrt_marshallOut(k3));
  mexPutVariable("global", "k6", e_emlrt_marshallOut(k6));
  mexPutVariable("global", "H5", e_emlrt_marshallOut(H5));
  mexPutVariable("global", "k5", e_emlrt_marshallOut(k5));
  mexPutVariable("global", "L3", e_emlrt_marshallOut(L3));
  mexPutVariable("global", "H7", e_emlrt_marshallOut(H7));
  mexPutVariable("global", "L2", e_emlrt_marshallOut(L2));
  mexPutVariable("global", "H1", e_emlrt_marshallOut(H1));
  mexPutVariable("global", "H2", e_emlrt_marshallOut(H2));
  mexPutVariable("global", "H4", e_emlrt_marshallOut(H4));
  mexPutVariable("global", "H6", e_emlrt_marshallOut(H6));
  mexPutVariable("global", "koff", e_emlrt_marshallOut(koff));
  mexPutVariable("global", "r2", e_emlrt_marshallOut(r2));
  mexPutVariable("global", "r1", e_emlrt_marshallOut(r1));

  /* Marshall function outputs */
  plhs[0] = g_emlrt_marshallOut(Tout);
  plhs[1] = g_emlrt_marshallOut(Isoln);
  plhs[2] = h_emlrt_marshallOut(Ysoln);
  emxFree_real_T(&r5);
  Ysoln->canFreeData = FALSE;
  emxFree_real_T(&Ysoln);
  Isoln->canFreeData = FALSE;
  emxFree_real_T(&Isoln);
  Tout->canFreeData = FALSE;
  emxFree_real_T(&Tout);
  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionResponsecalP2X7_api.c) */
