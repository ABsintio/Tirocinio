/* Non Linear Systems */
#include "BIOMD033.Brown2004_NGF_EGF_signaling_model.h"
#include "BIOMD033.Brown2004_NGF_EGF_signaling_12jac.h"
#if defined(__cplusplus)
extern "C" {
#endif

/* inner equations */

/*
equation index: 34
type: INVERSE ALGORITHM

  elmt_cell.elmt_freeNGFReceptor_conc := $START.elmt_cell.elmt_freeNGFReceptor_conc;
  elmt_cell.elmt_NGF_conc := $START.elmt_cell.elmt_NGF_conc;
  elmt_cell.elmt_SosInactive_conc := $START.elmt_cell.elmt_SosInactive_conc;
  elmt_cell.elmt_P90RskActive_conc := $START.elmt_cell.elmt_P90RskActive_conc;
  elmt_cell.elmt_EGF_conc := $START.elmt_cell.elmt_EGF_conc;
  elmt_cell.elmt_AktInactive_conc := $START.elmt_cell.elmt_AktInactive_conc;
  elmt_cell.elmt_RasActive_conc := $START.elmt_cell.elmt_RasActive_conc;
  elmt_cell.elmt_C3GInactive_conc := $START.elmt_cell.elmt_C3GInactive_conc;
  elmt_cell.elmt_MekActive_conc := $START.elmt_cell.elmt_MekActive_conc;
  elmt_cell.elmt_freeEGFReceptor_conc := $START.elmt_cell.elmt_freeEGFReceptor_conc;
  elmt_cell.elmt_AktActive_conc := $START.elmt_cell.elmt_AktActive_conc;
  elmt_cell.elmt_C3GActive_conc := $START.elmt_cell.elmt_C3GActive_conc;
  elmt_cell.elmt_P90RskInactive_conc := $START.elmt_cell.elmt_P90RskInactive_conc;
  elmt_cell.elmt_boundEGFReceptor_conc := $START.elmt_cell.elmt_boundEGFReceptor_conc;
  elmt_cell.elmt_BRafActive_conc := $START.elmt_cell.elmt_BRafActive_conc;
  elmt_cell.elmt_RasGapActive_conc := $START.elmt_cell.elmt_RasGapActive_conc;
  elmt_cell.elmt_RapGapActive_conc := $START.elmt_cell.elmt_RapGapActive_conc;
  elmt_cell.elmt_PP2AActive_conc := $START.elmt_cell.elmt_PP2AActive_conc;
  elmt_cell.elmt_RasInactive_conc := $START.elmt_cell.elmt_RasInactive_conc;
  elmt_cell.elmt_Rap1Active_conc := $START.elmt_cell.elmt_Rap1Active_conc;
  elmt_cell.elmt_ErkActive_conc := $START.elmt_cell.elmt_ErkActive_conc;
  elmt_cell.elmt_Raf1Inactive_conc := $START.elmt_cell.elmt_Raf1Inactive_conc;
  elmt_cell.elmt_boundNGFReceptor_conc := $START.elmt_cell.elmt_boundNGFReceptor_conc;
  elmt_cell.elmt_Rap1Inactive_conc := $START.elmt_cell.elmt_Rap1Inactive_conc;
  elmt_cell.elmt_PI3KInactive_conc := $START.elmt_cell.elmt_PI3KInactive_conc;
  elmt_cell.elmt_Raf1PPtase_conc := $START.elmt_cell.elmt_Raf1PPtase_conc;
  elmt_cell.elmt_SosActive_conc := $START.elmt_cell.elmt_SosActive_conc;
  elmt_cell.elmt_PI3KActive_conc := $START.elmt_cell.elmt_PI3KActive_conc;
  elmt_cell.elmt_Raf1Active_conc := $START.elmt_cell.elmt_Raf1Active_conc;
  elmt_cell.elmt_ErkInactive_conc := $START.elmt_cell.elmt_ErkInactive_conc;
  elmt_cell.elmt_MekInactive_conc := $START.elmt_cell.elmt_MekInactive_conc;
  elmt_cell.elmt_BRafInactive_conc := $START.elmt_cell.elmt_BRafInactive_conc;
  elmt_cell.elmt_BRafInactive_conc := elmt_cell.elmt_BRafInactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_MekInactive_conc := elmt_cell.elmt_MekInactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_ErkInactive_conc := elmt_cell.elmt_ErkInactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_Raf1Active_conc := elmt_cell.elmt_Raf1Active_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_PI3KActive_conc := elmt_cell.elmt_PI3KActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_SosActive_conc := elmt_cell.elmt_SosActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_Raf1PPtase_conc := elmt_cell.elmt_Raf1PPtase_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_PI3KInactive_conc := elmt_cell.elmt_PI3KInactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_Rap1Inactive_conc := elmt_cell.elmt_Rap1Inactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_boundNGFReceptor_conc := elmt_cell.elmt_boundNGFReceptor_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_Raf1Inactive_conc := elmt_cell.elmt_Raf1Inactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_ErkActive_conc := elmt_cell.elmt_ErkActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_Rap1Active_conc := elmt_cell.elmt_Rap1Active_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_RasInactive_conc := elmt_cell.elmt_RasInactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_PP2AActive_conc := elmt_cell.elmt_PP2AActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_RapGapActive_conc := elmt_cell.elmt_RapGapActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_RasGapActive_conc := elmt_cell.elmt_RasGapActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_BRafActive_conc := elmt_cell.elmt_BRafActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_boundEGFReceptor_conc := elmt_cell.elmt_boundEGFReceptor_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_P90RskInactive_conc := elmt_cell.elmt_P90RskInactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_C3GActive_conc := elmt_cell.elmt_C3GActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_AktActive_conc := elmt_cell.elmt_AktActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_freeEGFReceptor_conc := elmt_cell.elmt_freeEGFReceptor_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_MekActive_conc := elmt_cell.elmt_MekActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_C3GInactive_conc := elmt_cell.elmt_C3GInactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_RasActive_conc := elmt_cell.elmt_RasActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_AktInactive_conc := elmt_cell.elmt_AktInactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_EGF_conc := elmt_cell.elmt_EGF_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_P90RskActive_conc := elmt_cell.elmt_P90RskActive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_SosInactive_conc := elmt_cell.elmt_SosInactive_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_NGF_conc := elmt_cell.elmt_NGF_amount / elmt_cell.elmt_cell;
  elmt_cell.elmt_freeNGFReceptor_conc := elmt_cell.elmt_freeNGFReceptor_amount / elmt_cell.elmt_cell;
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_34(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,34};
  data->localData[0]->realVars[331] /* elmt_cell.elmt_freeNGFReceptor_conc variable */ = data->modelData->realVarsData[331].attribute /* elmt_cell.elmt_freeNGFReceptor_conc variable */.start;

  data->localData[0]->realVars[298] /* elmt_cell.elmt_NGF_conc variable */ = data->modelData->realVarsData[298].attribute /* elmt_cell.elmt_NGF_conc variable */.start;

  data->localData[0]->realVars[327] /* elmt_cell.elmt_SosInactive_conc variable */ = data->modelData->realVarsData[327].attribute /* elmt_cell.elmt_SosInactive_conc variable */.start;

  data->localData[0]->realVars[300] /* elmt_cell.elmt_P90RskActive_conc variable */ = data->modelData->realVarsData[300].attribute /* elmt_cell.elmt_P90RskActive_conc variable */.start;

  data->localData[0]->realVars[286] /* elmt_cell.elmt_EGF_conc variable */ = data->modelData->realVarsData[286].attribute /* elmt_cell.elmt_EGF_conc variable */.start;

  data->localData[0]->realVars[276] /* elmt_cell.elmt_AktInactive_conc variable */ = data->modelData->realVarsData[276].attribute /* elmt_cell.elmt_AktInactive_conc variable */.start;

  data->localData[0]->realVars[319] /* elmt_cell.elmt_RasActive_conc variable */ = data->modelData->realVarsData[319].attribute /* elmt_cell.elmt_RasActive_conc variable */.start;

  data->localData[0]->realVars[283] /* elmt_cell.elmt_C3GInactive_conc variable */ = data->modelData->realVarsData[283].attribute /* elmt_cell.elmt_C3GInactive_conc variable */.start;

  data->localData[0]->realVars[291] /* elmt_cell.elmt_MekActive_conc variable */ = data->modelData->realVarsData[291].attribute /* elmt_cell.elmt_MekActive_conc variable */.start;

  data->localData[0]->realVars[330] /* elmt_cell.elmt_freeEGFReceptor_conc variable */ = data->modelData->realVarsData[330].attribute /* elmt_cell.elmt_freeEGFReceptor_conc variable */.start;

  data->localData[0]->realVars[275] /* elmt_cell.elmt_AktActive_conc variable */ = data->modelData->realVarsData[275].attribute /* elmt_cell.elmt_AktActive_conc variable */.start;

  data->localData[0]->realVars[282] /* elmt_cell.elmt_C3GActive_conc variable */ = data->modelData->realVarsData[282].attribute /* elmt_cell.elmt_C3GActive_conc variable */.start;

  data->localData[0]->realVars[301] /* elmt_cell.elmt_P90RskInactive_conc variable */ = data->modelData->realVarsData[301].attribute /* elmt_cell.elmt_P90RskInactive_conc variable */.start;

  data->localData[0]->realVars[328] /* elmt_cell.elmt_boundEGFReceptor_conc variable */ = data->modelData->realVarsData[328].attribute /* elmt_cell.elmt_boundEGFReceptor_conc variable */.start;

  data->localData[0]->realVars[277] /* elmt_cell.elmt_BRafActive_conc variable */ = data->modelData->realVarsData[277].attribute /* elmt_cell.elmt_BRafActive_conc variable */.start;

  data->localData[0]->realVars[321] /* elmt_cell.elmt_RasGapActive_conc variable */ = data->modelData->realVarsData[321].attribute /* elmt_cell.elmt_RasGapActive_conc variable */.start;

  data->localData[0]->realVars[317] /* elmt_cell.elmt_RapGapActive_conc variable */ = data->modelData->realVarsData[317].attribute /* elmt_cell.elmt_RapGapActive_conc variable */.start;

  data->localData[0]->realVars[306] /* elmt_cell.elmt_PP2AActive_conc variable */ = data->modelData->realVarsData[306].attribute /* elmt_cell.elmt_PP2AActive_conc variable */.start;

  data->localData[0]->realVars[322] /* elmt_cell.elmt_RasInactive_conc variable */ = data->modelData->realVarsData[322].attribute /* elmt_cell.elmt_RasInactive_conc variable */.start;

  data->localData[0]->realVars[314] /* elmt_cell.elmt_Rap1Active_conc variable */ = data->modelData->realVarsData[314].attribute /* elmt_cell.elmt_Rap1Active_conc variable */.start;

  data->localData[0]->realVars[288] /* elmt_cell.elmt_ErkActive_conc variable */ = data->modelData->realVarsData[288].attribute /* elmt_cell.elmt_ErkActive_conc variable */.start;

  data->localData[0]->realVars[310] /* elmt_cell.elmt_Raf1Inactive_conc variable */ = data->modelData->realVarsData[310].attribute /* elmt_cell.elmt_Raf1Inactive_conc variable */.start;

  data->localData[0]->realVars[329] /* elmt_cell.elmt_boundNGFReceptor_conc variable */ = data->modelData->realVarsData[329].attribute /* elmt_cell.elmt_boundNGFReceptor_conc variable */.start;

  data->localData[0]->realVars[316] /* elmt_cell.elmt_Rap1Inactive_conc variable */ = data->modelData->realVarsData[316].attribute /* elmt_cell.elmt_Rap1Inactive_conc variable */.start;

  data->localData[0]->realVars[303] /* elmt_cell.elmt_PI3KInactive_conc variable */ = data->modelData->realVarsData[303].attribute /* elmt_cell.elmt_PI3KInactive_conc variable */.start;

  data->localData[0]->realVars[311] /* elmt_cell.elmt_Raf1PPtase_conc variable */ = data->modelData->realVarsData[311].attribute /* elmt_cell.elmt_Raf1PPtase_conc variable */.start;

  data->localData[0]->realVars[325] /* elmt_cell.elmt_SosActive_conc variable */ = data->modelData->realVarsData[325].attribute /* elmt_cell.elmt_SosActive_conc variable */.start;

  data->localData[0]->realVars[302] /* elmt_cell.elmt_PI3KActive_conc variable */ = data->modelData->realVarsData[302].attribute /* elmt_cell.elmt_PI3KActive_conc variable */.start;

  data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */ = data->modelData->realVarsData[307].attribute /* elmt_cell.elmt_Raf1Active_conc variable */.start;

  data->localData[0]->realVars[290] /* elmt_cell.elmt_ErkInactive_conc variable */ = data->modelData->realVarsData[290].attribute /* elmt_cell.elmt_ErkInactive_conc variable */.start;

  data->localData[0]->realVars[293] /* elmt_cell.elmt_MekInactive_conc variable */ = data->modelData->realVarsData[293].attribute /* elmt_cell.elmt_MekInactive_conc variable */.start;

  data->localData[0]->realVars[279] /* elmt_cell.elmt_BRafInactive_conc variable */ = data->modelData->realVarsData[279].attribute /* elmt_cell.elmt_BRafInactive_conc variable */.start;

  data->localData[0]->realVars[279] /* elmt_cell.elmt_BRafInactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[107] /* elmt_cell.elmt_BRafInactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[293] /* elmt_cell.elmt_MekInactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[114] /* elmt_cell.elmt_MekInactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[290] /* elmt_cell.elmt_ErkInactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[112] /* elmt_cell.elmt_ErkInactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[121] /* elmt_cell.elmt_Raf1Active_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[302] /* elmt_cell.elmt_PI3KActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[118] /* elmt_cell.elmt_PI3KActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[325] /* elmt_cell.elmt_SosActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[130] /* elmt_cell.elmt_SosActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[311] /* elmt_cell.elmt_Raf1PPtase_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[123] /* elmt_cell.elmt_Raf1PPtase_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[303] /* elmt_cell.elmt_PI3KInactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[119] /* elmt_cell.elmt_PI3KInactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[316] /* elmt_cell.elmt_Rap1Inactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[125] /* elmt_cell.elmt_Rap1Inactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[329] /* elmt_cell.elmt_boundNGFReceptor_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[133] /* elmt_cell.elmt_boundNGFReceptor_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[310] /* elmt_cell.elmt_Raf1Inactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[122] /* elmt_cell.elmt_Raf1Inactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[288] /* elmt_cell.elmt_ErkActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[111] /* elmt_cell.elmt_ErkActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[314] /* elmt_cell.elmt_Rap1Active_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[124] /* elmt_cell.elmt_Rap1Active_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[322] /* elmt_cell.elmt_RasInactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[129] /* elmt_cell.elmt_RasInactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[306] /* elmt_cell.elmt_PP2AActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[120] /* elmt_cell.elmt_PP2AActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[317] /* elmt_cell.elmt_RapGapActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[126] /* elmt_cell.elmt_RapGapActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[321] /* elmt_cell.elmt_RasGapActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[128] /* elmt_cell.elmt_RasGapActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[277] /* elmt_cell.elmt_BRafActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[106] /* elmt_cell.elmt_BRafActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[328] /* elmt_cell.elmt_boundEGFReceptor_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[132] /* elmt_cell.elmt_boundEGFReceptor_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[301] /* elmt_cell.elmt_P90RskInactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[117] /* elmt_cell.elmt_P90RskInactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[282] /* elmt_cell.elmt_C3GActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[108] /* elmt_cell.elmt_C3GActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[275] /* elmt_cell.elmt_AktActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[104] /* elmt_cell.elmt_AktActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[330] /* elmt_cell.elmt_freeEGFReceptor_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[135] /* elmt_cell.elmt_freeEGFReceptor_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[291] /* elmt_cell.elmt_MekActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[113] /* elmt_cell.elmt_MekActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[283] /* elmt_cell.elmt_C3GInactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[109] /* elmt_cell.elmt_C3GInactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[319] /* elmt_cell.elmt_RasActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[127] /* elmt_cell.elmt_RasActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[276] /* elmt_cell.elmt_AktInactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[105] /* elmt_cell.elmt_AktInactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[286] /* elmt_cell.elmt_EGF_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[110] /* elmt_cell.elmt_EGF_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[300] /* elmt_cell.elmt_P90RskActive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[116] /* elmt_cell.elmt_P90RskActive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[327] /* elmt_cell.elmt_SosInactive_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[131] /* elmt_cell.elmt_SosInactive_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[298] /* elmt_cell.elmt_NGF_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[115] /* elmt_cell.elmt_NGF_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);

  data->localData[0]->realVars[331] /* elmt_cell.elmt_freeNGFReceptor_conc variable */ = DIVISION_SIM(data->localData[0]->realVars[136] /* elmt_cell.elmt_freeNGFReceptor_amount STATE(1) */,data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,"elmt_cell.elmt_cell",equationIndexes);
  TRACE_POP
}

