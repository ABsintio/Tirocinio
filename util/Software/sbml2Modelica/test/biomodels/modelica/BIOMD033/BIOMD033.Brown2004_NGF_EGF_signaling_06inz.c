/* Initialization */
#include "BIOMD033.Brown2004_NGF_EGF_signaling_model.h"
#include "BIOMD033.Brown2004_NGF_EGF_signaling_11mix.h"
#include "BIOMD033.Brown2004_NGF_EGF_signaling_12jac.h"
#if defined(__cplusplus)
extern "C" {
#endif

void BIOMD033_Brown2004_NGF_EGF_signaling_functionInitialEquations_0(DATA *data, threadData_t *threadData);

/*
equation index: 1
type: SIMPLE_ASSIGN
elmt_cell.elmt_freeNGFReceptor_conc = 10000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_1(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,1};
  data->localData[0]->realVars[331] /* elmt_cell.elmt_freeNGFReceptor_conc variable */ = 10000.0;
  TRACE_POP
}

/*
equation index: 2
type: SIMPLE_ASSIGN
elmt_cell.elmt_NGF_conc = 456000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_2(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,2};
  data->localData[0]->realVars[298] /* elmt_cell.elmt_NGF_conc variable */ = 456000.0;
  TRACE_POP
}

/*
equation index: 3
type: SIMPLE_ASSIGN
elmt_cell.elmt_SosInactive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_3(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,3};
  data->localData[0]->realVars[327] /* elmt_cell.elmt_SosInactive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 4
type: SIMPLE_ASSIGN
elmt_cell.elmt_P90RskActive_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_4(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,4};
  data->localData[0]->realVars[300] /* elmt_cell.elmt_P90RskActive_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 5
type: SIMPLE_ASSIGN
elmt_cell.elmt_EGF_conc = 10002000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_5(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,5};
  data->localData[0]->realVars[286] /* elmt_cell.elmt_EGF_conc variable */ = 10002000.0;
  TRACE_POP
}

/*
equation index: 6
type: SIMPLE_ASSIGN
elmt_cell.elmt_AktInactive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_6(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,6};
  data->localData[0]->realVars[276] /* elmt_cell.elmt_AktInactive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 7
type: SIMPLE_ASSIGN
elmt_cell.elmt_RasActive_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_7(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,7};
  data->localData[0]->realVars[319] /* elmt_cell.elmt_RasActive_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 8
type: SIMPLE_ASSIGN
elmt_cell.elmt_C3GInactive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_8(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,8};
  data->localData[0]->realVars[283] /* elmt_cell.elmt_C3GInactive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 9
type: SIMPLE_ASSIGN
elmt_cell.elmt_MekActive_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_9(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,9};
  data->localData[0]->realVars[291] /* elmt_cell.elmt_MekActive_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 10
type: SIMPLE_ASSIGN
elmt_cell.elmt_freeEGFReceptor_conc = 80000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_10(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,10};
  data->localData[0]->realVars[330] /* elmt_cell.elmt_freeEGFReceptor_conc variable */ = 80000.0;
  TRACE_POP
}

/*
equation index: 11
type: SIMPLE_ASSIGN
elmt_cell.elmt_AktActive_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_11(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,11};
  data->localData[0]->realVars[275] /* elmt_cell.elmt_AktActive_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 12
type: SIMPLE_ASSIGN
elmt_cell.elmt_C3GActive_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_12(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,12};
  data->localData[0]->realVars[282] /* elmt_cell.elmt_C3GActive_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 13
type: SIMPLE_ASSIGN
elmt_cell.elmt_P90RskInactive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_13(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,13};
  data->localData[0]->realVars[301] /* elmt_cell.elmt_P90RskInactive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 14
type: SIMPLE_ASSIGN
elmt_cell.elmt_boundEGFReceptor_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_14(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,14};
  data->localData[0]->realVars[328] /* elmt_cell.elmt_boundEGFReceptor_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 15
type: SIMPLE_ASSIGN
elmt_cell.elmt_BRafActive_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_15(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,15};
  data->localData[0]->realVars[277] /* elmt_cell.elmt_BRafActive_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 16
type: SIMPLE_ASSIGN
elmt_cell.elmt_RasGapActive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_16(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,16};
  data->localData[0]->realVars[321] /* elmt_cell.elmt_RasGapActive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 17
type: SIMPLE_ASSIGN
elmt_cell.elmt_RapGapActive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_17(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,17};
  data->localData[0]->realVars[317] /* elmt_cell.elmt_RapGapActive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 18
type: SIMPLE_ASSIGN
elmt_cell.elmt_PP2AActive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_18(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,18};
  data->localData[0]->realVars[306] /* elmt_cell.elmt_PP2AActive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 19
type: SIMPLE_ASSIGN
elmt_cell.elmt_RasInactive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_19(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,19};
  data->localData[0]->realVars[322] /* elmt_cell.elmt_RasInactive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 20
type: SIMPLE_ASSIGN
elmt_cell.elmt_Rap1Active_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_20(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,20};
  data->localData[0]->realVars[314] /* elmt_cell.elmt_Rap1Active_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 21
type: SIMPLE_ASSIGN
elmt_cell.elmt_ErkActive_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_21(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,21};
  data->localData[0]->realVars[288] /* elmt_cell.elmt_ErkActive_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 22
type: SIMPLE_ASSIGN
elmt_cell.elmt_Raf1Inactive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_22(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,22};
  data->localData[0]->realVars[310] /* elmt_cell.elmt_Raf1Inactive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 23
type: SIMPLE_ASSIGN
elmt_cell.elmt_boundNGFReceptor_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_23(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,23};
  data->localData[0]->realVars[329] /* elmt_cell.elmt_boundNGFReceptor_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 24
type: SIMPLE_ASSIGN
elmt_cell.elmt_Rap1Inactive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_24(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,24};
  data->localData[0]->realVars[316] /* elmt_cell.elmt_Rap1Inactive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 25
type: SIMPLE_ASSIGN
elmt_cell.elmt_PI3KInactive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_25(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,25};
  data->localData[0]->realVars[303] /* elmt_cell.elmt_PI3KInactive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 26
type: SIMPLE_ASSIGN
elmt_cell.elmt_Raf1PPtase_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_26(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,26};
  data->localData[0]->realVars[311] /* elmt_cell.elmt_Raf1PPtase_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 27
type: SIMPLE_ASSIGN
elmt_cell.elmt_SosActive_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_27(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,27};
  data->localData[0]->realVars[325] /* elmt_cell.elmt_SosActive_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 28
type: SIMPLE_ASSIGN
elmt_cell.elmt_PI3KActive_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_28(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,28};
  data->localData[0]->realVars[302] /* elmt_cell.elmt_PI3KActive_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 29
type: SIMPLE_ASSIGN
elmt_cell.elmt_Raf1Active_conc = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_29(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,29};
  data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */ = 0.0;
  TRACE_POP
}

