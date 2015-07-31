/*
 * naivePerfusionSSEcalP2X7_mex.c
 *
 * Code generation for function 'naivePerfusionSSEcalP2X7'
 *
 * C source code generated on: Tue May 27 13:41:57 2014
 *
 */

/* Include files */
#include "mex.h"
#include "naivePerfusionSSEcalP2X7_api.h"
#include "naivePerfusionSSEcalP2X7_initialize.h"
#include "naivePerfusionSSEcalP2X7_terminate.h"

/* Function Declarations */
static void naivePerfusionSSEcalP2X7_mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[]);
MEXFUNCTION_LINKAGE mxArray *emlrtMexFcnProperties(void);

/* Variable Definitions */
emlrtContext emlrtContextGlobal = { true, false, EMLRT_VERSION_INFO, NULL, "naivePerfusionSSEcalP2X7", NULL, false, {2045744189U,2170104910U,2743257031U,4284093946U}, NULL };
emlrtCTX emlrtRootTLSGlobal = NULL;

/* Function Definitions */
static void naivePerfusionSSEcalP2X7_mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
  mxArray *outputs[1];
  mxArray *inputs[5];
  int n = 0;
  int nOutputs = (nlhs < 1 ? 1 : nlhs);
  int nInputs = nrhs;
  /* Module initialization. */
  naivePerfusionSSEcalP2X7_initialize(&emlrtContextGlobal);
  /* Check for proper number of arguments. */
  if (nrhs != 5) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal, "EMLRT:runTime:WrongNumberOfInputs", 5, mxINT32_CLASS, 5, mxCHAR_CLASS, 24, "naivePerfusionSSEcalP2X7");
  } else if (nlhs > 1) {
    emlrtErrMsgIdAndTxt(emlrtRootTLSGlobal, "EMLRT:runTime:TooManyOutputArguments", 3, mxCHAR_CLASS, 24, "naivePerfusionSSEcalP2X7");
  }
  /* Temporary copy for mex inputs. */
  for (n = 0; n < nInputs; ++n) {
    inputs[n] = (mxArray *)prhs[n];
  }
  /* Call the function. */
  naivePerfusionSSEcalP2X7_api((const mxArray**)inputs, (const mxArray**)outputs);
  /* Copy over outputs to the caller. */
  for (n = 0; n < nOutputs; ++n) {
    plhs[n] = emlrtReturnArrayR2009a(outputs[n]);
  }
  /* Module finalization. */
  naivePerfusionSSEcalP2X7_terminate();
}

void naivePerfusionSSEcalP2X7_atexit_wrapper(void)
{
   naivePerfusionSSEcalP2X7_atexit();
}

void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
  /* Initialize the memory manager. */
  mexAtExit(naivePerfusionSSEcalP2X7_atexit_wrapper);
  /* Dispatch the entry-point. */
  naivePerfusionSSEcalP2X7_mexFunction(nlhs, plhs, nrhs, prhs);
}

mxArray *emlrtMexFcnProperties(void)
{
  const char *mexProperties[] = {
    "Version",
    "ResolvedFunctions",
    "EntryPoints"};
  const char *epProperties[] = {
    "Name",
    "NumberOfInputs",
    "NumberOfOutputs",
    "ConstantInputs"};
  mxArray *xResult = mxCreateStructMatrix(1,1,3,mexProperties);
  mxArray *xEntryPoints = mxCreateStructMatrix(1,1,4,epProperties);
  mxArray *xInputs = NULL;
  xInputs = mxCreateLogicalMatrix(1, 5);
  mxSetFieldByNumber(xEntryPoints, 0, 0, mxCreateString("naivePerfusionSSEcalP2X7"));
  mxSetFieldByNumber(xEntryPoints, 0, 1, mxCreateDoubleScalar(5));
  mxSetFieldByNumber(xEntryPoints, 0, 2, mxCreateDoubleScalar(1));
  mxSetFieldByNumber(xEntryPoints, 0, 3, xInputs);
  mxSetFieldByNumber(xResult, 0, 0, mxCreateString("8.1.0.604 (R2013a)"));
  mxSetFieldByNumber(xResult, 0, 1, (mxArray*)emlrtMexFcnResolvedFunctionsInfo());
  mxSetFieldByNumber(xResult, 0, 2, xEntryPoints);

  return xResult;
}
/* End of code generation (naivePerfusionSSEcalP2X7_mex.c) */
