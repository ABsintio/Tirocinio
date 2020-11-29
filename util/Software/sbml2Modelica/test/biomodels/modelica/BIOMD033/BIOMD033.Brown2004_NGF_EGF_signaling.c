/* Main Simulation File */

#if defined(__cplusplus)
extern "C" {
#endif

#include "BIOMD033.Brown2004_NGF_EGF_signaling_model.h"
#include "simulation/solver/events.h"

#define prefixedName_performSimulation BIOMD033_Brown2004_NGF_EGF_signaling_performSimulation
#define prefixedName_updateContinuousSystem BIOMD033_Brown2004_NGF_EGF_signaling_updateContinuousSystem
#include <simulation/solver/perform_simulation.c.inc>

#define prefixedName_performQSSSimulation BIOMD033_Brown2004_NGF_EGF_signaling_performQSSSimulation
#include <simulation/solver/perform_qss_simulation.c.inc>

/* dummy VARINFO and FILEINFO */
const FILE_INFO dummyFILE_INFO = omc_dummyFileInfo;
const VAR_INFO dummyVAR_INFO = omc_dummyVarInfo;

int BIOMD033_Brown2004_NGF_EGF_signaling_input_function(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int BIOMD033_Brown2004_NGF_EGF_signaling_input_function_init(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int BIOMD033_Brown2004_NGF_EGF_signaling_input_function_updateStartValues(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int BIOMD033_Brown2004_NGF_EGF_signaling_inputNames(DATA *data, char ** names){
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int BIOMD033_Brown2004_NGF_EGF_signaling_data_function(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  TRACE_POP
  return 0;
}

int BIOMD033_Brown2004_NGF_EGF_signaling_output_function(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int BIOMD033_Brown2004_NGF_EGF_signaling_setc_function(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}


/*
equation index: 303
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmNGF = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_303(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,303};
  data->localData[0]->realVars[141] /* der(Params.elmt_KmNGF) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 304
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmpMekCytoplasmic = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_304(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,304};
  data->localData[0]->realVars[156] /* der(Params.elmt_KmpMekCytoplasmic) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 305
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmRapGap = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_305(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,305};
  data->localData[0]->realVars[146] /* der(Params.elmt_KmRapGap) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 306
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmdRaf1 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_306(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,306};
  data->localData[0]->realVars[153] /* der(Params.elmt_KmdRaf1) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 307
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmpP90Rsk = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_307(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,307};
  data->localData[0]->realVars[157] /* der(Params.elmt_KmpP90Rsk) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 308
type: SIMPLE_ASSIGN
$DER.Params.elmt_kRapGap = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_308(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,308};
  data->localData[0]->realVars[167] /* der(Params.elmt_kRapGap) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 309
type: SIMPLE_ASSIGN
$DER.Params.elmt_kNGF = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_309(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,309};
  data->localData[0]->realVars[163] /* der(Params.elmt_kNGF) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 310
type: SIMPLE_ASSIGN
$DER.Params.elmt_kdBRaf = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_310(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,310};
  data->localData[0]->realVars[171] /* der(Params.elmt_kdBRaf) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 311
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmdSos = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_311(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,311};
  data->localData[0]->realVars[154] /* der(Params.elmt_KmdSos) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 312
type: SIMPLE_ASSIGN
$DER.Params.elmt_kpBRaf = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_312(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,312};
  data->localData[0]->realVars[177] /* der(Params.elmt_kpBRaf) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 313
type: SIMPLE_ASSIGN
$DER.Params.elmt_kPI3K = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_313(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,313};
  data->localData[0]->realVars[164] /* der(Params.elmt_kPI3K) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 314
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmdBRaf = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_314(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,314};
  data->localData[0]->realVars[150] /* der(Params.elmt_KmdBRaf) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 315
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmC3GNGF = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_315(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,315};
  data->localData[0]->realVars[139] /* der(Params.elmt_KmC3GNGF) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 316
type: SIMPLE_ASSIGN
$DER.Params.elmt_krbNGF = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_316(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,316};
  data->localData[0]->realVars[182] /* der(Params.elmt_krbNGF) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 317
type: SIMPLE_ASSIGN
$DER.Params.elmt_krbEGF = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_317(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,317};
  data->localData[0]->realVars[181] /* der(Params.elmt_krbEGF) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 318
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmRasToRaf1 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_318(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,318};
  data->localData[0]->realVars[148] /* der(Params.elmt_KmRasToRaf1) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 319
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmPI3KRas = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_319(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,319};
  data->localData[0]->realVars[143] /* der(Params.elmt_KmPI3KRas) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 320
type: SIMPLE_ASSIGN
$DER.Params.elmt_kRasGap = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_320(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,320};
  data->localData[0]->realVars[168] /* der(Params.elmt_kRasGap) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 321
type: SIMPLE_ASSIGN
$DER.Params.elmt_kruNGF = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_321(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,321};
  data->localData[0]->realVars[184] /* der(Params.elmt_kruNGF) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 322
type: SIMPLE_ASSIGN
$DER.Params.elmt_kdSos = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_322(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,322};
  data->localData[0]->realVars[176] /* der(Params.elmt_kdSos) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 323
type: SIMPLE_ASSIGN
$DER.Params.elmt_kC3GNGF = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_323(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,323};
  data->localData[0]->realVars[161] /* der(Params.elmt_kC3GNGF) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 324
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmpRaf1 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_324(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,324};
  data->localData[0]->realVars[158] /* der(Params.elmt_KmpRaf1) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 325
type: SIMPLE_ASSIGN
$DER.Params.elmt_kPI3KRas = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_325(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,325};
  data->localData[0]->realVars[165] /* der(Params.elmt_kPI3KRas) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 326
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmSos = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_326(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,326};
  data->localData[0]->realVars[149] /* der(Params.elmt_KmSos) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 327
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmC3G = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_327(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,327};
  data->localData[0]->realVars[138] /* der(Params.elmt_KmC3G) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 328
type: SIMPLE_ASSIGN
$DER.Params.elmt_kRasToRaf1 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_328(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,328};
  data->localData[0]->realVars[169] /* der(Params.elmt_kRasToRaf1) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 329
type: SIMPLE_ASSIGN
$DER.Params.elmt_kdRaf1ByAkt = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_329(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,329};
  data->localData[0]->realVars[175] /* der(Params.elmt_kdRaf1ByAkt) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 330
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmEGF = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_330(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,330};
  data->localData[0]->realVars[140] /* der(Params.elmt_KmEGF) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 331
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmRaf1ByAkt = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_331(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,331};
  data->localData[0]->realVars[144] /* der(Params.elmt_KmRaf1ByAkt) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 332
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmAkt = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_332(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,332};
  data->localData[0]->realVars[137] /* der(Params.elmt_KmAkt) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 333
type: SIMPLE_ASSIGN
$DER.Params.elmt_kEGF = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_333(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,333};
  data->localData[0]->realVars[162] /* der(Params.elmt_kEGF) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 334
type: SIMPLE_ASSIGN
$DER.Params.elmt_kRap1ToBRaf = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_334(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,334};
  data->localData[0]->realVars[166] /* der(Params.elmt_kRap1ToBRaf) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 335
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmRap1ToBRaf = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_335(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,335};
  data->localData[0]->realVars[145] /* der(Params.elmt_KmRap1ToBRaf) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 336
type: SIMPLE_ASSIGN
$DER.Params.elmt_kAkt = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_336(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,336};
  data->localData[0]->realVars[159] /* der(Params.elmt_kAkt) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 337
type: SIMPLE_ASSIGN
$DER.Params.elmt_kdRaf1 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_337(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,337};
  data->localData[0]->realVars[174] /* der(Params.elmt_kdRaf1) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 338
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmdErk = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_338(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,338};
  data->localData[0]->realVars[151] /* der(Params.elmt_KmdErk) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 339
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmpBRaf = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_339(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,339};
  data->localData[0]->realVars[155] /* der(Params.elmt_KmpBRaf) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 340
type: SIMPLE_ASSIGN
$DER.Params.elmt_kSos = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_340(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,340};
  data->localData[0]->realVars[170] /* der(Params.elmt_kSos) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 341
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmdMek = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_341(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,341};
  data->localData[0]->realVars[152] /* der(Params.elmt_KmdMek) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 342
type: SIMPLE_ASSIGN
$DER.Params.elmt_kC3G = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_342(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,342};
  data->localData[0]->realVars[160] /* der(Params.elmt_kC3G) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 343
type: SIMPLE_ASSIGN
$DER.Params.elmt_kpP90Rsk = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_343(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,343};
  data->localData[0]->realVars[179] /* der(Params.elmt_kpP90Rsk) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 344
type: SIMPLE_ASSIGN
$DER.Params.elmt_kruEGF = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_344(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,344};
  data->localData[0]->realVars[183] /* der(Params.elmt_kruEGF) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 345
type: SIMPLE_ASSIGN
$DER.Params.elmt_kpRaf1 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_345(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,345};
  data->localData[0]->realVars[180] /* der(Params.elmt_kpRaf1) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 346
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmRasGap = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_346(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,346};
  data->localData[0]->realVars[147] /* der(Params.elmt_KmRasGap) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 347
type: SIMPLE_ASSIGN
$DER.Params.elmt_kdErk = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_347(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,347};
  data->localData[0]->realVars[172] /* der(Params.elmt_kdErk) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 348
type: SIMPLE_ASSIGN
$DER.Params.elmt_kdMek = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_348(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,348};
  data->localData[0]->realVars[173] /* der(Params.elmt_kdMek) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 349
type: SIMPLE_ASSIGN
$DER.Params.elmt_KmPI3K = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_349(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,349};
  data->localData[0]->realVars[142] /* der(Params.elmt_KmPI3K) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 350
type: SIMPLE_ASSIGN
$DER.Params.elmt_kpMekCytoplasmic = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_350(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,350};
  data->localData[0]->realVars[178] /* der(Params.elmt_kpMekCytoplasmic) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 351
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant40 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_351(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,351};
  data->localData[0]->realVars[230] /* der(Reacs.elmt_reactant40) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 352
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant42 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_352(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,352};
  data->localData[0]->realVars[231] /* der(Reacs.elmt_reactant42) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 353
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product33 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_353(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,353};
  data->localData[0]->realVars[198] /* der(Reacs.elmt_product33) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 354
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product31 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_354(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,354};
  data->localData[0]->realVars[197] /* der(Reacs.elmt_product31) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 355
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant48 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_355(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,355};
  data->localData[0]->realVars[234] /* der(Reacs.elmt_reactant48) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 356
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant44 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_356(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,356};
  data->localData[0]->realVars[232] /* der(Reacs.elmt_reactant44) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 357
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant46 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_357(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,357};
  data->localData[0]->realVars[233] /* der(Reacs.elmt_reactant46) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 358
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product27 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_358(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,358};
  data->localData[0]->realVars[195] /* der(Reacs.elmt_product27) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 359
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant9 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_359(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,359};
  data->localData[0]->realVars[240] /* der(Reacs.elmt_reactant9) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 360
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product25 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_360(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,360};
  data->localData[0]->realVars[194] /* der(Reacs.elmt_product25) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 361
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product29 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_361(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,361};
  data->localData[0]->realVars[196] /* der(Reacs.elmt_product29) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 362
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product41 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_362(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,362};
  data->localData[0]->realVars[203] /* der(Reacs.elmt_product41) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 363
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant50 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_363(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,363};
  data->localData[0]->realVars[235] /* der(Reacs.elmt_reactant50) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 364
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant52 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_364(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,364};
  data->localData[0]->realVars[236] /* der(Reacs.elmt_reactant52) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 365
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product45 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_365(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,365};
  data->localData[0]->realVars[205] /* der(Reacs.elmt_product45) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 366
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product43 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_366(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,366};
  data->localData[0]->realVars[204] /* der(Reacs.elmt_product43) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 367
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant14 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_367(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,367};
  data->localData[0]->realVars[216] /* der(Reacs.elmt_reactant14) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 368
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant16 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_368(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,368};
  data->localData[0]->realVars[217] /* der(Reacs.elmt_reactant16) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 369
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant54 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_369(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,369};
  data->localData[0]->realVars[237] /* der(Reacs.elmt_reactant54) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 370
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant12 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_370(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,370};
  data->localData[0]->realVars[215] /* der(Reacs.elmt_reactant12) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 371
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product37 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_371(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,371};
  data->localData[0]->realVars[200] /* der(Reacs.elmt_product37) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 372
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product35 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_372(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,372};
  data->localData[0]->realVars[199] /* der(Reacs.elmt_product35) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 373
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product39 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_373(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,373};
  data->localData[0]->realVars[201] /* der(Reacs.elmt_product39) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 374
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product51 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_374(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,374};
  data->localData[0]->realVars[209] /* der(Reacs.elmt_product51) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 375
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant20 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_375(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,375};
  data->localData[0]->realVars[219] /* der(Reacs.elmt_reactant20) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 376
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product11 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_376(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,376};
  data->localData[0]->realVars[186] /* der(Reacs.elmt_product11) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 377
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product55 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_377(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,377};
  data->localData[0]->realVars[211] /* der(Reacs.elmt_product55) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 378
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product10 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_378(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,378};
  data->localData[0]->realVars[185] /* der(Reacs.elmt_product10) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 379
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product53 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_379(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,379};
  data->localData[0]->realVars[210] /* der(Reacs.elmt_product53) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 380
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant26 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_380(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,380};
  data->localData[0]->realVars[222] /* der(Reacs.elmt_reactant26) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 381
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant28 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_381(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,381};
  data->localData[0]->realVars[223] /* der(Reacs.elmt_reactant28) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 382
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant22 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_382(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,382};
  data->localData[0]->realVars[220] /* der(Reacs.elmt_reactant22) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 383
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant24 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_383(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,383};
  data->localData[0]->realVars[221] /* der(Reacs.elmt_reactant24) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 384
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant18 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_384(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,384};
  data->localData[0]->realVars[218] /* der(Reacs.elmt_reactant18) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 385
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product49 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_385(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,385};
  data->localData[0]->realVars[207] /* der(Reacs.elmt_product49) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 386
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product47 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_386(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,386};
  data->localData[0]->realVars[206] /* der(Reacs.elmt_product47) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 387
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product8 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_387(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,387};
  data->localData[0]->realVars[212] /* der(Reacs.elmt_product8) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 388
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant1 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_388(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,388};
  data->localData[0]->realVars[214] /* der(Reacs.elmt_reactant1) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 389
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant30 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_389(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,389};
  data->localData[0]->realVars[225] /* der(Reacs.elmt_reactant30) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 390
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant3 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_390(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,390};
  data->localData[0]->realVars[224] /* der(Reacs.elmt_reactant3) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 391
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product23 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_391(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,391};
  data->localData[0]->realVars[193] /* der(Reacs.elmt_product23) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 392
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant6 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_392(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,392};
  data->localData[0]->realVars[238] /* der(Reacs.elmt_reactant6) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 393
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product21 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_393(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,393};
  data->localData[0]->realVars[192] /* der(Reacs.elmt_product21) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 394
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant7 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_394(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,394};
  data->localData[0]->realVars[239] /* der(Reacs.elmt_reactant7) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 395
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant36 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_395(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,395};
  data->localData[0]->realVars[228] /* der(Reacs.elmt_reactant36) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 396
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant38 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_396(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,396};
  data->localData[0]->realVars[229] /* der(Reacs.elmt_reactant38) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 397
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant32 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_397(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,397};
  data->localData[0]->realVars[226] /* der(Reacs.elmt_reactant32) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 398
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product5 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_398(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,398};
  data->localData[0]->realVars[208] /* der(Reacs.elmt_product5) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 399
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product4 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_399(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,399};
  data->localData[0]->realVars[202] /* der(Reacs.elmt_product4) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 400
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant0 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_400(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,400};
  data->localData[0]->realVars[213] /* der(Reacs.elmt_reactant0) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 401
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_reactant34 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_401(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,401};
  data->localData[0]->realVars[227] /* der(Reacs.elmt_reactant34) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 402
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product2 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_402(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,402};
  data->localData[0]->realVars[191] /* der(Reacs.elmt_product2) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 403
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product15 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_403(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,403};
  data->localData[0]->realVars[188] /* der(Reacs.elmt_product15) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 404
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product13 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_404(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,404};
  data->localData[0]->realVars[187] /* der(Reacs.elmt_product13) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 405
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product19 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_405(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,405};
  data->localData[0]->realVars[190] /* der(Reacs.elmt_product19) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 406
type: SIMPLE_ASSIGN
$DER.Reacs.elmt_product17 = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_406(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,406};
  data->localData[0]->realVars[189] /* der(Reacs.elmt_product17) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 407
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_cell = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_407(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,407};
  data->localData[0]->realVars[271] /* der(elmt_cell.elmt_cell) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 408
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_Raf1PPtase_amount = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_408(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,408};
  data->localData[0]->realVars[260] /* der(elmt_cell.elmt_Raf1PPtase_amount) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 409
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_PP2AActive_amount = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_409(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,409};
  data->localData[0]->realVars[257] /* der(elmt_cell.elmt_PP2AActive_amount) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 410
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_RapGapActive_amount = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_410(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,410};
  data->localData[0]->realVars[263] /* der(elmt_cell.elmt_RapGapActive_amount) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 411
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_RasGapActive_amount = 0.0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_411(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,411};
  data->localData[0]->realVars[265] /* der(elmt_cell.elmt_RasGapActive_amount) STATE_DER */ = 0.0;
  TRACE_POP
}
/*
equation index: 412
type: ALGORITHM

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
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_412(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,412};
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
/*
equation index: 413
type: SIMPLE_ASSIGN
elmt_cell.elmt_NGFBindingReaction = Params.elmt_krbNGF * elmt_cell.elmt_NGF_conc * elmt_cell.elmt_freeNGFReceptor_conc * elmt_cell.elmt_cell
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_413(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,413};
  data->localData[0]->realVars[296] /* elmt_cell.elmt_NGFBindingReaction variable */ = (data->localData[0]->realVars[45] /* Params.elmt_krbNGF STATE(1) */) * ((data->localData[0]->realVars[298] /* elmt_cell.elmt_NGF_conc variable */) * ((data->localData[0]->realVars[331] /* elmt_cell.elmt_freeNGFReceptor_conc variable */) * (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */)));
  TRACE_POP
}
/*
equation index: 414
type: SIMPLE_ASSIGN
elmt_cell.elmt_SosDeactivationReaction = elmt_cell.elmt_cell * Params.elmt_kdSos * elmt_cell.elmt_P90RskActive_conc * elmt_cell.elmt_SosActive_conc / (elmt_cell.elmt_SosActive_conc + Params.elmt_KmdSos)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_414(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,414};
  data->localData[0]->realVars[326] /* elmt_cell.elmt_SosDeactivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[39] /* Params.elmt_kdSos STATE(1) */) * ((data->localData[0]->realVars[300] /* elmt_cell.elmt_P90RskActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[325] /* elmt_cell.elmt_SosActive_conc variable */,data->localData[0]->realVars[325] /* elmt_cell.elmt_SosActive_conc variable */ + data->localData[0]->realVars[17] /* Params.elmt_KmdSos STATE(1) */,"elmt_cell.elmt_SosActive_conc + Params.elmt_KmdSos",equationIndexes))));
  TRACE_POP
}
/*
equation index: 415
type: SIMPLE_ASSIGN
elmt_cell.elmt_MekbyBRafActivationReaction = elmt_cell.elmt_cell * Params.elmt_kpBRaf * elmt_cell.elmt_BRafActive_conc * elmt_cell.elmt_MekInactive_conc / (elmt_cell.elmt_MekInactive_conc + Params.elmt_KmpBRaf)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_415(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,415};
  data->localData[0]->realVars[294] /* elmt_cell.elmt_MekbyBRafActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[40] /* Params.elmt_kpBRaf STATE(1) */) * ((data->localData[0]->realVars[277] /* elmt_cell.elmt_BRafActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[293] /* elmt_cell.elmt_MekInactive_conc variable */,data->localData[0]->realVars[293] /* elmt_cell.elmt_MekInactive_conc variable */ + data->localData[0]->realVars[18] /* Params.elmt_KmpBRaf STATE(1) */,"elmt_cell.elmt_MekInactive_conc + Params.elmt_KmpBRaf",equationIndexes))));
  TRACE_POP
}
/*
equation index: 416
type: SIMPLE_ASSIGN
elmt_cell.elmt_MekDeactivationReaction = elmt_cell.elmt_cell * Params.elmt_kdMek * elmt_cell.elmt_PP2AActive_conc * elmt_cell.elmt_MekActive_conc / (elmt_cell.elmt_MekActive_conc + Params.elmt_KmdMek)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_416(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,416};
  data->localData[0]->realVars[292] /* elmt_cell.elmt_MekDeactivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[36] /* Params.elmt_kdMek STATE(1) */) * ((data->localData[0]->realVars[306] /* elmt_cell.elmt_PP2AActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[291] /* elmt_cell.elmt_MekActive_conc variable */,data->localData[0]->realVars[291] /* elmt_cell.elmt_MekActive_conc variable */ + data->localData[0]->realVars[15] /* Params.elmt_KmdMek STATE(1) */,"elmt_cell.elmt_MekActive_conc + Params.elmt_KmdMek",equationIndexes))));
  TRACE_POP
}
/*
equation index: 417
type: SIMPLE_ASSIGN
elmt_cell.elmt_RasActivationReaction = elmt_cell.elmt_cell * Params.elmt_kSos * elmt_cell.elmt_SosActive_conc * elmt_cell.elmt_RasInactive_conc / (elmt_cell.elmt_RasInactive_conc + Params.elmt_KmSos)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_417(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,417};
  data->localData[0]->realVars[318] /* elmt_cell.elmt_RasActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[33] /* Params.elmt_kSos STATE(1) */) * ((data->localData[0]->realVars[325] /* elmt_cell.elmt_SosActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[322] /* elmt_cell.elmt_RasInactive_conc variable */,data->localData[0]->realVars[322] /* elmt_cell.elmt_RasInactive_conc variable */ + data->localData[0]->realVars[12] /* Params.elmt_KmSos STATE(1) */,"elmt_cell.elmt_RasInactive_conc + Params.elmt_KmSos",equationIndexes))));
  TRACE_POP
}
/*
equation index: 418
type: SIMPLE_ASSIGN
elmt_cell.elmt_Rap1DeactivationReaction = elmt_cell.elmt_cell * Params.elmt_kRapGap * elmt_cell.elmt_RapGapActive_conc * elmt_cell.elmt_Rap1Active_conc / (elmt_cell.elmt_Rap1Active_conc + Params.elmt_KmRapGap)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_418(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,418};
  data->localData[0]->realVars[315] /* elmt_cell.elmt_Rap1DeactivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[30] /* Params.elmt_kRapGap STATE(1) */) * ((data->localData[0]->realVars[317] /* elmt_cell.elmt_RapGapActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[314] /* elmt_cell.elmt_Rap1Active_conc variable */,data->localData[0]->realVars[314] /* elmt_cell.elmt_Rap1Active_conc variable */ + data->localData[0]->realVars[9] /* Params.elmt_KmRapGap STATE(1) */,"elmt_cell.elmt_Rap1Active_conc + Params.elmt_KmRapGap",equationIndexes))));
  TRACE_POP
}
/*
equation index: 419
type: SIMPLE_ASSIGN
elmt_cell.elmt_P90RskActivationReaction = elmt_cell.elmt_cell * Params.elmt_kpP90Rsk * elmt_cell.elmt_ErkActive_conc * elmt_cell.elmt_P90RskInactive_conc / (elmt_cell.elmt_P90RskInactive_conc + Params.elmt_KmpP90Rsk)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_419(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,419};
  data->localData[0]->realVars[299] /* elmt_cell.elmt_P90RskActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[42] /* Params.elmt_kpP90Rsk STATE(1) */) * ((data->localData[0]->realVars[288] /* elmt_cell.elmt_ErkActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[301] /* elmt_cell.elmt_P90RskInactive_conc variable */,data->localData[0]->realVars[301] /* elmt_cell.elmt_P90RskInactive_conc variable */ + data->localData[0]->realVars[20] /* Params.elmt_KmpP90Rsk STATE(1) */,"elmt_cell.elmt_P90RskInactive_conc + Params.elmt_KmpP90Rsk",equationIndexes))));
  TRACE_POP
}
/*
equation index: 420
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_P90RskActive_amount = elmt_cell.elmt_P90RskActivationReaction * Reacs.elmt_product37
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_420(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,420};
  data->localData[0]->realVars[253] /* der(elmt_cell.elmt_P90RskActive_amount) STATE_DER */ = (data->localData[0]->realVars[299] /* elmt_cell.elmt_P90RskActivationReaction variable */) * (data->localData[0]->realVars[63] /* Reacs.elmt_product37 STATE(1) */);
  TRACE_POP
}
/*
equation index: 421
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_P90RskInactive_amount = (-elmt_cell.elmt_P90RskActivationReaction) * Reacs.elmt_reactant36
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_421(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,421};
  data->localData[0]->realVars[254] /* der(elmt_cell.elmt_P90RskInactive_amount) STATE_DER */ = ((-data->localData[0]->realVars[299] /* elmt_cell.elmt_P90RskActivationReaction variable */)) * (data->localData[0]->realVars[91] /* Reacs.elmt_reactant36 STATE(1) */);
  TRACE_POP
}
/*
equation index: 422
type: SIMPLE_ASSIGN
elmt_cell.elmt_ErkDeactivationReaction = elmt_cell.elmt_cell * Params.elmt_kdErk * elmt_cell.elmt_PP2AActive_conc * elmt_cell.elmt_ErkActive_conc / (elmt_cell.elmt_ErkActive_conc + Params.elmt_KmdErk)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_422(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,422};
  data->localData[0]->realVars[289] /* elmt_cell.elmt_ErkDeactivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[35] /* Params.elmt_kdErk STATE(1) */) * ((data->localData[0]->realVars[306] /* elmt_cell.elmt_PP2AActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[288] /* elmt_cell.elmt_ErkActive_conc variable */,data->localData[0]->realVars[288] /* elmt_cell.elmt_ErkActive_conc variable */ + data->localData[0]->realVars[14] /* Params.elmt_KmdErk STATE(1) */,"elmt_cell.elmt_ErkActive_conc + Params.elmt_KmdErk",equationIndexes))));
  TRACE_POP
}
/*
equation index: 423
type: SIMPLE_ASSIGN
elmt_cell.elmt_EGFBindingReaction = elmt_cell.elmt_cell * Params.elmt_krbEGF * elmt_cell.elmt_EGF_conc * elmt_cell.elmt_freeEGFReceptor_conc
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_423(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,423};
  data->localData[0]->realVars[284] /* elmt_cell.elmt_EGFBindingReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[44] /* Params.elmt_krbEGF STATE(1) */) * ((data->localData[0]->realVars[286] /* elmt_cell.elmt_EGF_conc variable */) * (data->localData[0]->realVars[330] /* elmt_cell.elmt_freeEGFReceptor_conc variable */)));
  TRACE_POP
}
/*
equation index: 424
type: SIMPLE_ASSIGN
elmt_cell.elmt_SosActivationByNGFReaction = elmt_cell.elmt_cell * Params.elmt_kNGF * elmt_cell.elmt_boundNGFReceptor_conc * elmt_cell.elmt_SosInactive_conc / (elmt_cell.elmt_SosInactive_conc + Params.elmt_KmNGF)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_424(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,424};
  data->localData[0]->realVars[324] /* elmt_cell.elmt_SosActivationByNGFReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[26] /* Params.elmt_kNGF STATE(1) */) * ((data->localData[0]->realVars[329] /* elmt_cell.elmt_boundNGFReceptor_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[327] /* elmt_cell.elmt_SosInactive_conc variable */,data->localData[0]->realVars[327] /* elmt_cell.elmt_SosInactive_conc variable */ + data->localData[0]->realVars[4] /* Params.elmt_KmNGF STATE(1) */,"elmt_cell.elmt_SosInactive_conc + Params.elmt_KmNGF",equationIndexes))));
  TRACE_POP
}
/*
equation index: 425
type: SIMPLE_ASSIGN
elmt_cell.elmt_NGFUnbindingReaction = Params.elmt_kruNGF * elmt_cell.elmt_boundNGFReceptor_conc * elmt_cell.elmt_cell
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_425(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,425};
  data->localData[0]->realVars[297] /* elmt_cell.elmt_NGFUnbindingReaction variable */ = (data->localData[0]->realVars[47] /* Params.elmt_kruNGF STATE(1) */) * ((data->localData[0]->realVars[329] /* elmt_cell.elmt_boundNGFReceptor_conc variable */) * (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */));
  TRACE_POP
}
/*
equation index: 426
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_freeNGFReceptor_amount = elmt_cell.elmt_NGFUnbindingReaction * Reacs.elmt_product11 - elmt_cell.elmt_NGFBindingReaction * Reacs.elmt_reactant7
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_426(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,426};
  data->localData[0]->realVars[273] /* der(elmt_cell.elmt_freeNGFReceptor_amount) STATE_DER */ = (data->localData[0]->realVars[297] /* elmt_cell.elmt_NGFUnbindingReaction variable */) * (data->localData[0]->realVars[49] /* Reacs.elmt_product11 STATE(1) */) - ((data->localData[0]->realVars[296] /* elmt_cell.elmt_NGFBindingReaction variable */) * (data->localData[0]->realVars[102] /* Reacs.elmt_reactant7 STATE(1) */));
  TRACE_POP
}
/*
equation index: 427
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_NGF_amount = elmt_cell.elmt_NGFUnbindingReaction * Reacs.elmt_product10 - elmt_cell.elmt_NGFBindingReaction * Reacs.elmt_reactant6
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_427(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,427};
  data->localData[0]->realVars[252] /* der(elmt_cell.elmt_NGF_amount) STATE_DER */ = (data->localData[0]->realVars[297] /* elmt_cell.elmt_NGFUnbindingReaction variable */) * (data->localData[0]->realVars[48] /* Reacs.elmt_product10 STATE(1) */) - ((data->localData[0]->realVars[296] /* elmt_cell.elmt_NGFBindingReaction variable */) * (data->localData[0]->realVars[101] /* Reacs.elmt_reactant6 STATE(1) */));
  TRACE_POP
}
/*
equation index: 428
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_boundNGFReceptor_amount = elmt_cell.elmt_NGFBindingReaction * Reacs.elmt_product8 - elmt_cell.elmt_NGFUnbindingReaction * Reacs.elmt_reactant9
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_428(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,428};
  data->localData[0]->realVars[270] /* der(elmt_cell.elmt_boundNGFReceptor_amount) STATE_DER */ = (data->localData[0]->realVars[296] /* elmt_cell.elmt_NGFBindingReaction variable */) * (data->localData[0]->realVars[75] /* Reacs.elmt_product8 STATE(1) */) - ((data->localData[0]->realVars[297] /* elmt_cell.elmt_NGFUnbindingReaction variable */) * (data->localData[0]->realVars[103] /* Reacs.elmt_reactant9 STATE(1) */));
  TRACE_POP
}
/*
equation index: 429
type: SIMPLE_ASSIGN
elmt_cell.elmt_C3GActivationReaction = elmt_cell.elmt_cell * Params.elmt_kC3GNGF * elmt_cell.elmt_boundNGFReceptor_conc * elmt_cell.elmt_C3GInactive_conc / (elmt_cell.elmt_C3GInactive_conc + Params.elmt_KmC3GNGF)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_429(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,429};
  data->localData[0]->realVars[281] /* elmt_cell.elmt_C3GActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[24] /* Params.elmt_kC3GNGF STATE(1) */) * ((data->localData[0]->realVars[329] /* elmt_cell.elmt_boundNGFReceptor_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[283] /* elmt_cell.elmt_C3GInactive_conc variable */,data->localData[0]->realVars[283] /* elmt_cell.elmt_C3GInactive_conc variable */ + data->localData[0]->realVars[2] /* Params.elmt_KmC3GNGF STATE(1) */,"elmt_cell.elmt_C3GInactive_conc + Params.elmt_KmC3GNGF",equationIndexes))));
  TRACE_POP
}
/*
equation index: 430
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_C3GInactive_amount = (-elmt_cell.elmt_C3GActivationReaction) * Reacs.elmt_reactant46
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_430(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,430};
  data->localData[0]->realVars[246] /* der(elmt_cell.elmt_C3GInactive_amount) STATE_DER */ = ((-data->localData[0]->realVars[281] /* elmt_cell.elmt_C3GActivationReaction variable */)) * (data->localData[0]->realVars[96] /* Reacs.elmt_reactant46 STATE(1) */);
  TRACE_POP
}
/*
equation index: 431
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_C3GActive_amount = elmt_cell.elmt_C3GActivationReaction * Reacs.elmt_product47
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_431(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,431};
  data->localData[0]->realVars[245] /* der(elmt_cell.elmt_C3GActive_amount) STATE_DER */ = (data->localData[0]->realVars[281] /* elmt_cell.elmt_C3GActivationReaction variable */) * (data->localData[0]->realVars[69] /* Reacs.elmt_product47 STATE(1) */);
  TRACE_POP
}
/*
equation index: 432
type: SIMPLE_ASSIGN
elmt_cell.elmt_AktActivationReaction = elmt_cell.elmt_cell * Params.elmt_kAkt * elmt_cell.elmt_PI3KActive_conc * elmt_cell.elmt_AktInactive_conc / (elmt_cell.elmt_AktInactive_conc + Params.elmt_KmAkt)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_432(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,432};
  data->localData[0]->realVars[274] /* elmt_cell.elmt_AktActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[22] /* Params.elmt_kAkt STATE(1) */) * ((data->localData[0]->realVars[302] /* elmt_cell.elmt_PI3KActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[276] /* elmt_cell.elmt_AktInactive_conc variable */,data->localData[0]->realVars[276] /* elmt_cell.elmt_AktInactive_conc variable */ + data->localData[0]->realVars[0] /* Params.elmt_KmAkt STATE(1) */,"elmt_cell.elmt_AktInactive_conc + Params.elmt_KmAkt",equationIndexes))));
  TRACE_POP
}
/*
equation index: 433
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_AktInactive_amount = (-elmt_cell.elmt_AktActivationReaction) * Reacs.elmt_reactant42
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_433(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,433};
  data->localData[0]->realVars[242] /* der(elmt_cell.elmt_AktInactive_amount) STATE_DER */ = ((-data->localData[0]->realVars[274] /* elmt_cell.elmt_AktActivationReaction variable */)) * (data->localData[0]->realVars[94] /* Reacs.elmt_reactant42 STATE(1) */);
  TRACE_POP
}
/*
equation index: 434
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_AktActive_amount = elmt_cell.elmt_AktActivationReaction * Reacs.elmt_product43
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_434(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,434};
  data->localData[0]->realVars[241] /* der(elmt_cell.elmt_AktActive_amount) STATE_DER */ = (data->localData[0]->realVars[274] /* elmt_cell.elmt_AktActivationReaction variable */) * (data->localData[0]->realVars[67] /* Reacs.elmt_product43 STATE(1) */);
  TRACE_POP
}
/*
equation index: 435
type: SIMPLE_ASSIGN
elmt_cell.elmt_EGFUnbindingReaction = elmt_cell.elmt_cell * Params.elmt_kruEGF * elmt_cell.elmt_boundEGFReceptor_conc
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_435(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,435};
  data->localData[0]->realVars[285] /* elmt_cell.elmt_EGFUnbindingReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[46] /* Params.elmt_kruEGF STATE(1) */) * (data->localData[0]->realVars[328] /* elmt_cell.elmt_boundEGFReceptor_conc variable */));
  TRACE_POP
}
/*
equation index: 436
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_EGF_amount = elmt_cell.elmt_EGFUnbindingReaction * Reacs.elmt_product4 - elmt_cell.elmt_EGFBindingReaction * Reacs.elmt_reactant0
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_436(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,436};
  data->localData[0]->realVars[247] /* der(elmt_cell.elmt_EGF_amount) STATE_DER */ = (data->localData[0]->realVars[285] /* elmt_cell.elmt_EGFUnbindingReaction variable */) * (data->localData[0]->realVars[65] /* Reacs.elmt_product4 STATE(1) */) - ((data->localData[0]->realVars[284] /* elmt_cell.elmt_EGFBindingReaction variable */) * (data->localData[0]->realVars[76] /* Reacs.elmt_reactant0 STATE(1) */));
  TRACE_POP
}
/*
equation index: 437
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_freeEGFReceptor_amount = elmt_cell.elmt_EGFUnbindingReaction * Reacs.elmt_product5 - elmt_cell.elmt_EGFBindingReaction * Reacs.elmt_reactant1
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_437(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,437};
  data->localData[0]->realVars[272] /* der(elmt_cell.elmt_freeEGFReceptor_amount) STATE_DER */ = (data->localData[0]->realVars[285] /* elmt_cell.elmt_EGFUnbindingReaction variable */) * (data->localData[0]->realVars[71] /* Reacs.elmt_product5 STATE(1) */) - ((data->localData[0]->realVars[284] /* elmt_cell.elmt_EGFBindingReaction variable */) * (data->localData[0]->realVars[77] /* Reacs.elmt_reactant1 STATE(1) */));
  TRACE_POP
}
/*
equation index: 438
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_boundEGFReceptor_amount = elmt_cell.elmt_EGFBindingReaction * Reacs.elmt_product2 - elmt_cell.elmt_EGFUnbindingReaction * Reacs.elmt_reactant3
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_438(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,438};
  data->localData[0]->realVars[269] /* der(elmt_cell.elmt_boundEGFReceptor_amount) STATE_DER */ = (data->localData[0]->realVars[284] /* elmt_cell.elmt_EGFBindingReaction variable */) * (data->localData[0]->realVars[54] /* Reacs.elmt_product2 STATE(1) */) - ((data->localData[0]->realVars[285] /* elmt_cell.elmt_EGFUnbindingReaction variable */) * (data->localData[0]->realVars[87] /* Reacs.elmt_reactant3 STATE(1) */));
  TRACE_POP
}
/*
equation index: 439
type: SIMPLE_ASSIGN
elmt_cell.elmt_SosActivationByEGFReaction = elmt_cell.elmt_cell * Params.elmt_kEGF * elmt_cell.elmt_boundEGFReceptor_conc * elmt_cell.elmt_SosInactive_conc / (elmt_cell.elmt_SosInactive_conc + Params.elmt_KmEGF)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_439(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,439};
  data->localData[0]->realVars[323] /* elmt_cell.elmt_SosActivationByEGFReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[25] /* Params.elmt_kEGF STATE(1) */) * ((data->localData[0]->realVars[328] /* elmt_cell.elmt_boundEGFReceptor_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[327] /* elmt_cell.elmt_SosInactive_conc variable */,data->localData[0]->realVars[327] /* elmt_cell.elmt_SosInactive_conc variable */ + data->localData[0]->realVars[3] /* Params.elmt_KmEGF STATE(1) */,"elmt_cell.elmt_SosInactive_conc + Params.elmt_KmEGF",equationIndexes))));
  TRACE_POP
}
/*
equation index: 440
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_SosInactive_amount = elmt_cell.elmt_SosDeactivationReaction * Reacs.elmt_product17 + (-elmt_cell.elmt_SosActivationByEGFReaction) * Reacs.elmt_reactant12 - elmt_cell.elmt_SosActivationByNGFReaction * Reacs.elmt_reactant14
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_440(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,440};
  data->localData[0]->realVars[268] /* der(elmt_cell.elmt_SosInactive_amount) STATE_DER */ = (data->localData[0]->realVars[326] /* elmt_cell.elmt_SosDeactivationReaction variable */) * (data->localData[0]->realVars[52] /* Reacs.elmt_product17 STATE(1) */) + ((-data->localData[0]->realVars[323] /* elmt_cell.elmt_SosActivationByEGFReaction variable */)) * (data->localData[0]->realVars[78] /* Reacs.elmt_reactant12 STATE(1) */) - ((data->localData[0]->realVars[324] /* elmt_cell.elmt_SosActivationByNGFReaction variable */) * (data->localData[0]->realVars[79] /* Reacs.elmt_reactant14 STATE(1) */));
  TRACE_POP
}
/*
equation index: 441
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_SosActive_amount = elmt_cell.elmt_SosActivationByEGFReaction * Reacs.elmt_product13 + elmt_cell.elmt_SosActivationByNGFReaction * Reacs.elmt_product15 - elmt_cell.elmt_SosDeactivationReaction * Reacs.elmt_reactant16
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_441(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,441};
  data->localData[0]->realVars[267] /* der(elmt_cell.elmt_SosActive_amount) STATE_DER */ = (data->localData[0]->realVars[323] /* elmt_cell.elmt_SosActivationByEGFReaction variable */) * (data->localData[0]->realVars[50] /* Reacs.elmt_product13 STATE(1) */) + (data->localData[0]->realVars[324] /* elmt_cell.elmt_SosActivationByNGFReaction variable */) * (data->localData[0]->realVars[51] /* Reacs.elmt_product15 STATE(1) */) - ((data->localData[0]->realVars[326] /* elmt_cell.elmt_SosDeactivationReaction variable */) * (data->localData[0]->realVars[80] /* Reacs.elmt_reactant16 STATE(1) */));
  TRACE_POP
}
/*
equation index: 442
type: SIMPLE_ASSIGN
elmt_cell.elmt_PI3KbyEGFRActivationReaction = elmt_cell.elmt_cell * Params.elmt_kPI3K * elmt_cell.elmt_boundEGFReceptor_conc * elmt_cell.elmt_PI3KInactive_conc / (elmt_cell.elmt_PI3KInactive_conc + Params.elmt_KmPI3K)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_442(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,442};
  data->localData[0]->realVars[304] /* elmt_cell.elmt_PI3KbyEGFRActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[27] /* Params.elmt_kPI3K STATE(1) */) * ((data->localData[0]->realVars[328] /* elmt_cell.elmt_boundEGFReceptor_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[303] /* elmt_cell.elmt_PI3KInactive_conc variable */,data->localData[0]->realVars[303] /* elmt_cell.elmt_PI3KInactive_conc variable */ + data->localData[0]->realVars[5] /* Params.elmt_KmPI3K STATE(1) */,"elmt_cell.elmt_PI3KInactive_conc + Params.elmt_KmPI3K",equationIndexes))));
  TRACE_POP
}
/*
equation index: 443
type: SIMPLE_ASSIGN
elmt_cell.elmt_Raf1ByAktDeactivationReaction = elmt_cell.elmt_cell * Params.elmt_kdRaf1ByAkt * elmt_cell.elmt_AktActive_conc * elmt_cell.elmt_Raf1Active_conc / (elmt_cell.elmt_Raf1Active_conc + Params.elmt_KmRaf1ByAkt)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_443(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,443};
  data->localData[0]->realVars[308] /* elmt_cell.elmt_Raf1ByAktDeactivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[38] /* Params.elmt_kdRaf1ByAkt STATE(1) */) * ((data->localData[0]->realVars[275] /* elmt_cell.elmt_AktActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */,data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */ + data->localData[0]->realVars[7] /* Params.elmt_KmRaf1ByAkt STATE(1) */,"elmt_cell.elmt_Raf1Active_conc + Params.elmt_KmRaf1ByAkt",equationIndexes))));
  TRACE_POP
}
/*
equation index: 444
type: SIMPLE_ASSIGN
elmt_cell.elmt_MekbyRaf1ActivationReaction = elmt_cell.elmt_cell * Params.elmt_kpRaf1 * elmt_cell.elmt_Raf1Active_conc * elmt_cell.elmt_MekInactive_conc / (elmt_cell.elmt_MekInactive_conc + Params.elmt_KmpRaf1)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_444(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,444};
  data->localData[0]->realVars[295] /* elmt_cell.elmt_MekbyRaf1ActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[43] /* Params.elmt_kpRaf1 STATE(1) */) * ((data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[293] /* elmt_cell.elmt_MekInactive_conc variable */,data->localData[0]->realVars[293] /* elmt_cell.elmt_MekInactive_conc variable */ + data->localData[0]->realVars[21] /* Params.elmt_KmpRaf1 STATE(1) */,"elmt_cell.elmt_MekInactive_conc + Params.elmt_KmpRaf1",equationIndexes))));
  TRACE_POP
}
/*
equation index: 445
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_MekActive_amount = elmt_cell.elmt_MekbyRaf1ActivationReaction * Reacs.elmt_product25 + elmt_cell.elmt_MekbyBRafActivationReaction * Reacs.elmt_product27 - elmt_cell.elmt_MekDeactivationReaction * Reacs.elmt_reactant30
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_445(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,445};
  data->localData[0]->realVars[250] /* der(elmt_cell.elmt_MekActive_amount) STATE_DER */ = (data->localData[0]->realVars[295] /* elmt_cell.elmt_MekbyRaf1ActivationReaction variable */) * (data->localData[0]->realVars[57] /* Reacs.elmt_product25 STATE(1) */) + (data->localData[0]->realVars[294] /* elmt_cell.elmt_MekbyBRafActivationReaction variable */) * (data->localData[0]->realVars[58] /* Reacs.elmt_product27 STATE(1) */) - ((data->localData[0]->realVars[292] /* elmt_cell.elmt_MekDeactivationReaction variable */) * (data->localData[0]->realVars[88] /* Reacs.elmt_reactant30 STATE(1) */));
  TRACE_POP
}
/*
equation index: 446
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_MekInactive_amount = elmt_cell.elmt_MekDeactivationReaction * Reacs.elmt_product31 + (-elmt_cell.elmt_MekbyRaf1ActivationReaction) * Reacs.elmt_reactant24 - elmt_cell.elmt_MekbyBRafActivationReaction * Reacs.elmt_reactant26
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_446(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,446};
  data->localData[0]->realVars[251] /* der(elmt_cell.elmt_MekInactive_amount) STATE_DER */ = (data->localData[0]->realVars[292] /* elmt_cell.elmt_MekDeactivationReaction variable */) * (data->localData[0]->realVars[60] /* Reacs.elmt_product31 STATE(1) */) + ((-data->localData[0]->realVars[295] /* elmt_cell.elmt_MekbyRaf1ActivationReaction variable */)) * (data->localData[0]->realVars[84] /* Reacs.elmt_reactant24 STATE(1) */) - ((data->localData[0]->realVars[294] /* elmt_cell.elmt_MekbyBRafActivationReaction variable */) * (data->localData[0]->realVars[85] /* Reacs.elmt_reactant26 STATE(1) */));
  TRACE_POP
}
/*
equation index: 447
type: SIMPLE_ASSIGN
elmt_cell.elmt_Raf1byPPtaseDeactivationReaction = elmt_cell.elmt_cell * Params.elmt_kdRaf1 * elmt_cell.elmt_Raf1PPtase_conc * elmt_cell.elmt_Raf1Active_conc / (elmt_cell.elmt_Raf1Active_conc + Params.elmt_KmdRaf1)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_447(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,447};
  data->localData[0]->realVars[312] /* elmt_cell.elmt_Raf1byPPtaseDeactivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[37] /* Params.elmt_kdRaf1 STATE(1) */) * ((data->localData[0]->realVars[311] /* elmt_cell.elmt_Raf1PPtase_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */,data->localData[0]->realVars[307] /* elmt_cell.elmt_Raf1Active_conc variable */ + data->localData[0]->realVars[16] /* Params.elmt_KmdRaf1 STATE(1) */,"elmt_cell.elmt_Raf1Active_conc + Params.elmt_KmdRaf1",equationIndexes))));
  TRACE_POP
}
/*
equation index: 448
type: SIMPLE_ASSIGN
elmt_cell.elmt_BRafbyPPtaseDeactivationReaction = elmt_cell.elmt_cell * Params.elmt_kdBRaf * elmt_cell.elmt_Raf1PPtase_conc * elmt_cell.elmt_BRafActive_conc / (elmt_cell.elmt_BRafActive_conc + Params.elmt_KmdBRaf)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_448(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,448};
  data->localData[0]->realVars[280] /* elmt_cell.elmt_BRafbyPPtaseDeactivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[34] /* Params.elmt_kdBRaf STATE(1) */) * ((data->localData[0]->realVars[311] /* elmt_cell.elmt_Raf1PPtase_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[277] /* elmt_cell.elmt_BRafActive_conc variable */,data->localData[0]->realVars[277] /* elmt_cell.elmt_BRafActive_conc variable */ + data->localData[0]->realVars[13] /* Params.elmt_KmdBRaf STATE(1) */,"elmt_cell.elmt_BRafActive_conc + Params.elmt_KmdBRaf",equationIndexes))));
  TRACE_POP
}
/*
equation index: 449
type: SIMPLE_ASSIGN
elmt_cell.elmt_BRafByRap1ActivationReaction = elmt_cell.elmt_cell * Params.elmt_kRap1ToBRaf * elmt_cell.elmt_Rap1Active_conc * elmt_cell.elmt_BRafInactive_conc / (elmt_cell.elmt_BRafInactive_conc + Params.elmt_KmRap1ToBRaf)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_449(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,449};
  data->localData[0]->realVars[278] /* elmt_cell.elmt_BRafByRap1ActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[29] /* Params.elmt_kRap1ToBRaf STATE(1) */) * ((data->localData[0]->realVars[314] /* elmt_cell.elmt_Rap1Active_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[279] /* elmt_cell.elmt_BRafInactive_conc variable */,data->localData[0]->realVars[279] /* elmt_cell.elmt_BRafInactive_conc variable */ + data->localData[0]->realVars[8] /* Params.elmt_KmRap1ToBRaf STATE(1) */,"elmt_cell.elmt_BRafInactive_conc + Params.elmt_KmRap1ToBRaf",equationIndexes))));
  TRACE_POP
}
/*
equation index: 450
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_BRafActive_amount = elmt_cell.elmt_BRafByRap1ActivationReaction * Reacs.elmt_product53 - elmt_cell.elmt_BRafbyPPtaseDeactivationReaction * Reacs.elmt_reactant54
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_450(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,450};
  data->localData[0]->realVars[243] /* der(elmt_cell.elmt_BRafActive_amount) STATE_DER */ = (data->localData[0]->realVars[278] /* elmt_cell.elmt_BRafByRap1ActivationReaction variable */) * (data->localData[0]->realVars[73] /* Reacs.elmt_product53 STATE(1) */) - ((data->localData[0]->realVars[280] /* elmt_cell.elmt_BRafbyPPtaseDeactivationReaction variable */) * (data->localData[0]->realVars[100] /* Reacs.elmt_reactant54 STATE(1) */));
  TRACE_POP
}
/*
equation index: 451
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_BRafInactive_amount = elmt_cell.elmt_BRafbyPPtaseDeactivationReaction * Reacs.elmt_product55 - elmt_cell.elmt_BRafByRap1ActivationReaction * Reacs.elmt_reactant52
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_451(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,451};
  data->localData[0]->realVars[244] /* der(elmt_cell.elmt_BRafInactive_amount) STATE_DER */ = (data->localData[0]->realVars[280] /* elmt_cell.elmt_BRafbyPPtaseDeactivationReaction variable */) * (data->localData[0]->realVars[74] /* Reacs.elmt_product55 STATE(1) */) - ((data->localData[0]->realVars[278] /* elmt_cell.elmt_BRafByRap1ActivationReaction variable */) * (data->localData[0]->realVars[99] /* Reacs.elmt_reactant52 STATE(1) */));
  TRACE_POP
}
/*
equation index: 452
type: SIMPLE_ASSIGN
elmt_cell.elmt_Rap1ActivationReaction = elmt_cell.elmt_cell * Params.elmt_kC3G * elmt_cell.elmt_C3GActive_conc * elmt_cell.elmt_Rap1Inactive_conc / (elmt_cell.elmt_Rap1Inactive_conc + Params.elmt_KmC3G)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_452(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,452};
  data->localData[0]->realVars[313] /* elmt_cell.elmt_Rap1ActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[23] /* Params.elmt_kC3G STATE(1) */) * ((data->localData[0]->realVars[282] /* elmt_cell.elmt_C3GActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[316] /* elmt_cell.elmt_Rap1Inactive_conc variable */,data->localData[0]->realVars[316] /* elmt_cell.elmt_Rap1Inactive_conc variable */ + data->localData[0]->realVars[1] /* Params.elmt_KmC3G STATE(1) */,"elmt_cell.elmt_Rap1Inactive_conc + Params.elmt_KmC3G",equationIndexes))));
  TRACE_POP
}
/*
equation index: 453
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_Rap1Active_amount = elmt_cell.elmt_Rap1ActivationReaction * Reacs.elmt_product49 - elmt_cell.elmt_Rap1DeactivationReaction * Reacs.elmt_reactant50
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_453(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,453};
  data->localData[0]->realVars[261] /* der(elmt_cell.elmt_Rap1Active_amount) STATE_DER */ = (data->localData[0]->realVars[313] /* elmt_cell.elmt_Rap1ActivationReaction variable */) * (data->localData[0]->realVars[70] /* Reacs.elmt_product49 STATE(1) */) - ((data->localData[0]->realVars[315] /* elmt_cell.elmt_Rap1DeactivationReaction variable */) * (data->localData[0]->realVars[98] /* Reacs.elmt_reactant50 STATE(1) */));
  TRACE_POP
}
/*
equation index: 454
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_Rap1Inactive_amount = elmt_cell.elmt_Rap1DeactivationReaction * Reacs.elmt_product51 - elmt_cell.elmt_Rap1ActivationReaction * Reacs.elmt_reactant48
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_454(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,454};
  data->localData[0]->realVars[262] /* der(elmt_cell.elmt_Rap1Inactive_amount) STATE_DER */ = (data->localData[0]->realVars[315] /* elmt_cell.elmt_Rap1DeactivationReaction variable */) * (data->localData[0]->realVars[72] /* Reacs.elmt_product51 STATE(1) */) - ((data->localData[0]->realVars[313] /* elmt_cell.elmt_Rap1ActivationReaction variable */) * (data->localData[0]->realVars[97] /* Reacs.elmt_reactant48 STATE(1) */));
  TRACE_POP
}
/*
equation index: 455
type: SIMPLE_ASSIGN
elmt_cell.elmt_ErkActivationReaction = elmt_cell.elmt_cell * Params.elmt_kpMekCytoplasmic * elmt_cell.elmt_MekActive_conc * elmt_cell.elmt_ErkInactive_conc / (elmt_cell.elmt_ErkInactive_conc + Params.elmt_KmpMekCytoplasmic)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_455(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,455};
  data->localData[0]->realVars[287] /* elmt_cell.elmt_ErkActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[41] /* Params.elmt_kpMekCytoplasmic STATE(1) */) * ((data->localData[0]->realVars[291] /* elmt_cell.elmt_MekActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[290] /* elmt_cell.elmt_ErkInactive_conc variable */,data->localData[0]->realVars[290] /* elmt_cell.elmt_ErkInactive_conc variable */ + data->localData[0]->realVars[19] /* Params.elmt_KmpMekCytoplasmic STATE(1) */,"elmt_cell.elmt_ErkInactive_conc + Params.elmt_KmpMekCytoplasmic",equationIndexes))));
  TRACE_POP
}
/*
equation index: 456
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_ErkActive_amount = elmt_cell.elmt_ErkActivationReaction * Reacs.elmt_product29 - elmt_cell.elmt_ErkDeactivationReaction * Reacs.elmt_reactant32
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_456(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,456};
  data->localData[0]->realVars[248] /* der(elmt_cell.elmt_ErkActive_amount) STATE_DER */ = (data->localData[0]->realVars[287] /* elmt_cell.elmt_ErkActivationReaction variable */) * (data->localData[0]->realVars[59] /* Reacs.elmt_product29 STATE(1) */) - ((data->localData[0]->realVars[289] /* elmt_cell.elmt_ErkDeactivationReaction variable */) * (data->localData[0]->realVars[89] /* Reacs.elmt_reactant32 STATE(1) */));
  TRACE_POP
}
/*
equation index: 457
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_ErkInactive_amount = elmt_cell.elmt_ErkDeactivationReaction * Reacs.elmt_product33 - elmt_cell.elmt_ErkActivationReaction * Reacs.elmt_reactant28
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_457(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,457};
  data->localData[0]->realVars[249] /* der(elmt_cell.elmt_ErkInactive_amount) STATE_DER */ = (data->localData[0]->realVars[289] /* elmt_cell.elmt_ErkDeactivationReaction variable */) * (data->localData[0]->realVars[61] /* Reacs.elmt_product33 STATE(1) */) - ((data->localData[0]->realVars[287] /* elmt_cell.elmt_ErkActivationReaction variable */) * (data->localData[0]->realVars[86] /* Reacs.elmt_reactant28 STATE(1) */));
  TRACE_POP
}
/*
equation index: 458
type: SIMPLE_ASSIGN
elmt_cell.elmt_RasDeactivationReaction = elmt_cell.elmt_cell * Params.elmt_kRasGap * elmt_cell.elmt_RasGapActive_conc * elmt_cell.elmt_RasActive_conc / (elmt_cell.elmt_RasActive_conc + Params.elmt_KmRasGap)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_458(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,458};
  data->localData[0]->realVars[320] /* elmt_cell.elmt_RasDeactivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[31] /* Params.elmt_kRasGap STATE(1) */) * ((data->localData[0]->realVars[321] /* elmt_cell.elmt_RasGapActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[319] /* elmt_cell.elmt_RasActive_conc variable */,data->localData[0]->realVars[319] /* elmt_cell.elmt_RasActive_conc variable */ + data->localData[0]->realVars[10] /* Params.elmt_KmRasGap STATE(1) */,"elmt_cell.elmt_RasActive_conc + Params.elmt_KmRasGap",equationIndexes))));
  TRACE_POP
}
/*
equation index: 459
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_RasActive_amount = elmt_cell.elmt_RasActivationReaction * Reacs.elmt_product19 - elmt_cell.elmt_RasDeactivationReaction * Reacs.elmt_reactant20
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_459(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,459};
  data->localData[0]->realVars[264] /* der(elmt_cell.elmt_RasActive_amount) STATE_DER */ = (data->localData[0]->realVars[318] /* elmt_cell.elmt_RasActivationReaction variable */) * (data->localData[0]->realVars[53] /* Reacs.elmt_product19 STATE(1) */) - ((data->localData[0]->realVars[320] /* elmt_cell.elmt_RasDeactivationReaction variable */) * (data->localData[0]->realVars[82] /* Reacs.elmt_reactant20 STATE(1) */));
  TRACE_POP
}
/*
equation index: 460
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_RasInactive_amount = elmt_cell.elmt_RasDeactivationReaction * Reacs.elmt_product21 - elmt_cell.elmt_RasActivationReaction * Reacs.elmt_reactant18
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_460(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,460};
  data->localData[0]->realVars[266] /* der(elmt_cell.elmt_RasInactive_amount) STATE_DER */ = (data->localData[0]->realVars[320] /* elmt_cell.elmt_RasDeactivationReaction variable */) * (data->localData[0]->realVars[55] /* Reacs.elmt_product21 STATE(1) */) - ((data->localData[0]->realVars[318] /* elmt_cell.elmt_RasActivationReaction variable */) * (data->localData[0]->realVars[81] /* Reacs.elmt_reactant18 STATE(1) */));
  TRACE_POP
}
/*
equation index: 461
type: SIMPLE_ASSIGN
elmt_cell.elmt_PI3KbyRasActivationReaction = elmt_cell.elmt_cell * Params.elmt_kPI3KRas * elmt_cell.elmt_RasActive_conc * elmt_cell.elmt_PI3KInactive_conc / (elmt_cell.elmt_PI3KInactive_conc + Params.elmt_KmPI3KRas)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_461(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,461};
  data->localData[0]->realVars[305] /* elmt_cell.elmt_PI3KbyRasActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[28] /* Params.elmt_kPI3KRas STATE(1) */) * ((data->localData[0]->realVars[319] /* elmt_cell.elmt_RasActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[303] /* elmt_cell.elmt_PI3KInactive_conc variable */,data->localData[0]->realVars[303] /* elmt_cell.elmt_PI3KInactive_conc variable */ + data->localData[0]->realVars[6] /* Params.elmt_KmPI3KRas STATE(1) */,"elmt_cell.elmt_PI3KInactive_conc + Params.elmt_KmPI3KRas",equationIndexes))));
  TRACE_POP
}
/*
equation index: 462
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_PI3KInactive_amount = (-elmt_cell.elmt_PI3KbyRasActivationReaction) * Reacs.elmt_reactant40 - elmt_cell.elmt_PI3KbyEGFRActivationReaction * Reacs.elmt_reactant38
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_462(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,462};
  data->localData[0]->realVars[256] /* der(elmt_cell.elmt_PI3KInactive_amount) STATE_DER */ = ((-data->localData[0]->realVars[305] /* elmt_cell.elmt_PI3KbyRasActivationReaction variable */)) * (data->localData[0]->realVars[93] /* Reacs.elmt_reactant40 STATE(1) */) - ((data->localData[0]->realVars[304] /* elmt_cell.elmt_PI3KbyEGFRActivationReaction variable */) * (data->localData[0]->realVars[92] /* Reacs.elmt_reactant38 STATE(1) */));
  TRACE_POP
}
/*
equation index: 463
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_PI3KActive_amount = elmt_cell.elmt_PI3KbyRasActivationReaction * Reacs.elmt_product41 + elmt_cell.elmt_PI3KbyEGFRActivationReaction * Reacs.elmt_product39
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_463(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,463};
  data->localData[0]->realVars[255] /* der(elmt_cell.elmt_PI3KActive_amount) STATE_DER */ = (data->localData[0]->realVars[305] /* elmt_cell.elmt_PI3KbyRasActivationReaction variable */) * (data->localData[0]->realVars[66] /* Reacs.elmt_product41 STATE(1) */) + (data->localData[0]->realVars[304] /* elmt_cell.elmt_PI3KbyEGFRActivationReaction variable */) * (data->localData[0]->realVars[64] /* Reacs.elmt_product39 STATE(1) */);
  TRACE_POP
}
/*
equation index: 464
type: SIMPLE_ASSIGN
elmt_cell.elmt_Raf1ByRasActivationReaction = elmt_cell.elmt_cell * Params.elmt_kRasToRaf1 * elmt_cell.elmt_RasActive_conc * elmt_cell.elmt_Raf1Inactive_conc / (elmt_cell.elmt_Raf1Inactive_conc + Params.elmt_KmRasToRaf1)
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_464(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,464};
  data->localData[0]->realVars[309] /* elmt_cell.elmt_Raf1ByRasActivationReaction variable */ = (data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */) * ((data->localData[0]->realVars[32] /* Params.elmt_kRasToRaf1 STATE(1) */) * ((data->localData[0]->realVars[319] /* elmt_cell.elmt_RasActive_conc variable */) * (DIVISION_SIM(data->localData[0]->realVars[310] /* elmt_cell.elmt_Raf1Inactive_conc variable */,data->localData[0]->realVars[310] /* elmt_cell.elmt_Raf1Inactive_conc variable */ + data->localData[0]->realVars[11] /* Params.elmt_KmRasToRaf1 STATE(1) */,"elmt_cell.elmt_Raf1Inactive_conc + Params.elmt_KmRasToRaf1",equationIndexes))));
  TRACE_POP
}
/*
equation index: 465
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_Raf1Inactive_amount = elmt_cell.elmt_Raf1ByAktDeactivationReaction * Reacs.elmt_product45 + elmt_cell.elmt_Raf1byPPtaseDeactivationReaction * Reacs.elmt_product35 - elmt_cell.elmt_Raf1ByRasActivationReaction * Reacs.elmt_reactant22
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_465(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,465};
  data->localData[0]->realVars[259] /* der(elmt_cell.elmt_Raf1Inactive_amount) STATE_DER */ = (data->localData[0]->realVars[308] /* elmt_cell.elmt_Raf1ByAktDeactivationReaction variable */) * (data->localData[0]->realVars[68] /* Reacs.elmt_product45 STATE(1) */) + (data->localData[0]->realVars[312] /* elmt_cell.elmt_Raf1byPPtaseDeactivationReaction variable */) * (data->localData[0]->realVars[62] /* Reacs.elmt_product35 STATE(1) */) - ((data->localData[0]->realVars[309] /* elmt_cell.elmt_Raf1ByRasActivationReaction variable */) * (data->localData[0]->realVars[83] /* Reacs.elmt_reactant22 STATE(1) */));
  TRACE_POP
}
/*
equation index: 466
type: SIMPLE_ASSIGN
$DER.elmt_cell.elmt_Raf1Active_amount = elmt_cell.elmt_Raf1ByRasActivationReaction * Reacs.elmt_product23 + (-elmt_cell.elmt_Raf1ByAktDeactivationReaction) * Reacs.elmt_reactant44 - elmt_cell.elmt_Raf1byPPtaseDeactivationReaction * Reacs.elmt_reactant34
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_466(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,466};
  data->localData[0]->realVars[258] /* der(elmt_cell.elmt_Raf1Active_amount) STATE_DER */ = (data->localData[0]->realVars[309] /* elmt_cell.elmt_Raf1ByRasActivationReaction variable */) * (data->localData[0]->realVars[56] /* Reacs.elmt_product23 STATE(1) */) + ((-data->localData[0]->realVars[308] /* elmt_cell.elmt_Raf1ByAktDeactivationReaction variable */)) * (data->localData[0]->realVars[95] /* Reacs.elmt_reactant44 STATE(1) */) - ((data->localData[0]->realVars[312] /* elmt_cell.elmt_Raf1byPPtaseDeactivationReaction variable */) * (data->localData[0]->realVars[90] /* Reacs.elmt_reactant34 STATE(1) */));
  TRACE_POP
}
/*
equation index: 467
type: ALGORITHM

  assert(elmt_cell.elmt_cell >= 0.0, "Compartment size became negative. Make sure this is a valid bahaviour.");
*/
void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_467(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,467};
  modelica_boolean tmp0;
  static const MMC_DEFSTRINGLIT(tmp1,70,"Compartment size became negative. Make sure this is a valid bahaviour.");
  static int tmp2 = 0;
  {
    tmp0 = GreaterEq(data->localData[0]->realVars[134] /* elmt_cell.elmt_cell STATE(1) */,0.0);
    if(!tmp0)
    {
      {
        FILE_INFO info = {"/home/yorunoomo/Scrivania/Tirocinio/util/Software/sbml2Modelica/test/biomodels/modelica/BIOMD033/Class_elmt_cell.mo",382,9,382,105,0};
        omc_assert_warning(info, "The following assertion has been violated %sat time %f\nelmt_cell.elmt_cell >= 0.0", initial() ? "during initialization " : "", data->localData[0]->timeValue);
        omc_assert_withEquationIndexes(threadData, info, equationIndexes, MMC_STRINGDATA(MMC_REFSTRINGLIT(tmp1)));
      }
    }
  }
  TRACE_POP
}

