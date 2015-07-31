/*
 * linearODESSEcalP2X7.c
 *
 * Code generation for function 'linearODESSEcalP2X7'
 *
 * C source code generated on: Tue May 27 13:41:57 2014
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "naivePerfusionSSEcalP2X7.h"
#include "linearODESSEcalP2X7.h"
#include "naivePerfusionSSEcalP2X7_mexutil.h"
#include "expm.h"
#include "naivePerfusionSSEcalP2X7_data.h"

/* Variable Definitions */
static emlrtRSInfo i_emlrtRSI = { 5, "linearODESSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m"
};

static emlrtRSInfo j_emlrtRSI = { 10, "linearODESSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m"
};

static emlrtRSInfo k_emlrtRSI = { 52, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo l_emlrtRSI = { 62, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtRSInfo m_emlrtRSI = { 64, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtBCInfo k_emlrtBCI = { -1, -1, 10, 16, "T", "linearODESSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m",
  0 };

static emlrtRTEInfo f_emlrtRTEI = { 63, 5, "expm",
  "/usr/local/pkgs/MATLAB/R2013a/toolbox/eml/lib/matlab/matfun/expm.m" };

static emlrtBCInfo l_emlrtBCI = { -1, -1, 11, 109, "I", "linearODESSEcalP2X7",
  "/home/lmackay/gdrive/Research/Anmar/P2X-data/P2X7/Models/linearODESSEcalP2X7.m",
  0 };

/* Function Definitions */
void linearODESSEcalP2X7(const emxArray_real_T *T, const emxArray_real_T *I)
{
  int32_T i;
  real_T hoistedGlobal[24];
  int32_T j;
  int32_T b_i;
  real_T normA;
  real_T y[576];
  real_T F[576];
  boolean_T exitg2;
  real_T s;
  boolean_T exitg1;
  static const real_T theta[5] = { 0.01495585217958292, 0.253939833006323,
    0.95041789961629319, 2.097847961257068, 5.3719203511481517 };

  static const int8_T iv2[5] = { 3, 5, 7, 9, 13 };

  int32_T eint;
  real_T b_y[576];
  real_T beta1;
  char_T TRANSB;
  char_T TRANSA;
  ptrdiff_t m_t;
  ptrdiff_t n_t;
  ptrdiff_t k_t;
  ptrdiff_t lda_t;
  ptrdiff_t ldb_t;
  ptrdiff_t ldc_t;
  double * alpha1_t;
  double * Aia0_t;
  double * Bib0_t;
  double * beta1_t;
  double * Cic0_t;
  emlrtPushRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  Q[0] = -kca * C - 3.0 * k2 * A;
  Q[24] = 3.0 * k2 * A;
  Q[48] = 0.0;
  Q[72] = 0.0;
  Q[96] = 0.0;
  Q[120] = 0.0;
  Q[144] = 0.0;
  Q[168] = 0.0;
  Q[192] = 0.0;
  Q[216] = 0.0;
  Q[240] = 0.0;
  Q[264] = 0.0;
  Q[288] = kca * C;
  Q[312] = 0.0;
  Q[336] = 0.0;
  Q[360] = 0.0;
  Q[384] = 0.0;
  Q[408] = 0.0;
  Q[432] = 0.0;
  Q[456] = 0.0;
  Q[480] = 0.0;
  Q[504] = 0.0;
  Q[528] = 0.0;
  Q[552] = 0.0;
  Q[1] = k1;
  Q[25] = ((-kca * C - k1) - 2.0 * k4 * A) - H3;
  Q[49] = 0.0;
  Q[73] = 0.0;
  Q[97] = 2.0 * k4 * A;
  Q[121] = 0.0;
  Q[145] = 0.0;
  Q[169] = 0.0;
  Q[193] = 0.0;
  Q[217] = H3;
  Q[241] = 0.0;
  Q[265] = 0.0;
  Q[289] = 0.0;
  Q[313] = kca * C;
  Q[337] = 0.0;
  Q[361] = 0.0;
  Q[385] = 0.0;
  Q[409] = 0.0;
  Q[433] = 0.0;
  Q[457] = 0.0;
  Q[481] = 0.0;
  Q[505] = 0.0;
  Q[529] = 0.0;
  Q[553] = 0.0;
  Q[2] = 0.0;
  Q[26] = 0.0;
  Q[50] = (-kca * C - k1) - 2.0 * k2 * A;
  Q[74] = k1;
  Q[98] = 0.0;
  Q[122] = 0.0;
  Q[146] = 0.0;
  Q[170] = 2.0 * k2 * A;
  Q[194] = 0.0;
  Q[218] = 0.0;
  Q[242] = 0.0;
  Q[266] = 0.0;
  Q[290] = 0.0;
  Q[314] = 0.0;
  Q[338] = 0.0;
  Q[362] = 0.0;
  Q[386] = 0.0;
  Q[410] = 0.0;
  Q[434] = 0.0;
  Q[458] = 0.0;
  Q[482] = 0.0;
  Q[506] = kca * C;
  Q[530] = 0.0;
  Q[554] = 0.0;
  Q[3] = L1;
  Q[27] = 0.0;
  Q[51] = 3.0 * k2 * A;
  Q[75] = (-kca * C - 3.0 * k2 * A) - L1;
  Q[99] = 0.0;
  Q[123] = 0.0;
  Q[147] = 0.0;
  Q[171] = 0.0;
  Q[195] = 0.0;
  Q[219] = 0.0;
  Q[243] = 0.0;
  Q[267] = 0.0;
  Q[291] = 0.0;
  Q[315] = 0.0;
  Q[339] = 0.0;
  Q[363] = 0.0;
  Q[387] = 0.0;
  Q[411] = 0.0;
  Q[435] = 0.0;
  Q[459] = 0.0;
  Q[483] = kca * C;
  Q[507] = 0.0;
  Q[531] = 0.0;
  Q[555] = 0.0;
  Q[4] = 0.0;
  Q[28] = 2.0 * k3;
  Q[52] = 0.0;
  Q[76] = 0.0;
  Q[100] = ((-kca * C - 2.0 * k3) - k6 * A) - H5;
  Q[124] = k6 * A;
  Q[148] = 0.0;
  Q[172] = 0.0;
  Q[196] = 0.0;
  Q[220] = 0.0;
  Q[244] = H5;
  Q[268] = 0.0;
  Q[292] = 0.0;
  Q[316] = 0.0;
  Q[340] = kca * C;
  Q[364] = 0.0;
  Q[388] = 0.0;
  Q[412] = 0.0;
  Q[436] = 0.0;
  Q[460] = 0.0;
  Q[484] = 0.0;
  Q[508] = 0.0;
  Q[532] = 0.0;
  Q[556] = 0.0;
  Q[5] = 0.0;
  Q[29] = 0.0;
  Q[53] = 0.0;
  Q[77] = 0.0;
  Q[101] = 3.0 * k5;
  Q[125] = ((-kca * C - 3.0 * k5) - L3) - H7;
  Q[149] = L3;
  Q[173] = 0.0;
  Q[197] = 0.0;
  Q[221] = 0.0;
  Q[245] = 0.0;
  Q[269] = H7;
  Q[293] = 0.0;
  Q[317] = 0.0;
  Q[341] = 0.0;
  Q[365] = kca * C;
  Q[389] = 0.0;
  Q[413] = 0.0;
  Q[437] = 0.0;
  Q[461] = 0.0;
  Q[485] = 0.0;
  Q[509] = 0.0;
  Q[533] = 0.0;
  Q[557] = 0.0;
  Q[6] = 0.0;
  Q[30] = 0.0;
  Q[54] = 0.0;
  Q[78] = 0.0;
  Q[102] = 0.0;
  Q[126] = L2;
  Q[150] = (-kca * C - 3.0 * k1) - L2;
  Q[174] = 3.0 * k1;
  Q[198] = 0.0;
  Q[222] = 0.0;
  Q[246] = 0.0;
  Q[270] = 0.0;
  Q[294] = 0.0;
  Q[318] = 0.0;
  Q[342] = 0.0;
  Q[366] = 0.0;
  Q[390] = 0.0;
  Q[414] = 0.0;
  Q[438] = 0.0;
  Q[462] = 0.0;
  Q[486] = 0.0;
  Q[510] = 0.0;
  Q[534] = 0.0;
  Q[558] = kca * C;
  Q[7] = 0.0;
  Q[31] = 0.0;
  Q[55] = 2.0 * k1;
  Q[79] = 0.0;
  Q[103] = 0.0;
  Q[127] = 0.0;
  Q[151] = k2 * A;
  Q[175] = (-kca * C - 2.0 * k1) - k2 * A;
  Q[199] = 0.0;
  Q[223] = 0.0;
  Q[247] = 0.0;
  Q[271] = 0.0;
  Q[295] = 0.0;
  Q[319] = 0.0;
  Q[343] = 0.0;
  Q[367] = 0.0;
  Q[391] = 0.0;
  Q[415] = 0.0;
  Q[439] = 0.0;
  Q[463] = 0.0;
  Q[487] = 0.0;
  Q[511] = 0.0;
  Q[535] = kca * C;
  Q[559] = 0.0;
  Q[8] = H1;
  Q[32] = 0.0;
  Q[56] = 0.0;
  Q[80] = 0.0;
  Q[104] = 0.0;
  Q[128] = 0.0;
  Q[152] = 0.0;
  Q[176] = 0.0;
  Q[200] = (-kca * C - 3.0 * k2 * A) - H1;
  Q[224] = 3.0 * k2 * A;
  Q[248] = 0.0;
  Q[272] = 0.0;
  Q[296] = 0.0;
  Q[320] = 0.0;
  Q[344] = 0.0;
  Q[368] = 0.0;
  Q[392] = kca * C;
  Q[416] = 0.0;
  Q[440] = 0.0;
  Q[464] = 0.0;
  Q[488] = 0.0;
  Q[512] = 0.0;
  Q[536] = 0.0;
  Q[560] = 0.0;
  Q[9] = 0.0;
  Q[33] = H2;
  Q[57] = 0.0;
  Q[81] = 0.0;
  Q[105] = 0.0;
  Q[129] = 0.0;
  Q[153] = 0.0;
  Q[177] = 0.0;
  Q[201] = k1;
  Q[225] = ((-kca * C - k1) - 2.0 * k4 * A) - H2;
  Q[249] = 2.0 * k4 * A;
  Q[273] = 0.0;
  Q[297] = 0.0;
  Q[321] = 0.0;
  Q[345] = 0.0;
  Q[369] = 0.0;
  Q[393] = 0.0;
  Q[417] = kca * C;
  Q[441] = 0.0;
  Q[465] = 0.0;
  Q[489] = 0.0;
  Q[513] = 0.0;
  Q[537] = 0.0;
  Q[561] = 0.0;
  Q[10] = 0.0;
  Q[34] = 0.0;
  Q[58] = 0.0;
  Q[82] = 0.0;
  Q[106] = H4;
  Q[130] = 0.0;
  Q[154] = 0.0;
  Q[178] = 0.0;
  Q[202] = 0.0;
  Q[226] = 2.0 * k3;
  Q[250] = ((-kca * C - 2.0 * k3) - k6 * A) - H4;
  Q[274] = k6 * A;
  Q[298] = 0.0;
  Q[322] = 0.0;
  Q[346] = 0.0;
  Q[370] = 0.0;
  Q[394] = 0.0;
  Q[418] = 0.0;
  Q[442] = kca * C;
  Q[466] = 0.0;
  Q[490] = 0.0;
  Q[514] = 0.0;
  Q[538] = 0.0;
  Q[562] = 0.0;
  Q[11] = 0.0;
  Q[35] = 0.0;
  Q[59] = 0.0;
  Q[83] = 0.0;
  Q[107] = 0.0;
  Q[131] = H6;
  Q[155] = 0.0;
  Q[179] = 0.0;
  Q[203] = 0.0;
  Q[227] = 0.0;
  Q[251] = 3.0 * k5;
  Q[275] = (-kca * C - 3.0 * k5) - H6;
  Q[299] = 0.0;
  Q[323] = 0.0;
  Q[347] = 0.0;
  Q[371] = 0.0;
  Q[395] = 0.0;
  Q[419] = 0.0;
  Q[443] = 0.0;
  Q[467] = kca * C;
  Q[491] = 0.0;
  Q[515] = 0.0;
  Q[539] = 0.0;
  Q[563] = 0.0;
  Q[12] = koff;
  Q[36] = 0.0;
  Q[60] = 0.0;
  Q[84] = 0.0;
  Q[108] = 0.0;
  Q[132] = 0.0;
  Q[156] = 0.0;
  Q[180] = 0.0;
  Q[204] = 0.0;
  Q[228] = 0.0;
  Q[252] = 0.0;
  Q[276] = 0.0;
  Q[300] = -koff - 3.0 * k2 * r2 * A;
  Q[324] = 3.0 * k2 * r2 * A;
  Q[348] = 0.0;
  Q[372] = 0.0;
  Q[396] = 0.0;
  Q[420] = 0.0;
  Q[444] = 0.0;
  Q[468] = 0.0;
  Q[492] = 0.0;
  Q[516] = 0.0;
  Q[540] = 0.0;
  Q[564] = 0.0;
  Q[13] = 0.0;
  Q[37] = koff;
  Q[61] = 0.0;
  Q[85] = 0.0;
  Q[109] = 0.0;
  Q[133] = 0.0;
  Q[157] = 0.0;
  Q[181] = 0.0;
  Q[205] = 0.0;
  Q[229] = 0.0;
  Q[253] = 0.0;
  Q[277] = 0.0;
  Q[301] = k1 * r1;
  Q[325] = ((-koff - k1 * r1) - 2.0 * k4 * r2 * A) - H3;
  Q[349] = 2.0 * k4 * r2 * A;
  Q[373] = 0.0;
  Q[397] = 0.0;
  Q[421] = H3;
  Q[445] = 0.0;
  Q[469] = 0.0;
  Q[493] = 0.0;
  Q[517] = 0.0;
  Q[541] = 0.0;
  Q[565] = 0.0;
  Q[14] = 0.0;
  Q[38] = 0.0;
  Q[62] = 0.0;
  Q[86] = 0.0;
  Q[110] = koff;
  Q[134] = 0.0;
  Q[158] = 0.0;
  Q[182] = 0.0;
  Q[206] = 0.0;
  Q[230] = 0.0;
  Q[254] = 0.0;
  Q[278] = 0.0;
  Q[302] = 0.0;
  Q[326] = 2.0 * k3 * r1;
  Q[350] = ((-koff - 2.0 * k3 * r1) - k6 * r2 * A) - H5;
  Q[374] = k6 * r2 * A;
  Q[398] = 0.0;
  Q[422] = 0.0;
  Q[446] = H5;
  Q[470] = 0.0;
  Q[494] = 0.0;
  Q[518] = 0.0;
  Q[542] = 0.0;
  Q[566] = 0.0;
  Q[15] = 0.0;
  Q[39] = 0.0;
  Q[63] = 0.0;
  Q[87] = 0.0;
  Q[111] = 0.0;
  Q[135] = koff;
  Q[159] = 0.0;
  Q[183] = 0.0;
  Q[207] = 0.0;
  Q[231] = 0.0;
  Q[255] = 0.0;
  Q[279] = 0.0;
  Q[303] = 0.0;
  Q[327] = 0.0;
  Q[351] = 3.0 * k5 * r1;
  Q[375] = ((-koff - 3.0 * k5 * r1) - L3) - H7;
  Q[399] = 0.0;
  Q[423] = 0.0;
  Q[447] = 0.0;
  Q[471] = H7;
  Q[495] = 0.0;
  Q[519] = 0.0;
  Q[543] = 0.0;
  Q[567] = L3;
  Q[16] = 0.0;
  Q[40] = 0.0;
  Q[64] = 0.0;
  Q[88] = 0.0;
  Q[112] = 0.0;
  Q[136] = 0.0;
  Q[160] = 0.0;
  Q[184] = 0.0;
  Q[208] = koff;
  Q[232] = 0.0;
  Q[256] = 0.0;
  Q[280] = 0.0;
  Q[304] = H1;
  Q[328] = 0.0;
  Q[352] = 0.0;
  Q[376] = 0.0;
  Q[400] = (-koff - 3.0 * k2 * r2 * A) - H1;
  Q[424] = 3.0 * k2 * r2 * A;
  Q[448] = 0.0;
  Q[472] = 0.0;
  Q[496] = 0.0;
  Q[520] = 0.0;
  Q[544] = 0.0;
  Q[568] = 0.0;
  Q[17] = 0.0;
  Q[41] = 0.0;
  Q[65] = 0.0;
  Q[89] = 0.0;
  Q[113] = 0.0;
  Q[137] = 0.0;
  Q[161] = 0.0;
  Q[185] = 0.0;
  Q[209] = 0.0;
  Q[233] = koff;
  Q[257] = 0.0;
  Q[281] = 0.0;
  Q[305] = 0.0;
  Q[329] = H2;
  Q[353] = 0.0;
  Q[377] = 0.0;
  Q[401] = k1 * r1;
  Q[425] = ((-koff - k1 * r1) - 2.0 * k4 * r2 * A) - H2;
  Q[449] = 2.0 * k4 * r2 * A;
  Q[473] = 0.0;
  Q[497] = 0.0;
  Q[521] = 0.0;
  Q[545] = 0.0;
  Q[569] = 0.0;
  Q[18] = 0.0;
  Q[42] = 0.0;
  Q[66] = 0.0;
  Q[90] = 0.0;
  Q[114] = 0.0;
  Q[138] = 0.0;
  Q[162] = 0.0;
  Q[186] = 0.0;
  Q[210] = 0.0;
  Q[234] = 0.0;
  Q[258] = koff;
  Q[282] = 0.0;
  Q[306] = 0.0;
  Q[330] = 0.0;
  Q[354] = H4;
  Q[378] = 0.0;
  Q[402] = 0.0;
  Q[426] = 2.0 * k3 * r1;
  Q[450] = ((-koff - 2.0 * k3 * r1) - k6 * r2 * A) - H4;
  Q[474] = k6 * r2 * A;
  Q[498] = 0.0;
  Q[522] = 0.0;
  Q[546] = 0.0;
  Q[570] = 0.0;
  Q[19] = 0.0;
  Q[43] = 0.0;
  Q[67] = 0.0;
  Q[91] = 0.0;
  Q[115] = 0.0;
  Q[139] = 0.0;
  Q[163] = 0.0;
  Q[187] = 0.0;
  Q[211] = 0.0;
  Q[235] = 0.0;
  Q[259] = 0.0;
  Q[283] = koff;
  Q[307] = 0.0;
  Q[331] = 0.0;
  Q[355] = 0.0;
  Q[379] = H6;
  Q[403] = 0.0;
  Q[427] = 0.0;
  Q[451] = 3.0 * k5 * r1;
  Q[475] = (-koff - 3.0 * k5 * r1) - H6;
  Q[499] = 0.0;
  Q[523] = 0.0;
  Q[547] = 0.0;
  Q[571] = 0.0;
  Q[20] = 0.0;
  Q[44] = 0.0;
  Q[68] = 0.0;
  Q[92] = koff;
  Q[116] = 0.0;
  Q[140] = 0.0;
  Q[164] = 0.0;
  Q[188] = 0.0;
  Q[212] = 0.0;
  Q[236] = 0.0;
  Q[260] = 0.0;
  Q[284] = 0.0;
  Q[308] = L1;
  Q[332] = 0.0;
  Q[356] = 0.0;
  Q[380] = 0.0;
  Q[404] = 0.0;
  Q[428] = 0.0;
  Q[452] = 0.0;
  Q[476] = 0.0;
  Q[500] = (-koff - 3.0 * k2 * r2 * A) - L1;
  Q[524] = 3.0 * k2 * r2 * A;
  Q[548] = 0.0;
  Q[572] = 0.0;
  Q[21] = 0.0;
  Q[45] = 0.0;
  Q[69] = koff;
  Q[93] = 0.0;
  Q[117] = 0.0;
  Q[141] = 0.0;
  Q[165] = 0.0;
  Q[189] = 0.0;
  Q[213] = 0.0;
  Q[237] = 0.0;
  Q[261] = 0.0;
  Q[285] = 0.0;
  Q[309] = 0.0;
  Q[333] = 0.0;
  Q[357] = 0.0;
  Q[381] = 0.0;
  Q[405] = 0.0;
  Q[429] = 0.0;
  Q[453] = 0.0;
  Q[477] = 0.0;
  Q[501] = k1 * r1;
  Q[525] = (-koff - k1 * r1) - 2.0 * k2 * r2 * A;
  Q[549] = 2.0 * k2 * r2 * A;
  Q[573] = 0.0;
  Q[22] = 0.0;
  Q[46] = 0.0;
  Q[70] = 0.0;
  Q[94] = 0.0;
  Q[118] = 0.0;
  Q[142] = 0.0;
  Q[166] = 0.0;
  Q[190] = koff;
  Q[214] = 0.0;
  Q[238] = 0.0;
  Q[262] = 0.0;
  Q[286] = 0.0;
  Q[310] = 0.0;
  Q[334] = 0.0;
  Q[358] = 0.0;
  Q[382] = 0.0;
  Q[406] = 0.0;
  Q[430] = 0.0;
  Q[454] = 0.0;
  Q[478] = 0.0;
  Q[502] = 0.0;
  Q[526] = 2.0 * k1 * r1;
  Q[550] = (-koff - 2.0 * k1 * r1) - k2 * r2 * A;
  Q[574] = k2 * r2 * A;
  Q[23] = 0.0;
  Q[47] = 0.0;
  Q[71] = 0.0;
  Q[95] = 0.0;
  Q[119] = 0.0;
  Q[143] = 0.0;
  Q[167] = koff;
  Q[191] = 0.0;
  Q[215] = 0.0;
  Q[239] = 0.0;
  Q[263] = 0.0;
  Q[287] = 0.0;
  Q[311] = 0.0;
  Q[335] = 0.0;
  Q[359] = 0.0;
  Q[383] = L2;
  Q[407] = 0.0;
  Q[431] = 0.0;
  Q[455] = 0.0;
  Q[479] = 0.0;
  Q[503] = 0.0;
  Q[527] = 0.0;
  Q[551] = 3.0 * k1 * r1;
  Q[575] = (-koff - 3.0 * k1 * r1) - L2;
  Q_dirty |= 1U;
  emlrtPopRtStackR2012b(&i_emlrtRSI, emlrtRootTLSGlobal);
  i = 0;
  while (i <= T->size[0] - 1) {
    emlrtPushRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
    memcpy(&hoistedGlobal[0], &p0[0], 24U * sizeof(real_T));
    j = T->size[0];
    b_i = (int32_T)(1.0 + (real_T)i);
    emlrtDynamicBoundsCheckFastR2012b(b_i, 1, j, &k_emlrtBCI, emlrtRootTLSGlobal);
    normA = T->data[i];
    for (j = 0; j < 576; j++) {
      y[j] = Q[j] * normA;
    }

    normA = 0.0;
    j = 0;
    exitg2 = FALSE;
    while ((exitg2 == FALSE) && (j < 24)) {
      s = 0.0;
      for (b_i = 0; b_i < 24; b_i++) {
        s += muDoubleScalarAbs(y[b_i + 24 * j]);
      }

      if (muDoubleScalarIsNaN(s)) {
        normA = rtNaN;
        exitg2 = TRUE;
      } else {
        if (s > normA) {
          normA = s;
        }

        j++;
      }
    }

    if (normA <= 5.3719203511481517) {
      b_i = 0;
      exitg1 = FALSE;
      while ((exitg1 == FALSE) && (b_i < 5)) {
        if (normA <= theta[b_i]) {
          emlrtPushRtStackR2012b(&k_emlrtRSI, emlrtRootTLSGlobal);
          PadeApproximantOfDegree(y, iv2[b_i], F);
          emlrtPopRtStackR2012b(&k_emlrtRSI, emlrtRootTLSGlobal);
          exitg1 = TRUE;
        } else {
          b_i++;
        }
      }
    } else {
      normA /= 5.3719203511481517;
      if ((!muDoubleScalarIsInf(normA)) && (!muDoubleScalarIsNaN(normA))) {
        normA = frexp(normA, &eint);
        j = eint;
      } else {
        j = 0;
      }

      s = j;
      if (normA == 0.5) {
        s = (real_T)j - 1.0;
      }

      normA = muDoubleScalarPower(2.0, s);
      emlrtPushRtStackR2012b(&l_emlrtRSI, emlrtRootTLSGlobal);
      for (j = 0; j < 576; j++) {
        b_y[j] = y[j] / normA;
      }

      PadeApproximantOfDegree(b_y, 13.0, F);
      emlrtPopRtStackR2012b(&l_emlrtRSI, emlrtRootTLSGlobal);
      emlrtForLoopVectorCheckR2012b(1.0, 1.0, s, mxDOUBLE_CLASS, (int32_T)s,
        &f_emlrtRTEI, emlrtRootTLSGlobal);
      for (j = 0; j < (int32_T)s; j++) {
        emlrtPushRtStackR2012b(&m_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        memcpy(&y[0], &F[0], 576U * sizeof(real_T));
        emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        normA = 1.0;
        beta1 = 0.0;
        TRANSB = 'N';
        TRANSA = 'N';
        memset(&F[0], 0, 576U * sizeof(real_T));
        emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        m_t = (ptrdiff_t)(24);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        n_t = (ptrdiff_t)(24);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        k_t = (ptrdiff_t)(24);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        lda_t = (ptrdiff_t)(24);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldb_t = (ptrdiff_t)(24);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        ldc_t = (ptrdiff_t)(24);
        emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        alpha1_t = (double *)(&normA);
        emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Aia0_t = (double *)(&y[0]);
        emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Bib0_t = (double *)(&y[0]);
        emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        beta1_t = (double *)(&beta1);
        emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        Cic0_t = (double *)(&F[0]);
        emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrt_checkEscapedGlobals();
        dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t,
              Bib0_t, &ldb_t, beta1_t, Cic0_t, &ldc_t);
        emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
        emlrtPopRtStackR2012b(&m_emlrtRSI, emlrtRootTLSGlobal);
      }
    }

    emlrtPushRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
    normA = 1.0;
    beta1 = 0.0;
    TRANSB = 'N';
    TRANSA = 'N';
    memset(&p0[0], 0, 24U * sizeof(real_T));
    emlrtPushRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    m_t = (ptrdiff_t)(1);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&cb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    n_t = (ptrdiff_t)(24);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&db_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    k_t = (ptrdiff_t)(24);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&eb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    lda_t = (ptrdiff_t)(1);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&fb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    ldb_t = (ptrdiff_t)(24);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&gb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    ldc_t = (ptrdiff_t)(1);
    emlrtPopRtStackR2012b(&ob_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&hb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    alpha1_t = (double *)(&normA);
    emlrtPopRtStackR2012b(&ib_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Aia0_t = (double *)(&hoistedGlobal[0]);
    emlrtPopRtStackR2012b(&jb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Bib0_t = (double *)(&F[0]);
    emlrtPopRtStackR2012b(&kb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    beta1_t = (double *)(&beta1);
    emlrtPopRtStackR2012b(&lb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    Cic0_t = (double *)(&p0[0]);
    emlrtPopRtStackR2012b(&mb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPushRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
    emlrt_checkEscapedGlobals();
    dgemm(&TRANSA, &TRANSB, &m_t, &n_t, &k_t, alpha1_t, Aia0_t, &lda_t, Bib0_t,
          &ldb_t, beta1_t, Cic0_t, &ldc_t);
    emlrtPopRtStackR2012b(&nb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&bb_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&ab_emlrtRSI, emlrtRootTLSGlobal);
    emlrtPopRtStackR2012b(&y_emlrtRSI, emlrtRootTLSGlobal);
    p0_dirty |= 1U;
    emlrtPopRtStackR2012b(&j_emlrtRSI, emlrtRootTLSGlobal);
    j = I->size[0];
    b_i = 1 + i;
    normA = Acell * 1.0E+12 * (g12 * (((p0[4] + p0[5]) + p0[14]) + p0[15]) * (V
      - E12) + g34 * (((p0[6] + p0[7]) + p0[23]) + p0[22]) * (V - E34)) -
      I->data[emlrtDynamicBoundsCheckFastR2012b(b_i, 1, j, &l_emlrtBCI,
      emlrtRootTLSGlobal) - 1];
    normA = muDoubleScalarAbs(normA);
    err += normA * normA;
    err_dirty |= 1U;
    i++;
    emlrtBreakCheckFastR2012b(emlrtBreakCheckR2012bFlagVar, emlrtRootTLSGlobal);
  }
}

/* End of code generation (linearODESSEcalP2X7.c) */
