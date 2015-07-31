/*
 * naivePerfusionSSEcalP2X7_api.c
 *
 * Code generation for function 'naivePerfusionSSEcalP2X7_api'
 *
 * C source code generated on: Tue May 27 13:41:57 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEcalP2X7.h"
#include "naivePerfusionSSEcalP2X7_api.h"
#include "naivePerfusionSSEcalP2X7_emxutil.h"
#include "naivePerfusionSSEcalP2X7_mexutil.h"
#include "naivePerfusionSSEcalP2X7_data.h"

/* Variable Definitions */
static emlrtRTEInfo e_emlrtRTEI = { 1, 1, "naivePerfusionSSEcalP2X7_api", "" };

/* Function Declarations */
static void b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y);
static void b_info_helper(ResolvedFunctionInfo info[152]);
static void c_emlrt_marshallIn(const mxArray *T, const char_T *identifier,
  emxArray_real_T *y);
static void c_info_helper(ResolvedFunctionInfo info[152]);
static void d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y);
static void emlrt_marshallIn(const mxArray *ton, const char_T *identifier,
  emxArray_real_T *y);
static const mxArray *emlrt_marshallOut(ResolvedFunctionInfo u[152]);
static void info_helper(ResolvedFunctionInfo info[152]);
static void k_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret);
static void l_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret);