/*
equation index: 30
type: SIMPLE_ASSIGN
elmt_cell.elmt_ErkInactive_conc = 600000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_30(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,30};
  data->localData[0]->realVars[290] /* elmt_cell.elmt_ErkInactive_conc variable */ = 600000.0;
  TRACE_POP
}

/*
equation index: 31
type: SIMPLE_ASSIGN
elmt_cell.elmt_MekInactive_conc = 600000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_31(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,31};
  data->localData[0]->realVars[293] /* elmt_cell.elmt_MekInactive_conc variable */ = 600000.0;
  TRACE_POP
}

/*
equation index: 32
type: SIMPLE_ASSIGN
elmt_cell.elmt_BRafInactive_conc = 120000.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_32(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,32};
  data->localData[0]->realVars[279] /* elmt_cell.elmt_BRafInactive_conc variable */ = 120000.0;
  TRACE_POP
}

/*
equation index: 33
type: SIMPLE_ASSIGN
elmt_cell.elmt_cell = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_33(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,33};
  data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */ = 1.0;
  TRACE_POP
}

void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_34(DATA*, threadData_t*);
/*
equation index: 35
indexNonlinear: 0
type: NONLINEAR

vars: {elmt_cell.elmt_RasGapActive_amount, elmt_cell.elmt_MekActive_amount, elmt_cell.elmt_Rap1Active_amount, elmt_cell.elmt_RasActive_amount, elmt_cell.elmt_Raf1PPtase_amount, elmt_cell.elmt_PI3KActive_amount, elmt_cell.elmt_freeEGFReceptor_amount, elmt_cell.elmt_PI3KInactive_amount, elmt_cell.elmt_RapGapActive_amount, elmt_cell.elmt_C3GActive_amount, elmt_cell.elmt_PP2AActive_amount, elmt_cell.elmt_freeNGFReceptor_amount, elmt_cell.elmt_SosActive_amount, elmt_cell.elmt_Rap1Inactive_amount, elmt_cell.elmt_boundEGFReceptor_amount, elmt_cell.elmt_RasInactive_amount, elmt_cell.elmt_EGF_amount, elmt_cell.elmt_BRafInactive_amount, elmt_cell.elmt_SosInactive_amount, elmt_cell.elmt_C3GInactive_amount, elmt_cell.elmt_P90RskInactive_amount, elmt_cell.elmt_P90RskActive_amount, elmt_cell.elmt_NGF_amount, elmt_cell.elmt_Raf1Active_amount, elmt_cell.elmt_Raf1Inactive_amount, elmt_cell.elmt_BRafActive_amount, elmt_cell.elmt_AktInactive_amount, elmt_cell.elmt_AktActive_amount, elmt_cell.elmt_boundNGFReceptor_amount, elmt_cell.elmt_ErkActive_amount, elmt_cell.elmt_MekInactive_amount, elmt_cell.elmt_ErkInactive_amount}
eqns: {34}
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_35(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,35};
  int retValue;
  if(ACTIVE_STREAM(LOG_DT))
  {
    infoStreamPrint(LOG_DT, 1, "Solving nonlinear system 35 (STRICT TEARING SET if tearing enabled) at time = %18.10e", data->localData[0]->timeValue);
    messageClose(LOG_DT);
  }
  /* get old value */
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[0] = data->localData[0]->realVars[128] /* elmt_cell.elmt_RasGapActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[1] = data->localData[0]->realVars[113] /* elmt_cell.elmt_MekActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[2] = data->localData[0]->realVars[124] /* elmt_cell.elmt_Rap1Active_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[3] = data->localData[0]->realVars[127] /* elmt_cell.elmt_RasActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[4] = data->localData[0]->realVars[123] /* elmt_cell.elmt_Raf1PPtase_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[5] = data->localData[0]->realVars[118] /* elmt_cell.elmt_PI3KActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[6] = data->localData[0]->realVars[135] /* elmt_cell.elmt_freeEGFReceptor_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[7] = data->localData[0]->realVars[119] /* elmt_cell.elmt_PI3KInactive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[8] = data->localData[0]->realVars[126] /* elmt_cell.elmt_RapGapActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[9] = data->localData[0]->realVars[108] /* elmt_cell.elmt_C3GActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[10] = data->localData[0]->realVars[120] /* elmt_cell.elmt_PP2AActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[11] = data->localData[0]->realVars[136] /* elmt_cell.elmt_freeNGFReceptor_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[12] = data->localData[0]->realVars[130] /* elmt_cell.elmt_SosActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[13] = data->localData[0]->realVars[125] /* elmt_cell.elmt_Rap1Inactive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[14] = data->localData[0]->realVars[132] /* elmt_cell.elmt_boundEGFReceptor_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[15] = data->localData[0]->realVars[129] /* elmt_cell.elmt_RasInactive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[16] = data->localData[0]->realVars[110] /* elmt_cell.elmt_EGF_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[17] = data->localData[0]->realVars[107] /* elmt_cell.elmt_BRafInactive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[18] = data->localData[0]->realVars[131] /* elmt_cell.elmt_SosInactive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[19] = data->localData[0]->realVars[109] /* elmt_cell.elmt_C3GInactive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[20] = data->localData[0]->realVars[117] /* elmt_cell.elmt_P90RskInactive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[21] = data->localData[0]->realVars[116] /* elmt_cell.elmt_P90RskActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[22] = data->localData[0]->realVars[115] /* elmt_cell.elmt_NGF_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[23] = data->localData[0]->realVars[121] /* elmt_cell.elmt_Raf1Active_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[24] = data->localData[0]->realVars[122] /* elmt_cell.elmt_Raf1Inactive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[25] = data->localData[0]->realVars[106] /* elmt_cell.elmt_BRafActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[26] = data->localData[0]->realVars[105] /* elmt_cell.elmt_AktInactive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[27] = data->localData[0]->realVars[104] /* elmt_cell.elmt_AktActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[28] = data->localData[0]->realVars[133] /* elmt_cell.elmt_boundNGFReceptor_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[29] = data->localData[0]->realVars[111] /* elmt_cell.elmt_ErkActive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[30] = data->localData[0]->realVars[114] /* elmt_cell.elmt_MekInactive_amount STATE(1) */;
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[31] = data->localData[0]->realVars[112] /* elmt_cell.elmt_ErkInactive_amount STATE(1) */;
  retValue = solve_nonlinear_system(data, threadData, 0);
  /* check if solution process was successful */
  if (retValue > 0){
    const int indexes[2] = {1,35};
    throwStreamPrintWithEquationIndexes(threadData, indexes, "Solving non-linear system 35 failed at time=%.15g.\nFor more information please use -lv LOG_NLS.", data->localData[0]->timeValue);
  }
  /* write solution */
  data->localData[0]->realVars[128] /* elmt_cell.elmt_RasGapActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[0];
  data->localData[0]->realVars[113] /* elmt_cell.elmt_MekActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[1];
  data->localData[0]->realVars[124] /* elmt_cell.elmt_Rap1Active_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[2];
  data->localData[0]->realVars[127] /* elmt_cell.elmt_RasActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[3];
  data->localData[0]->realVars[123] /* elmt_cell.elmt_Raf1PPtase_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[4];
  data->localData[0]->realVars[118] /* elmt_cell.elmt_PI3KActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[5];
  data->localData[0]->realVars[135] /* elmt_cell.elmt_freeEGFReceptor_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[6];
  data->localData[0]->realVars[119] /* elmt_cell.elmt_PI3KInactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[7];
  data->localData[0]->realVars[126] /* elmt_cell.elmt_RapGapActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[8];
  data->localData[0]->realVars[108] /* elmt_cell.elmt_C3GActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[9];
  data->localData[0]->realVars[120] /* elmt_cell.elmt_PP2AActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[10];
  data->localData[0]->realVars[136] /* elmt_cell.elmt_freeNGFReceptor_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[11];
  data->localData[0]->realVars[130] /* elmt_cell.elmt_SosActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[12];
  data->localData[0]->realVars[125] /* elmt_cell.elmt_Rap1Inactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[13];
  data->localData[0]->realVars[132] /* elmt_cell.elmt_boundEGFReceptor_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[14];
  data->localData[0]->realVars[129] /* elmt_cell.elmt_RasInactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[15];
  data->localData[0]->realVars[110] /* elmt_cell.elmt_EGF_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[16];
  data->localData[0]->realVars[107] /* elmt_cell.elmt_BRafInactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[17];
  data->localData[0]->realVars[131] /* elmt_cell.elmt_SosInactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[18];
  data->localData[0]->realVars[109] /* elmt_cell.elmt_C3GInactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[19];
  data->localData[0]->realVars[117] /* elmt_cell.elmt_P90RskInactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[20];
  data->localData[0]->realVars[116] /* elmt_cell.elmt_P90RskActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[21];
  data->localData[0]->realVars[115] /* elmt_cell.elmt_NGF_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[22];
  data->localData[0]->realVars[121] /* elmt_cell.elmt_Raf1Active_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[23];
  data->localData[0]->realVars[122] /* elmt_cell.elmt_Raf1Inactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[24];
  data->localData[0]->realVars[106] /* elmt_cell.elmt_BRafActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[25];
  data->localData[0]->realVars[105] /* elmt_cell.elmt_AktInactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[26];
  data->localData[0]->realVars[104] /* elmt_cell.elmt_AktActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[27];
  data->localData[0]->realVars[133] /* elmt_cell.elmt_boundNGFReceptor_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[28];
  data->localData[0]->realVars[111] /* elmt_cell.elmt_ErkActive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[29];
  data->localData[0]->realVars[114] /* elmt_cell.elmt_MekInactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[30];
  data->localData[0]->realVars[112] /* elmt_cell.elmt_ErkInactive_amount STATE(1) */ = data->simulationInfo->nonlinearSystemData[0].nlsx[31];
  TRACE_POP
}

