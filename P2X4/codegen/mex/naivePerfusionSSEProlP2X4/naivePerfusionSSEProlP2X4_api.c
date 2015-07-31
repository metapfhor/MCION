/*
 * naivePerfusionSSEProlP2X4_api.c
 *
 * Code generation for function 'naivePerfusionSSEProlP2X4_api'
 *
 * C source code generated on: Mon Jun 23 18:45:45 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEProlP2X4.h"
#include "naivePerfusionSSEProlP2X4_api.h"
#include "naivePerfusionSSEProlP2X4_emxutil.h"
#include "naivePerfusionSSEProlP2X4_mexutil.h"
#include "naivePerfusionSSEProlP2X4_data.h"

/* Variable Definitions */
static emlrtRTEInfo f_emlrtRTEI = { 1, 1, "naivePerfusionSSEProlP2X4_api", "" };

/* Function Declarations */
static void b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y);
static void b_info_helper(ResolvedFunctionInfo info[151]);
static void c_info_helper(ResolvedFunctionInfo info[151]);
static void e_emlrt_marshallIn(const mxArray *T, const char_T *identifier,
  emxArray_real_T *y);
static void emlrt_marshallIn(const mxArray *ton, const char_T *identifier,
  emxArray_real_T *y);
static const mxArray *emlrt_marshallOut(ResolvedFunctionInfo u[151]);
static void f_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y);
static void info_helper(ResolvedFunctionInfo info[151]);
static void k_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret);
static void m_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret);