/* Function Definitions */
static void b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y)
{
  k_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void b_info_helper(ResolvedFunctionInfo info[152])
{
  info[64].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[64].name = "eml_isa_uint";
  info[64].dominantType = "coder.internal.indexInt";
  info[64].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_isa_uint.m";
  info[64].fileTimeLo = 1286840384U;
  info[64].fileTimeHi = 0U;
  info[64].mFileTimeLo = 0U;
  info[64].mFileTimeHi = 0U;
  info[65].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[65].name = "eml_index_plus";
  info[65].dominantType = "double";
  info[65].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[65].fileTimeLo = 1286840378U;
  info[65].fileTimeHi = 0U;
  info[65].mFileTimeLo = 0U;
  info[65].mFileTimeHi = 0U;
  info[66].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_signed_integer_colon";
  info[66].name = "eml_int_forloop_overflow_check";
  info[66].dominantType = "";
  info[66].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[66].fileTimeLo = 1346531940U;
  info[66].fileTimeHi = 0U;
  info[66].mFileTimeLo = 0U;
  info[66].mFileTimeHi = 0U;
  info[67].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[67].name = "eml_index_class";
  info[67].dominantType = "";
  info[67].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[67].fileTimeLo = 1323192178U;
  info[67].fileTimeHi = 0U;
  info[67].mFileTimeLo = 0U;
  info[67].mFileTimeHi = 0U;
  info[68].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[68].name = "eml_index_plus";
  info[68].dominantType = "double";
  info[68].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[68].fileTimeLo = 1286840378U;
  info[68].fileTimeHi = 0U;
  info[68].mFileTimeLo = 0U;
  info[68].mFileTimeHi = 0U;
  info[69].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[69].name = "eml_int_forloop_overflow_check";
  info[69].dominantType = "";
  info[69].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[69].fileTimeLo = 1346531940U;
  info[69].fileTimeHi = 0U;
  info[69].mFileTimeLo = 0U;
  info[69].mFileTimeHi = 0U;
  info[70].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[70].name = "eml_index_minus";
  info[70].dominantType = "double";
  info[70].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[70].fileTimeLo = 1286840378U;
  info[70].fileTimeHi = 0U;
  info[70].mFileTimeLo = 0U;
  info[70].mFileTimeHi = 0U;
  info[71].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[71].name = "eml_index_class";
  info[71].dominantType = "";
  info[71].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[71].fileTimeLo = 1323192178U;
  info[71].fileTimeHi = 0U;
  info[71].mFileTimeLo = 0U;
  info[71].mFileTimeHi = 0U;
  info[72].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[72].name = "eml_index_minus";
  info[72].dominantType = "coder.internal.indexInt";
  info[72].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[72].fileTimeLo = 1286840378U;
  info[72].fileTimeHi = 0U;
  info[72].mFileTimeLo = 0U;
  info[72].mFileTimeHi = 0U;
  info[73].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[73].name = "eml_index_times";
  info[73].dominantType = "coder.internal.indexInt";
  info[73].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[73].fileTimeLo = 1286840380U;
  info[73].fileTimeHi = 0U;
  info[73].mFileTimeLo = 0U;
  info[73].mFileTimeHi = 0U;
  info[74].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[74].name = "eml_index_class";
  info[74].dominantType = "";
  info[74].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[74].fileTimeLo = 1323192178U;
  info[74].fileTimeHi = 0U;
  info[74].mFileTimeLo = 0U;
  info[74].mFileTimeHi = 0U;
  info[75].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[75].name = "eml_index_plus";
  info[75].dominantType = "coder.internal.indexInt";
  info[75].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[75].fileTimeLo = 1286840378U;
  info[75].fileTimeHi = 0U;
  info[75].mFileTimeLo = 0U;
  info[75].mFileTimeHi = 0U;
  info[76].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[76].name = "eml_ixamax";
  info[76].dominantType = "double";
  info[76].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_ixamax.m";
  info[76].fileTimeLo = 1299098370U;
  info[76].fileTimeHi = 0U;
  info[76].mFileTimeLo = 0U;
  info[76].mFileTimeHi = 0U;
  info[77].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_ixamax.m";
  info[77].name = "eml_blas_inline";
  info[77].dominantType = "";
  info[77].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[77].fileTimeLo = 1299098368U;
  info[77].fileTimeHi = 0U;
  info[77].mFileTimeLo = 0U;
  info[77].mFileTimeHi = 0U;
  info[78].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_ixamax.m!below_threshold";
  info[78].name = "length";
  info[78].dominantType = "double";
  info[78].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/length.m";
  info[78].fileTimeLo = 1303167806U;
  info[78].fileTimeHi = 0U;
  info[78].mFileTimeLo = 0U;
  info[78].mFileTimeHi = 0U;
  info[79].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/length.m!intlength";
  info[79].name = "eml_index_class";
  info[79].dominantType = "";
  info[79].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[79].fileTimeLo = 1323192178U;
  info[79].fileTimeHi = 0U;
  info[79].mFileTimeLo = 0U;
  info[79].mFileTimeHi = 0U;
  info[80].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_ixamax.m";
  info[80].name = "eml_index_class";
  info[80].dominantType = "";
  info[80].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[80].fileTimeLo = 1323192178U;
  info[80].fileTimeHi = 0U;
  info[80].mFileTimeLo = 0U;
  info[80].mFileTimeHi = 0U;
  info[81].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_ixamax.m";
  info[81].name = "eml_refblas_ixamax";
  info[81].dominantType = "double";
  info[81].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[81].fileTimeLo = 1299098370U;
  info[81].fileTimeHi = 0U;
  info[81].mFileTimeLo = 0U;
  info[81].mFileTimeHi = 0U;
  info[82].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[82].name = "eml_index_class";
  info[82].dominantType = "";
  info[82].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[82].fileTimeLo = 1323192178U;
  info[82].fileTimeHi = 0U;
  info[82].mFileTimeLo = 0U;
  info[82].mFileTimeHi = 0U;
  info[83].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[83].name = "eml_xcabs1";
  info[83].dominantType = "double";
  info[83].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xcabs1.m";
  info[83].fileTimeLo = 1286840306U;
  info[83].fileTimeHi = 0U;
  info[83].mFileTimeLo = 0U;
  info[83].mFileTimeHi = 0U;
  info[84].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xcabs1.m";
  info[84].name = "abs";
  info[84].dominantType = "double";
  info[84].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[84].fileTimeLo = 1343851966U;
  info[84].fileTimeHi = 0U;
  info[84].mFileTimeLo = 0U;
  info[84].mFileTimeHi = 0U;
  info[85].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[85].name = "eml_int_forloop_overflow_check";
  info[85].dominantType = "";
  info[85].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[85].fileTimeLo = 1346531940U;
  info[85].fileTimeHi = 0U;
  info[85].mFileTimeLo = 0U;
  info[85].mFileTimeHi = 0U;
  info[86].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[86].name = "eml_index_plus";
  info[86].dominantType = "coder.internal.indexInt";
  info[86].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[86].fileTimeLo = 1286840378U;
  info[86].fileTimeHi = 0U;
  info[86].mFileTimeLo = 0U;
  info[86].mFileTimeHi = 0U;
  info[87].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[87].name = "eml_xswap";
  info[87].dominantType = "double";
  info[87].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xswap.m";
  info[87].fileTimeLo = 1299098378U;
  info[87].fileTimeHi = 0U;
  info[87].mFileTimeLo = 0U;
  info[87].mFileTimeHi = 0U;
  info[88].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xswap.m";
  info[88].name = "eml_blas_inline";
  info[88].dominantType = "";
  info[88].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[88].fileTimeLo = 1299098368U;
  info[88].fileTimeHi = 0U;
  info[88].mFileTimeLo = 0U;
  info[88].mFileTimeHi = 0U;
  info[89].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xswap.m";
  info[89].name = "eml_index_class";
  info[89].dominantType = "";
  info[89].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[89].fileTimeLo = 1323192178U;
  info[89].fileTimeHi = 0U;
  info[89].mFileTimeLo = 0U;
  info[89].mFileTimeHi = 0U;
  info[90].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xswap.m";
  info[90].name = "eml_refblas_xswap";
  info[90].dominantType = "double";
  info[90].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[90].fileTimeLo = 1299098386U;
  info[90].fileTimeHi = 0U;
  info[90].mFileTimeLo = 0U;
  info[90].mFileTimeHi = 0U;
  info[91].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[91].name = "eml_index_class";
  info[91].dominantType = "";
  info[91].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[91].fileTimeLo = 1323192178U;
  info[91].fileTimeHi = 0U;
  info[91].mFileTimeLo = 0U;
  info[91].mFileTimeHi = 0U;
  info[92].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[92].name = "abs";
  info[92].dominantType = "coder.internal.indexInt";
  info[92].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[92].fileTimeLo = 1343851966U;
  info[92].fileTimeHi = 0U;
  info[92].mFileTimeLo = 0U;
  info[92].mFileTimeHi = 0U;
  info[93].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[93].name = "eml_scalar_abs";
  info[93].dominantType = "coder.internal.indexInt";
  info[93].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_abs.m";
  info[93].fileTimeLo = 1286840312U;
  info[93].fileTimeHi = 0U;
  info[93].mFileTimeLo = 0U;
  info[93].mFileTimeHi = 0U;
  info[94].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[94].name = "eml_int_forloop_overflow_check";
  info[94].dominantType = "";
  info[94].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[94].fileTimeLo = 1346531940U;
  info[94].fileTimeHi = 0U;
  info[94].mFileTimeLo = 0U;
  info[94].mFileTimeHi = 0U;
  info[95].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[95].name = "eml_index_plus";
  info[95].dominantType = "coder.internal.indexInt";
  info[95].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[95].fileTimeLo = 1286840378U;
  info[95].fileTimeHi = 0U;
  info[95].mFileTimeLo = 0U;
  info[95].mFileTimeHi = 0U;
  info[96].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[96].name = "eml_div";
  info[96].dominantType = "double";
  info[96].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_div.m";
  info[96].fileTimeLo = 1313369410U;
  info[96].fileTimeHi = 0U;
  info[96].mFileTimeLo = 0U;
  info[96].mFileTimeHi = 0U;
  info[97].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[97].name = "eml_xgeru";
  info[97].dominantType = "double";
  info[97].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgeru.m";
  info[97].fileTimeLo = 1299098374U;
  info[97].fileTimeHi = 0U;
  info[97].mFileTimeLo = 0U;
  info[97].mFileTimeHi = 0U;
  info[98].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgeru.m";
  info[98].name = "eml_blas_inline";
  info[98].dominantType = "";
  info[98].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[98].fileTimeLo = 1299098368U;
  info[98].fileTimeHi = 0U;
  info[98].mFileTimeLo = 0U;
  info[98].mFileTimeHi = 0U;
  info[99].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgeru.m";
  info[99].name = "eml_xger";
  info[99].dominantType = "double";
  info[99].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xger.m";
  info[99].fileTimeLo = 1299098374U;
  info[99].fileTimeHi = 0U;
  info[99].mFileTimeLo = 0U;
  info[99].mFileTimeHi = 0U;
  info[100].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xger.m";
  info[100].name = "eml_blas_inline";
  info[100].dominantType = "";
  info[100].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[100].fileTimeLo = 1299098368U;
  info[100].fileTimeHi = 0U;
  info[100].mFileTimeLo = 0U;
  info[100].mFileTimeHi = 0U;
  info[101].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m!below_threshold";
  info[101].name = "intmax";
  info[101].dominantType = "char";
  info[101].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[101].fileTimeLo = 1311276916U;
  info[101].fileTimeHi = 0U;
  info[101].mFileTimeLo = 0U;
  info[101].mFileTimeHi = 0U;
  info[102].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m!below_threshold";
  info[102].name = "min";
  info[102].dominantType = "double";
  info[102].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[102].fileTimeLo = 1311276918U;
  info[102].fileTimeHi = 0U;
  info[102].mFileTimeLo = 0U;
  info[102].mFileTimeHi = 0U;
  info[103].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[103].name = "eml_scalar_eg";
  info[103].dominantType = "double";
  info[103].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[103].fileTimeLo = 1286840396U;
  info[103].fileTimeHi = 0U;
  info[103].mFileTimeLo = 0U;
  info[103].mFileTimeHi = 0U;
  info[104].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[104].name = "eml_scalexp_alloc";
  info[104].dominantType = "double";
  info[104].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[104].fileTimeLo = 1352446460U;
  info[104].fileTimeHi = 0U;
  info[104].mFileTimeLo = 0U;
  info[104].mFileTimeHi = 0U;
  info[105].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_scalar_bin_extremum";
  info[105].name = "eml_scalar_eg";
  info[105].dominantType = "double";
  info[105].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[105].fileTimeLo = 1286840396U;
  info[105].fileTimeHi = 0U;
  info[105].mFileTimeLo = 0U;
  info[105].mFileTimeHi = 0U;
  info[106].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m!below_threshold";
  info[106].name = "mtimes";
  info[106].dominantType = "double";
  info[106].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[106].fileTimeLo = 1289541292U;
  info[106].fileTimeHi = 0U;
  info[106].mFileTimeLo = 0U;
  info[106].mFileTimeHi = 0U;
  info[107].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m";
  info[107].name = "eml_index_class";
  info[107].dominantType = "";
  info[107].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[107].fileTimeLo = 1323192178U;
  info[107].fileTimeHi = 0U;
  info[107].mFileTimeLo = 0U;
  info[107].mFileTimeHi = 0U;
  info[108].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m";
  info[108].name = "eml_refblas_xger";
  info[108].dominantType = "double";
  info[108].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xger.m";
  info[108].fileTimeLo = 1299098376U;
  info[108].fileTimeHi = 0U;
  info[108].mFileTimeLo = 0U;
  info[108].mFileTimeHi = 0U;
  info[109].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xger.m";
  info[109].name = "eml_refblas_xgerx";
  info[109].dominantType = "char";
  info[109].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[109].fileTimeLo = 1299098378U;
  info[109].fileTimeHi = 0U;
  info[109].mFileTimeLo = 0U;
  info[109].mFileTimeHi = 0U;
  info[110].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[110].name = "eml_index_class";
  info[110].dominantType = "";
  info[110].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[110].fileTimeLo = 1323192178U;
  info[110].fileTimeHi = 0U;
  info[110].mFileTimeLo = 0U;
  info[110].mFileTimeHi = 0U;
  info[111].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[111].name = "abs";
  info[111].dominantType = "coder.internal.indexInt";
  info[111].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[111].fileTimeLo = 1343851966U;
  info[111].fileTimeHi = 0U;
  info[111].mFileTimeLo = 0U;
  info[111].mFileTimeHi = 0U;
  info[112].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[112].name = "eml_index_minus";
  info[112].dominantType = "double";
  info[112].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[112].fileTimeLo = 1286840378U;
  info[112].fileTimeHi = 0U;
  info[112].mFileTimeLo = 0U;
  info[112].mFileTimeHi = 0U;
  info[113].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[113].name = "eml_int_forloop_overflow_check";
  info[113].dominantType = "";
  info[113].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[113].fileTimeLo = 1346531940U;
  info[113].fileTimeHi = 0U;
  info[113].mFileTimeLo = 0U;
  info[113].mFileTimeHi = 0U;
  info[114].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[114].name = "eml_index_plus";
  info[114].dominantType = "double";
  info[114].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[114].fileTimeLo = 1286840378U;
  info[114].fileTimeHi = 0U;
  info[114].mFileTimeLo = 0U;
  info[114].mFileTimeHi = 0U;
  info[115].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[115].name = "eml_index_plus";
  info[115].dominantType = "coder.internal.indexInt";
  info[115].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[115].fileTimeLo = 1286840378U;
  info[115].fileTimeHi = 0U;
  info[115].mFileTimeLo = 0U;
  info[115].mFileTimeHi = 0U;
  info[116].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!warn_singular";
  info[116].name = "eml_warning";
  info[116].dominantType = "char";
  info[116].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_warning.m";
  info[116].fileTimeLo = 1286840402U;
  info[116].fileTimeHi = 0U;
  info[116].mFileTimeLo = 0U;
  info[116].mFileTimeHi = 0U;
  info[117].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[117].name = "eml_scalar_eg";
  info[117].dominantType = "double";
  info[117].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[117].fileTimeLo = 1286840396U;
  info[117].fileTimeHi = 0U;
  info[117].mFileTimeLo = 0U;
  info[117].mFileTimeHi = 0U;
  info[118].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[118].name = "eml_int_forloop_overflow_check";
  info[118].dominantType = "";
  info[118].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[118].fileTimeLo = 1346531940U;
  info[118].fileTimeHi = 0U;
  info[118].mFileTimeLo = 0U;
  info[118].mFileTimeHi = 0U;
  info[119].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[119].name = "eml_xtrsm";
  info[119].dominantType = "char";
  info[119].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xtrsm.m";
  info[119].fileTimeLo = 1299098378U;
  info[119].fileTimeHi = 0U;
  info[119].mFileTimeLo = 0U;
  info[119].mFileTimeHi = 0U;
  info[120].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xtrsm.m";
  info[120].name = "eml_blas_inline";
  info[120].dominantType = "";
  info[120].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[120].fileTimeLo = 1299098368U;
  info[120].fileTimeHi = 0U;
  info[120].mFileTimeLo = 0U;
  info[120].mFileTimeHi = 0U;
  info[121].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m!below_threshold";
  info[121].name = "mtimes";
  info[121].dominantType = "double";
  info[121].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[121].fileTimeLo = 1289541292U;
  info[121].fileTimeHi = 0U;
  info[121].mFileTimeLo = 0U;
  info[121].mFileTimeHi = 0U;
  info[122].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m";
  info[122].name = "eml_index_class";
  info[122].dominantType = "";
  info[122].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[122].fileTimeLo = 1323192178U;
  info[122].fileTimeHi = 0U;
  info[122].mFileTimeLo = 0U;
  info[122].mFileTimeHi = 0U;
  info[123].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m";
  info[123].name = "eml_scalar_eg";
  info[123].dominantType = "double";
  info[123].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[123].fileTimeLo = 1286840396U;
  info[123].fileTimeHi = 0U;
  info[123].mFileTimeLo = 0U;
  info[123].mFileTimeHi = 0U;
  info[124].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m";
  info[124].name = "eml_refblas_xtrsm";
  info[124].dominantType = "char";
  info[124].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[124].fileTimeLo = 1299098386U;
  info[124].fileTimeHi = 0U;
  info[124].mFileTimeLo = 0U;
  info[124].mFileTimeHi = 0U;
  info[125].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[125].name = "eml_scalar_eg";
  info[125].dominantType = "double";
  info[125].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[125].fileTimeLo = 1286840396U;
  info[125].fileTimeHi = 0U;
  info[125].mFileTimeLo = 0U;
  info[125].mFileTimeHi = 0U;
  info[126].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[126].name = "eml_index_minus";
  info[126].dominantType = "double";
  info[126].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[126].fileTimeLo = 1286840378U;
  info[126].fileTimeHi = 0U;
  info[126].mFileTimeLo = 0U;
  info[126].mFileTimeHi = 0U;
  info[127].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[127].name = "eml_index_class";
  info[127].dominantType = "";
  info[127].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[127].fileTimeLo = 1323192178U;
  info[127].fileTimeHi = 0U;
  info[127].mFileTimeLo = 0U;
  info[127].mFileTimeHi = 0U;
}

static void c_emlrt_marshallIn(const mxArray *T, const char_T *identifier,
  emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  d_emlrt_marshallIn(emlrtAlias(T), &thisId, y);
  emlrtDestroyArray(&T);
}

static void c_info_helper(ResolvedFunctionInfo info[152])
{
  info[128].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[128].name = "eml_int_forloop_overflow_check";
  info[128].dominantType = "";
  info[128].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[128].fileTimeLo = 1346531940U;
  info[128].fileTimeHi = 0U;
  info[128].mFileTimeLo = 0U;
  info[128].mFileTimeHi = 0U;
  info[129].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[129].name = "eml_index_times";
  info[129].dominantType = "coder.internal.indexInt";
  info[129].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[129].fileTimeLo = 1286840380U;
  info[129].fileTimeHi = 0U;
  info[129].mFileTimeLo = 0U;
  info[129].mFileTimeHi = 0U;
  info[130].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[130].name = "eml_index_plus";
  info[130].dominantType = "coder.internal.indexInt";
  info[130].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[130].fileTimeLo = 1286840378U;
  info[130].fileTimeHi = 0U;
  info[130].mFileTimeLo = 0U;
  info[130].mFileTimeHi = 0U;
  info[131].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[131].name = "eml_index_plus";
  info[131].dominantType = "double";
  info[131].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[131].fileTimeLo = 1286840378U;
  info[131].fileTimeHi = 0U;
  info[131].mFileTimeLo = 0U;
  info[131].mFileTimeHi = 0U;
  info[132].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m!eml_int_forloop_overflow_check_helper";
  info[132].name = "intmin";
  info[132].dominantType = "char";
  info[132].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmin.m";
  info[132].fileTimeLo = 1311276918U;
  info[132].fileTimeHi = 0U;
  info[132].mFileTimeLo = 0U;
  info[132].mFileTimeHi = 0U;
  info[133].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[133].name = "eml_div";
  info[133].dominantType = "double";
  info[133].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_div.m";
  info[133].fileTimeLo = 1313369410U;
  info[133].fileTimeHi = 0U;
  info[133].mFileTimeLo = 0U;
  info[133].mFileTimeHi = 0U;
  info[134].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[134].name = "log2";
  info[134].dominantType = "double";
  info[134].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/log2.m";
  info[134].fileTimeLo = 1343851982U;
  info[134].fileTimeHi = 0U;
  info[134].mFileTimeLo = 0U;
  info[134].mFileTimeHi = 0U;
  info[135].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/log2.m!scalar_frexp";
  info[135].name = "isfinite";
  info[135].dominantType = "double";
  info[135].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[135].fileTimeLo = 1286840358U;
  info[135].fileTimeHi = 0U;
  info[135].mFileTimeLo = 0U;
  info[135].mFileTimeHi = 0U;
  info[136].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[136].name = "isinf";
  info[136].dominantType = "double";
  info[136].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isinf.m";
  info[136].fileTimeLo = 1286840360U;
  info[136].fileTimeHi = 0U;
  info[136].mFileTimeLo = 0U;
  info[136].mFileTimeHi = 0U;
  info[137].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[137].name = "isnan";
  info[137].dominantType = "double";
  info[137].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isnan.m";
  info[137].fileTimeLo = 1286840360U;
  info[137].fileTimeHi = 0U;
  info[137].mFileTimeLo = 0U;
  info[137].mFileTimeHi = 0U;
  info[138].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[138].name = "pow2";
  info[138].dominantType = "double";
  info[138].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/pow2.m";
  info[138].fileTimeLo = 1343851982U;
  info[138].fileTimeHi = 0U;
  info[138].mFileTimeLo = 0U;
  info[138].mFileTimeHi = 0U;
  info[139].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/pow2.m";
  info[139].name = "eml_scalar_pow2";
  info[139].dominantType = "double";
  info[139].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_pow2.m";
  info[139].fileTimeLo = 1286840332U;
  info[139].fileTimeHi = 0U;
  info[139].mFileTimeLo = 0U;
  info[139].mFileTimeHi = 0U;
  info[140].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_pow2.m";
  info[140].name = "power";
  info[140].dominantType = "double";
  info[140].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m";
  info[140].fileTimeLo = 1348213530U;
  info[140].fileTimeHi = 0U;
  info[140].mFileTimeLo = 0U;
  info[140].mFileTimeHi = 0U;
  info[141].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[141].name = "eml_scalar_eg";
  info[141].dominantType = "double";
  info[141].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[141].fileTimeLo = 1286840396U;
  info[141].fileTimeHi = 0U;
  info[141].mFileTimeLo = 0U;
  info[141].mFileTimeHi = 0U;
  info[142].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[142].name = "eml_scalexp_alloc";
  info[142].dominantType = "double";
  info[142].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[142].fileTimeLo = 1352446460U;
  info[142].fileTimeHi = 0U;
  info[142].mFileTimeLo = 0U;
  info[142].mFileTimeHi = 0U;
  info[143].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[143].name = "floor";
  info[143].dominantType = "double";
  info[143].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[143].fileTimeLo = 1343851980U;
  info[143].fileTimeHi = 0U;
  info[143].mFileTimeLo = 0U;
  info[143].mFileTimeHi = 0U;
  info[144].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[144].name = "eml_error";
  info[144].dominantType = "char";
  info[144].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_error.m";
  info[144].fileTimeLo = 1343851958U;
  info[144].fileTimeHi = 0U;
  info[144].mFileTimeLo = 0U;
  info[144].mFileTimeHi = 0U;
  info[145].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!scalar_float_power";
  info[145].name = "eml_scalar_eg";
  info[145].dominantType = "double";
  info[145].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[145].fileTimeLo = 1286840396U;
  info[145].fileTimeHi = 0U;
  info[145].mFileTimeLo = 0U;
  info[145].mFileTimeHi = 0U;
  info[146].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[146].name = "eml_div";
  info[146].dominantType = "double";
  info[146].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_div.m";
  info[146].fileTimeLo = 1313369410U;
  info[146].fileTimeHi = 0U;
  info[146].mFileTimeLo = 0U;
  info[146].mFileTimeHi = 0U;
  info[147].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[147].name = "mtimes";
  info[147].dominantType = "double";
  info[147].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[147].fileTimeLo = 1289541292U;
  info[147].fileTimeHi = 0U;
  info[147].mFileTimeLo = 0U;
  info[147].mFileTimeHi = 0U;
  info[148].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m";
  info[148].name = "mpower";
  info[148].dominantType = "double";
  info[148].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mpower.m";
  info[148].fileTimeLo = 1286840442U;
  info[148].fileTimeHi = 0U;
  info[148].mFileTimeLo = 0U;
  info[148].mFileTimeHi = 0U;
  info[149].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mpower.m";
  info[149].name = "power";
  info[149].dominantType = "double";
  info[149].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m";
  info[149].fileTimeLo = 1348213530U;
  info[149].fileTimeHi = 0U;
  info[149].mFileTimeLo = 0U;
  info[149].mFileTimeHi = 0U;
  info[150].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m";
  info[150].name = "abs";
  info[150].dominantType = "double";
  info[150].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[150].fileTimeLo = 1343851966U;
  info[150].fileTimeHi = 0U;
  info[150].mFileTimeLo = 0U;
  info[150].mFileTimeHi = 0U;
  info[151].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!scalar_float_power";
  info[151].name = "mtimes";
  info[151].dominantType = "double";
  info[151].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[151].fileTimeLo = 1289541292U;
  info[151].fileTimeHi = 0U;
  info[151].mFileTimeLo = 0U;
  info[151].mFileTimeHi = 0U;
}

static void d_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y)
{
  l_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
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

static const mxArray *emlrt_marshallOut(ResolvedFunctionInfo u[152])
{
  const mxArray *y;
  int32_T iv4[1];
  int32_T i4;
  ResolvedFunctionInfo *r3;
  const char * b_u;
  const mxArray *b_y;
  const mxArray *m3;
  const mxArray *c_y;
  const mxArray *d_y;
  const mxArray *e_y;
  uint32_T c_u;
  const mxArray *f_y;
  const mxArray *g_y;
  const mxArray *h_y;
  const mxArray *i_y;
  y = NULL;
  iv4[0] = 152;
  emlrtAssign(&y, mxCreateStructArray(1, iv4, 0, NULL));
  for (i4 = 0; i4 < 152; i4++) {
    r3 = &u[i4];
    b_u = r3->context;
    b_y = NULL;
    m3 = mxCreateString(b_u);
    emlrtAssign(&b_y, m3);
    emlrtAddField(y, b_y, "context", i4);
    b_u = r3->name;
    c_y = NULL;
    m3 = mxCreateString(b_u);
    emlrtAssign(&c_y, m3);
    emlrtAddField(y, c_y, "name", i4);
    b_u = r3->dominantType;
    d_y = NULL;
    m3 = mxCreateString(b_u);
    emlrtAssign(&d_y, m3);
    emlrtAddField(y, d_y, "dominantType", i4);
    b_u = r3->resolved;
    e_y = NULL;
    m3 = mxCreateString(b_u);
    emlrtAssign(&e_y, m3);
    emlrtAddField(y, e_y, "resolved", i4);
    c_u = r3->fileTimeLo;
    f_y = NULL;
    m3 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m3) = c_u;
    emlrtAssign(&f_y, m3);
    emlrtAddField(y, f_y, "fileTimeLo", i4);
    c_u = r3->fileTimeHi;
    g_y = NULL;
    m3 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m3) = c_u;
    emlrtAssign(&g_y, m3);
    emlrtAddField(y, g_y, "fileTimeHi", i4);
    c_u = r3->mFileTimeLo;
    h_y = NULL;
    m3 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m3) = c_u;
    emlrtAssign(&h_y, m3);
    emlrtAddField(y, h_y, "mFileTimeLo", i4);
    c_u = r3->mFileTimeHi;
    i_y = NULL;
    m3 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m3) = c_u;
    emlrtAssign(&i_y, m3);
    emlrtAddField(y, i_y, "mFileTimeHi", i4);
  }

  return y;
}