void residualFunc35(void** dataIn, const double* xloc, double* res, const int* iflag)
{
  TRACE_PUSH
  DATA *data = (DATA*) ((void**)dataIn[0]);
  threadData_t *threadData = (threadData_t*) ((void**)dataIn[1]);
  const int equationIndexes[2] = {1,35};
  int i;
  modelica_real OLD_0;
  modelica_real OLD_1;
  modelica_real OLD_2;
  modelica_real OLD_3;
  modelica_real OLD_4;
  modelica_real OLD_5;
  modelica_real OLD_6;
  modelica_real OLD_7;
  modelica_real OLD_8;
  modelica_real OLD_9;
  modelica_real OLD_10;
  modelica_real OLD_11;
  modelica_real OLD_12;
  modelica_real OLD_13;
  modelica_real OLD_14;
  modelica_real OLD_15;
  modelica_real OLD_16;
  modelica_real OLD_17;
  modelica_real OLD_18;
  modelica_real OLD_19;
  modelica_real OLD_20;
  modelica_real OLD_21;
  modelica_real OLD_22;
  modelica_real OLD_23;
  modelica_real OLD_24;
  modelica_real OLD_25;
  modelica_real OLD_26;
  modelica_real OLD_27;
  modelica_real OLD_28;
  modelica_real OLD_29;
  modelica_real OLD_30;
  modelica_real OLD_31;
  /* iteration variables */
  for (i=0; i<32; i++) {
    if (isinf(xloc[i]) || isnan(xloc[i])) {
      for (i=0; i<32; i++) {
        res[i] = NAN;
      }
      return;
    }
  }
  data->localData[0]->realVars[128] /* elmt_cell.elmt_RasGapActive_amount STATE(1) */ = xloc[0];
  data->localData[0]->realVars[113] /* elmt_cell.elmt_MekActive_amount STATE(1) */ = xloc[1];
  data->localData[0]->realVars[124] /* elmt_cell.elmt_Rap1Active_amount STATE(1) */ = xloc[2];
  data->localData[0]->realVars[127] /* elmt_cell.elmt_RasActive_amount STATE(1) */ = xloc[3];
  data->localData[0]->realVars[123] /* elmt_cell.elmt_Raf1PPtase_amount STATE(1) */ = xloc[4];
  data->localData[0]->realVars[118] /* elmt_cell.elmt_PI3KActive_amount STATE(1) */ = xloc[5];
  data->localData[0]->realVars[135] /* elmt_cell.elmt_freeEGFReceptor_amount STATE(1) */ = xloc[6];
  data->localData[0]->realVars[119] /* elmt_cell.elmt_PI3KInactive_amount STATE(1) */ = xloc[7];
  data->localData[0]->realVars[126] /* elmt_cell.elmt_RapGapActive_amount STATE(1) */ = xloc[8];
  data->localData[0]->realVars[108] /* elmt_cell.elmt_C3GActive_amount STATE(1) */ = xloc[9];
  data->localData[0]->realVars[120] /* elmt_cell.elmt_PP2AActive_amount STATE(1) */ = xloc[10];
  data->localData[0]->realVars[136] /* elmt_cell.elmt_freeNGFReceptor_amount STATE(1) */ = xloc[11];
  data->localData[0]->realVars[130] /* elmt_cell.elmt_SosActive_amount STATE(1) */ = xloc[12];
  data->localData[0]->realVars[125] /* elmt_cell.elmt_Rap1Inactive_amount STATE(1) */ = xloc[13];
  data->localData[0]->realVars[132] /* elmt_cell.elmt_boundEGFReceptor_amount STATE(1) */ = xloc[14];
  data->localData[0]->realVars[129] /* elmt_cell.elmt_RasInactive_amount STATE(1) */ = xloc[15];
  data->localData[0]->realVars[110] /* elmt_cell.elmt_EGF_amount STATE(1) */ = xloc[16];
  data->localData[0]->realVars[107] /* elmt_cell.elmt_BRafInactive_amount STATE(1) */ = xloc[17];
  data->localData[0]->realVars[131] /* elmt_cell.elmt_SosInactive_amount STATE(1) */ = xloc[18];
  data->localData[0]->realVars[109] /* elmt_cell.elmt_C3GInactive_amount STATE(1) */ = xloc[19];
  data->localData[0]->realVars[117] /* elmt_cell.elmt_P90RskInactive_amount STATE(1) */ = xloc[20];
  data->localData[0]->realVars[116] /* elmt_cell.elmt_P90RskActive_amount STATE(1) */ = xloc[21];
  data->localData[0]->realVars[115] /* elmt_cell.elmt_NGF_amount STATE(1) */ = xloc[22];
  data->localData[0]->realVars[121] /* elmt_cell.elmt_Raf1Active_amount STATE(1) */ = xloc[23];
  data->localData[0]->realVars[122] /* elmt_cell.elmt_Raf1Inactive_amount STATE(1) */ = xloc[24];
  data->localData[0]->realVars[106] /* elmt_cell.elmt_BRafActive_amount STATE(1) */ = xloc[25];
  data->localData[0]->realVars[105] /* elmt_cell.elmt_AktInactive_amount STATE(1) */ = xloc[26];
  data->localData[0]->realVars[104] /* elmt_cell.elmt_AktActive_amount STATE(1) */ = xloc[27];
  data->localData[0]->realVars[133] /* elmt_cell.elmt_boundNGFReceptor_amount STATE(1) */ = xloc[28];
  data->localData[0]->realVars[111] /* elmt_cell.elmt_ErkActive_amount STATE(1) */ = xloc[29];
  data->localData[0]->realVars[114] /* elmt_cell.elmt_MekInactive_amount STATE(1) */ = xloc[30];
  data->localData[0]->realVars[112] /* elmt_cell.elmt_ErkInactive_amount STATE(1) */ = xloc[31];
  /* backup outputs */
  /* backup outputs of the algorithm */
  OLD_0 = data->localData[0]->realVars[331] /* elmt_cell.elmt_freeNGFReceptor_conc variable */;
  OLD_1 = data->localData[0]->realVars[298] /* elmt_cell.elmt_NGF_conc variable */;
  OLD_2 = data->localData[0]->realVars[327] /* elmt_cell.elmt_SosInactive_conc variable */;
  OLD_3 = data->localData[0]->realVars[300] /* elmt_cell.elmt_P90RskActive_conc variable */;
  OLD_4 = data->localData[0]->realVars[286] /* elmt_cell.elmt_EGF_conc variable */;
  OLD_5 = data->localData[0]->realVars[276] /* elmt_cell.elmt_AktInactive_conc variable */;
  OLD_6 = data->localData[0]->realVars[319] /* elmt_cell.elmt_RasActive_conc variable */;
  OLD_7 = data->localData[0]->realVars[283] /* elmt_cell.elmt_C3GInactive_conc variable */;
  OLD_8 = data->localData[0]->realVars[291] /* elmt_cell.elmt_MekActive_conc variable */;
  OLD_9 = data->localData[0]->realVars[330] /* elmt_cell.elmt_freeEGFReceptor_conc variable */;
  OLD_10 = data->localData[0]->realVars[275] /* elmt_cell.elmt_AktActive_conc variable */;
  OLD_11 = data->localData[0]->realVars[282] /* elmt_cell.elmt_C3GActive_conc variable */;
  OLD_12 = data->localData[0]->realVars[301] /* elmt_cell.elmt_P90RskInactive_conc variable */;
  OLD_13 = data->localData[0]->realVars[328] /* elmt_cell.elmt_boundEGFReceptor_conc variable */;
  OLD_14 = data->localData[0]->realVars[277] /* elmt_cell.elmt_BRafActive_conc variable */;
  OLD_15 = data->localData[0]->realVars[321] /* elmt_cell.elmt_RasGapActive_conc variable */;
  OLD_16 = data->localData[0]->realVars[317] /* elmt_cell.elmt_RapGapActive_conc variable */;
  OLD_17 = data->localData[0]->realVars[306] /* elmt_cell.elmt_PP2AActive_conc variable */;
  OLD_18 = data->localData[0]->realVars[322] /* elmt_cell.elmt_RasInactive_conc variable */;
  OLD_19 = data->localData[0]->realVars[314] /* elmt_cell.elmt_Rap1Active_conc variable */;
  OLD_20 = data->localData[0]->realVars[288] /* elmt_cell.elmt_ErkActive_conc variable */;
  OLD_21 = data->localData[0]->realVars[310] /* elmt_cell.elmt_Raf1Inactive_conc variable */;
  OLD_22 = data->localData[0]->realVars[329] /* elmt_cell.elmt_boundNGFReceptor_conc variable */;
  OLD_23 = data->localData[0]->realVars[316] /* elmt_cell.elmt_Rap1Inactive_conc variable */;
  OLD_24 = data->localData[0]->realVars[303] /* elmt_cell.elmt_PI3KInactive_conc variable */;
  OLD_25 = data->localData[0]->realVars[311] /* elmt_cell.elmt_Raf1PPtase_conc variable */;
  OLD_26 = data->localData[0]->realVars[325] /* elmt_cell.elmt_SosActive_conc variable */;
  OLD_27 = data->localData[0]->realVars[302] /* elmt_cell.elmt_PI3KActive_conc variable */;
  OLD_28 = data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */;
  OLD_29 = data->localData[0]->realVars[290] /* elmt_cell.elmt_ErkInactive_conc variable */;
  OLD_30 = data->localData[0]->realVars[293] /* elmt_cell.elmt_MekInactive_conc variable */;
  OLD_31 = data->localData[0]->realVars[279] /* elmt_cell.elmt_BRafInactive_conc variable */;
  /* pre body */
  /* local constraints */
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_34(data, threadData);
  /* body */
  res[0] = 0;
  res[1] = 0;
  res[2] = 0;
  res[3] = 0;
  res[4] = 0;
  res[5] = 0;
  res[6] = 0;
  res[7] = 0;
  res[8] = 0;
  res[9] = 0;
  res[10] = 0;
  res[11] = 0;
  res[12] = 0;
  res[13] = 0;
  res[14] = 0;
  res[15] = 0;
  res[16] = 0;
  res[17] = 0;
  res[18] = 0;
  res[19] = 0;
  res[20] = 0;
  res[21] = 0;
  res[22] = 0;
  res[23] = 0;
  res[24] = 0;
  res[25] = 0;
  res[26] = 0;
  res[27] = 0;
  res[28] = 0;
  res[29] = 0;
  res[30] = 0;
  res[31] = 0;
  res[(int)fmod(0, 32)] += pow(OLD_0 - data->localData[0]->realVars[331] /* elmt_cell.elmt_freeNGFReceptor_conc variable */, 2);
  res[(int)fmod(1, 32)] += pow(OLD_1 - data->localData[0]->realVars[298] /* elmt_cell.elmt_NGF_conc variable */, 2);
  res[(int)fmod(2, 32)] += pow(OLD_2 - data->localData[0]->realVars[327] /* elmt_cell.elmt_SosInactive_conc variable */, 2);
  res[(int)fmod(3, 32)] += pow(OLD_3 - data->localData[0]->realVars[300] /* elmt_cell.elmt_P90RskActive_conc variable */, 2);
  res[(int)fmod(4, 32)] += pow(OLD_4 - data->localData[0]->realVars[286] /* elmt_cell.elmt_EGF_conc variable */, 2);
  res[(int)fmod(5, 32)] += pow(OLD_5 - data->localData[0]->realVars[276] /* elmt_cell.elmt_AktInactive_conc variable */, 2);
  res[(int)fmod(6, 32)] += pow(OLD_6 - data->localData[0]->realVars[319] /* elmt_cell.elmt_RasActive_conc variable */, 2);
  res[(int)fmod(7, 32)] += pow(OLD_7 - data->localData[0]->realVars[283] /* elmt_cell.elmt_C3GInactive_conc variable */, 2);
  res[(int)fmod(8, 32)] += pow(OLD_8 - data->localData[0]->realVars[291] /* elmt_cell.elmt_MekActive_conc variable */, 2);
  res[(int)fmod(9, 32)] += pow(OLD_9 - data->localData[0]->realVars[330] /* elmt_cell.elmt_freeEGFReceptor_conc variable */, 2);
  res[(int)fmod(10, 32)] += pow(OLD_10 - data->localData[0]->realVars[275] /* elmt_cell.elmt_AktActive_conc variable */, 2);
  res[(int)fmod(11, 32)] += pow(OLD_11 - data->localData[0]->realVars[282] /* elmt_cell.elmt_C3GActive_conc variable */, 2);
  res[(int)fmod(12, 32)] += pow(OLD_12 - data->localData[0]->realVars[301] /* elmt_cell.elmt_P90RskInactive_conc variable */, 2);
  res[(int)fmod(13, 32)] += pow(OLD_13 - data->localData[0]->realVars[328] /* elmt_cell.elmt_boundEGFReceptor_conc variable */, 2);
  res[(int)fmod(14, 32)] += pow(OLD_14 - data->localData[0]->realVars[277] /* elmt_cell.elmt_BRafActive_conc variable */, 2);
  res[(int)fmod(15, 32)] += pow(OLD_15 - data->localData[0]->realVars[321] /* elmt_cell.elmt_RasGapActive_conc variable */, 2);
  res[(int)fmod(16, 32)] += pow(OLD_16 - data->localData[0]->realVars[317] /* elmt_cell.elmt_RapGapActive_conc variable */, 2);
  res[(int)fmod(17, 32)] += pow(OLD_17 - data->localData[0]->realVars[306] /* elmt_cell.elmt_PP2AActive_conc variable */, 2);
  res[(int)fmod(18, 32)] += pow(OLD_18 - data->localData[0]->realVars[322] /* elmt_cell.elmt_RasInactive_conc variable */, 2);
  res[(int)fmod(19, 32)] += pow(OLD_19 - data->localData[0]->realVars[314] /* elmt_cell.elmt_Rap1Active_conc variable */, 2);
  res[(int)fmod(20, 32)] += pow(OLD_20 - data->localData[0]->realVars[288] /* elmt_cell.elmt_ErkActive_conc variable */, 2);
  res[(int)fmod(21, 32)] += pow(OLD_21 - data->localData[0]->realVars[310] /* elmt_cell.elmt_Raf1Inactive_conc variable */, 2);
  res[(int)fmod(22, 32)] += pow(OLD_22 - data->localData[0]->realVars[329] /* elmt_cell.elmt_boundNGFReceptor_conc variable */, 2);
  res[(int)fmod(23, 32)] += pow(OLD_23 - data->localData[0]->realVars[316] /* elmt_cell.elmt_Rap1Inactive_conc variable */, 2);
  res[(int)fmod(24, 32)] += pow(OLD_24 - data->localData[0]->realVars[303] /* elmt_cell.elmt_PI3KInactive_conc variable */, 2);
  res[(int)fmod(25, 32)] += pow(OLD_25 - data->localData[0]->realVars[311] /* elmt_cell.elmt_Raf1PPtase_conc variable */, 2);
  res[(int)fmod(26, 32)] += pow(OLD_26 - data->localData[0]->realVars[325] /* elmt_cell.elmt_SosActive_conc variable */, 2);
  res[(int)fmod(27, 32)] += pow(OLD_27 - data->localData[0]->realVars[302] /* elmt_cell.elmt_PI3KActive_conc variable */, 2);
  res[(int)fmod(28, 32)] += pow(OLD_28 - data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */, 2);
  res[(int)fmod(29, 32)] += pow(OLD_29 - data->localData[0]->realVars[290] /* elmt_cell.elmt_ErkInactive_conc variable */, 2);
  res[(int)fmod(30, 32)] += pow(OLD_30 - data->localData[0]->realVars[293] /* elmt_cell.elmt_MekInactive_conc variable */, 2);
  res[(int)fmod(31, 32)] += pow(OLD_31 - data->localData[0]->realVars[279] /* elmt_cell.elmt_BRafInactive_conc variable */, 2);
  /* restore known outputs */
  /* restore previously known outputs of the algorithm */
  data->localData[0]->realVars[331] /* elmt_cell.elmt_freeNGFReceptor_conc variable */ = OLD_0;
  data->localData[0]->realVars[298] /* elmt_cell.elmt_NGF_conc variable */ = OLD_1;
  data->localData[0]->realVars[327] /* elmt_cell.elmt_SosInactive_conc variable */ = OLD_2;
  data->localData[0]->realVars[300] /* elmt_cell.elmt_P90RskActive_conc variable */ = OLD_3;
  data->localData[0]->realVars[286] /* elmt_cell.elmt_EGF_conc variable */ = OLD_4;
  data->localData[0]->realVars[276] /* elmt_cell.elmt_AktInactive_conc variable */ = OLD_5;
  data->localData[0]->realVars[319] /* elmt_cell.elmt_RasActive_conc variable */ = OLD_6;
  data->localData[0]->realVars[283] /* elmt_cell.elmt_C3GInactive_conc variable */ = OLD_7;
  data->localData[0]->realVars[291] /* elmt_cell.elmt_MekActive_conc variable */ = OLD_8;
  data->localData[0]->realVars[330] /* elmt_cell.elmt_freeEGFReceptor_conc variable */ = OLD_9;
  data->localData[0]->realVars[275] /* elmt_cell.elmt_AktActive_conc variable */ = OLD_10;
  data->localData[0]->realVars[282] /* elmt_cell.elmt_C3GActive_conc variable */ = OLD_11;
  data->localData[0]->realVars[301] /* elmt_cell.elmt_P90RskInactive_conc variable */ = OLD_12;
  data->localData[0]->realVars[328] /* elmt_cell.elmt_boundEGFReceptor_conc variable */ = OLD_13;
  data->localData[0]->realVars[277] /* elmt_cell.elmt_BRafActive_conc variable */ = OLD_14;
  data->localData[0]->realVars[321] /* elmt_cell.elmt_RasGapActive_conc variable */ = OLD_15;
  data->localData[0]->realVars[317] /* elmt_cell.elmt_RapGapActive_conc variable */ = OLD_16;
  data->localData[0]->realVars[306] /* elmt_cell.elmt_PP2AActive_conc variable */ = OLD_17;
  data->localData[0]->realVars[322] /* elmt_cell.elmt_RasInactive_conc variable */ = OLD_18;
  data->localData[0]->realVars[314] /* elmt_cell.elmt_Rap1Active_conc variable */ = OLD_19;
  data->localData[0]->realVars[288] /* elmt_cell.elmt_ErkActive_conc variable */ = OLD_20;
  data->localData[0]->realVars[310] /* elmt_cell.elmt_Raf1Inactive_conc variable */ = OLD_21;
  data->localData[0]->realVars[329] /* elmt_cell.elmt_boundNGFReceptor_conc variable */ = OLD_22;
  data->localData[0]->realVars[316] /* elmt_cell.elmt_Rap1Inactive_conc variable */ = OLD_23;
  data->localData[0]->realVars[303] /* elmt_cell.elmt_PI3KInactive_conc variable */ = OLD_24;
  data->localData[0]->realVars[311] /* elmt_cell.elmt_Raf1PPtase_conc variable */ = OLD_25;
  data->localData[0]->realVars[325] /* elmt_cell.elmt_SosActive_conc variable */ = OLD_26;
  data->localData[0]->realVars[302] /* elmt_cell.elmt_PI3KActive_conc variable */ = OLD_27;
  data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */ = OLD_28;
  data->localData[0]->realVars[290] /* elmt_cell.elmt_ErkInactive_conc variable */ = OLD_29;
  data->localData[0]->realVars[293] /* elmt_cell.elmt_MekInactive_conc variable */ = OLD_30;
  data->localData[0]->realVars[279] /* elmt_cell.elmt_BRafInactive_conc variable */ = OLD_31;
  TRACE_POP
}
void initializeSparsePatternNLS35(NONLINEAR_SYSTEM_DATA* inSysData)
{
  /* no sparsity pattern available */
  inSysData->isPatternAvailable = 0;
}
void initializeStaticDataNLS35(void *inData, threadData_t *threadData, void *inSystemData)
{
  DATA* data = (DATA*) inData;
  NONLINEAR_SYSTEM_DATA* sysData = (NONLINEAR_SYSTEM_DATA*) inSystemData;
  int i=0;
  /* static nls data for elmt_cell.elmt_RasGapActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[128].attribute /* elmt_cell.elmt_RasGapActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[128].attribute /* elmt_cell.elmt_RasGapActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[128].attribute /* elmt_cell.elmt_RasGapActive_amount */.max;
  /* static nls data for elmt_cell.elmt_MekActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[113].attribute /* elmt_cell.elmt_MekActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[113].attribute /* elmt_cell.elmt_MekActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[113].attribute /* elmt_cell.elmt_MekActive_amount */.max;
  /* static nls data for elmt_cell.elmt_Rap1Active_amount */
  sysData->nominal[i] = data->modelData->realVarsData[124].attribute /* elmt_cell.elmt_Rap1Active_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[124].attribute /* elmt_cell.elmt_Rap1Active_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[124].attribute /* elmt_cell.elmt_Rap1Active_amount */.max;
  /* static nls data for elmt_cell.elmt_RasActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[127].attribute /* elmt_cell.elmt_RasActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[127].attribute /* elmt_cell.elmt_RasActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[127].attribute /* elmt_cell.elmt_RasActive_amount */.max;
  /* static nls data for elmt_cell.elmt_Raf1PPtase_amount */
  sysData->nominal[i] = data->modelData->realVarsData[123].attribute /* elmt_cell.elmt_Raf1PPtase_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[123].attribute /* elmt_cell.elmt_Raf1PPtase_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[123].attribute /* elmt_cell.elmt_Raf1PPtase_amount */.max;
  /* static nls data for elmt_cell.elmt_PI3KActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[118].attribute /* elmt_cell.elmt_PI3KActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[118].attribute /* elmt_cell.elmt_PI3KActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[118].attribute /* elmt_cell.elmt_PI3KActive_amount */.max;
  /* static nls data for elmt_cell.elmt_freeEGFReceptor_amount */
  sysData->nominal[i] = data->modelData->realVarsData[135].attribute /* elmt_cell.elmt_freeEGFReceptor_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[135].attribute /* elmt_cell.elmt_freeEGFReceptor_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[135].attribute /* elmt_cell.elmt_freeEGFReceptor_amount */.max;
  /* static nls data for elmt_cell.elmt_PI3KInactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[119].attribute /* elmt_cell.elmt_PI3KInactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[119].attribute /* elmt_cell.elmt_PI3KInactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[119].attribute /* elmt_cell.elmt_PI3KInactive_amount */.max;
  /* static nls data for elmt_cell.elmt_RapGapActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[126].attribute /* elmt_cell.elmt_RapGapActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[126].attribute /* elmt_cell.elmt_RapGapActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[126].attribute /* elmt_cell.elmt_RapGapActive_amount */.max;
  /* static nls data for elmt_cell.elmt_C3GActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[108].attribute /* elmt_cell.elmt_C3GActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[108].attribute /* elmt_cell.elmt_C3GActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[108].attribute /* elmt_cell.elmt_C3GActive_amount */.max;
  /* static nls data for elmt_cell.elmt_PP2AActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[120].attribute /* elmt_cell.elmt_PP2AActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[120].attribute /* elmt_cell.elmt_PP2AActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[120].attribute /* elmt_cell.elmt_PP2AActive_amount */.max;
  /* static nls data for elmt_cell.elmt_freeNGFReceptor_amount */
  sysData->nominal[i] = data->modelData->realVarsData[136].attribute /* elmt_cell.elmt_freeNGFReceptor_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[136].attribute /* elmt_cell.elmt_freeNGFReceptor_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[136].attribute /* elmt_cell.elmt_freeNGFReceptor_amount */.max;
  /* static nls data for elmt_cell.elmt_SosActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[130].attribute /* elmt_cell.elmt_SosActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[130].attribute /* elmt_cell.elmt_SosActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[130].attribute /* elmt_cell.elmt_SosActive_amount */.max;
  /* static nls data for elmt_cell.elmt_Rap1Inactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[125].attribute /* elmt_cell.elmt_Rap1Inactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[125].attribute /* elmt_cell.elmt_Rap1Inactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[125].attribute /* elmt_cell.elmt_Rap1Inactive_amount */.max;
  /* static nls data for elmt_cell.elmt_boundEGFReceptor_amount */
  sysData->nominal[i] = data->modelData->realVarsData[132].attribute /* elmt_cell.elmt_boundEGFReceptor_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[132].attribute /* elmt_cell.elmt_boundEGFReceptor_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[132].attribute /* elmt_cell.elmt_boundEGFReceptor_amount */.max;
  /* static nls data for elmt_cell.elmt_RasInactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[129].attribute /* elmt_cell.elmt_RasInactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[129].attribute /* elmt_cell.elmt_RasInactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[129].attribute /* elmt_cell.elmt_RasInactive_amount */.max;
  /* static nls data for elmt_cell.elmt_EGF_amount */
  sysData->nominal[i] = data->modelData->realVarsData[110].attribute /* elmt_cell.elmt_EGF_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[110].attribute /* elmt_cell.elmt_EGF_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[110].attribute /* elmt_cell.elmt_EGF_amount */.max;
  /* static nls data for elmt_cell.elmt_BRafInactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[107].attribute /* elmt_cell.elmt_BRafInactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[107].attribute /* elmt_cell.elmt_BRafInactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[107].attribute /* elmt_cell.elmt_BRafInactive_amount */.max;
  /* static nls data for elmt_cell.elmt_SosInactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[131].attribute /* elmt_cell.elmt_SosInactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[131].attribute /* elmt_cell.elmt_SosInactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[131].attribute /* elmt_cell.elmt_SosInactive_amount */.max;
  /* static nls data for elmt_cell.elmt_C3GInactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[109].attribute /* elmt_cell.elmt_C3GInactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[109].attribute /* elmt_cell.elmt_C3GInactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[109].attribute /* elmt_cell.elmt_C3GInactive_amount */.max;
  /* static nls data for elmt_cell.elmt_P90RskInactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[117].attribute /* elmt_cell.elmt_P90RskInactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[117].attribute /* elmt_cell.elmt_P90RskInactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[117].attribute /* elmt_cell.elmt_P90RskInactive_amount */.max;
  /* static nls data for elmt_cell.elmt_P90RskActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[116].attribute /* elmt_cell.elmt_P90RskActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[116].attribute /* elmt_cell.elmt_P90RskActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[116].attribute /* elmt_cell.elmt_P90RskActive_amount */.max;
  /* static nls data for elmt_cell.elmt_NGF_amount */
  sysData->nominal[i] = data->modelData->realVarsData[115].attribute /* elmt_cell.elmt_NGF_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[115].attribute /* elmt_cell.elmt_NGF_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[115].attribute /* elmt_cell.elmt_NGF_amount */.max;
  /* static nls data for elmt_cell.elmt_Raf1Active_amount */
  sysData->nominal[i] = data->modelData->realVarsData[121].attribute /* elmt_cell.elmt_Raf1Active_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[121].attribute /* elmt_cell.elmt_Raf1Active_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[121].attribute /* elmt_cell.elmt_Raf1Active_amount */.max;
  /* static nls data for elmt_cell.elmt_Raf1Inactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[122].attribute /* elmt_cell.elmt_Raf1Inactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[122].attribute /* elmt_cell.elmt_Raf1Inactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[122].attribute /* elmt_cell.elmt_Raf1Inactive_amount */.max;
  /* static nls data for elmt_cell.elmt_BRafActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[106].attribute /* elmt_cell.elmt_BRafActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[106].attribute /* elmt_cell.elmt_BRafActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[106].attribute /* elmt_cell.elmt_BRafActive_amount */.max;
  /* static nls data for elmt_cell.elmt_AktInactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[105].attribute /* elmt_cell.elmt_AktInactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[105].attribute /* elmt_cell.elmt_AktInactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[105].attribute /* elmt_cell.elmt_AktInactive_amount */.max;
  /* static nls data for elmt_cell.elmt_AktActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[104].attribute /* elmt_cell.elmt_AktActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[104].attribute /* elmt_cell.elmt_AktActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[104].attribute /* elmt_cell.elmt_AktActive_amount */.max;
  /* static nls data for elmt_cell.elmt_boundNGFReceptor_amount */
  sysData->nominal[i] = data->modelData->realVarsData[133].attribute /* elmt_cell.elmt_boundNGFReceptor_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[133].attribute /* elmt_cell.elmt_boundNGFReceptor_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[133].attribute /* elmt_cell.elmt_boundNGFReceptor_amount */.max;
  /* static nls data for elmt_cell.elmt_ErkActive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[111].attribute /* elmt_cell.elmt_ErkActive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[111].attribute /* elmt_cell.elmt_ErkActive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[111].attribute /* elmt_cell.elmt_ErkActive_amount */.max;
  /* static nls data for elmt_cell.elmt_MekInactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[114].attribute /* elmt_cell.elmt_MekInactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[114].attribute /* elmt_cell.elmt_MekInactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[114].attribute /* elmt_cell.elmt_MekInactive_amount */.max;
  /* static nls data for elmt_cell.elmt_ErkInactive_amount */
  sysData->nominal[i] = data->modelData->realVarsData[112].attribute /* elmt_cell.elmt_ErkInactive_amount */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[112].attribute /* elmt_cell.elmt_ErkInactive_amount */.min;
  sysData->max[i++]   = data->modelData->realVarsData[112].attribute /* elmt_cell.elmt_ErkInactive_amount */.max;
  /* initial sparse pattern */
  initializeSparsePatternNLS35(sysData);
}

