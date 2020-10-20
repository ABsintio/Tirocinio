/* Main Simulation File */
#include "MoonLanding_model.h"
#include "simulation/solver/events.h"

#define prefixedName_performSimulation MoonLanding_performSimulation
#define prefixedName_updateContinuousSystem MoonLanding_updateContinuousSystem
#include <simulation/solver/perform_simulation.c>

#define prefixedName_performQSSSimulation MoonLanding_performQSSSimulation
#include <simulation/solver/perform_qss_simulation.c>

/* dummy VARINFO and FILEINFO */
const FILE_INFO dummyFILE_INFO = omc_dummyFileInfo;
const VAR_INFO dummyVAR_INFO = omc_dummyVarInfo;
#if defined(__cplusplus)
extern "C" {
#endif

int MoonLanding_input_function(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int MoonLanding_input_function_init(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int MoonLanding_input_function_updateStartValues(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int MoonLanding_inputNames(DATA *data, char ** names){
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int MoonLanding_output_function(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}


/*
 equation index: 26
 type: SIMPLE_ASSIGN
 ctr._initial_altitude = apollo.initial_altitude
 */
void MoonLanding_eqFunction_26(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,26};
  data->localData[0]->realVars[8] /* ctr.initial_altitude variable */ = data->simulationInfo->realParameter[0];
  TRACE_POP
}
/*
 equation index: 27
 type: SIMPLE_ASSIGN
 ctr._initial_velocity = apollo.initial_velocity
 */
void MoonLanding_eqFunction_27(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,27};
  data->localData[0]->realVars[9] /* ctr.initial_velocity variable */ = data->simulationInfo->realParameter[1];
  TRACE_POP
}
/*
 equation index: 28
 type: SIMPLE_ASSIGN
 der(apollo._altitude) = apollo.velocity
 */
void MoonLanding_eqFunction_28(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,28};
  data->localData[0]->realVars[3] /* der(apollo.altitude) STATE_DER */ = data->localData[0]->realVars[2] /* apollo.velocity STATE(1,ctr.acceleration) */;
  TRACE_POP
}
/*
 equation index: 29
 type: SIMPLE_ASSIGN
 apollo._gravity = 6.672e-11 * DIVISION(moon.mass, (apollo.altitude + moon.radius) ^ 2.0)
 */
void MoonLanding_eqFunction_29(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,29};
  modelica_real tmp0;
  tmp0 = data->localData[0]->realVars[0] /* apollo.altitude STATE(1,apollo.velocity) */ + data->simulationInfo->realParameter[8];
  data->localData[0]->realVars[6] /* apollo.gravity variable */ = (6.672e-11) * (DIVISION_SIM(data->simulationInfo->realParameter[7],(tmp0 * tmp0),"(apollo.altitude + moon.radius) ^ 2.0",equationIndexes));
  TRACE_POP
}
void MoonLanding_eqFunction_30(DATA*,threadData_t*);
void MoonLanding_eqFunction_31(DATA*,threadData_t*);
/*
 equation index: 32
 indexNonlinear: 0
 type: NONLINEAR
 
 vars: {ctr._acceleration}
 eqns: {30, 31}
 */
void MoonLanding_eqFunction_32(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,32};
  int retValue;
  if(ACTIVE_STREAM(LOG_DT))
  {
    infoStreamPrint(LOG_DT, 1, "Solving nonlinear system 32 (STRICT TEARING SET if tearing enabled) at time = %18.10e", data->localData[0]->timeValue);
    messageClose(LOG_DT);
  }
  /* get old value */
  data->simulationInfo->nonlinearSystemData[0].nlsxOld[0] = data->localData[0]->realVars[7] /* ctr.acceleration variable */;
  retValue = solve_nonlinear_system(data, threadData, 0);
  /* check if solution process was successful */
  if (retValue > 0){
    const int indexes[2] = {1,32};
    throwStreamPrintWithEquationIndexes(threadData, indexes, "Solving non-linear system 32 failed at time=%.15g.\nFor more information please use -lv LOG_NLS.", data->localData[0]->timeValue);
  }
  /* write solution */
  data->localData[0]->realVars[7] /* ctr.acceleration variable */ = data->simulationInfo->nonlinearSystemData[0].nlsx[0];
  TRACE_POP
}
/*
 equation index: 33
 type: SIMPLE_ASSIGN
 der(apollo._mass) = (-apollo.massLossRate) * abs(ctr.thrust)
 */