static void info_helper(ResolvedFunctionInfo info[152])
{
  info[0].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m";
  info[0].name = "length";
  info[0].dominantType = "double";
  info[0].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/length.m";
  info[0].fileTimeLo = 1303167806U;
  info[0].fileTimeHi = 0U;
  info[0].mFileTimeLo = 0U;
  info[0].mFileTimeHi = 0U;
  info[1].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m";
  info[1].name = "eml_li_find";
  info[1].dominantType = "";
  info[1].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[1].fileTimeLo = 1286840386U;
  info[1].fileTimeHi = 0U;
  info[1].mFileTimeLo = 0U;
  info[1].mFileTimeHi = 0U;
  info[2].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[2].name = "eml_index_class";
  info[2].dominantType = "";
  info[2].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[2].fileTimeLo = 1323192178U;
  info[2].fileTimeHi = 0U;
  info[2].mFileTimeLo = 0U;
  info[2].mFileTimeHi = 0U;
  info[3].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m!compute_nones";
  info[3].name = "eml_index_class";
  info[3].dominantType = "";
  info[3].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[3].fileTimeLo = 1323192178U;
  info[3].fileTimeHi = 0U;
  info[3].mFileTimeLo = 0U;
  info[3].mFileTimeHi = 0U;
  info[4].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m!compute_nones";
  info[4].name = "eml_int_forloop_overflow_check";
  info[4].dominantType = "";
  info[4].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[4].fileTimeLo = 1346531940U;
  info[4].fileTimeHi = 0U;
  info[4].mFileTimeLo = 0U;
  info[4].mFileTimeHi = 0U;
  info[5].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m!eml_int_forloop_overflow_check_helper";
  info[5].name = "intmax";
  info[5].dominantType = "char";
  info[5].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[5].fileTimeLo = 1311276916U;
  info[5].fileTimeHi = 0U;
  info[5].mFileTimeLo = 0U;
  info[5].mFileTimeHi = 0U;
  info[6].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m!compute_nones";
  info[6].name = "eml_index_plus";
  info[6].dominantType = "double";
  info[6].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[6].fileTimeLo = 1286840378U;
  info[6].fileTimeHi = 0U;
  info[6].mFileTimeLo = 0U;
  info[6].mFileTimeHi = 0U;
  info[7].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[7].name = "eml_index_class";
  info[7].dominantType = "";
  info[7].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[7].fileTimeLo = 1323192178U;
  info[7].fileTimeHi = 0U;
  info[7].mFileTimeLo = 0U;
  info[7].mFileTimeHi = 0U;
  info[8].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[8].name = "eml_int_forloop_overflow_check";
  info[8].dominantType = "";
  info[8].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[8].fileTimeLo = 1346531940U;
  info[8].fileTimeHi = 0U;
  info[8].mFileTimeLo = 0U;
  info[8].mFileTimeHi = 0U;
  info[9].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[9].name = "eml_index_plus";
  info[9].dominantType = "double";
  info[9].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[9].fileTimeLo = 1286840378U;
  info[9].fileTimeHi = 0U;
  info[9].mFileTimeLo = 0U;
  info[9].mFileTimeHi = 0U;
  info[10].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/naivePerfusionSSEcalP2X7.m";
  info[10].name = "linearODESSEcalP2X7";
  info[10].dominantType = "double";
  info[10].resolved =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m";
  info[10].fileTimeLo = 1401122974U;
  info[10].fileTimeHi = 0U;
  info[10].mFileTimeLo = 0U;
  info[10].mFileTimeHi = 0U;
  info[11].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m";
  info[11].name = "generatorMatrixcalP2X7";
  info[11].dominantType = "";
  info[11].resolved =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/generatorMatrixcalP2X7.m";
  info[11].fileTimeLo = 1401122974U;
  info[11].fileTimeHi = 0U;
  info[11].mFileTimeLo = 0U;
  info[11].mFileTimeHi = 0U;
  info[12].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/generatorMatrixcalP2X7.m";
  info[12].name = "mtimes";
  info[12].dominantType = "double";
  info[12].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[12].fileTimeLo = 1289541292U;
  info[12].fileTimeHi = 0U;
  info[12].mFileTimeLo = 0U;
  info[12].mFileTimeHi = 0U;
  info[13].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m";
  info[13].name = "length";
  info[13].dominantType = "double";
  info[13].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/length.m";
  info[13].fileTimeLo = 1303167806U;
  info[13].fileTimeHi = 0U;
  info[13].mFileTimeLo = 0U;
  info[13].mFileTimeHi = 0U;
  info[14].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m";
  info[14].name = "mtimes";
  info[14].dominantType = "double";
  info[14].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[14].fileTimeLo = 1289541292U;
  info[14].fileTimeHi = 0U;
  info[14].mFileTimeLo = 0U;
  info[14].mFileTimeHi = 0U;
  info[15].context =
    "[E]/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m";
  info[15].name = "expm";
  info[15].dominantType = "double";
  info[15].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[15].fileTimeLo = 1286840424U;
  info[15].fileTimeHi = 0U;
  info[15].mFileTimeLo = 0U;
  info[15].mFileTimeHi = 0U;
  info[16].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[16].name = "norm";
  info[16].dominantType = "double";
  info[16].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m";
  info[16].fileTimeLo = 1336543694U;
  info[16].fileTimeHi = 0U;
  info[16].mFileTimeLo = 0U;
  info[16].mFileTimeHi = 0U;
  info[17].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m!mat1norm";
  info[17].name = "abs";
  info[17].dominantType = "double";
  info[17].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[17].fileTimeLo = 1343851966U;
  info[17].fileTimeHi = 0U;
  info[17].mFileTimeLo = 0U;
  info[17].mFileTimeHi = 0U;
  info[18].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[18].name = "eml_scalar_abs";
  info[18].dominantType = "double";
  info[18].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_abs.m";
  info[18].fileTimeLo = 1286840312U;
  info[18].fileTimeHi = 0U;
  info[18].mFileTimeLo = 0U;
  info[18].mFileTimeHi = 0U;
  info[19].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m!mat1norm";
  info[19].name = "isnan";
  info[19].dominantType = "double";
  info[19].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isnan.m";
  info[19].fileTimeLo = 1286840360U;
  info[19].fileTimeHi = 0U;
  info[19].mFileTimeLo = 0U;
  info[19].mFileTimeHi = 0U;
  info[20].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m!mat1norm";
  info[20].name = "eml_guarded_nan";
  info[20].dominantType = "char";
  info[20].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_guarded_nan.m";
  info[20].fileTimeLo = 1286840376U;
  info[20].fileTimeHi = 0U;
  info[20].mFileTimeLo = 0U;
  info[20].mFileTimeHi = 0U;
  info[21].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_guarded_nan.m";
  info[21].name = "eml_is_float_class";
  info[21].dominantType = "char";
  info[21].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_is_float_class.m";
  info[21].fileTimeLo = 1286840382U;
  info[21].fileTimeHi = 0U;
  info[21].mFileTimeLo = 0U;
  info[21].mFileTimeHi = 0U;
  info[22].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m!PadeApproximantOfDegree";
  info[22].name = "mtimes";
  info[22].dominantType = "double";
  info[22].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[22].fileTimeLo = 1289541292U;
  info[22].fileTimeHi = 0U;
  info[22].mFileTimeLo = 0U;
  info[22].mFileTimeHi = 0U;
  info[23].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[23].name = "eml_index_class";
  info[23].dominantType = "";
  info[23].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[23].fileTimeLo = 1323192178U;
  info[23].fileTimeHi = 0U;
  info[23].mFileTimeLo = 0U;
  info[23].mFileTimeHi = 0U;
  info[24].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[24].name = "eml_scalar_eg";
  info[24].dominantType = "double";
  info[24].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[24].fileTimeLo = 1286840396U;
  info[24].fileTimeHi = 0U;
  info[24].mFileTimeLo = 0U;
  info[24].mFileTimeHi = 0U;
  info[25].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[25].name = "eml_xgemm";
  info[25].dominantType = "char";
  info[25].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m";
  info[25].fileTimeLo = 1299098372U;
  info[25].fileTimeHi = 0U;
  info[25].mFileTimeLo = 0U;
  info[25].mFileTimeHi = 0U;
  info[26].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m";
  info[26].name = "eml_blas_inline";
  info[26].dominantType = "";
  info[26].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[26].fileTimeLo = 1299098368U;
  info[26].fileTimeHi = 0U;
  info[26].mFileTimeLo = 0U;
  info[26].mFileTimeHi = 0U;
  info[27].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m!below_threshold";
  info[27].name = "mtimes";
  info[27].dominantType = "double";
  info[27].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[27].fileTimeLo = 1289541292U;
  info[27].fileTimeHi = 0U;
  info[27].mFileTimeLo = 0U;
  info[27].mFileTimeHi = 0U;
  info[28].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m";
  info[28].name = "eml_index_class";
  info[28].dominantType = "";
  info[28].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[28].fileTimeLo = 1323192178U;
  info[28].fileTimeHi = 0U;
  info[28].mFileTimeLo = 0U;
  info[28].mFileTimeHi = 0U;
  info[29].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m";
  info[29].name = "eml_scalar_eg";
  info[29].dominantType = "double";
  info[29].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[29].fileTimeLo = 1286840396U;
  info[29].fileTimeHi = 0U;
  info[29].mFileTimeLo = 0U;
  info[29].mFileTimeHi = 0U;
  info[30].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m";
  info[30].name = "eml_refblas_xgemm";
  info[30].dominantType = "char";
  info[30].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgemm.m";
  info[30].fileTimeLo = 1299098374U;
  info[30].fileTimeHi = 0U;
  info[30].mFileTimeLo = 0U;
  info[30].mFileTimeHi = 0U;
  info[31].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m!PadeApproximantOfDegree";
  info[31].name = "mldivide";
  info[31].dominantType = "double";
  info[31].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mldivide.p";
  info[31].fileTimeLo = 1357973148U;
  info[31].fileTimeHi = 0U;
  info[31].mFileTimeLo = 1319751566U;
  info[31].mFileTimeHi = 0U;
  info[32].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mldivide.p";
  info[32].name = "eml_lusolve";
  info[32].dominantType = "double";
  info[32].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m";
  info[32].fileTimeLo = 1309472796U;
  info[32].fileTimeHi = 0U;
  info[32].mFileTimeLo = 0U;
  info[32].mFileTimeHi = 0U;
  info[33].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m";
  info[33].name = "eml_index_class";
  info[33].dominantType = "";
  info[33].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[33].fileTimeLo = 1323192178U;
  info[33].fileTimeHi = 0U;
  info[33].mFileTimeLo = 0U;
  info[33].mFileTimeHi = 0U;
  info[34].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[34].name = "eml_index_class";
  info[34].dominantType = "";
  info[34].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[34].fileTimeLo = 1323192178U;
  info[34].fileTimeHi = 0U;
  info[34].mFileTimeLo = 0U;
  info[34].mFileTimeHi = 0U;
  info[35].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[35].name = "eml_xgetrf";
  info[35].dominantType = "double";
  info[35].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/eml_xgetrf.m";
  info[35].fileTimeLo = 1286840406U;
  info[35].fileTimeHi = 0U;
  info[35].mFileTimeLo = 0U;
  info[35].mFileTimeHi = 0U;
  info[36].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/eml_xgetrf.m";
  info[36].name = "eml_lapack_xgetrf";
  info[36].dominantType = "double";
  info[36].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/internal/eml_lapack_xgetrf.m";
  info[36].fileTimeLo = 1286840410U;
  info[36].fileTimeHi = 0U;
  info[36].mFileTimeLo = 0U;
  info[36].mFileTimeHi = 0U;
  info[37].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/internal/eml_lapack_xgetrf.m";
  info[37].name = "eml_matlab_zgetrf";
  info[37].dominantType = "double";
  info[37].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[37].fileTimeLo = 1302710594U;
  info[37].fileTimeHi = 0U;
  info[37].mFileTimeLo = 0U;
  info[37].mFileTimeHi = 0U;
  info[38].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[38].name = "realmin";
  info[38].dominantType = "char";
  info[38].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/realmin.m";
  info[38].fileTimeLo = 1307672842U;
  info[38].fileTimeHi = 0U;
  info[38].mFileTimeLo = 0U;
  info[38].mFileTimeHi = 0U;
  info[39].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/realmin.m";
  info[39].name = "eml_realmin";
  info[39].dominantType = "char";
  info[39].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmin.m";
  info[39].fileTimeLo = 1307672844U;
  info[39].fileTimeHi = 0U;
  info[39].mFileTimeLo = 0U;
  info[39].mFileTimeHi = 0U;
  info[40].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmin.m";
  info[40].name = "eml_float_model";
  info[40].dominantType = "char";
  info[40].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_float_model.m";
  info[40].fileTimeLo = 1326749596U;
  info[40].fileTimeHi = 0U;
  info[40].mFileTimeLo = 0U;
  info[40].mFileTimeHi = 0U;
  info[41].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[41].name = "eps";
  info[41].dominantType = "char";
  info[41].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[41].fileTimeLo = 1326749596U;
  info[41].fileTimeHi = 0U;
  info[41].mFileTimeLo = 0U;
  info[41].mFileTimeHi = 0U;
  info[42].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[42].name = "eml_is_float_class";
  info[42].dominantType = "char";
  info[42].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_is_float_class.m";
  info[42].fileTimeLo = 1286840382U;
  info[42].fileTimeHi = 0U;
  info[42].mFileTimeLo = 0U;
  info[42].mFileTimeHi = 0U;
  info[43].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[43].name = "eml_eps";
  info[43].dominantType = "char";
  info[43].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_eps.m";
  info[43].fileTimeLo = 1326749596U;
  info[43].fileTimeHi = 0U;
  info[43].mFileTimeLo = 0U;
  info[43].mFileTimeHi = 0U;
  info[44].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_eps.m";
  info[44].name = "eml_float_model";
  info[44].dominantType = "char";
  info[44].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_float_model.m";
  info[44].fileTimeLo = 1326749596U;
  info[44].fileTimeHi = 0U;
  info[44].mFileTimeLo = 0U;
  info[44].mFileTimeHi = 0U;
  info[45].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[45].name = "min";
  info[45].dominantType = "coder.internal.indexInt";
  info[45].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[45].fileTimeLo = 1311276918U;
  info[45].fileTimeHi = 0U;
  info[45].mFileTimeLo = 0U;
  info[45].mFileTimeHi = 0U;
  info[46].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[46].name = "eml_min_or_max";
  info[46].dominantType = "char";
  info[46].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m";
  info[46].fileTimeLo = 1334093090U;
  info[46].fileTimeHi = 0U;
  info[46].mFileTimeLo = 0U;
  info[46].mFileTimeHi = 0U;
  info[47].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[47].name = "eml_scalar_eg";
  info[47].dominantType = "coder.internal.indexInt";
  info[47].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[47].fileTimeLo = 1286840396U;
  info[47].fileTimeHi = 0U;
  info[47].mFileTimeLo = 0U;
  info[47].mFileTimeHi = 0U;
  info[48].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[48].name = "eml_scalexp_alloc";
  info[48].dominantType = "coder.internal.indexInt";
  info[48].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[48].fileTimeLo = 1352446460U;
  info[48].fileTimeHi = 0U;
  info[48].mFileTimeLo = 0U;
  info[48].mFileTimeHi = 0U;
  info[49].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[49].name = "eml_index_class";
  info[49].dominantType = "";
  info[49].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[49].fileTimeLo = 1323192178U;
  info[49].fileTimeHi = 0U;
  info[49].mFileTimeLo = 0U;
  info[49].mFileTimeHi = 0U;
  info[50].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_scalar_bin_extremum";
  info[50].name = "eml_scalar_eg";
  info[50].dominantType = "coder.internal.indexInt";
  info[50].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[50].fileTimeLo = 1286840396U;
  info[50].fileTimeHi = 0U;
  info[50].mFileTimeLo = 0U;
  info[50].mFileTimeHi = 0U;
  info[51].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[51].name = "colon";
  info[51].dominantType = "double";
  info[51].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[51].fileTimeLo = 1348213528U;
  info[51].fileTimeHi = 0U;
  info[51].mFileTimeLo = 0U;
  info[51].mFileTimeHi = 0U;
  info[52].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[52].name = "colon";
  info[52].dominantType = "double";
  info[52].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[52].fileTimeLo = 1348213528U;
  info[52].fileTimeHi = 0U;
  info[52].mFileTimeLo = 0U;
  info[52].mFileTimeHi = 0U;
  info[53].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[53].name = "floor";
  info[53].dominantType = "double";
  info[53].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[53].fileTimeLo = 1343851980U;
  info[53].fileTimeHi = 0U;
  info[53].mFileTimeLo = 0U;
  info[53].mFileTimeHi = 0U;
  info[54].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[54].name = "eml_scalar_floor";
  info[54].dominantType = "double";
  info[54].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_floor.m";
  info[54].fileTimeLo = 1286840326U;
  info[54].fileTimeHi = 0U;
  info[54].mFileTimeLo = 0U;
  info[54].mFileTimeHi = 0U;
  info[55].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!checkrange";
  info[55].name = "intmin";
  info[55].dominantType = "char";
  info[55].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmin.m";
  info[55].fileTimeLo = 1311276918U;
  info[55].fileTimeHi = 0U;
  info[55].mFileTimeLo = 0U;
  info[55].mFileTimeHi = 0U;
  info[56].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!checkrange";
  info[56].name = "intmax";
  info[56].dominantType = "char";
  info[56].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[56].fileTimeLo = 1311276916U;
  info[56].fileTimeHi = 0U;
  info[56].mFileTimeLo = 0U;
  info[56].mFileTimeHi = 0U;
  info[57].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_integer_colon_dispatcher";
  info[57].name = "intmin";
  info[57].dominantType = "char";
  info[57].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmin.m";
  info[57].fileTimeLo = 1311276918U;
  info[57].fileTimeHi = 0U;
  info[57].mFileTimeLo = 0U;
  info[57].mFileTimeHi = 0U;
  info[58].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_integer_colon_dispatcher";
  info[58].name = "intmax";
  info[58].dominantType = "char";
  info[58].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[58].fileTimeLo = 1311276916U;
  info[58].fileTimeHi = 0U;
  info[58].mFileTimeLo = 0U;
  info[58].mFileTimeHi = 0U;
  info[59].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_integer_colon_dispatcher";
  info[59].name = "eml_isa_uint";
  info[59].dominantType = "coder.internal.indexInt";
  info[59].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_isa_uint.m";
  info[59].fileTimeLo = 1286840384U;
  info[59].fileTimeHi = 0U;
  info[59].mFileTimeLo = 0U;
  info[59].mFileTimeHi = 0U;
  info[60].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[60].name = "eml_unsigned_class";
  info[60].dominantType = "char";
  info[60].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_unsigned_class.m";
  info[60].fileTimeLo = 1323192180U;
  info[60].fileTimeHi = 0U;
  info[60].mFileTimeLo = 0U;
  info[60].mFileTimeHi = 0U;
  info[61].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_unsigned_class.m";
  info[61].name = "eml_index_class";
  info[61].dominantType = "";
  info[61].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[61].fileTimeLo = 1323192178U;
  info[61].fileTimeHi = 0U;
  info[61].mFileTimeLo = 0U;
  info[61].mFileTimeHi = 0U;
  info[62].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[62].name = "eml_index_class";
  info[62].dominantType = "";
  info[62].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[62].fileTimeLo = 1323192178U;
  info[62].fileTimeHi = 0U;
  info[62].mFileTimeLo = 0U;
  info[62].mFileTimeHi = 0U;
  info[63].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[63].name = "intmax";
  info[63].dominantType = "char";
  info[63].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[63].fileTimeLo = 1311276916U;
  info[63].fileTimeHi = 0U;
  info[63].mFileTimeLo = 0U;
  info[63].mFileTimeHi = 0U;
}