/* Function Definitions */
static void b_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y)
{
  k_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void b_info_helper(ResolvedFunctionInfo info[151])
{
  info[64].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[64].name = "eml_index_plus";
  info[64].dominantType = "double";
  info[64].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[64].fileTimeLo = 1286840378U;
  info[64].fileTimeHi = 0U;
  info[64].mFileTimeLo = 0U;
  info[64].mFileTimeHi = 0U;
  info[65].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_signed_integer_colon";
  info[65].name = "eml_int_forloop_overflow_check";
  info[65].dominantType = "";
  info[65].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[65].fileTimeLo = 1346531940U;
  info[65].fileTimeHi = 0U;
  info[65].mFileTimeLo = 0U;
  info[65].mFileTimeHi = 0U;
  info[66].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[66].name = "eml_index_class";
  info[66].dominantType = "";
  info[66].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[66].fileTimeLo = 1323192178U;
  info[66].fileTimeHi = 0U;
  info[66].mFileTimeLo = 0U;
  info[66].mFileTimeHi = 0U;
  info[67].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[67].name = "eml_index_plus";
  info[67].dominantType = "double";
  info[67].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[67].fileTimeLo = 1286840378U;
  info[67].fileTimeHi = 0U;
  info[67].mFileTimeLo = 0U;
  info[67].mFileTimeHi = 0U;
  info[68].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[68].name = "eml_int_forloop_overflow_check";
  info[68].dominantType = "";
  info[68].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[68].fileTimeLo = 1346531940U;
  info[68].fileTimeHi = 0U;
  info[68].mFileTimeLo = 0U;
  info[68].mFileTimeHi = 0U;
  info[69].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[69].name = "eml_index_minus";
  info[69].dominantType = "double";
  info[69].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[69].fileTimeLo = 1286840378U;
  info[69].fileTimeHi = 0U;
  info[69].mFileTimeLo = 0U;
  info[69].mFileTimeHi = 0U;
  info[70].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[70].name = "eml_index_class";
  info[70].dominantType = "";
  info[70].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[70].fileTimeLo = 1323192178U;
  info[70].fileTimeHi = 0U;
  info[70].mFileTimeLo = 0U;
  info[70].mFileTimeHi = 0U;
  info[71].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[71].name = "eml_index_minus";
  info[71].dominantType = "coder.internal.indexInt";
  info[71].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[71].fileTimeLo = 1286840378U;
  info[71].fileTimeHi = 0U;
  info[71].mFileTimeLo = 0U;
  info[71].mFileTimeHi = 0U;
  info[72].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[72].name = "eml_index_times";
  info[72].dominantType = "coder.internal.indexInt";
  info[72].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[72].fileTimeLo = 1286840380U;
  info[72].fileTimeHi = 0U;
  info[72].mFileTimeLo = 0U;
  info[72].mFileTimeHi = 0U;
  info[73].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[73].name = "eml_index_class";
  info[73].dominantType = "";
  info[73].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[73].fileTimeLo = 1323192178U;
  info[73].fileTimeHi = 0U;
  info[73].mFileTimeLo = 0U;
  info[73].mFileTimeHi = 0U;
  info[74].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[74].name = "eml_index_plus";
  info[74].dominantType = "coder.internal.indexInt";
  info[74].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[74].fileTimeLo = 1286840378U;
  info[74].fileTimeHi = 0U;
  info[74].mFileTimeLo = 0U;
  info[74].mFileTimeHi = 0U;
  info[75].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[75].name = "eml_ixamax";
  info[75].dominantType = "double";
  info[75].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_ixamax.m";
  info[75].fileTimeLo = 1299098370U;
  info[75].fileTimeHi = 0U;
  info[75].mFileTimeLo = 0U;
  info[75].mFileTimeHi = 0U;
  info[76].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_ixamax.m";
  info[76].name = "eml_blas_inline";
  info[76].dominantType = "";
  info[76].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[76].fileTimeLo = 1299098368U;
  info[76].fileTimeHi = 0U;
  info[76].mFileTimeLo = 0U;
  info[76].mFileTimeHi = 0U;
  info[77].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_ixamax.m!below_threshold";
  info[77].name = "length";
  info[77].dominantType = "double";
  info[77].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/length.m";
  info[77].fileTimeLo = 1303167806U;
  info[77].fileTimeHi = 0U;
  info[77].mFileTimeLo = 0U;
  info[77].mFileTimeHi = 0U;
  info[78].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/length.m!intlength";
  info[78].name = "eml_index_class";
  info[78].dominantType = "";
  info[78].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[78].fileTimeLo = 1323192178U;
  info[78].fileTimeHi = 0U;
  info[78].mFileTimeLo = 0U;
  info[78].mFileTimeHi = 0U;
  info[79].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_ixamax.m";
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
  info[80].name = "eml_refblas_ixamax";
  info[80].dominantType = "double";
  info[80].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[80].fileTimeLo = 1299098370U;
  info[80].fileTimeHi = 0U;
  info[80].mFileTimeLo = 0U;
  info[80].mFileTimeHi = 0U;
  info[81].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[81].name = "eml_index_class";
  info[81].dominantType = "";
  info[81].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[81].fileTimeLo = 1323192178U;
  info[81].fileTimeHi = 0U;
  info[81].mFileTimeLo = 0U;
  info[81].mFileTimeHi = 0U;
  info[82].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[82].name = "eml_xcabs1";
  info[82].dominantType = "double";
  info[82].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xcabs1.m";
  info[82].fileTimeLo = 1286840306U;
  info[82].fileTimeHi = 0U;
  info[82].mFileTimeLo = 0U;
  info[82].mFileTimeHi = 0U;
  info[83].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xcabs1.m";
  info[83].name = "abs";
  info[83].dominantType = "double";
  info[83].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[83].fileTimeLo = 1343851966U;
  info[83].fileTimeHi = 0U;
  info[83].mFileTimeLo = 0U;
  info[83].mFileTimeHi = 0U;
  info[84].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[84].name = "eml_int_forloop_overflow_check";
  info[84].dominantType = "";
  info[84].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[84].fileTimeLo = 1346531940U;
  info[84].fileTimeHi = 0U;
  info[84].mFileTimeLo = 0U;
  info[84].mFileTimeHi = 0U;
  info[85].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_ixamax.m";
  info[85].name = "eml_index_plus";
  info[85].dominantType = "coder.internal.indexInt";
  info[85].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[85].fileTimeLo = 1286840378U;
  info[85].fileTimeHi = 0U;
  info[85].mFileTimeLo = 0U;
  info[85].mFileTimeHi = 0U;
  info[86].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[86].name = "eml_xswap";
  info[86].dominantType = "double";
  info[86].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xswap.m";
  info[86].fileTimeLo = 1299098378U;
  info[86].fileTimeHi = 0U;
  info[86].mFileTimeLo = 0U;
  info[86].mFileTimeHi = 0U;
  info[87].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xswap.m";
  info[87].name = "eml_blas_inline";
  info[87].dominantType = "";
  info[87].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[87].fileTimeLo = 1299098368U;
  info[87].fileTimeHi = 0U;
  info[87].mFileTimeLo = 0U;
  info[87].mFileTimeHi = 0U;
  info[88].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xswap.m";
  info[88].name = "eml_index_class";
  info[88].dominantType = "";
  info[88].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[88].fileTimeLo = 1323192178U;
  info[88].fileTimeHi = 0U;
  info[88].mFileTimeLo = 0U;
  info[88].mFileTimeHi = 0U;
  info[89].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xswap.m";
  info[89].name = "eml_refblas_xswap";
  info[89].dominantType = "double";
  info[89].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[89].fileTimeLo = 1299098386U;
  info[89].fileTimeHi = 0U;
  info[89].mFileTimeLo = 0U;
  info[89].mFileTimeHi = 0U;
  info[90].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[90].name = "eml_index_class";
  info[90].dominantType = "";
  info[90].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[90].fileTimeLo = 1323192178U;
  info[90].fileTimeHi = 0U;
  info[90].mFileTimeLo = 0U;
  info[90].mFileTimeHi = 0U;
  info[91].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[91].name = "abs";
  info[91].dominantType = "coder.internal.indexInt";
  info[91].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[91].fileTimeLo = 1343851966U;
  info[91].fileTimeHi = 0U;
  info[91].mFileTimeLo = 0U;
  info[91].mFileTimeHi = 0U;
  info[92].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[92].name = "eml_scalar_abs";
  info[92].dominantType = "coder.internal.indexInt";
  info[92].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_abs.m";
  info[92].fileTimeLo = 1286840312U;
  info[92].fileTimeHi = 0U;
  info[92].mFileTimeLo = 0U;
  info[92].mFileTimeHi = 0U;
  info[93].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[93].name = "eml_int_forloop_overflow_check";
  info[93].dominantType = "";
  info[93].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[93].fileTimeLo = 1346531940U;
  info[93].fileTimeHi = 0U;
  info[93].mFileTimeLo = 0U;
  info[93].mFileTimeHi = 0U;
  info[94].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xswap.m";
  info[94].name = "eml_index_plus";
  info[94].dominantType = "coder.internal.indexInt";
  info[94].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[94].fileTimeLo = 1286840378U;
  info[94].fileTimeHi = 0U;
  info[94].mFileTimeLo = 0U;
  info[94].mFileTimeHi = 0U;
  info[95].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[95].name = "eml_div";
  info[95].dominantType = "double";
  info[95].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_div.m";
  info[95].fileTimeLo = 1313369410U;
  info[95].fileTimeHi = 0U;
  info[95].mFileTimeLo = 0U;
  info[95].mFileTimeHi = 0U;
  info[96].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[96].name = "eml_xgeru";
  info[96].dominantType = "double";
  info[96].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgeru.m";
  info[96].fileTimeLo = 1299098374U;
  info[96].fileTimeHi = 0U;
  info[96].mFileTimeLo = 0U;
  info[96].mFileTimeHi = 0U;
  info[97].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgeru.m";
  info[97].name = "eml_blas_inline";
  info[97].dominantType = "";
  info[97].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[97].fileTimeLo = 1299098368U;
  info[97].fileTimeHi = 0U;
  info[97].mFileTimeLo = 0U;
  info[97].mFileTimeHi = 0U;
  info[98].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgeru.m";
  info[98].name = "eml_xger";
  info[98].dominantType = "double";
  info[98].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xger.m";
  info[98].fileTimeLo = 1299098374U;
  info[98].fileTimeHi = 0U;
  info[98].mFileTimeLo = 0U;
  info[98].mFileTimeHi = 0U;
  info[99].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xger.m";
  info[99].name = "eml_blas_inline";
  info[99].dominantType = "";
  info[99].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[99].fileTimeLo = 1299098368U;
  info[99].fileTimeHi = 0U;
  info[99].mFileTimeLo = 0U;
  info[99].mFileTimeHi = 0U;
  info[100].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m!below_threshold";
  info[100].name = "intmax";
  info[100].dominantType = "char";
  info[100].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[100].fileTimeLo = 1311276916U;
  info[100].fileTimeHi = 0U;
  info[100].mFileTimeLo = 0U;
  info[100].mFileTimeHi = 0U;
  info[101].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m!below_threshold";
  info[101].name = "min";
  info[101].dominantType = "double";
  info[101].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[101].fileTimeLo = 1311276918U;
  info[101].fileTimeHi = 0U;
  info[101].mFileTimeLo = 0U;
  info[101].mFileTimeHi = 0U;
  info[102].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[102].name = "eml_scalar_eg";
  info[102].dominantType = "double";
  info[102].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[102].fileTimeLo = 1286840396U;
  info[102].fileTimeHi = 0U;
  info[102].mFileTimeLo = 0U;
  info[102].mFileTimeHi = 0U;
  info[103].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[103].name = "eml_scalexp_alloc";
  info[103].dominantType = "double";
  info[103].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[103].fileTimeLo = 1352446460U;
  info[103].fileTimeHi = 0U;
  info[103].mFileTimeLo = 0U;
  info[103].mFileTimeHi = 0U;
  info[104].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_scalar_bin_extremum";
  info[104].name = "eml_scalar_eg";
  info[104].dominantType = "double";
  info[104].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[104].fileTimeLo = 1286840396U;
  info[104].fileTimeHi = 0U;
  info[104].mFileTimeLo = 0U;
  info[104].mFileTimeHi = 0U;
  info[105].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m!below_threshold";
  info[105].name = "mtimes";
  info[105].dominantType = "double";
  info[105].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[105].fileTimeLo = 1289541292U;
  info[105].fileTimeHi = 0U;
  info[105].mFileTimeLo = 0U;
  info[105].mFileTimeHi = 0U;
  info[106].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m";
  info[106].name = "eml_index_class";
  info[106].dominantType = "";
  info[106].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[106].fileTimeLo = 1323192178U;
  info[106].fileTimeHi = 0U;
  info[106].mFileTimeLo = 0U;
  info[106].mFileTimeHi = 0U;
  info[107].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xger.m";
  info[107].name = "eml_refblas_xger";
  info[107].dominantType = "double";
  info[107].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xger.m";
  info[107].fileTimeLo = 1299098376U;
  info[107].fileTimeHi = 0U;
  info[107].mFileTimeLo = 0U;
  info[107].mFileTimeHi = 0U;
  info[108].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xger.m";
  info[108].name = "eml_refblas_xgerx";
  info[108].dominantType = "char";
  info[108].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[108].fileTimeLo = 1299098378U;
  info[108].fileTimeHi = 0U;
  info[108].mFileTimeLo = 0U;
  info[108].mFileTimeHi = 0U;
  info[109].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[109].name = "eml_index_class";
  info[109].dominantType = "";
  info[109].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[109].fileTimeLo = 1323192178U;
  info[109].fileTimeHi = 0U;
  info[109].mFileTimeLo = 0U;
  info[109].mFileTimeHi = 0U;
  info[110].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[110].name = "abs";
  info[110].dominantType = "coder.internal.indexInt";
  info[110].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[110].fileTimeLo = 1343851966U;
  info[110].fileTimeHi = 0U;
  info[110].mFileTimeLo = 0U;
  info[110].mFileTimeHi = 0U;
  info[111].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[111].name = "eml_index_minus";
  info[111].dominantType = "double";
  info[111].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[111].fileTimeLo = 1286840378U;
  info[111].fileTimeHi = 0U;
  info[111].mFileTimeLo = 0U;
  info[111].mFileTimeHi = 0U;
  info[112].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[112].name = "eml_int_forloop_overflow_check";
  info[112].dominantType = "";
  info[112].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[112].fileTimeLo = 1346531940U;
  info[112].fileTimeHi = 0U;
  info[112].mFileTimeLo = 0U;
  info[112].mFileTimeHi = 0U;
  info[113].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[113].name = "eml_index_plus";
  info[113].dominantType = "double";
  info[113].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[113].fileTimeLo = 1286840378U;
  info[113].fileTimeHi = 0U;
  info[113].mFileTimeLo = 0U;
  info[113].mFileTimeHi = 0U;
  info[114].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgerx.m";
  info[114].name = "eml_index_plus";
  info[114].dominantType = "coder.internal.indexInt";
  info[114].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[114].fileTimeLo = 1286840378U;
  info[114].fileTimeHi = 0U;
  info[114].mFileTimeLo = 0U;
  info[114].mFileTimeHi = 0U;
  info[115].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!warn_singular";
  info[115].name = "eml_warning";
  info[115].dominantType = "char";
  info[115].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_warning.m";
  info[115].fileTimeLo = 1286840402U;
  info[115].fileTimeHi = 0U;
  info[115].mFileTimeLo = 0U;
  info[115].mFileTimeHi = 0U;
  info[116].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[116].name = "eml_scalar_eg";
  info[116].dominantType = "double";
  info[116].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[116].fileTimeLo = 1286840396U;
  info[116].fileTimeHi = 0U;
  info[116].mFileTimeLo = 0U;
  info[116].mFileTimeHi = 0U;
  info[117].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[117].name = "eml_int_forloop_overflow_check";
  info[117].dominantType = "";
  info[117].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[117].fileTimeLo = 1346531940U;
  info[117].fileTimeHi = 0U;
  info[117].mFileTimeLo = 0U;
  info[117].mFileTimeHi = 0U;
  info[118].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
  info[118].name = "eml_xtrsm";
  info[118].dominantType = "char";
  info[118].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xtrsm.m";
  info[118].fileTimeLo = 1299098378U;
  info[118].fileTimeHi = 0U;
  info[118].mFileTimeLo = 0U;
  info[118].mFileTimeHi = 0U;
  info[119].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xtrsm.m";
  info[119].name = "eml_blas_inline";
  info[119].dominantType = "";
  info[119].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[119].fileTimeLo = 1299098368U;
  info[119].fileTimeHi = 0U;
  info[119].mFileTimeLo = 0U;
  info[119].mFileTimeHi = 0U;
  info[120].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m!below_threshold";
  info[120].name = "mtimes";
  info[120].dominantType = "double";
  info[120].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[120].fileTimeLo = 1289541292U;
  info[120].fileTimeHi = 0U;
  info[120].mFileTimeLo = 0U;
  info[120].mFileTimeHi = 0U;
  info[121].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m";
  info[121].name = "eml_index_class";
  info[121].dominantType = "";
  info[121].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[121].fileTimeLo = 1323192178U;
  info[121].fileTimeHi = 0U;
  info[121].mFileTimeLo = 0U;
  info[121].mFileTimeHi = 0U;
  info[122].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m";
  info[122].name = "eml_scalar_eg";
  info[122].dominantType = "double";
  info[122].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[122].fileTimeLo = 1286840396U;
  info[122].fileTimeHi = 0U;
  info[122].mFileTimeLo = 0U;
  info[122].mFileTimeHi = 0U;
  info[123].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xtrsm.m";
  info[123].name = "eml_refblas_xtrsm";
  info[123].dominantType = "char";
  info[123].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[123].fileTimeLo = 1299098386U;
  info[123].fileTimeHi = 0U;
  info[123].mFileTimeLo = 0U;
  info[123].mFileTimeHi = 0U;
  info[124].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[124].name = "eml_scalar_eg";
  info[124].dominantType = "double";
  info[124].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[124].fileTimeLo = 1286840396U;
  info[124].fileTimeHi = 0U;
  info[124].mFileTimeLo = 0U;
  info[124].mFileTimeHi = 0U;
  info[125].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[125].name = "eml_index_minus";
  info[125].dominantType = "double";
  info[125].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_minus.m";
  info[125].fileTimeLo = 1286840378U;
  info[125].fileTimeHi = 0U;
  info[125].mFileTimeLo = 0U;
  info[125].mFileTimeHi = 0U;
  info[126].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[126].name = "eml_index_class";
  info[126].dominantType = "";
  info[126].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[126].fileTimeLo = 1323192178U;
  info[126].fileTimeHi = 0U;
  info[126].mFileTimeLo = 0U;
  info[126].mFileTimeHi = 0U;
  info[127].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[127].name = "eml_int_forloop_overflow_check";
  info[127].dominantType = "";
  info[127].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[127].fileTimeLo = 1346531940U;
  info[127].fileTimeHi = 0U;
  info[127].mFileTimeLo = 0U;
  info[127].mFileTimeHi = 0U;
}

static void c_info_helper(ResolvedFunctionInfo info[151])
{
  info[128].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[128].name = "eml_index_times";
  info[128].dominantType = "coder.internal.indexInt";
  info[128].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_times.m";
  info[128].fileTimeLo = 1286840380U;
  info[128].fileTimeHi = 0U;
  info[128].mFileTimeLo = 0U;
  info[128].mFileTimeHi = 0U;
  info[129].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[129].name = "eml_index_plus";
  info[129].dominantType = "coder.internal.indexInt";
  info[129].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[129].fileTimeLo = 1286840378U;
  info[129].fileTimeHi = 0U;
  info[129].mFileTimeLo = 0U;
  info[129].mFileTimeHi = 0U;
  info[130].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[130].name = "eml_index_plus";
  info[130].dominantType = "double";
  info[130].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[130].fileTimeLo = 1286840378U;
  info[130].fileTimeHi = 0U;
  info[130].mFileTimeLo = 0U;
  info[130].mFileTimeHi = 0U;
  info[131].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m!eml_int_forloop_overflow_check_helper";
  info[131].name = "intmin";
  info[131].dominantType = "char";
  info[131].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmin.m";
  info[131].fileTimeLo = 1311276918U;
  info[131].fileTimeHi = 0U;
  info[131].mFileTimeLo = 0U;
  info[131].mFileTimeHi = 0U;
  info[132].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xtrsm.m";
  info[132].name = "eml_div";
  info[132].dominantType = "double";
  info[132].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_div.m";
  info[132].fileTimeLo = 1313369410U;
  info[132].fileTimeHi = 0U;
  info[132].mFileTimeLo = 0U;
  info[132].mFileTimeHi = 0U;
  info[133].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[133].name = "log2";
  info[133].dominantType = "double";
  info[133].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/log2.m";
  info[133].fileTimeLo = 1343851982U;
  info[133].fileTimeHi = 0U;
  info[133].mFileTimeLo = 0U;
  info[133].mFileTimeHi = 0U;
  info[134].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/log2.m!scalar_frexp";
  info[134].name = "isfinite";
  info[134].dominantType = "double";
  info[134].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[134].fileTimeLo = 1286840358U;
  info[134].fileTimeHi = 0U;
  info[134].mFileTimeLo = 0U;
  info[134].mFileTimeHi = 0U;
  info[135].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[135].name = "isinf";
  info[135].dominantType = "double";
  info[135].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isinf.m";
  info[135].fileTimeLo = 1286840360U;
  info[135].fileTimeHi = 0U;
  info[135].mFileTimeLo = 0U;
  info[135].mFileTimeHi = 0U;
  info[136].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isfinite.m";
  info[136].name = "isnan";
  info[136].dominantType = "double";
  info[136].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isnan.m";
  info[136].fileTimeLo = 1286840360U;
  info[136].fileTimeHi = 0U;
  info[136].mFileTimeLo = 0U;
  info[136].mFileTimeHi = 0U;
  info[137].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[137].name = "pow2";
  info[137].dominantType = "double";
  info[137].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/pow2.m";
  info[137].fileTimeLo = 1343851982U;
  info[137].fileTimeHi = 0U;
  info[137].mFileTimeLo = 0U;
  info[137].mFileTimeHi = 0U;
  info[138].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/pow2.m";
  info[138].name = "eml_scalar_pow2";
  info[138].dominantType = "double";
  info[138].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_pow2.m";
  info[138].fileTimeLo = 1286840332U;
  info[138].fileTimeHi = 0U;
  info[138].mFileTimeLo = 0U;
  info[138].mFileTimeHi = 0U;
  info[139].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_pow2.m";
  info[139].name = "power";
  info[139].dominantType = "double";
  info[139].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m";
  info[139].fileTimeLo = 1348213530U;
  info[139].fileTimeHi = 0U;
  info[139].mFileTimeLo = 0U;
  info[139].mFileTimeHi = 0U;
  info[140].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[140].name = "eml_scalar_eg";
  info[140].dominantType = "double";
  info[140].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[140].fileTimeLo = 1286840396U;
  info[140].fileTimeHi = 0U;
  info[140].mFileTimeLo = 0U;
  info[140].mFileTimeHi = 0U;
  info[141].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[141].name = "eml_scalexp_alloc";
  info[141].dominantType = "double";
  info[141].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[141].fileTimeLo = 1352446460U;
  info[141].fileTimeHi = 0U;
  info[141].mFileTimeLo = 0U;
  info[141].mFileTimeHi = 0U;
  info[142].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[142].name = "floor";
  info[142].dominantType = "double";
  info[142].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[142].fileTimeLo = 1343851980U;
  info[142].fileTimeHi = 0U;
  info[142].mFileTimeLo = 0U;
  info[142].mFileTimeHi = 0U;
  info[143].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!fltpower";
  info[143].name = "eml_error";
  info[143].dominantType = "char";
  info[143].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_error.m";
  info[143].fileTimeLo = 1343851958U;
  info[143].fileTimeHi = 0U;
  info[143].mFileTimeLo = 0U;
  info[143].mFileTimeHi = 0U;
  info[144].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!scalar_float_power";
  info[144].name = "eml_scalar_eg";
  info[144].dominantType = "double";
  info[144].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[144].fileTimeLo = 1286840396U;
  info[144].fileTimeHi = 0U;
  info[144].mFileTimeLo = 0U;
  info[144].mFileTimeHi = 0U;
  info[145].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[145].name = "eml_div";
  info[145].dominantType = "double";
  info[145].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_div.m";
  info[145].fileTimeLo = 1313369410U;
  info[145].fileTimeHi = 0U;
  info[145].mFileTimeLo = 0U;
  info[145].mFileTimeHi = 0U;
  info[146].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[146].name = "mtimes";
  info[146].dominantType = "double";
  info[146].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[146].fileTimeLo = 1289541292U;
  info[146].fileTimeHi = 0U;
  info[146].mFileTimeLo = 0U;
  info[146].mFileTimeHi = 0U;
  info[147].context =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m";
  info[147].name = "mpower";
  info[147].dominantType = "double";
  info[147].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mpower.m";
  info[147].fileTimeLo = 1286840442U;
  info[147].fileTimeHi = 0U;
  info[147].mFileTimeLo = 0U;
  info[147].mFileTimeHi = 0U;
  info[148].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mpower.m";
  info[148].name = "power";
  info[148].dominantType = "double";
  info[148].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m";
  info[148].fileTimeLo = 1348213530U;
  info[148].fileTimeHi = 0U;
  info[148].mFileTimeLo = 0U;
  info[148].mFileTimeHi = 0U;
  info[149].context =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m";
  info[149].name = "abs";
  info[149].dominantType = "double";
  info[149].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[149].fileTimeLo = 1343851966U;
  info[149].fileTimeHi = 0U;
  info[149].mFileTimeLo = 0U;
  info[149].mFileTimeHi = 0U;
  info[150].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/power.m!scalar_float_power";
  info[150].name = "mtimes";
  info[150].dominantType = "double";
  info[150].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[150].fileTimeLo = 1289541292U;
  info[150].fileTimeHi = 0U;
  info[150].mFileTimeLo = 0U;
  info[150].mFileTimeHi = 0U;
}

static void e_emlrt_marshallIn(const mxArray *T, const char_T *identifier,
  emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  f_emlrt_marshallIn(emlrtAlias(T), &thisId, y);
  emlrtDestroyArray(&T);
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

static const mxArray *emlrt_marshallOut(ResolvedFunctionInfo u[151])
{
  const mxArray *y;
  int32_T iv4[1];
  int32_T i3;
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
  iv4[0] = 151;
  emlrtAssign(&y, mxCreateStructArray(1, iv4, 0, NULL));
  for (i3 = 0; i3 < 151; i3++) {
    r3 = &u[i3];
    b_u = r3->context;
    b_y = NULL;
    m3 = mxCreateString(b_u);
    emlrtAssign(&b_y, m3);
    emlrtAddField(y, b_y, "context", i3);
    b_u = r3->name;
    c_y = NULL;
    m3 = mxCreateString(b_u);
    emlrtAssign(&c_y, m3);
    emlrtAddField(y, c_y, "name", i3);
    b_u = r3->dominantType;
    d_y = NULL;
    m3 = mxCreateString(b_u);
    emlrtAssign(&d_y, m3);
    emlrtAddField(y, d_y, "dominantType", i3);
    b_u = r3->resolved;
    e_y = NULL;
    m3 = mxCreateString(b_u);
    emlrtAssign(&e_y, m3);
    emlrtAddField(y, e_y, "resolved", i3);
    c_u = r3->fileTimeLo;
    f_y = NULL;
    m3 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m3) = c_u;
    emlrtAssign(&f_y, m3);
    emlrtAddField(y, f_y, "fileTimeLo", i3);
    c_u = r3->fileTimeHi;
    g_y = NULL;
    m3 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m3) = c_u;
    emlrtAssign(&g_y, m3);
    emlrtAddField(y, g_y, "fileTimeHi", i3);
    c_u = r3->mFileTimeLo;
    h_y = NULL;
    m3 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m3) = c_u;
    emlrtAssign(&h_y, m3);
    emlrtAddField(y, h_y, "mFileTimeLo", i3);
    c_u = r3->mFileTimeHi;
    i_y = NULL;
    m3 = mxCreateNumericMatrix(1, 1, mxUINT32_CLASS, mxREAL);
    *(uint32_T *)mxGetData(m3) = c_u;
    emlrtAssign(&i_y, m3);
    emlrtAddField(y, i_y, "mFileTimeHi", i3);
  }

  return y;
}