OMC_DISABLE_OPT
int BIOMD033_Brown2004_NGF_EGF_signaling_functionDAE(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  int equationIndexes[1] = {0};
#if !defined(OMC_MINIMAL_RUNTIME)
  if (measure_time_flag) rt_tick(SIM_TIMER_DAE);
#endif

  data->simulationInfo->needToIterate = 0;
  data->simulationInfo->discreteCall = 1;
  BIOMD033_Brown2004_NGF_EGF_signaling_functionLocalKnownVars(data, threadData);
  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_303(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_304(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_305(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_306(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_307(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_308(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_309(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_310(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_311(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_312(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_313(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_314(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_315(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_316(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_317(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_318(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_319(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_320(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_321(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_322(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_323(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_324(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_325(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_326(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_327(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_328(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_329(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_330(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_331(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_332(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_333(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_334(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_335(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_336(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_337(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_338(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_339(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_340(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_341(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_342(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_343(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_344(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_345(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_346(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_347(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_348(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_349(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_350(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_351(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_352(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_353(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_354(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_355(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_356(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_357(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_358(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_359(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_360(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_361(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_362(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_363(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_364(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_365(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_366(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_367(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_368(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_369(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_370(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_371(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_372(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_373(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_374(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_375(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_376(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_377(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_378(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_379(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_380(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_381(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_382(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_383(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_384(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_385(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_386(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_387(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_388(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_389(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_390(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_391(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_392(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_393(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_394(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_395(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_396(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_397(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_398(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_399(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_400(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_401(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_402(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_403(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_404(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_405(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_406(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_407(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_408(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_409(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_410(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_411(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_412(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_413(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_414(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_415(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_416(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_417(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_418(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_419(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_420(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_421(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_422(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_423(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_424(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_425(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_426(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_427(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_428(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_429(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_430(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_431(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_432(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_433(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_434(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_435(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_436(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_437(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_438(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_439(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_440(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_441(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_442(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_443(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_444(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_445(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_446(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_447(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_448(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_449(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_450(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_451(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_452(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_453(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_454(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_455(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_456(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_457(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_458(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_459(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_460(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_461(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_462(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_463(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_464(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_465(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_466(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_467(data, threadData);
  data->simulationInfo->discreteCall = 0;
  
#if !defined(OMC_MINIMAL_RUNTIME)
  if (measure_time_flag) rt_accumulate(SIM_TIMER_DAE);
#endif
  TRACE_POP
  return 0;
}


int BIOMD033_Brown2004_NGF_EGF_signaling_functionLocalKnownVars(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}


/* forwarded equations */
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_303(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_304(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_305(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_306(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_307(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_308(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_309(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_310(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_311(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_312(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_313(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_314(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_315(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_316(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_317(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_318(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_319(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_320(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_321(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_322(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_323(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_324(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_325(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_326(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_327(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_328(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_329(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_330(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_331(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_332(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_333(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_334(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_335(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_336(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_337(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_338(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_339(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_340(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_341(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_342(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_343(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_344(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_345(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_346(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_347(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_348(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_349(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_350(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_351(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_352(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_353(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_354(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_355(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_356(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_357(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_358(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_359(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_360(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_361(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_362(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_363(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_364(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_365(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_366(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_367(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_368(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_369(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_370(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_371(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_372(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_373(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_374(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_375(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_376(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_377(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_378(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_379(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_380(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_381(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_382(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_383(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_384(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_385(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_386(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_387(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_388(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_389(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_390(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_391(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_392(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_393(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_394(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_395(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_396(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_397(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_398(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_399(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_400(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_401(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_402(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_403(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_404(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_405(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_406(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_407(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_408(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_409(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_410(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_411(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_412(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_413(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_414(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_415(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_416(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_417(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_418(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_419(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_420(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_421(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_422(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_423(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_424(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_425(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_426(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_427(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_428(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_429(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_430(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_431(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_432(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_433(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_434(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_435(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_436(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_437(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_438(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_439(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_440(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_441(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_442(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_443(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_444(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_445(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_446(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_447(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_448(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_449(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_450(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_451(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_452(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_453(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_454(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_455(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_456(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_457(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_458(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_459(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_460(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_461(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_462(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_463(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_464(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_465(DATA* data, threadData_t *threadData);
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_466(DATA* data, threadData_t *threadData);

static void functionODE_system0(DATA *data, threadData_t *threadData)
{
    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_303(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_304(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_305(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_306(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_307(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_308(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_309(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_310(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_311(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_312(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_313(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_314(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_315(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_316(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_317(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_318(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_319(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_320(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_321(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_322(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_323(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_324(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_325(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_326(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_327(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_328(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_329(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_330(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_331(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_332(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_333(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_334(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_335(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_336(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_337(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_338(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_339(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_340(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_341(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_342(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_343(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_344(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_345(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_346(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_347(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_348(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_349(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_350(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_351(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_352(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_353(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_354(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_355(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_356(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_357(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_358(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_359(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_360(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_361(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_362(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_363(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_364(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_365(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_366(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_367(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_368(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_369(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_370(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_371(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_372(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_373(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_374(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_375(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_376(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_377(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_378(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_379(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_380(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_381(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_382(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_383(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_384(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_385(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_386(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_387(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_388(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_389(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_390(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_391(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_392(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_393(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_394(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_395(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_396(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_397(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_398(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_399(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_400(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_401(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_402(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_403(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_404(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_405(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_406(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_407(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_408(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_409(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_410(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_411(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_412(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_413(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_414(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_415(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_416(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_417(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_418(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_419(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_420(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_421(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_422(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_423(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_424(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_425(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_426(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_427(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_428(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_429(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_430(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_431(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_432(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_433(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_434(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_435(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_436(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_437(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_438(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_439(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_440(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_441(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_442(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_443(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_444(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_445(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_446(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_447(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_448(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_449(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_450(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_451(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_452(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_453(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_454(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_455(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_456(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_457(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_458(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_459(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_460(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_461(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_462(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_463(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_464(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_465(data, threadData);

    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_466(data, threadData);
}

int BIOMD033_Brown2004_NGF_EGF_signaling_functionODE(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
#if !defined(OMC_MINIMAL_RUNTIME)
  if (measure_time_flag) rt_tick(SIM_TIMER_FUNCTION_ODE);
#endif

  
  data->simulationInfo->callStatistics.functionODE++;
  
  BIOMD033_Brown2004_NGF_EGF_signaling_functionLocalKnownVars(data, threadData);
  functionODE_system0(data, threadData);

#if !defined(OMC_MINIMAL_RUNTIME)
  if (measure_time_flag) rt_accumulate(SIM_TIMER_FUNCTION_ODE);
#endif

  TRACE_POP
  return 0;
}

/* forward the main in the simulation runtime */
extern int _main_SimulationRuntime(int argc, char**argv, DATA *data, threadData_t *threadData);

#include "BIOMD033.Brown2004_NGF_EGF_signaling_12jac.h"
#include "BIOMD033.Brown2004_NGF_EGF_signaling_13opt.h"

struct OpenModelicaGeneratedFunctionCallbacks BIOMD033_Brown2004_NGF_EGF_signaling_callback = {
   (int (*)(DATA *, threadData_t *, void *)) BIOMD033_Brown2004_NGF_EGF_signaling_performSimulation,
   (int (*)(DATA *, threadData_t *, void *)) BIOMD033_Brown2004_NGF_EGF_signaling_performQSSSimulation,
   BIOMD033_Brown2004_NGF_EGF_signaling_updateContinuousSystem,
   BIOMD033_Brown2004_NGF_EGF_signaling_callExternalObjectDestructors,
   BIOMD033_Brown2004_NGF_EGF_signaling_initialNonLinearSystem,
   NULL,
   NULL,
   #if !defined(OMC_NO_STATESELECTION)
   BIOMD033_Brown2004_NGF_EGF_signaling_initializeStateSets,
   #else
   NULL,
   #endif
   BIOMD033_Brown2004_NGF_EGF_signaling_initializeDAEmodeData,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionODE,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionAlgebraics,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionDAE,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionLocalKnownVars,
   BIOMD033_Brown2004_NGF_EGF_signaling_input_function,
   BIOMD033_Brown2004_NGF_EGF_signaling_input_function_init,
   BIOMD033_Brown2004_NGF_EGF_signaling_input_function_updateStartValues,
   BIOMD033_Brown2004_NGF_EGF_signaling_data_function,
   BIOMD033_Brown2004_NGF_EGF_signaling_output_function,
   BIOMD033_Brown2004_NGF_EGF_signaling_setc_function,
   BIOMD033_Brown2004_NGF_EGF_signaling_function_storeDelayed,
   BIOMD033_Brown2004_NGF_EGF_signaling_updateBoundVariableAttributes,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionInitialEquations,
   1, /* useHomotopy - 0: local homotopy (equidistant lambda), 1: global homotopy (equidistant lambda), 2: new global homotopy approach (adaptive lambda), 3: new local homotopy approach (adaptive lambda)*/
   BIOMD033_Brown2004_NGF_EGF_signaling_functionInitialEquations_lambda0,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionRemovedInitialEquations,
   BIOMD033_Brown2004_NGF_EGF_signaling_updateBoundParameters,
   BIOMD033_Brown2004_NGF_EGF_signaling_checkForAsserts,
   BIOMD033_Brown2004_NGF_EGF_signaling_function_ZeroCrossingsEquations,
   BIOMD033_Brown2004_NGF_EGF_signaling_function_ZeroCrossings,
   BIOMD033_Brown2004_NGF_EGF_signaling_function_updateRelations,
   BIOMD033_Brown2004_NGF_EGF_signaling_zeroCrossingDescription,
   BIOMD033_Brown2004_NGF_EGF_signaling_relationDescription,
   BIOMD033_Brown2004_NGF_EGF_signaling_function_initSample,
   BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_A,
   BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_B,
   BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_C,
   BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_D,
   BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_F,
   BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianA,
   BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianB,
   BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianC,
   BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianD,
   BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianF,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionJacA_column,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionJacB_column,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionJacC_column,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionJacD_column,
   BIOMD033_Brown2004_NGF_EGF_signaling_functionJacF_column,
   BIOMD033_Brown2004_NGF_EGF_signaling_linear_model_frame,
   BIOMD033_Brown2004_NGF_EGF_signaling_linear_model_datarecovery_frame,
   BIOMD033_Brown2004_NGF_EGF_signaling_mayer,
   BIOMD033_Brown2004_NGF_EGF_signaling_lagrange,
   BIOMD033_Brown2004_NGF_EGF_signaling_pickUpBoundsForInputsInOptimization,
   BIOMD033_Brown2004_NGF_EGF_signaling_setInputData,
   BIOMD033_Brown2004_NGF_EGF_signaling_getTimeGrid,
   BIOMD033_Brown2004_NGF_EGF_signaling_symbolicInlineSystem,
   BIOMD033_Brown2004_NGF_EGF_signaling_function_initSynchronous,
   BIOMD033_Brown2004_NGF_EGF_signaling_function_updateSynchronous,
   BIOMD033_Brown2004_NGF_EGF_signaling_function_equationsSynchronous,
   BIOMD033_Brown2004_NGF_EGF_signaling_inputNames,
   NULL,
   NULL,
   NULL,
   -1

};

#define _OMC_LIT_RESOURCE_0_name_data "BIOMD033"
#define _OMC_LIT_RESOURCE_0_dir_data "/home/yorunoomo/Scrivania/Tirocinio/util/Software/sbml2Modelica/test/biomodels/modelica/BIOMD033"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_0_name,8,_OMC_LIT_RESOURCE_0_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_0_dir,96,_OMC_LIT_RESOURCE_0_dir_data);

#define _OMC_LIT_RESOURCE_1_name_data "Complex"
#define _OMC_LIT_RESOURCE_1_dir_data "/usr/lib/omlibrary"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_1_name,7,_OMC_LIT_RESOURCE_1_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_1_dir,18,_OMC_LIT_RESOURCE_1_dir_data);

#define _OMC_LIT_RESOURCE_2_name_data "Modelica"
#define _OMC_LIT_RESOURCE_2_dir_data "/usr/lib/omlibrary/Modelica 3.2.3"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_2_name,8,_OMC_LIT_RESOURCE_2_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_2_dir,33,_OMC_LIT_RESOURCE_2_dir_data);

#define _OMC_LIT_RESOURCE_3_name_data "ModelicaServices"
#define _OMC_LIT_RESOURCE_3_dir_data "/usr/lib/omlibrary/ModelicaServices 3.2.3"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_3_name,16,_OMC_LIT_RESOURCE_3_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_3_dir,41,_OMC_LIT_RESOURCE_3_dir_data);

static const MMC_DEFSTRUCTLIT(_OMC_LIT_RESOURCES,8,MMC_ARRAY_TAG) {MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_0_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_0_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_1_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_1_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_2_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_2_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_3_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_3_dir)}};
void BIOMD033_Brown2004_NGF_EGF_signaling_setupDataStruc(DATA *data, threadData_t *threadData)
{
  assertStreamPrint(threadData,0!=data, "Error while initialize Data");
  threadData->localRoots[LOCAL_ROOT_SIMULATION_DATA] = data;
  data->callback = &BIOMD033_Brown2004_NGF_EGF_signaling_callback;
  OpenModelica_updateUriMapping(threadData, MMC_REFSTRUCTLIT(_OMC_LIT_RESOURCES));
  data->modelData->modelName = "BIOMD033.Brown2004_NGF_EGF_signaling";
  data->modelData->modelFilePrefix = "BIOMD033.Brown2004_NGF_EGF_signaling";
  data->modelData->resultFileName = NULL;
  data->modelData->modelDir = "/home/yorunoomo/Scrivania/Tirocinio/util/Software/sbml2Modelica/test/biomodels/modelica/BIOMD033";
  data->modelData->modelGUID = "{a0e89069-6006-41d4-a03d-9284ca879c1c}";
  #if defined(OPENMODELICA_XML_FROM_FILE_AT_RUNTIME)
  data->modelData->initXMLData = NULL;
  data->modelData->modelDataXml.infoXMLData = NULL;
  #else
  #if defined(_MSC_VER) /* handle joke compilers */
  {
  /* for MSVC we encode a string like char x[] = {'a', 'b', 'c', '\0'} */
  /* because the string constant limit is 65535 bytes */
  static const char contents_init[] =
    #include "BIOMD033.Brown2004_NGF_EGF_signaling_init.c"
    ;
  static const char contents_info[] =
    #include "BIOMD033.Brown2004_NGF_EGF_signaling_info.c"
    ;
    data->modelData->initXMLData = contents_init;
    data->modelData->modelDataXml.infoXMLData = contents_info;
  }
  #else /* handle real compilers */
  data->modelData->initXMLData =
  #include "BIOMD033.Brown2004_NGF_EGF_signaling_init.c"
    ;
  data->modelData->modelDataXml.infoXMLData =
  #include "BIOMD033.Brown2004_NGF_EGF_signaling_info.c"
    ;
  #endif /* defined(_MSC_VER) */
  #endif /* defined(OPENMODELICA_XML_FROM_FILE_AT_RUNTIME) */
  data->modelData->runTestsuite = 0;
  
  data->modelData->nStates = 137;
  data->modelData->nVariablesReal = 332;
  data->modelData->nDiscreteReal = 0;
  data->modelData->nVariablesInteger = 0;
  data->modelData->nVariablesBoolean = 0;
  data->modelData->nVariablesString = 0;
  data->modelData->nParametersReal = 0;
  data->modelData->nParametersInteger = 0;
  data->modelData->nParametersBoolean = 0;
  data->modelData->nParametersString = 0;
  data->modelData->nInputVars = 0;
  data->modelData->nOutputVars = 0;
  
  data->modelData->nAliasReal = 195;
  data->modelData->nAliasInteger = 0;
  data->modelData->nAliasBoolean = 0;
  data->modelData->nAliasString = 0;
  
  data->modelData->nZeroCrossings = 0;
  data->modelData->nSamples = 0;
  data->modelData->nRelations = 0;
  data->modelData->nMathEvents = 0;
  data->modelData->nExtObjs = 0;
  
  data->modelData->modelDataXml.fileName = "BIOMD033.Brown2004_NGF_EGF_signaling_info.json";
  data->modelData->modelDataXml.modelInfoXmlLength = 0;
  data->modelData->modelDataXml.nFunctions = 0;
  data->modelData->modelDataXml.nProfileBlocks = 0;
  data->modelData->modelDataXml.nEquations = 468;
  data->modelData->nMixedSystems = 0;
  data->modelData->nLinearSystems = 0;
  data->modelData->nNonLinearSystems = 1;
  data->modelData->nStateSets = 0;
  data->modelData->nJacobians = 5;
  data->modelData->nOptimizeConstraints = 0;
  data->modelData->nOptimizeFinalConstraints = 0;
  
  data->modelData->nDelayExpressions = 0;
  
  data->modelData->nClocks = 0;
  data->modelData->nSubClocks = 0;
  
  data->modelData->nSensitivityVars = 0;
  data->modelData->nSensitivityParamVars = 0;
  data->modelData->nSetcVars = 0;
  data->modelData->ndataReconVars = 0;
  data->modelData->linearizationDumpLanguage =
  OMC_LINEARIZE_DUMP_LANGUAGE_MODELICA;
}

static int rml_execution_failed()
{
  fflush(NULL);
  fprintf(stderr, "Execution failed!\n");
  fflush(NULL);
  return 1;
}

#if defined(threadData)
#undef threadData
#endif
/* call the simulation runtime main from our main! */
int main(int argc, char**argv)
{
  int res;
  DATA data;
  MODEL_DATA modelData;
  SIMULATION_INFO simInfo;
  data.modelData = &modelData;
  data.simulationInfo = &simInfo;
  measure_time_flag = 0;
  compiledInDAEMode = 0;
  compiledWithSymSolver = 0;
  MMC_INIT(0);
  omc_alloc_interface.init();
  {
    MMC_TRY_TOP()
  
    MMC_TRY_STACK()
  
    BIOMD033_Brown2004_NGF_EGF_signaling_setupDataStruc(&data, threadData);
    res = _main_SimulationRuntime(argc, argv, &data, threadData);
    
    MMC_ELSE()
    rml_execution_failed();
    fprintf(stderr, "Stack overflow detected and was not caught.\nSend us a bug report at https://trac.openmodelica.org/OpenModelica/newticket\n    Include the following trace:\n");
    printStacktraceMessages();
    fflush(NULL);
    return 1;
    MMC_CATCH_STACK()
    
    MMC_CATCH_TOP(return rml_execution_failed());
  }

  fflush(NULL);
  EXIT(res);
  return res;
}

#ifdef __cplusplus
}
#endif


