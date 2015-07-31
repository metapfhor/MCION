/*
 * naivePerfusionSSEIntegratorcalP2X7_types.h
 *
 * Code generation for function 'naivePerfusionSSEIntegratorcalP2X7'
 *
 * C source code generated on: Fri May 16 09:59:48 2014
 *
 */

#ifndef __NAIVEPERFUSIONSSEINTEGRATORCALP2X7_TYPES_H__
#define __NAIVEPERFUSIONSSEINTEGRATORCALP2X7_TYPES_H__

/* Include files */
#include "rtwtypes.h"

/* Type Definitions */
#ifndef typedef_ResolvedFunctionInfo
#define typedef_ResolvedFunctionInfo
typedef struct
{
    const char * context;
    const char * name;
    const char * dominantType;
    const char * resolved;
    uint32_T fileTimeLo;
    uint32_T fileTimeHi;
    uint32_T mFileTimeLo;
    uint32_T mFileTimeHi;
} ResolvedFunctionInfo;
#endif /*typedef_ResolvedFunctionInfo*/
#ifndef struct_emxArray_real_T
#define struct_emxArray_real_T
struct emxArray_real_T
{
    real_T *data;
    int32_T *size;
    int32_T allocatedSize;
    int32_T numDimensions;
    boolean_T canFreeData;
};
#endif /*struct_emxArray_real_T*/
#ifndef typedef_emxArray_real_T
#define typedef_emxArray_real_T
typedef struct emxArray_real_T emxArray_real_T;
#endif /*typedef_emxArray_real_T*/

#endif
/* End of code generation (naivePerfusionSSEIntegratorcalP2X7_types.h) */