static void f_emlrt_marshallIn(const mxArray *u, const emlrtMsgIdentifier
  *parentId, emxArray_real_T *y)
{
  m_emlrt_marshallIn(emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void info_helper(ResolvedFunctionInfo info[151])
{
  info[0].context =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m";
  info[0].name = "eml_li_find";
  info[0].dominantType = "";
  info[0].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[0].fileTimeLo = 1286840386U;
  info[0].fileTimeHi = 0U;
  info[0].mFileTimeLo = 0U;
  info[0].mFileTimeHi = 0U;
  info[1].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[1].name = "eml_index_class";
  info[1].dominantType = "";
  info[1].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[1].fileTimeLo = 1323192178U;
  info[1].fileTimeHi = 0U;
  info[1].mFileTimeLo = 0U;
  info[1].mFileTimeHi = 0U;
  info[2].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m!compute_nones";
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
  info[3].name = "eml_int_forloop_overflow_check";
  info[3].dominantType = "";
  info[3].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[3].fileTimeLo = 1346531940U;
  info[3].fileTimeHi = 0U;
  info[3].mFileTimeLo = 0U;
  info[3].mFileTimeHi = 0U;
  info[4].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m!eml_int_forloop_overflow_check_helper";
  info[4].name = "intmax";
  info[4].dominantType = "char";
  info[4].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[4].fileTimeLo = 1311276916U;
  info[4].fileTimeHi = 0U;
  info[4].mFileTimeLo = 0U;
  info[4].mFileTimeHi = 0U;
  info[5].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m!compute_nones";
  info[5].name = "eml_index_plus";
  info[5].dominantType = "double";
  info[5].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[5].fileTimeLo = 1286840378U;
  info[5].fileTimeHi = 0U;
  info[5].mFileTimeLo = 0U;
  info[5].mFileTimeHi = 0U;
  info[6].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[6].name = "eml_index_class";
  info[6].dominantType = "";
  info[6].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[6].fileTimeLo = 1323192178U;
  info[6].fileTimeHi = 0U;
  info[6].mFileTimeLo = 0U;
  info[6].mFileTimeHi = 0U;
  info[7].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[7].name = "eml_int_forloop_overflow_check";
  info[7].dominantType = "";
  info[7].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_int_forloop_overflow_check.m";
  info[7].fileTimeLo = 1346531940U;
  info[7].fileTimeHi = 0U;
  info[7].mFileTimeLo = 0U;
  info[7].mFileTimeHi = 0U;
  info[8].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_li_find.m";
  info[8].name = "eml_index_plus";
  info[8].dominantType = "double";
  info[8].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_plus.m";
  info[8].fileTimeLo = 1286840378U;
  info[8].fileTimeHi = 0U;
  info[8].mFileTimeLo = 0U;
  info[8].mFileTimeHi = 0U;
  info[9].context =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/naivePerfusionSSEProlP2X4.m";
  info[9].name = "linearODESSEP2X4";
  info[9].dominantType = "double";
  info[9].resolved =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m";
  info[9].fileTimeLo = 1403560799U;
  info[9].fileTimeHi = 0U;
  info[9].mFileTimeLo = 0U;
  info[9].mFileTimeHi = 0U;
  info[10].context =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m";
  info[10].name = "generatorMatrixP2X4";
  info[10].dominantType = "";
  info[10].resolved =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/generatorMatrixP2X4.m";
  info[10].fileTimeLo = 1403560569U;
  info[10].fileTimeHi = 0U;
  info[10].mFileTimeLo = 0U;
  info[10].mFileTimeHi = 0U;
  info[11].context =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/generatorMatrixP2X4.m";
  info[11].name = "mtimes";
  info[11].dominantType = "double";
  info[11].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[11].fileTimeLo = 1289541292U;
  info[11].fileTimeHi = 0U;
  info[11].mFileTimeLo = 0U;
  info[11].mFileTimeHi = 0U;
  info[12].context =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m";
  info[12].name = "length";
  info[12].dominantType = "double";
  info[12].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/length.m";
  info[12].fileTimeLo = 1303167806U;
  info[12].fileTimeHi = 0U;
  info[12].mFileTimeLo = 0U;
  info[12].mFileTimeHi = 0U;
  info[13].context =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m";
  info[13].name = "mtimes";
  info[13].dominantType = "double";
  info[13].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[13].fileTimeLo = 1289541292U;
  info[13].fileTimeHi = 0U;
  info[13].mFileTimeLo = 0U;
  info[13].mFileTimeHi = 0U;
  info[14].context =
    "[E]/home/cnd/omar.khan/Desktop/Final_MCMC_folder_toy/Models/linearODESSEP2X4.m";
  info[14].name = "expm";
  info[14].dominantType = "double";
  info[14].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[14].fileTimeLo = 1286840424U;
  info[14].fileTimeHi = 0U;
  info[14].mFileTimeLo = 0U;
  info[14].mFileTimeHi = 0U;
  info[15].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m";
  info[15].name = "norm";
  info[15].dominantType = "double";
  info[15].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m";
  info[15].fileTimeLo = 1336543694U;
  info[15].fileTimeHi = 0U;
  info[15].mFileTimeLo = 0U;
  info[15].mFileTimeHi = 0U;
  info[16].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m!mat1norm";
  info[16].name = "abs";
  info[16].dominantType = "double";
  info[16].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[16].fileTimeLo = 1343851966U;
  info[16].fileTimeHi = 0U;
  info[16].mFileTimeLo = 0U;
  info[16].mFileTimeHi = 0U;
  info[17].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/abs.m";
  info[17].name = "eml_scalar_abs";
  info[17].dominantType = "double";
  info[17].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_abs.m";
  info[17].fileTimeLo = 1286840312U;
  info[17].fileTimeHi = 0U;
  info[17].mFileTimeLo = 0U;
  info[17].mFileTimeHi = 0U;
  info[18].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m!mat1norm";
  info[18].name = "isnan";
  info[18].dominantType = "double";
  info[18].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/isnan.m";
  info[18].fileTimeLo = 1286840360U;
  info[18].fileTimeHi = 0U;
  info[18].mFileTimeLo = 0U;
  info[18].mFileTimeHi = 0U;
  info[19].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/norm.m!mat1norm";
  info[19].name = "eml_guarded_nan";
  info[19].dominantType = "char";
  info[19].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_guarded_nan.m";
  info[19].fileTimeLo = 1286840376U;
  info[19].fileTimeHi = 0U;
  info[19].mFileTimeLo = 0U;
  info[19].mFileTimeHi = 0U;
  info[20].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_guarded_nan.m";
  info[20].name = "eml_is_float_class";
  info[20].dominantType = "char";
  info[20].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_is_float_class.m";
  info[20].fileTimeLo = 1286840382U;
  info[20].fileTimeHi = 0U;
  info[20].mFileTimeLo = 0U;
  info[20].mFileTimeHi = 0U;
  info[21].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m!PadeApproximantOfDegree";
  info[21].name = "mtimes";
  info[21].dominantType = "double";
  info[21].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[21].fileTimeLo = 1289541292U;
  info[21].fileTimeHi = 0U;
  info[21].mFileTimeLo = 0U;
  info[21].mFileTimeHi = 0U;
  info[22].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[22].name = "eml_index_class";
  info[22].dominantType = "";
  info[22].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[22].fileTimeLo = 1323192178U;
  info[22].fileTimeHi = 0U;
  info[22].mFileTimeLo = 0U;
  info[22].mFileTimeHi = 0U;
  info[23].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[23].name = "eml_scalar_eg";
  info[23].dominantType = "double";
  info[23].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[23].fileTimeLo = 1286840396U;
  info[23].fileTimeHi = 0U;
  info[23].mFileTimeLo = 0U;
  info[23].mFileTimeHi = 0U;
  info[24].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[24].name = "eml_xgemm";
  info[24].dominantType = "char";
  info[24].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m";
  info[24].fileTimeLo = 1299098372U;
  info[24].fileTimeHi = 0U;
  info[24].mFileTimeLo = 0U;
  info[24].mFileTimeHi = 0U;
  info[25].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_xgemm.m";
  info[25].name = "eml_blas_inline";
  info[25].dominantType = "";
  info[25].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/eml_blas_inline.m";
  info[25].fileTimeLo = 1299098368U;
  info[25].fileTimeHi = 0U;
  info[25].mFileTimeLo = 0U;
  info[25].mFileTimeHi = 0U;
  info[26].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m!below_threshold";
  info[26].name = "mtimes";
  info[26].dominantType = "double";
  info[26].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mtimes.m";
  info[26].fileTimeLo = 1289541292U;
  info[26].fileTimeHi = 0U;
  info[26].mFileTimeLo = 0U;
  info[26].mFileTimeHi = 0U;
  info[27].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m";
  info[27].name = "eml_index_class";
  info[27].dominantType = "";
  info[27].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[27].fileTimeLo = 1323192178U;
  info[27].fileTimeHi = 0U;
  info[27].mFileTimeLo = 0U;
  info[27].mFileTimeHi = 0U;
  info[28].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m";
  info[28].name = "eml_scalar_eg";
  info[28].dominantType = "double";
  info[28].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[28].fileTimeLo = 1286840396U;
  info[28].fileTimeHi = 0U;
  info[28].mFileTimeLo = 0U;
  info[28].mFileTimeHi = 0U;
  info[29].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/external/eml_blas_xgemm.m";
  info[29].name = "eml_refblas_xgemm";
  info[29].dominantType = "char";
  info[29].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/blas/refblas/eml_refblas_xgemm.m";
  info[29].fileTimeLo = 1299098374U;
  info[29].fileTimeHi = 0U;
  info[29].mFileTimeLo = 0U;
  info[29].mFileTimeHi = 0U;
  info[30].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/matfun/expm.m!PadeApproximantOfDegree";
  info[30].name = "mldivide";
  info[30].dominantType = "double";
  info[30].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mldivide.p";
  info[30].fileTimeLo = 1357973148U;
  info[30].fileTimeHi = 0U;
  info[30].mFileTimeLo = 1319751566U;
  info[30].mFileTimeHi = 0U;
  info[31].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/mldivide.p";
  info[31].name = "eml_lusolve";
  info[31].dominantType = "double";
  info[31].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m";
  info[31].fileTimeLo = 1309472796U;
  info[31].fileTimeHi = 0U;
  info[31].mFileTimeLo = 0U;
  info[31].mFileTimeHi = 0U;
  info[32].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m";
  info[32].name = "eml_index_class";
  info[32].dominantType = "";
  info[32].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[32].fileTimeLo = 1323192178U;
  info[32].fileTimeHi = 0U;
  info[32].mFileTimeLo = 0U;
  info[32].mFileTimeHi = 0U;
  info[33].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_lusolve.m!lusolveNxN";
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
  info[34].name = "eml_xgetrf";
  info[34].dominantType = "double";
  info[34].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/eml_xgetrf.m";
  info[34].fileTimeLo = 1286840406U;
  info[34].fileTimeHi = 0U;
  info[34].mFileTimeLo = 0U;
  info[34].mFileTimeHi = 0U;
  info[35].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/eml_xgetrf.m";
  info[35].name = "eml_lapack_xgetrf";
  info[35].dominantType = "double";
  info[35].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/internal/eml_lapack_xgetrf.m";
  info[35].fileTimeLo = 1286840410U;
  info[35].fileTimeHi = 0U;
  info[35].mFileTimeLo = 0U;
  info[35].mFileTimeHi = 0U;
  info[36].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/internal/eml_lapack_xgetrf.m";
  info[36].name = "eml_matlab_zgetrf";
  info[36].dominantType = "double";
  info[36].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[36].fileTimeLo = 1302710594U;
  info[36].fileTimeHi = 0U;
  info[36].mFileTimeLo = 0U;
  info[36].mFileTimeHi = 0U;
  info[37].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[37].name = "realmin";
  info[37].dominantType = "char";
  info[37].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/realmin.m";
  info[37].fileTimeLo = 1307672842U;
  info[37].fileTimeHi = 0U;
  info[37].mFileTimeLo = 0U;
  info[37].mFileTimeHi = 0U;
  info[38].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/realmin.m";
  info[38].name = "eml_realmin";
  info[38].dominantType = "char";
  info[38].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmin.m";
  info[38].fileTimeLo = 1307672844U;
  info[38].fileTimeHi = 0U;
  info[38].mFileTimeLo = 0U;
  info[38].mFileTimeHi = 0U;
  info[39].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_realmin.m";
  info[39].name = "eml_float_model";
  info[39].dominantType = "char";
  info[39].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_float_model.m";
  info[39].fileTimeLo = 1326749596U;
  info[39].fileTimeHi = 0U;
  info[39].mFileTimeLo = 0U;
  info[39].mFileTimeHi = 0U;
  info[40].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[40].name = "eps";
  info[40].dominantType = "char";
  info[40].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[40].fileTimeLo = 1326749596U;
  info[40].fileTimeHi = 0U;
  info[40].mFileTimeLo = 0U;
  info[40].mFileTimeHi = 0U;
  info[41].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[41].name = "eml_is_float_class";
  info[41].dominantType = "char";
  info[41].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_is_float_class.m";
  info[41].fileTimeLo = 1286840382U;
  info[41].fileTimeHi = 0U;
  info[41].mFileTimeLo = 0U;
  info[41].mFileTimeHi = 0U;
  info[42].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/eps.m";
  info[42].name = "eml_eps";
  info[42].dominantType = "char";
  info[42].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_eps.m";
  info[42].fileTimeLo = 1326749596U;
  info[42].fileTimeHi = 0U;
  info[42].mFileTimeLo = 0U;
  info[42].mFileTimeHi = 0U;
  info[43].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_eps.m";
  info[43].name = "eml_float_model";
  info[43].dominantType = "char";
  info[43].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_float_model.m";
  info[43].fileTimeLo = 1326749596U;
  info[43].fileTimeHi = 0U;
  info[43].mFileTimeLo = 0U;
  info[43].mFileTimeHi = 0U;
  info[44].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[44].name = "min";
  info[44].dominantType = "coder.internal.indexInt";
  info[44].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[44].fileTimeLo = 1311276918U;
  info[44].fileTimeHi = 0U;
  info[44].mFileTimeLo = 0U;
  info[44].mFileTimeHi = 0U;
  info[45].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/datafun/min.m";
  info[45].name = "eml_min_or_max";
  info[45].dominantType = "char";
  info[45].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m";
  info[45].fileTimeLo = 1334093090U;
  info[45].fileTimeHi = 0U;
  info[45].mFileTimeLo = 0U;
  info[45].mFileTimeHi = 0U;
  info[46].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[46].name = "eml_scalar_eg";
  info[46].dominantType = "coder.internal.indexInt";
  info[46].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[46].fileTimeLo = 1286840396U;
  info[46].fileTimeHi = 0U;
  info[46].mFileTimeLo = 0U;
  info[46].mFileTimeHi = 0U;
  info[47].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[47].name = "eml_scalexp_alloc";
  info[47].dominantType = "coder.internal.indexInt";
  info[47].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalexp_alloc.m";
  info[47].fileTimeLo = 1352446460U;
  info[47].fileTimeHi = 0U;
  info[47].mFileTimeLo = 0U;
  info[47].mFileTimeHi = 0U;
  info[48].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_bin_extremum";
  info[48].name = "eml_index_class";
  info[48].dominantType = "";
  info[48].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[48].fileTimeLo = 1323192178U;
  info[48].fileTimeHi = 0U;
  info[48].mFileTimeLo = 0U;
  info[48].mFileTimeHi = 0U;
  info[49].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_min_or_max.m!eml_scalar_bin_extremum";
  info[49].name = "eml_scalar_eg";
  info[49].dominantType = "coder.internal.indexInt";
  info[49].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_scalar_eg.m";
  info[49].fileTimeLo = 1286840396U;
  info[49].fileTimeHi = 0U;
  info[49].mFileTimeLo = 0U;
  info[49].mFileTimeHi = 0U;
  info[50].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/lapack/matlab/eml_matlab_zgetrf.m";
  info[50].name = "colon";
  info[50].dominantType = "double";
  info[50].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[50].fileTimeLo = 1348213528U;
  info[50].fileTimeHi = 0U;
  info[50].mFileTimeLo = 0U;
  info[50].mFileTimeHi = 0U;
  info[51].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[51].name = "colon";
  info[51].dominantType = "double";
  info[51].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[51].fileTimeLo = 1348213528U;
  info[51].fileTimeHi = 0U;
  info[51].mFileTimeLo = 0U;
  info[51].mFileTimeHi = 0U;
  info[52].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m";
  info[52].name = "floor";
  info[52].dominantType = "double";
  info[52].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[52].fileTimeLo = 1343851980U;
  info[52].fileTimeHi = 0U;
  info[52].mFileTimeLo = 0U;
  info[52].mFileTimeHi = 0U;
  info[53].context = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/floor.m";
  info[53].name = "eml_scalar_floor";
  info[53].dominantType = "double";
  info[53].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elfun/eml_scalar_floor.m";
  info[53].fileTimeLo = 1286840326U;
  info[53].fileTimeHi = 0U;
  info[53].mFileTimeLo = 0U;
  info[53].mFileTimeHi = 0U;
  info[54].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!checkrange";
  info[54].name = "intmin";
  info[54].dominantType = "char";
  info[54].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmin.m";
  info[54].fileTimeLo = 1311276918U;
  info[54].fileTimeHi = 0U;
  info[54].mFileTimeLo = 0U;
  info[54].mFileTimeHi = 0U;
  info[55].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!checkrange";
  info[55].name = "intmax";
  info[55].dominantType = "char";
  info[55].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[55].fileTimeLo = 1311276916U;
  info[55].fileTimeHi = 0U;
  info[55].mFileTimeLo = 0U;
  info[55].mFileTimeHi = 0U;
  info[56].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_integer_colon_dispatcher";
  info[56].name = "intmin";
  info[56].dominantType = "char";
  info[56].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmin.m";
  info[56].fileTimeLo = 1311276918U;
  info[56].fileTimeHi = 0U;
  info[56].mFileTimeLo = 0U;
  info[56].mFileTimeHi = 0U;
  info[57].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_integer_colon_dispatcher";
  info[57].name = "intmax";
  info[57].dominantType = "char";
  info[57].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[57].fileTimeLo = 1311276916U;
  info[57].fileTimeHi = 0U;
  info[57].mFileTimeLo = 0U;
  info[57].mFileTimeHi = 0U;
  info[58].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!eml_integer_colon_dispatcher";
  info[58].name = "eml_isa_uint";
  info[58].dominantType = "coder.internal.indexInt";
  info[58].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_isa_uint.m";
  info[58].fileTimeLo = 1286840384U;
  info[58].fileTimeHi = 0U;
  info[58].mFileTimeLo = 0U;
  info[58].mFileTimeHi = 0U;
  info[59].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[59].name = "eml_unsigned_class";
  info[59].dominantType = "char";
  info[59].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_unsigned_class.m";
  info[59].fileTimeLo = 1323192180U;
  info[59].fileTimeHi = 0U;
  info[59].mFileTimeLo = 0U;
  info[59].mFileTimeHi = 0U;
  info[60].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_unsigned_class.m";
  info[60].name = "eml_index_class";
  info[60].dominantType = "";
  info[60].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_index_class.m";
  info[60].fileTimeLo = 1323192178U;
  info[60].fileTimeHi = 0U;
  info[60].mFileTimeLo = 0U;
  info[60].mFileTimeHi = 0U;
  info[61].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
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
  info[62].name = "intmax";
  info[62].dominantType = "char";
  info[62].resolved = "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/elmat/intmax.m";
  info[62].fileTimeLo = 1311276916U;
  info[62].fileTimeHi = 0U;
  info[62].mFileTimeLo = 0U;
  info[62].mFileTimeHi = 0U;
  info[63].context =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/ops/colon.m!integer_colon_length_nonnegd";
  info[63].name = "eml_isa_uint";
  info[63].dominantType = "coder.internal.indexInt";
  info[63].resolved =
    "[ILXE]$matlabroot$/toolbox/eml/lib/matlab/eml/eml_isa_uint.m";
  info[63].fileTimeLo = 1286840384U;
  info[63].fileTimeHi = 0U;
  info[63].mFileTimeLo = 0U;
  info[63].mFileTimeHi = 0U;
}

static void k_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
  *msgId, emxArray_real_T *ret)
{
  int32_T iv7[2];
  boolean_T bv0[2];
  int32_T i4;
  static const boolean_T bv1[2] = { FALSE, TRUE };

  int32_T iv8[2];
  for (i4 = 0; i4 < 2; i4++) {
    iv7[i4] = 1 + -2 * i4;
    bv0[i4] = bv1[i4];
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

static void m_emlrt_marshallIn(const mxArray *src, const emlrtMsgIdentifier
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
  ResolvedFunctionInfo info[151];
  nameCaptureInfo = NULL;
  info_helper(info);
  b_info_helper(info);
  c_info_helper(info);
  emlrtAssign(&nameCaptureInfo, emlrt_marshallOut(info));
  emlrtNameCapturePostProcessR2012a(emlrtAlias(nameCaptureInfo));
  return nameCaptureInfo;
}

void naivePerfusionSSEProlP2X4_api(const mxArray *prhs[5], const mxArray *plhs[1])
{
  emxArray_real_T *ton;
  emxArray_real_T *toff;
  emxArray_real_T *T;
  emxArray_real_T *I;
  real_T Ttot;
  const mxArray *tmp;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);
  b_emxInit_real_T(&ton, 2, &f_emlrtRTEI, TRUE);
  b_emxInit_real_T(&toff, 2, &f_emlrtRTEI, TRUE);
  emxInit_real_T(&T, 1, &f_emlrtRTEI, TRUE);
  emxInit_real_T(&I, 1, &f_emlrtRTEI, TRUE);
  prhs[0] = emlrtProtectR2012b(prhs[0], 0, FALSE, -1);

  /* Marshall function inputs */
  emlrt_marshallIn(emlrtAlias(prhs[0]), "ton", ton);
  emlrt_marshallIn(emlrtAlias(prhs[1]), "toff", toff);
  Ttot = c_emlrt_marshallIn(emlrtAliasP(prhs[2]), "Ttot");
  e_emlrt_marshallIn(emlrtAlias(prhs[3]), "T", T);
  e_emlrt_marshallIn(emlrtAlias(prhs[4]), "I", I);

  /* Marshall in global variables */
  tmp = mexGetVariable("global", "p0");
  if (tmp) {
    g_emlrt_marshallIn(tmp, "p0", p0);
    p0_dirty = 0U;
  }

  tmp = mexGetVariable("global", "err");
  if (tmp) {
    err = c_emlrt_marshallIn(tmp, "err");
    err_dirty = 0U;
  }

  tmp = mexGetVariable("global", "A");
  if (tmp) {
    A = c_emlrt_marshallIn(tmp, "A");
    A_dirty = 0U;
  }

  tmp = mexGetVariable("global", "J");
  if (tmp) {
    J = c_emlrt_marshallIn(tmp, "J");
    J_dirty = 0U;
  }

  tmp = mexGetVariable("global", "IVMon");
  if (tmp) {
    IVMon = c_emlrt_marshallIn(tmp, "IVMon");
    IVMon_dirty = 0U;
  }

  tmp = mexGetVariable("global", "IVMoff");
  if (tmp) {
    IVMoff = c_emlrt_marshallIn(tmp, "IVMoff");
    IVMoff_dirty = 0U;
  }

  tmp = mexGetVariable("global", "Q");
  if (tmp) {
    i_emlrt_marshallIn(tmp, "Q", Q);
    Q_dirty = 0U;
  }

  tmp = mexGetVariable("global", "Acell");
  if (tmp) {
    Acell = c_emlrt_marshallIn(tmp, "Acell");
    Acell_dirty = 0U;
  }

  tmp = mexGetVariable("global", "g1");
  if (tmp) {
    g1 = c_emlrt_marshallIn(tmp, "g1");
    g1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "V");
  if (tmp) {
    V = c_emlrt_marshallIn(tmp, "V");
    V_dirty = 0U;
  }

  tmp = mexGetVariable("global", "E1");
  if (tmp) {
    E1 = c_emlrt_marshallIn(tmp, "E1");
    E1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "g2");
  if (tmp) {
    g2 = c_emlrt_marshallIn(tmp, "g2");
    g2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "E2");
  if (tmp) {
    E2 = c_emlrt_marshallIn(tmp, "E2");
    E2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k2");
  if (tmp) {
    k2 = c_emlrt_marshallIn(tmp, "k2");
    k2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L2");
  if (tmp) {
    L2 = c_emlrt_marshallIn(tmp, "L2");
    L2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L1");
  if (tmp) {
    L1 = c_emlrt_marshallIn(tmp, "L1");
    L1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k4");
  if (tmp) {
    k4 = c_emlrt_marshallIn(tmp, "k4");
    k4_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L4");
  if (tmp) {
    L4 = c_emlrt_marshallIn(tmp, "L4");
    L4_dirty = 0U;
  }

  tmp = mexGetVariable("global", "L3");
  if (tmp) {
    L3 = c_emlrt_marshallIn(tmp, "L3");
    L3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k6");
  if (tmp) {
    k6 = c_emlrt_marshallIn(tmp, "k6");
    k6_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k1");
  if (tmp) {
    k1 = c_emlrt_marshallIn(tmp, "k1");
    k1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H2");
  if (tmp) {
    H2 = c_emlrt_marshallIn(tmp, "H2");
    H2_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k3");
  if (tmp) {
    k3 = c_emlrt_marshallIn(tmp, "k3");
    k3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "k5");
  if (tmp) {
    k5 = c_emlrt_marshallIn(tmp, "k5");
    k5_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H1");
  if (tmp) {
    H1 = c_emlrt_marshallIn(tmp, "H1");
    H1_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H3");
  if (tmp) {
    H3 = c_emlrt_marshallIn(tmp, "H3");
    H3_dirty = 0U;
  }

  tmp = mexGetVariable("global", "H4");
  if (tmp) {
    H4 = c_emlrt_marshallIn(tmp, "H4");
    H4_dirty = 0U;
  }

  /* Invoke the target function */
  Ttot = naivePerfusionSSEProlP2X4(ton, toff, Ttot, T, I);

  /* Marshall out global variables */
  mexPutVariable("global", "p0", b_emlrt_marshallOut(p0));
  mexPutVariable("global", "err", c_emlrt_marshallOut(err));
  mexPutVariable("global", "A", c_emlrt_marshallOut(A));
  mexPutVariable("global", "J", c_emlrt_marshallOut(J));
  mexPutVariable("global", "IVMon", c_emlrt_marshallOut(IVMon));
  mexPutVariable("global", "IVMoff", c_emlrt_marshallOut(IVMoff));
  mexPutVariable("global", "Q", d_emlrt_marshallOut(Q));
  mexPutVariable("global", "Acell", c_emlrt_marshallOut(Acell));
  mexPutVariable("global", "g1", c_emlrt_marshallOut(g1));
  mexPutVariable("global", "V", c_emlrt_marshallOut(V));
  mexPutVariable("global", "E1", c_emlrt_marshallOut(E1));
  mexPutVariable("global", "g2", c_emlrt_marshallOut(g2));
  mexPutVariable("global", "E2", c_emlrt_marshallOut(E2));
  mexPutVariable("global", "k2", c_emlrt_marshallOut(k2));
  mexPutVariable("global", "L2", c_emlrt_marshallOut(L2));
  mexPutVariable("global", "L1", c_emlrt_marshallOut(L1));
  mexPutVariable("global", "k4", c_emlrt_marshallOut(k4));
  mexPutVariable("global", "L4", c_emlrt_marshallOut(L4));
  mexPutVariable("global", "L3", c_emlrt_marshallOut(L3));
  mexPutVariable("global", "k6", c_emlrt_marshallOut(k6));
  mexPutVariable("global", "k1", c_emlrt_marshallOut(k1));
  mexPutVariable("global", "H2", c_emlrt_marshallOut(H2));
  mexPutVariable("global", "k3", c_emlrt_marshallOut(k3));
  mexPutVariable("global", "k5", c_emlrt_marshallOut(k5));
  mexPutVariable("global", "H1", c_emlrt_marshallOut(H1));
  mexPutVariable("global", "H3", c_emlrt_marshallOut(H3));
  mexPutVariable("global", "H4", c_emlrt_marshallOut(H4));

  /* Marshall function outputs */
  plhs[0] = c_emlrt_marshallOut(Ttot);
  I->canFreeData = FALSE;
  emxFree_real_T(&I);
  T->canFreeData = FALSE;
  emxFree_real_T(&T);
  toff->canFreeData = FALSE;
  emxFree_real_T(&toff);
  ton->canFreeData = FALSE;
  emxFree_real_T(&ton);
  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
}

/* End of code generation (naivePerfusionSSEProlP2X4_api.c) */