static void k_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret)
{
  int32_T iv7[2];
  boolean_T bv0[2];
  int32_T i5;
  static const boolean_T bv1[2] = { FALSE, TRUE };

  int32_T iv8[2];
  for (i5 = 0; i5 < 2; i5++) {
    iv7[i5] = 1 + -2 * i5;
    bv0[i5] = bv1[i5];
  }

  emlrtCheckVsBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 2U,
    iv7, bv0, iv8);
  ret->size[0] = iv8[0];
  ret->size[1] = iv8[1];
  ret->allocatedSize = ret->size[0] * ret->size[1];
  ret->data = (real_T *)mxGetData(src);
  ret->canFreeData = FALSE;
  emlrtDestroyArray(&src);
}

static void l_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret)
{
  int32_T iv9[1];
  boolean_T bv2[1];
  int32_T iv10[1];
  iv9[0] = -1;
  bv2[0] = TRUE;
  emlrtCheckVsBuiltInR2012b(emlrtRootTLSGlobal, msgId, src, "double", FALSE, 1U,
    iv9, bv2, iv10);
  ret->size[0] = iv10[0];
  ret->allocatedSize = ret->size[0];
  ret->data = (real_T *)mxGetData(src);
  ret->canFreeData = FALSE;
  emlrtDestroyArray(&src);
}