/*
equation index: 36
type: SIMPLE_ASSIGN
Reacs.elmt_product17 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_36(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,36};
  data->localData[0]->realVars[52] /* Reacs.elmt_product17 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 37
type: SIMPLE_ASSIGN
Reacs.elmt_product19 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_37(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,37};
  data->localData[0]->realVars[53] /* Reacs.elmt_product19 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 38
type: SIMPLE_ASSIGN
Reacs.elmt_product13 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_38(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,38};
  data->localData[0]->realVars[50] /* Reacs.elmt_product13 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 39
type: SIMPLE_ASSIGN
Reacs.elmt_product15 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_39(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,39};
  data->localData[0]->realVars[51] /* Reacs.elmt_product15 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 40
type: SIMPLE_ASSIGN
Reacs.elmt_product2 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_40(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,40};
  data->localData[0]->realVars[54] /* Reacs.elmt_product2 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 41
type: SIMPLE_ASSIGN
Reacs.elmt_reactant34 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_41(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,41};
  data->localData[0]->realVars[90] /* Reacs.elmt_reactant34 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 42
type: SIMPLE_ASSIGN
Reacs.elmt_reactant0 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_42(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,42};
  data->localData[0]->realVars[76] /* Reacs.elmt_reactant0 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 43
type: SIMPLE_ASSIGN
Reacs.elmt_product4 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_43(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,43};
  data->localData[0]->realVars[65] /* Reacs.elmt_product4 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 44
type: SIMPLE_ASSIGN
Reacs.elmt_product5 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_44(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,44};
  data->localData[0]->realVars[71] /* Reacs.elmt_product5 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 45
type: SIMPLE_ASSIGN
Reacs.elmt_reactant32 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_45(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,45};
  data->localData[0]->realVars[89] /* Reacs.elmt_reactant32 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 46
type: SIMPLE_ASSIGN
Reacs.elmt_reactant38 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_46(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,46};
  data->localData[0]->realVars[92] /* Reacs.elmt_reactant38 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 47
type: SIMPLE_ASSIGN
Reacs.elmt_reactant36 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_47(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,47};
  data->localData[0]->realVars[91] /* Reacs.elmt_reactant36 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 48
type: SIMPLE_ASSIGN
Reacs.elmt_reactant7 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_48(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,48};
  data->localData[0]->realVars[102] /* Reacs.elmt_reactant7 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 49
type: SIMPLE_ASSIGN
Reacs.elmt_product21 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_49(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,49};
  data->localData[0]->realVars[55] /* Reacs.elmt_product21 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 50
type: SIMPLE_ASSIGN
Reacs.elmt_reactant6 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_50(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,50};
  data->localData[0]->realVars[101] /* Reacs.elmt_reactant6 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 51
type: SIMPLE_ASSIGN
Reacs.elmt_product23 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_51(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,51};
  data->localData[0]->realVars[56] /* Reacs.elmt_product23 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 52
type: SIMPLE_ASSIGN
Reacs.elmt_reactant3 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_52(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,52};
  data->localData[0]->realVars[87] /* Reacs.elmt_reactant3 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 53
type: SIMPLE_ASSIGN
Reacs.elmt_reactant30 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_53(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,53};
  data->localData[0]->realVars[88] /* Reacs.elmt_reactant30 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 54
type: SIMPLE_ASSIGN
Reacs.elmt_reactant1 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_54(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,54};
  data->localData[0]->realVars[77] /* Reacs.elmt_reactant1 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 55
type: SIMPLE_ASSIGN
Reacs.elmt_product8 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_55(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,55};
  data->localData[0]->realVars[75] /* Reacs.elmt_product8 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 56
type: SIMPLE_ASSIGN
Reacs.elmt_product47 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_56(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,56};
  data->localData[0]->realVars[69] /* Reacs.elmt_product47 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 57
type: SIMPLE_ASSIGN
Reacs.elmt_product49 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_57(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,57};
  data->localData[0]->realVars[70] /* Reacs.elmt_product49 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 58
type: SIMPLE_ASSIGN
Reacs.elmt_reactant18 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_58(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,58};
  data->localData[0]->realVars[81] /* Reacs.elmt_reactant18 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 59
type: SIMPLE_ASSIGN
Reacs.elmt_reactant24 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_59(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,59};
  data->localData[0]->realVars[84] /* Reacs.elmt_reactant24 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 60
type: SIMPLE_ASSIGN
Reacs.elmt_reactant22 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_60(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,60};
  data->localData[0]->realVars[83] /* Reacs.elmt_reactant22 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 61
type: SIMPLE_ASSIGN
Reacs.elmt_reactant28 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_61(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,61};
  data->localData[0]->realVars[86] /* Reacs.elmt_reactant28 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 62
type: SIMPLE_ASSIGN
Reacs.elmt_reactant26 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_62(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,62};
  data->localData[0]->realVars[85] /* Reacs.elmt_reactant26 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 63
type: SIMPLE_ASSIGN
Reacs.elmt_product53 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_63(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,63};
  data->localData[0]->realVars[73] /* Reacs.elmt_product53 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 64
type: SIMPLE_ASSIGN
Reacs.elmt_product10 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_64(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,64};
  data->localData[0]->realVars[48] /* Reacs.elmt_product10 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 65
type: SIMPLE_ASSIGN
Reacs.elmt_product55 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_65(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,65};
  data->localData[0]->realVars[74] /* Reacs.elmt_product55 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 66
type: SIMPLE_ASSIGN
Reacs.elmt_product11 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_66(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,66};
  data->localData[0]->realVars[49] /* Reacs.elmt_product11 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 67
type: SIMPLE_ASSIGN
Reacs.elmt_reactant20 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_67(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,67};
  data->localData[0]->realVars[82] /* Reacs.elmt_reactant20 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 68
type: SIMPLE_ASSIGN
Reacs.elmt_product51 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_68(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,68};
  data->localData[0]->realVars[72] /* Reacs.elmt_product51 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 69
type: SIMPLE_ASSIGN
Reacs.elmt_product39 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_69(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,69};
  data->localData[0]->realVars[64] /* Reacs.elmt_product39 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 70
type: SIMPLE_ASSIGN
Reacs.elmt_product35 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_70(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,70};
  data->localData[0]->realVars[62] /* Reacs.elmt_product35 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 71
type: SIMPLE_ASSIGN
Reacs.elmt_product37 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_71(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,71};
  data->localData[0]->realVars[63] /* Reacs.elmt_product37 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 72
type: SIMPLE_ASSIGN
Reacs.elmt_reactant12 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_72(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,72};
  data->localData[0]->realVars[78] /* Reacs.elmt_reactant12 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 73
type: SIMPLE_ASSIGN
Reacs.elmt_reactant54 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_73(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,73};
  data->localData[0]->realVars[100] /* Reacs.elmt_reactant54 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 74
type: SIMPLE_ASSIGN
Reacs.elmt_reactant16 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_74(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,74};
  data->localData[0]->realVars[80] /* Reacs.elmt_reactant16 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 75
type: SIMPLE_ASSIGN
Reacs.elmt_reactant14 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_75(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,75};
  data->localData[0]->realVars[79] /* Reacs.elmt_reactant14 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 76
type: SIMPLE_ASSIGN
Reacs.elmt_product43 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_76(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,76};
  data->localData[0]->realVars[67] /* Reacs.elmt_product43 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 77
type: SIMPLE_ASSIGN
Reacs.elmt_product45 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_77(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,77};
  data->localData[0]->realVars[68] /* Reacs.elmt_product45 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 78
type: SIMPLE_ASSIGN
Reacs.elmt_reactant52 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_78(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,78};
  data->localData[0]->realVars[99] /* Reacs.elmt_reactant52 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 79
type: SIMPLE_ASSIGN
Reacs.elmt_reactant50 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_79(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,79};
  data->localData[0]->realVars[98] /* Reacs.elmt_reactant50 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 80
type: SIMPLE_ASSIGN
Reacs.elmt_product41 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_80(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,80};
  data->localData[0]->realVars[66] /* Reacs.elmt_product41 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 81
type: SIMPLE_ASSIGN
Reacs.elmt_product29 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_81(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,81};
  data->localData[0]->realVars[59] /* Reacs.elmt_product29 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 82
type: SIMPLE_ASSIGN
Reacs.elmt_product25 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_82(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,82};
  data->localData[0]->realVars[57] /* Reacs.elmt_product25 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 83
type: SIMPLE_ASSIGN
Reacs.elmt_reactant9 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_83(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,83};
  data->localData[0]->realVars[103] /* Reacs.elmt_reactant9 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 84
type: SIMPLE_ASSIGN
Reacs.elmt_product27 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_84(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,84};
  data->localData[0]->realVars[58] /* Reacs.elmt_product27 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 85
type: SIMPLE_ASSIGN
Reacs.elmt_reactant46 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_85(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,85};
  data->localData[0]->realVars[96] /* Reacs.elmt_reactant46 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 86
type: SIMPLE_ASSIGN
Reacs.elmt_reactant44 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_86(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,86};
  data->localData[0]->realVars[95] /* Reacs.elmt_reactant44 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 87
type: SIMPLE_ASSIGN
Reacs.elmt_reactant48 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_87(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,87};
  data->localData[0]->realVars[97] /* Reacs.elmt_reactant48 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 88
type: SIMPLE_ASSIGN
Reacs.elmt_product31 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_88(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,88};
  data->localData[0]->realVars[60] /* Reacs.elmt_product31 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 89
type: SIMPLE_ASSIGN
Reacs.elmt_product33 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_89(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,89};
  data->localData[0]->realVars[61] /* Reacs.elmt_product33 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 90
type: SIMPLE_ASSIGN
Reacs.elmt_reactant42 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_90(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,90};
  data->localData[0]->realVars[94] /* Reacs.elmt_reactant42 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 91
type: SIMPLE_ASSIGN
Reacs.elmt_reactant40 = 1.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_91(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,91};
  data->localData[0]->realVars[93] /* Reacs.elmt_reactant40 STATE(1) */ = 1.0;
  TRACE_POP
}