void MoonLanding_eqFunction_33(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,33};
  data->localData[0]->realVars[4] /* der(apollo.mass) STATE_DER */ = ((-data->simulationInfo->realParameter[3])) * (fabs(data->localData[0]->realVars[13] /* ctr.thrust DISCRETE */));
  TRACE_POP
}
/*
 equation index: 34
 type: SIMPLE_ASSIGN
 der(apollo._velocity) = ctr.acceleration
 */
void MoonLanding_eqFunction_34(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,34};
  data->localData[0]->realVars[5] /* der(apollo.velocity) STATE_DER */ = data->localData[0]->realVars[7] /* ctr.acceleration variable */;
  TRACE_POP
}

OMC_DISABLE_OPT
int MoonLanding_functionDAE(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  int equationIndexes[1] = {0};
  
  data->simulationInfo->needToIterate = 0;
  data->simulationInfo->discreteCall = 1;
  MoonLanding_functionLocalKnownVars(data, threadData);
  MoonLanding_eqFunction_26(data, threadData);

  MoonLanding_eqFunction_27(data, threadData);

  MoonLanding_eqFunction_28(data, threadData);

  MoonLanding_eqFunction_29(data, threadData);

  MoonLanding_eqFunction_32(data, threadData);

  MoonLanding_eqFunction_33(data, threadData);

  MoonLanding_eqFunction_34(data, threadData);
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}


int MoonLanding_functionLocalKnownVars(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}


/* forwarded equations */
extern void MoonLanding_eqFunction_28(DATA* data, threadData_t *threadData);
extern void MoonLanding_eqFunction_29(DATA* data, threadData_t *threadData);
extern void MoonLanding_eqFunction_32(DATA* data, threadData_t *threadData);
extern void MoonLanding_eqFunction_33(DATA* data, threadData_t *threadData);
extern void MoonLanding_eqFunction_34(DATA* data, threadData_t *threadData);

static void functionODE_system0(DATA *data, threadData_t *threadData)
{
  MoonLanding_eqFunction_28(data, threadData);

  MoonLanding_eqFunction_29(data, threadData);

  MoonLanding_eqFunction_32(data, threadData);

  MoonLanding_eqFunction_33(data, threadData);

  MoonLanding_eqFunction_34(data, threadData);
}

int MoonLanding_functionODE(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  data->simulationInfo->callStatistics.functionODE++;
  
  MoonLanding_functionLocalKnownVars(data, threadData);
  functionODE_system0(data, threadData);

  
  TRACE_POP
  return 0;
}

/* forward the main in the simulation runtime */
extern int _main_SimulationRuntime(int argc, char**argv, DATA *data, threadData_t *threadData);

#include "MoonLanding_12jac.h"
#include "MoonLanding_13opt.h"