const mxArray *emlrtMexFcnResolvedFunctionsInfo(void)
{
  const mxArray *nameCaptureInfo;
  ResolvedFunctionInfo info[152];
  nameCaptureInfo = NULL;
  info_helper(info);
  b_info_helper(info);
  c_info_helper(info);
  emlrtAssign(&nameCaptureInfo, emlrt_marshallOut(info));
  emlrtNameCapturePostProcessR2012a(emlrtAlias(nameCaptureInfo));
  return nameCaptureInfo;
}

void naivePerfusionSSEcalP2X7_api(const mxArray *prhs[5], const mxArray *plhs[1])
{
  emxArray_real_T *ton;
  emxArray_real_T *toff;
  emxArray_real_T *Ttot;
  emxArray_real_T *T;
  emxArray_real_T *I;
  const mxArray *tmp;
  real_T b_error;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);
  b_emxInit_real_T(&ton, 2, &e_emlrtRTEI, TRUE);
  b_emxInit_real_T(&toff, 2, &e_emlrtRTEI, TRUE);
  b_emxInit_real_T(&Ttot, 2, &e_emlrtRTEI, TRUE);
  emxInit_real_T(&T, 1, &e_emlrtRTEI, TRUE);
  emxInit_real_T(&I, 1, &e_emlrtRTEI, TRUE);
  prhs[0] = emlrtProtectR2012b(prhs[0], 0, FALSE, -1);

  /* Marshall function inputs */
  emlrt_marshallIn(emlrtAlias(prhs[0]), "ton", ton);
  emlrt_marshallIn(emlrtAlias(prhs[1]), "toff", toff);
  emlrt_marshallIn(emlrtAlias(prhs[2]), "Ttot", Ttot);
  c_emlrt_marshallIn(emlrtAlias(prhs[3]), "T", T);
  c_emlrt_marshallIn(emlrtAlias(prhs[4]), "I", I);

  /* Marshall in global variables */
  tmp = mexGetVariable("global", "p0");
  if (tmp) {
    e_emlrt_marshallIn(tmp, "p0", p0);
    p0_dirty = 0U;
  }

  tmp = mexGetVariable("global", "err");
  if (tmp) {
    err = g_emlrt_marshallIn(tmp, "err");
    err_dirty = 0U;
  }

  tmp = mexGetVariable("global", "A");
  if (tmp) {
    A = g_emlrt_marshallIn(tmp, "A");
    A_dirty = 0U;
  }

  tmp = mexGetVariable("global", "ATP");
  if (tmp) {
    ATP = g_emlrt_marshallIn(tmp, "ATP");
    ATP_dirty = 0U;
  }

  tmp = mexGetVariable("global", "Q");
  if (tmp) {
    i_emlrt_marshallIn(tmp, "Q", Q);
    Q_dirty = 0U;
  }

  tmp = mexGetVariable("global", "Acell");
  if (tmp) {
    Acell = g_emlrt_marshallIn(tmp, "Acell");
    Acell_dirty = 0U;
  }

  tmp = mexGetVariable("global", "g12");
  if (tmp) {
    g12 = g_emlrt_marshallIn(tmp, "g12");
    g12_dirty = 0U;
  }

  tmp = mexGetVariable("global", "V");
  if (tmp) {
    V = g_emlrt_marshallIn(tmp, "V");
    V_dirty = 0U;
  }

  tmp = mexGetVariable("global", "E12");
  if (tmp) {
    E12 = g_emlrt_marshallIn(tmp, "E12");
    E12_dirty = 0U;
  }

  tmp = mexGetVariable("global", "g34");
  if (tmp) {
    g34 = g_emlrt_marshallIn(tmp, "g34");
    g34_dirty = 0U;
  }

  tmp = mexGetVariable("global", "E34");
  if (tmp) {
    E34 = g_emlrt_marshallIn(tmp, "E34");
    E34_dirty = 0U;
  }

  tmp = mexGetVariable("global", "kca");
  if (tmp) {
    kca = g_emlrt_marshallIn(tmp, "kca");
    kca_dirty = 0U;
  }

  tmp = mexGetVariable("global", "C");
  if (tmp) {
    C = g_emlrt_marshallIn(tmp, "C");
    C_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k2");
  if (tmp) {
    k2 = g_emlrt_marshallIn(tmp, "k2");
    k2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k1");
  if (tmp) {
    k1 = g_emlrt_marshallIn(tmp, "k1");
    k1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k4");
  if (tmp) {
    k4 = g_emlrt_marshallIn(tmp, "k4");
    k4_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H3");
  if (tmp) {
    H3 = g_emlrt_marshallIn(tmp, "H3");
    H3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L1");
  if (tmp) {
    L1 = g_emlrt_marshallIn(tmp, "L1");
    L1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k3");
  if (tmp) {
    k3 = g_emlrt_marshallIn(tmp, "k3");
    k3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k6");
  if (tmp) {
    k6 = g_emlrt_marshallIn(tmp, "k6");
    k6_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H5");
  if (tmp) {
    H5 = g_emlrt_marshallIn(tmp, "H5");
    H5_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k5");
  if (tmp) {
    k5 = g_emlrt_marshallIn(tmp, "k5");
    k5_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L3");
  if (tmp) {
    L3 = g_emlrt_marshallIn(tmp, "L3");
    L3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H7");
  if (tmp) {
    H7 = g_emlrt_marshallIn(tmp, "H7");
    H7_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L2");
  if (tmp) {
    L2 = g_emlrt_marshallIn(tmp, "L2");
    L2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H1");
  if (tmp) {
    H1 = g_emlrt_marshallIn(tmp, "H1");
    H1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H2");
  if (tmp) {
    H2 = g_emlrt_marshallIn(tmp, "H2");
    H2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H4");
  if (tmp) {
    H4 = g_emlrt_marshallIn(tmp, "H4");
    H4_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H6");
  if (tmp) {
    H6 = g_emlrt_marshallIn(tmp, "H6");
    H6_dirty = 0U;
  }

  tmp = mexGetVariable("global", "koff");
  if (tmp) {
    koff = g_emlrt_marshallIn(tmp, "koff");
    koff_dirty = 0U;
  }

  tmp = mexGetVariable("global", "r2");
  if (tmp) {
    r2 = g_emlrt_marshallIn(tmp, "r2");
    r2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "r1");
  if (tmp) {
    r1 = g_emlrt_marshallIn(tmp, "r1");
    r1_dirty = 0U;
  }

  /* Invoke the target function */
  b_error = naivePerfusionSSEcalP2X7(ton, toff, Ttot, T, I);

  /* Marshall out global variables */
  mexPutVariable("global", "p0", b_emlrt_marshallOut(p0));
  mexPutVariable("global", "err", c_emlrt_marshallOut(err));
  mexPutVariable("global", "A", c_emlrt_marshallOut(A));
  mexPutVariable("global", "ATP", c_emlrt_marshallOut(ATP));
  mexPutVariable("global", "Q", d_emlrt_marshallOut(Q));
  mexPutVariable("global", "Acell", c_emlrt_marshallOut(Acell));
  mexPutVariable("global", "g12", c_emlrt_marshallOut(g12));
  mexPutVariable("global", "V", c_emlrt_marshallOut(V));
  mexPutVariable("global", "E12", c_emlrt_marshallOut(E12));
  mexPutVariable("global", "g34", c_emlrt_marshallOut(g34));
  mexPutVariable("global", "E34", c_emlrt_marshallOut(E34));
  mexPutVariable("global", "kca", c_emlrt_marshallOut(kca));
  mexPutVariable("global", "C", c_emlrt_marshallOut(C));
  mexPutVariable("global", "k2", c_emlrt_marshallOut(k2));
  mexPutVariable("global", "k1", c_emlrt_marshallOut(k1));
  mexPutVariable("global", "k4", c_emlrt_marshallOut(k4));
  mexPutVariable("global", "H3", c_emlrt_marshallOut(H3));
  mexPutVariable("global", "L1", c_emlrt_marshallOut(L1));
  mexPutVariable("global", "k3", c_emlrt_marshallOut(k3));
  mexPutVariable("global", "k6", c_emlrt_marshallOut(k6));
  mexPutVariable("global", "H5", c_emlrt_marshallOut(H5));
  mexPutVariable("global", "k5", c_emlrt_marshallOut(k5));
  mexPutVariable("global", "L3", c_emlrt_marshallOut(L3));
  mexPutVariable("global", "H7", c_emlrt_marshallOut(H7));
  mexPutVariable("global", "L2", c_emlrt_marshallOut(L2));
  mexPutVariable("global", "H1", c_emlrt_marshallOut(H1));
  mexPutVariable("global", "H2", c_emlrt_marshallOut(H2));
  mexPutVariable("global", "H4", c_emlrt_marshallOut(H4));
  mexPutVariable("global", "H6", c_emlrt_marshallOut(H6));
  mexPutVariable("global", "koff", c_emlrt_marshallOut(koff));
  mexPutVariable("global", "r2", c_emlrt_marshallOut(r2));
  mexPutVariable("global", "r1", c_emlrt_marshallOut(r1));

  /* Marshall function outputs */
  plhs[0] = c_emlrt_marshallOut(b_error);
  I->canFreeData = FALSE;
  emxFree_real_T(&I);
  T->canFreeData = FALSE;
  emxFree_real_T(&T);
  Ttot->canFreeData = FALSE;
  emxFree_real_T(&Ttot);
  toff->canFreeData = FALSE;
  emxFree_real_T(&toff);
  ton->canFreeData = FALSE;
  emxFree_real_T(&ton);
  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionSSEcalP2X7_api.c) */