/*
equation index: 92
type: SIMPLE_ASSIGN
Params.elmt_kpMekCytoplasmic = 9.853669999999999
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_92(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,92};
  data->localData[0]->realVars[41] /* Params.elmt_kpMekCytoplasmic STATE(1) */ = 9.853669999999999;
  TRACE_POP
}

/*
equation index: 93
type: SIMPLE_ASSIGN
Params.elmt_KmPI3K = 184912.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_93(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,93};
  data->localData[0]->realVars[5] /* Params.elmt_KmPI3K STATE(1) */ = 184912.0;
  TRACE_POP
}

/*
equation index: 94
type: SIMPLE_ASSIGN
Params.elmt_kdMek = 2.83243
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_94(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,94};
  data->localData[0]->realVars[36] /* Params.elmt_kdMek STATE(1) */ = 2.83243;
  TRACE_POP
}

/*
equation index: 95
type: SIMPLE_ASSIGN
Params.elmt_kdErk = 8.8912
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_95(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,95};
  data->localData[0]->realVars[35] /* Params.elmt_kdErk STATE(1) */ = 8.8912;
  TRACE_POP
}

/*
equation index: 96
type: SIMPLE_ASSIGN
Params.elmt_KmRasGap = 1432410.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_96(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,96};
  data->localData[0]->realVars[10] /* Params.elmt_KmRasGap STATE(1) */ = 1432410.0;
  TRACE_POP
}