struct OpenModelicaGeneratedFunctionCallbacks MoonLanding_callback = {
   (int (*)(DATA *, threadData_t *, void *)) MoonLanding_performSimulation,
   (int (*)(DATA *, threadData_t *, void *)) MoonLanding_performQSSSimulation,
   MoonLanding_updateContinuousSystem,
   MoonLanding_callExternalObjectDestructors,
   MoonLanding_initialNonLinearSystem,
   NULL,
   NULL,
   #if !defined(OMC_NO_STATESELECTION)
   MoonLanding_initializeStateSets,
   #else
   NULL,
   #endif
   MoonLanding_initializeDAEmodeData,
   MoonLanding_functionODE,
   MoonLanding_functionAlgebraics,
   MoonLanding_functionDAE,
   MoonLanding_functionLocalKnownVars,
   MoonLanding_input_function,
   MoonLanding_input_function_init,
   MoonLanding_input_function_updateStartValues,
   MoonLanding_output_function,
   MoonLanding_function_storeDelayed,
   MoonLanding_updateBoundVariableAttributes,
   MoonLanding_functionInitialEquations,
   1, /* useHomotopy - 0: local homotopy (equidistant lambda), 1: global homotopy (equidistant lambda), 2: new global homotopy approach (adaptive lambda), 3: new local homotopy approach (adaptive lambda)*/
   MoonLanding_functionInitialEquations_lambda0,
   MoonLanding_functionRemovedInitialEquations,
   MoonLanding_updateBoundParameters,
   MoonLanding_checkForAsserts,
   MoonLanding_function_ZeroCrossingsEquations,
   MoonLanding_function_ZeroCrossings,
   MoonLanding_function_updateRelations,
   MoonLanding_zeroCrossingDescription,
   MoonLanding_relationDescription,
   MoonLanding_function_initSample,
   MoonLanding_INDEX_JAC_A,
   MoonLanding_INDEX_JAC_B,
   MoonLanding_INDEX_JAC_C,
   MoonLanding_INDEX_JAC_D,
   MoonLanding_initialAnalyticJacobianA,
   MoonLanding_initialAnalyticJacobianB,
   MoonLanding_initialAnalyticJacobianC,
   MoonLanding_initialAnalyticJacobianD,
   MoonLanding_functionJacA_column,
   MoonLanding_functionJacB_column,
   MoonLanding_functionJacC_column,
   MoonLanding_functionJacD_column,
   MoonLanding_linear_model_frame,
   MoonLanding_linear_model_datarecovery_frame,
   MoonLanding_mayer,
   MoonLanding_lagrange,
   MoonLanding_pickUpBoundsForInputsInOptimization,
   MoonLanding_setInputData,
   MoonLanding_getTimeGrid,
   MoonLanding_symbolicInlineSystem,
   MoonLanding_function_initSynchronous,
   MoonLanding_function_updateSynchronous,
   MoonLanding_function_equationsSynchronous,
   MoonLanding_inputNames,
   NULL,
   NULL,
   NULL,
   -1

};

#define _OMC_LIT_RESOURCE_0_name_data "CelestialBody"
#define _OMC_LIT_RESOURCE_0_dir_data "/home/enrico/Dropbox/teaching/2017/verifica-validazione-sistemi-2017/modelica/examples/rocket/v5-fdbk-ctr-ad-conversion"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_0_name,13,_OMC_LIT_RESOURCE_0_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_0_dir,119,_OMC_LIT_RESOURCE_0_dir_data);

#define _OMC_LIT_RESOURCE_1_name_data "Complex"
#define _OMC_LIT_RESOURCE_1_dir_data "/usr/lib/omlibrary"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_1_name,7,_OMC_LIT_RESOURCE_1_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_1_dir,18,_OMC_LIT_RESOURCE_1_dir_data);

#define _OMC_LIT_RESOURCE_2_name_data "ECU"
#define _OMC_LIT_RESOURCE_2_dir_data "/home/enrico/Dropbox/teaching/2017/verifica-validazione-sistemi-2017/modelica/examples/rocket/v5-fdbk-ctr-ad-conversion"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_2_name,3,_OMC_LIT_RESOURCE_2_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_2_dir,119,_OMC_LIT_RESOURCE_2_dir_data);

#define _OMC_LIT_RESOURCE_3_name_data "Modelica"
#define _OMC_LIT_RESOURCE_3_dir_data "/usr/lib/omlibrary/Modelica 3.2.2"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_3_name,8,_OMC_LIT_RESOURCE_3_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_3_dir,33,_OMC_LIT_RESOURCE_3_dir_data);

#define _OMC_LIT_RESOURCE_4_name_data "ModelicaServices"
#define _OMC_LIT_RESOURCE_4_dir_data "/usr/lib/omlibrary/ModelicaServices 3.2.2"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_4_name,16,_OMC_LIT_RESOURCE_4_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_4_dir,41,_OMC_LIT_RESOURCE_4_dir_data);

#define _OMC_LIT_RESOURCE_5_name_data "MoonLanding"
#define _OMC_LIT_RESOURCE_5_dir_data "/home/enrico/Dropbox/teaching/2017/verifica-validazione-sistemi-2017/modelica/examples/rocket/v5-fdbk-ctr-ad-conversion"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_5_name,11,_OMC_LIT_RESOURCE_5_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_5_dir,119,_OMC_LIT_RESOURCE_5_dir_data);

#define _OMC_LIT_RESOURCE_6_name_data "Rocket"
#define _OMC_LIT_RESOURCE_6_dir_data "/home/enrico/Dropbox/teaching/2017/verifica-validazione-sistemi-2017/modelica/examples/rocket/v5-fdbk-ctr-ad-conversion"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_6_name,6,_OMC_LIT_RESOURCE_6_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_6_dir,119,_OMC_LIT_RESOURCE_6_dir_data);