void getIterationVarsNLS35(struct DATA *inData, double *array)
{
  DATA* data = (DATA*) inData;
  array[0] = data->localData[0]->realVars[128] /* elmt_cell.elmt_RasGapActive_amount STATE(1) */;
  array[1] = data->localData[0]->realVars[113] /* elmt_cell.elmt_MekActive_amount STATE(1) */;
  array[2] = data->localData[0]->realVars[124] /* elmt_cell.elmt_Rap1Active_amount STATE(1) */;
  array[3] = data->localData[0]->realVars[127] /* elmt_cell.elmt_RasActive_amount STATE(1) */;
  array[4] = data->localData[0]->realVars[123] /* elmt_cell.elmt_Raf1PPtase_amount STATE(1) */;
  array[5] = data->localData[0]->realVars[118] /* elmt_cell.elmt_PI3KActive_amount STATE(1) */;
  array[6] = data->localData[0]->realVars[135] /* elmt_cell.elmt_freeEGFReceptor_amount STATE(1) */;
  array[7] = data->localData[0]->realVars[119] /* elmt_cell.elmt_PI3KInactive_amount STATE(1) */;
  array[8] = data->localData[0]->realVars[126] /* elmt_cell.elmt_RapGapActive_amount STATE(1) */;
  array[9] = data->localData[0]->realVars[108] /* elmt_cell.elmt_C3GActive_amount STATE(1) */;
  array[10] = data->localData[0]->realVars[120] /* elmt_cell.elmt_PP2AActive_amount STATE(1) */;
  array[11] = data->localData[0]->realVars[136] /* elmt_cell.elmt_freeNGFReceptor_amount STATE(1) */;
  array[12] = data->localData[0]->realVars[130] /* elmt_cell.elmt_SosActive_amount STATE(1) */;
  array[13] = data->localData[0]->realVars[125] /* elmt_cell.elmt_Rap1Inactive_amount STATE(1) */;
  array[14] = data->localData[0]->realVars[132] /* elmt_cell.elmt_boundEGFReceptor_amount STATE(1) */;
  array[15] = data->localData[0]->realVars[129] /* elmt_cell.elmt_RasInactive_amount STATE(1) */;
  array[16] = data->localData[0]->realVars[110] /* elmt_cell.elmt_EGF_amount STATE(1) */;
  array[17] = data->localData[0]->realVars[107] /* elmt_cell.elmt_BRafInactive_amount STATE(1) */;
  array[18] = data->localData[0]->realVars[131] /* elmt_cell.elmt_SosInactive_amount STATE(1) */;
  array[19] = data->localData[0]->realVars[109] /* elmt_cell.elmt_C3GInactive_amount STATE(1) */;
  array[20] = data->localData[0]->realVars[117] /* elmt_cell.elmt_P90RskInactive_amount STATE(1) */;
  array[21] = data->localData[0]->realVars[116] /* elmt_cell.elmt_P90RskActive_amount STATE(1) */;
  array[22] = data->localData[0]->realVars[115] /* elmt_cell.elmt_NGF_amount STATE(1) */;
  array[23] = data->localData[0]->realVars[121] /* elmt_cell.elmt_Raf1Active_amount STATE(1) */;
  array[24] = data->localData[0]->realVars[122] /* elmt_cell.elmt_Raf1Inactive_amount STATE(1) */;
  array[25] = data->localData[0]->realVars[106] /* elmt_cell.elmt_BRafActive_amount STATE(1) */;
  array[26] = data->localData[0]->realVars[105] /* elmt_cell.elmt_AktInactive_amount STATE(1) */;
  array[27] = data->localData[0]->realVars[104] /* elmt_cell.elmt_AktActive_amount STATE(1) */;
  array[28] = data->localData[0]->realVars[133] /* elmt_cell.elmt_boundNGFReceptor_amount STATE(1) */;
  array[29] = data->localData[0]->realVars[111] /* elmt_cell.elmt_ErkActive_amount STATE(1) */;
  array[30] = data->localData[0]->realVars[114] /* elmt_cell.elmt_MekInactive_amount STATE(1) */;
  array[31] = data->localData[0]->realVars[112] /* elmt_cell.elmt_ErkInactive_amount STATE(1) */;
}

/* Prototypes for the strict sets (Dynamic Tearing) */

/* Global constraints for the casual sets */
/* function initialize non-linear systems */
void BIOMD033_Brown2004_NGF_EGF_signaling_initialNonLinearSystem(int nNonLinearSystems, NONLINEAR_SYSTEM_DATA* nonLinearSystemData)
{
  
  nonLinearSystemData[0].equationIndex = 35;
  nonLinearSystemData[0].size = 32;
  nonLinearSystemData[0].homotopySupport = 0;
  nonLinearSystemData[0].mixedSystem = 0;
  nonLinearSystemData[0].residualFunc = residualFunc35;
  nonLinearSystemData[0].strictTearingFunctionCall = NULL;
  nonLinearSystemData[0].analyticalJacobianColumn = NULL;
  nonLinearSystemData[0].initialAnalyticalJacobian = NULL;
  nonLinearSystemData[0].jacobianIndex = -1;
  nonLinearSystemData[0].initializeStaticNLSData = initializeStaticDataNLS35;
  nonLinearSystemData[0].getIterationVars = getIterationVarsNLS35;
  nonLinearSystemData[0].checkConstraints = NULL;
}

#if defined(__cplusplus)
}
#endif