/*
equation index: 97
type: SIMPLE_ASSIGN
Params.elmt_kpRaf1 = 185.759
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_97(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,97};
  data->localData[0]->realVars[43] /* Params.elmt_kpRaf1 STATE(1) */ = 185.759;
  TRACE_POP
}

/*
equation index: 98
type: SIMPLE_ASSIGN
Params.elmt_kruEGF = 0.0121008
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_98(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,98};
  data->localData[0]->realVars[46] /* Params.elmt_kruEGF STATE(1) */ = 0.0121008;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_435(DATA *data, threadData_t *threadData);


/*
equation index: 100
type: SIMPLE_ASSIGN
Params.elmt_kpP90Rsk = 0.0213697
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_100(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,100};
  data->localData[0]->realVars[42] /* Params.elmt_kpP90Rsk STATE(1) */ = 0.0213697;
  TRACE_POP
}

/*
equation index: 101
type: SIMPLE_ASSIGN
Params.elmt_kC3G = 1.40145
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_101(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,101};
  data->localData[0]->realVars[23] /* Params.elmt_kC3G STATE(1) */ = 1.40145;
  TRACE_POP
}

/*
equation index: 102
type: SIMPLE_ASSIGN
Params.elmt_KmdMek = 518753.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_102(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,102};
  data->localData[0]->realVars[15] /* Params.elmt_KmdMek STATE(1) */ = 518753.0;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_416(DATA *data, threadData_t *threadData);