static const MMC_DEFSTRUCTLIT(_OMC_LIT_RESOURCES,14,MMC_ARRAY_TAG) {MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_0_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_0_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_1_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_1_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_2_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_2_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_3_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_3_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_4_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_4_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_5_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_5_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_6_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_6_dir)}};
void MoonLanding_setupDataStruc(DATA *data, threadData_t *threadData)
{
  assertStreamPrint(threadData,0!=data, "Error while initialize Data");
  threadData->localRoots[LOCAL_ROOT_SIMULATION_DATA] = data;
  data->callback = &MoonLanding_callback;
  OpenModelica_updateUriMapping(threadData, MMC_REFSTRUCTLIT(_OMC_LIT_RESOURCES));
  data->modelData->modelName = "MoonLanding";
  data->modelData->modelFilePrefix = "MoonLanding";
  data->modelData->resultFileName = NULL;
  data->modelData->modelDir = "/home/enrico/Dropbox/teaching/2017/verifica-validazione-sistemi-2017/modelica/examples/rocket/v5-fdbk-ctr-ad-conversion";
  data->modelData->modelGUID = "{0352ceca-e60b-420a-98f5-9e4ebb530118}";
  #if defined(OPENMODELICA_XML_FROM_FILE_AT_RUNTIME)
  data->modelData->initXMLData = NULL;
  data->modelData->modelDataXml.infoXMLData = NULL;
  #else
  #if defined(_MSC_VER) /* handle joke compilers */
  {
  /* for MSVC we encode a string like char x[] = {'a', 'b', 'c', '\0'} */
  /* because the string constant limit is 65535 bytes */
  static const char contents_init[] =
    #include "MoonLanding_init.c"
    ;
  static const char contents_info[] =
    #include "MoonLanding_info.c"
    ;
    data->modelData->initXMLData = contents_init;
    data->modelData->modelDataXml.infoXMLData = contents_info;
  }
  #else /* handle real compilers */
  data->modelData->initXMLData =
  #include "MoonLanding_init.c"
    ;
  data->modelData->modelDataXml.infoXMLData =
  #include "MoonLanding_info.c"
    ;
  #endif /* defined(_MSC_VER) */
  #endif /* defined(OPENMODELICA_XML_FROM_FILE_AT_RUNTIME) */
  
  data->modelData->nStates = 3;
  data->modelData->nVariablesReal = 16;
  data->modelData->nDiscreteReal = 6;
  data->modelData->nVariablesInteger = 1;
  data->modelData->nVariablesBoolean = 1;
  data->modelData->nVariablesString = 0;
  data->modelData->nParametersReal = 11;
  data->modelData->nParametersInteger = 1;
  data->modelData->nParametersBoolean = 0;
  data->modelData->nParametersString = 2;
  data->modelData->nInputVars = 0;
  data->modelData->nOutputVars = 0;
  
  data->modelData->nAliasReal = 5;
  data->modelData->nAliasInteger = 0;
  data->modelData->nAliasBoolean = 0;
  data->modelData->nAliasString = 0;
  
  data->modelData->nZeroCrossings = 0;
  data->modelData->nSamples = 1;
  data->modelData->nRelations = 0;
  data->modelData->nMathEvents = 0;
  data->modelData->nExtObjs = 0;
  data->modelData->modelDataXml.fileName = "MoonLanding_info.json";
  data->modelData->modelDataXml.modelInfoXmlLength = 0;
  data->modelData->modelDataXml.nFunctions = 2;
  data->modelData->modelDataXml.nProfileBlocks = 0;
  data->modelData->modelDataXml.nEquations = 37;
  data->modelData->nMixedSystems = 0;
  data->modelData->nLinearSystems = 0;
  data->modelData->nNonLinearSystems = 1;
  data->modelData->nStateSets = 0;
  data->modelData->nJacobians = 4;
  data->modelData->nOptimizeConstraints = 0;
  data->modelData->nOptimizeFinalConstraints = 0;
  
  data->modelData->nDelayExpressions = 1;
  
  data->modelData->nClocks = 0;
  data->modelData->nSubClocks = 0;
  
  data->modelData->nSensitivityVars = 0;
  data->modelData->nSensitivityParamVars = 0;
}

#ifdef __cplusplus
}
#endif

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
  
    MoonLanding_setupDataStruc(&data, threadData);
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