/*
equation index: 104
type: SIMPLE_ASSIGN
Params.elmt_kSos = 32.344
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_104(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,104};
  data->localData[0]->realVars[33] /* Params.elmt_kSos STATE(1) */ = 32.344;
  TRACE_POP
}

/*
equation index: 105
type: SIMPLE_ASSIGN
Params.elmt_KmpBRaf = 157948.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_105(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,105};
  data->localData[0]->realVars[18] /* Params.elmt_KmpBRaf STATE(1) */ = 157948.0;
  TRACE_POP
}

/*
equation index: 106
type: SIMPLE_ASSIGN
Params.elmt_KmdErk = 3496490.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_106(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,106};
  data->localData[0]->realVars[14] /* Params.elmt_KmdErk STATE(1) */ = 3496490.0;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_422(DATA *data, threadData_t *threadData);


/*
equation index: 108
type: SIMPLE_ASSIGN
Params.elmt_kdRaf1 = 0.126329
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_108(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,108};
  data->localData[0]->realVars[37] /* Params.elmt_kdRaf1 STATE(1) */ = 0.126329;
  TRACE_POP
}

/*
equation index: 109
type: SIMPLE_ASSIGN
Params.elmt_kAkt = 0.0566279
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_109(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,109};
  data->localData[0]->realVars[22] /* Params.elmt_kAkt STATE(1) */ = 0.0566279;
  TRACE_POP
}

/*
equation index: 110
type: SIMPLE_ASSIGN
Params.elmt_KmRap1ToBRaf = 1025460.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_110(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,110};
  data->localData[0]->realVars[8] /* Params.elmt_KmRap1ToBRaf STATE(1) */ = 1025460.0;
  TRACE_POP
}

/*
equation index: 111
type: SIMPLE_ASSIGN
Params.elmt_kRap1ToBRaf = 2.20995
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_111(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,111};
  data->localData[0]->realVars[29] /* Params.elmt_kRap1ToBRaf STATE(1) */ = 2.20995;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_449(DATA *data, threadData_t *threadData);


/*
equation index: 113
type: SIMPLE_ASSIGN
Params.elmt_kEGF = 694.731
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_113(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,113};
  data->localData[0]->realVars[25] /* Params.elmt_kEGF STATE(1) */ = 694.731;
  TRACE_POP
}

/*
equation index: 114
type: SIMPLE_ASSIGN
Params.elmt_KmAkt = 653951.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_114(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,114};
  data->localData[0]->realVars[0] /* Params.elmt_KmAkt STATE(1) */ = 653951.0;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_432(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_434(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_433(DATA *data, threadData_t *threadData);


/*
equation index: 118
type: SIMPLE_ASSIGN
Params.elmt_KmRaf1ByAkt = 119355.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_118(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,118};
  data->localData[0]->realVars[7] /* Params.elmt_KmRaf1ByAkt STATE(1) */ = 119355.0;
  TRACE_POP
}

/*
equation index: 119
type: SIMPLE_ASSIGN
Params.elmt_KmEGF = 6086070.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_119(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,119};
  data->localData[0]->realVars[3] /* Params.elmt_KmEGF STATE(1) */ = 6086070.0;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_439(DATA *data, threadData_t *threadData);


/*
equation index: 121
type: SIMPLE_ASSIGN
Params.elmt_kdRaf1ByAkt = 15.1212
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_121(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,121};
  data->localData[0]->realVars[38] /* Params.elmt_kdRaf1ByAkt STATE(1) */ = 15.1212;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_443(DATA *data, threadData_t *threadData);


/*
equation index: 123
type: SIMPLE_ASSIGN
Params.elmt_kRasToRaf1 = 0.884096
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_123(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,123};
  data->localData[0]->realVars[32] /* Params.elmt_kRasToRaf1 STATE(1) */ = 0.884096;
  TRACE_POP
}

/*
equation index: 124
type: SIMPLE_ASSIGN
Params.elmt_KmC3G = 10965.6
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_124(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,124};
  data->localData[0]->realVars[1] /* Params.elmt_KmC3G STATE(1) */ = 10965.6;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_452(DATA *data, threadData_t *threadData);


/*
equation index: 126
type: SIMPLE_ASSIGN
Params.elmt_KmSos = 35954.3
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_126(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,126};
  data->localData[0]->realVars[12] /* Params.elmt_KmSos STATE(1) */ = 35954.3;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_417(DATA *data, threadData_t *threadData);


/*
equation index: 128
type: SIMPLE_ASSIGN
Params.elmt_kPI3KRas = 0.0771067
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_128(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,128};
  data->localData[0]->realVars[28] /* Params.elmt_kPI3KRas STATE(1) */ = 0.0771067;
  TRACE_POP
}

/*
equation index: 129
type: SIMPLE_ASSIGN
Params.elmt_KmpRaf1 = 4768350.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_129(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,129};
  data->localData[0]->realVars[21] /* Params.elmt_KmpRaf1 STATE(1) */ = 4768350.0;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_444(DATA *data, threadData_t *threadData);


/*
equation index: 131
type: SIMPLE_ASSIGN
Params.elmt_kC3GNGF = 146.912
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_131(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,131};
  data->localData[0]->realVars[24] /* Params.elmt_kC3GNGF STATE(1) */ = 146.912;
  TRACE_POP
}

/*
equation index: 132
type: SIMPLE_ASSIGN
Params.elmt_kdSos = 1611.97
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_132(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,132};
  data->localData[0]->realVars[39] /* Params.elmt_kdSos STATE(1) */ = 1611.97;
  TRACE_POP
}

/*
equation index: 133
type: SIMPLE_ASSIGN
Params.elmt_kruNGF = 0.00723811
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_133(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,133};
  data->localData[0]->realVars[47] /* Params.elmt_kruNGF STATE(1) */ = 0.00723811;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_425(DATA *data, threadData_t *threadData);


/*
equation index: 135
type: SIMPLE_ASSIGN
Params.elmt_kRasGap = 1509.36
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_135(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,135};
  data->localData[0]->realVars[31] /* Params.elmt_kRasGap STATE(1) */ = 1509.36;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_458(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_460(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_459(DATA *data, threadData_t *threadData);


/*
equation index: 139
type: SIMPLE_ASSIGN
Params.elmt_KmPI3KRas = 272056.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_139(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,139};
  data->localData[0]->realVars[6] /* Params.elmt_KmPI3KRas STATE(1) */ = 272056.0;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_461(DATA *data, threadData_t *threadData);


/*
equation index: 141
type: SIMPLE_ASSIGN
Params.elmt_KmRasToRaf1 = 62464.6
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_141(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,141};
  data->localData[0]->realVars[11] /* Params.elmt_KmRasToRaf1 STATE(1) */ = 62464.6;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_464(DATA *data, threadData_t *threadData);


/*
equation index: 143
type: SIMPLE_ASSIGN
Params.elmt_krbEGF = 2.18503e-05
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_143(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,143};
  data->localData[0]->realVars[44] /* Params.elmt_krbEGF STATE(1) */ = 2.18503e-05;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_423(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_438(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_437(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_436(DATA *data, threadData_t *threadData);


/*
equation index: 148
type: SIMPLE_ASSIGN
Params.elmt_krbNGF = 1.38209e-07
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_148(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,148};
  data->localData[0]->realVars[45] /* Params.elmt_krbNGF STATE(1) */ = 1.38209e-07;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_413(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_428(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_427(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_426(DATA *data, threadData_t *threadData);


/*
equation index: 153
type: SIMPLE_ASSIGN
Params.elmt_KmC3GNGF = 12876.2
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_153(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,153};
  data->localData[0]->realVars[2] /* Params.elmt_KmC3GNGF STATE(1) */ = 12876.2;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_429(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_431(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_430(DATA *data, threadData_t *threadData);


/*
equation index: 157
type: SIMPLE_ASSIGN
Params.elmt_KmdBRaf = 10879500.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_157(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,157};
  data->localData[0]->realVars[13] /* Params.elmt_KmdBRaf STATE(1) */ = 10879500.0;
  TRACE_POP
}

/*
equation index: 158
type: SIMPLE_ASSIGN
Params.elmt_kPI3K = 10.6737
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_158(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,158};
  data->localData[0]->realVars[27] /* Params.elmt_kPI3K STATE(1) */ = 10.6737;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_442(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_463(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_462(DATA *data, threadData_t *threadData);


/*
equation index: 162
type: SIMPLE_ASSIGN
Params.elmt_kpBRaf = 125.089
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_162(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,162};
  data->localData[0]->realVars[40] /* Params.elmt_kpBRaf STATE(1) */ = 125.089;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_415(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_446(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_445(DATA *data, threadData_t *threadData);


/*
equation index: 166
type: SIMPLE_ASSIGN
Params.elmt_KmdSos = 896896.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_166(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,166};
  data->localData[0]->realVars[17] /* Params.elmt_KmdSos STATE(1) */ = 896896.0;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_414(DATA *data, threadData_t *threadData);


/*
equation index: 168
type: SIMPLE_ASSIGN
Params.elmt_kdBRaf = 441.287
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_168(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,168};
  data->localData[0]->realVars[34] /* Params.elmt_kdBRaf STATE(1) */ = 441.287;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_448(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_451(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_450(DATA *data, threadData_t *threadData);


/*
equation index: 172
type: SIMPLE_ASSIGN
Params.elmt_kNGF = 389.428
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_172(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,172};
  data->localData[0]->realVars[26] /* Params.elmt_kNGF STATE(1) */ = 389.428;
  TRACE_POP
}

/*
equation index: 173
type: SIMPLE_ASSIGN
Params.elmt_kRapGap = 27.265
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_173(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,173};
  data->localData[0]->realVars[30] /* Params.elmt_kRapGap STATE(1) */ = 27.265;
  TRACE_POP
}

/*
equation index: 174
type: SIMPLE_ASSIGN
Params.elmt_KmpP90Rsk = 763523.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_174(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,174};
  data->localData[0]->realVars[20] /* Params.elmt_KmpP90Rsk STATE(1) */ = 763523.0;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_419(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_421(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_420(DATA *data, threadData_t *threadData);


/*
equation index: 178
type: SIMPLE_ASSIGN
Params.elmt_KmdRaf1 = 1061.71
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_178(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,178};
  data->localData[0]->realVars[16] /* Params.elmt_KmdRaf1 STATE(1) */ = 1061.71;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_447(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_466(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_465(DATA *data, threadData_t *threadData);


/*
equation index: 182
type: SIMPLE_ASSIGN
Params.elmt_KmRapGap = 295990.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_182(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,182};
  data->localData[0]->realVars[9] /* Params.elmt_KmRapGap STATE(1) */ = 295990.0;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_418(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_454(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_453(DATA *data, threadData_t *threadData);


/*
equation index: 186
type: SIMPLE_ASSIGN
Params.elmt_KmpMekCytoplasmic = 1007340.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_186(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,186};
  data->localData[0]->realVars[19] /* Params.elmt_KmpMekCytoplasmic STATE(1) */ = 1007340.0;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_455(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_457(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_456(DATA *data, threadData_t *threadData);


/*
equation index: 190
type: SIMPLE_ASSIGN
Params.elmt_KmNGF = 2112.66
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_190(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,190};
  data->localData[0]->realVars[4] /* Params.elmt_KmNGF STATE(1) */ = 2112.66;
  TRACE_POP
}
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_424(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_441(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_440(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_411(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_410(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_409(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_408(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_407(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_406(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_405(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_404(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_403(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_402(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_401(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_400(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_399(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_398(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_397(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_396(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_395(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_394(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_393(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_392(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_391(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_390(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_389(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_388(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_387(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_386(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_385(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_384(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_383(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_382(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_381(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_380(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_379(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_378(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_377(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_376(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_375(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_374(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_373(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_372(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_371(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_370(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_369(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_368(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_367(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_366(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_365(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_364(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_363(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_362(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_361(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_360(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_359(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_358(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_357(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_356(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_355(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_354(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_353(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_352(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_351(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_350(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_349(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_348(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_347(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_346(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_345(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_344(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_343(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_342(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_341(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_340(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_339(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_338(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_337(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_336(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_335(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_334(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_333(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_332(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_331(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_330(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_329(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_328(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_327(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_326(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_325(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_324(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_323(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_322(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_321(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_320(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_319(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_318(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_317(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_316(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_315(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_314(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_313(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_312(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_311(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_310(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_309(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_308(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_307(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_306(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_305(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_304(DATA *data, threadData_t *threadData);

extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_303(DATA *data, threadData_t *threadData);

OMC_DISABLE_OPT
void BIOMD033_Brown2004_NGF_EGF_signaling_functionInitialEquations_0(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_1(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_2(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_3(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_4(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_5(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_6(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_7(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_8(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_9(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_10(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_11(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_12(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_13(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_14(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_15(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_16(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_17(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_18(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_19(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_20(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_21(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_22(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_23(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_24(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_25(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_26(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_27(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_28(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_29(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_30(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_31(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_32(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_33(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_35(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_36(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_37(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_38(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_39(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_40(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_41(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_42(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_43(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_44(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_45(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_46(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_47(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_48(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_49(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_50(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_51(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_52(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_53(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_54(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_55(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_56(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_57(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_58(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_59(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_60(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_61(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_62(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_63(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_64(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_65(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_66(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_67(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_68(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_69(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_70(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_71(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_72(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_73(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_74(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_75(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_76(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_77(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_78(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_79(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_80(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_81(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_82(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_83(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_84(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_85(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_86(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_87(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_88(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_89(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_90(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_91(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_92(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_93(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_94(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_95(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_96(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_97(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_98(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_435(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_100(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_101(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_102(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_416(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_104(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_105(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_106(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_422(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_108(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_109(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_110(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_111(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_449(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_113(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_114(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_432(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_434(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_433(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_118(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_119(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_439(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_121(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_443(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_123(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_124(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_452(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_126(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_417(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_128(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_129(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_444(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_131(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_132(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_133(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_425(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_135(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_458(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_460(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_459(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_139(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_461(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_141(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_464(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_143(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_423(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_438(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_437(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_436(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_148(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_413(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_428(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_427(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_426(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_153(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_429(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_431(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_430(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_157(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_158(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_442(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_463(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_462(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_162(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_415(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_446(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_445(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_166(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_414(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_168(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_448(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_451(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_450(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_172(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_173(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_174(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_419(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_421(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_420(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_178(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_447(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_466(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_465(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_182(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_418(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_454(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_453(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_186(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_455(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_457(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_456(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_190(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_424(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_441(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_440(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_411(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_410(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_409(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_408(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_407(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_406(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_405(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_404(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_403(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_402(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_401(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_400(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_399(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_398(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_397(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_396(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_395(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_394(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_393(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_392(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_391(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_390(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_389(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_388(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_387(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_386(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_385(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_384(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_383(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_382(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_381(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_380(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_379(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_378(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_377(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_376(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_375(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_374(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_373(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_372(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_371(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_370(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_369(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_368(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_367(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_366(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_365(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_364(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_363(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_362(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_361(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_360(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_359(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_358(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_357(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_356(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_355(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_354(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_353(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_352(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_351(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_350(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_349(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_348(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_347(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_346(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_345(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_344(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_343(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_342(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_341(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_340(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_339(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_338(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_337(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_336(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_335(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_334(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_333(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_332(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_331(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_330(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_329(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_328(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_327(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_326(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_325(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_324(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_323(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_322(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_321(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_320(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_319(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_318(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_317(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_316(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_315(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_314(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_313(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_312(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_311(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_310(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_309(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_308(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_307(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_306(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_305(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_304(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_303(data, threadData);
  TRACE_POP
}


int BIOMD033_Brown2004_NGF_EGF_signaling_functionInitialEquations(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  data->simulationInfo->discreteCall = 1;
  BIOMD033_Brown2004_NGF_EGF_signaling_functionInitialEquations_0(data, threadData);
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}


int BIOMD033_Brown2004_NGF_EGF_signaling_functionInitialEquations_lambda0(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  data->simulationInfo->discreteCall = 1;
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}
int BIOMD033_Brown2004_NGF_EGF_signaling_functionRemovedInitialEquations(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int *equationIndexes = NULL;
  double res = 0.0;

  
  TRACE_POP
  return 0;
}


#if defined(__cplusplus)
}
#endif

