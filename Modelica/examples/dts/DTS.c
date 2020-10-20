/* Main Simulation File */
#include "DTS_model.h"
#include "simulation/solver/events.h"

#define prefixedName_performSimulation DTS_performSimulation
#define prefixedName_updateContinuousSystem DTS_updateContinuousSystem
#include <simulation/solver/perform_simulation.c>

#define prefixedName_performQSSSimulation DTS_performQSSSimulation
#include <simulation/solver/perform_qss_simulation.c>

/* dummy VARINFO and FILEINFO */
const FILE_INFO dummyFILE_INFO = omc_dummyFileInfo;
const VAR_INFO dummyVAR_INFO = omc_dummyVarInfo;
#if defined(__cplusplus)
extern "C" {
#endif

int DTS_input_function(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int DTS_input_function_init(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int DTS_input_function_updateStartValues(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int DTS_inputNames(DATA *data, char ** names){
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int DTS_output_function(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}


/*
 equation index: 6
 type: SIMPLE_ASSIGN
 $whenCondition1 = sample(1, T, T)
 */
void DTS_eqFunction_6(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,6};
  data->localData[0]->booleanVars[0] /* $whenCondition1 DISCRETE */ = data->simulationInfo->samples[0];
  TRACE_POP
}
/*
 equation index: 7
 type: WHEN
 
 when {$whenCondition1} then
   x[2] = A[2,1] * pre(x[1]) + A[2,2] * pre(x[2]);
 end when;
 */
void DTS_eqFunction_7(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,7};
  if((data->localData[0]->booleanVars[0] /* $whenCondition1 DISCRETE */ && !data->simulationInfo->booleanVarsPre[0] /* $whenCondition1 DISCRETE */ /* edge */))
  {
    data->localData[0]->realVars[1] /* x[2] DISCRETE */ = (data->simulationInfo->realParameter[2]) * (data->simulationInfo->realVarsPre[0] /* x[1] DISCRETE */) + (data->simulationInfo->realParameter[3]) * (data->simulationInfo->realVarsPre[1] /* x[2] DISCRETE */);
  }
  TRACE_POP
}
/*
 equation index: 8
 type: WHEN
 
 when {$whenCondition1} then
   x[1] = A[1,1] * pre(x[1]) + A[1,2] * pre(x[2]);
 end when;
 */
void DTS_eqFunction_8(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,8};
  if((data->localData[0]->booleanVars[0] /* $whenCondition1 DISCRETE */ && !data->simulationInfo->booleanVarsPre[0] /* $whenCondition1 DISCRETE */ /* edge */))
  {
    data->localData[0]->realVars[0] /* x[1] DISCRETE */ = (data->simulationInfo->realParameter[0]) * (data->simulationInfo->realVarsPre[0] /* x[1] DISCRETE */) + (data->simulationInfo->realParameter[1]) * (data->simulationInfo->realVarsPre[1] /* x[2] DISCRETE */);
  }
  TRACE_POP
}

OMC_DISABLE_OPT
int DTS_functionDAE(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  int equationIndexes[1] = {0};
  
  data->simulationInfo->needToIterate = 0;
  data->simulationInfo->discreteCall = 1;
  DTS_functionLocalKnownVars(data, threadData);
  DTS_eqFunction_6(data, threadData);

  DTS_eqFunction_7(data, threadData);

  DTS_eqFunction_8(data, threadData);
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}


int DTS_functionLocalKnownVars(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}


int DTS_functionODE(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  
  data->simulationInfo->callStatistics.functionODE++;
  
  DTS_functionLocalKnownVars(data, threadData);
  /* no ODE systems */

  
  TRACE_POP
  return 0;
}

/* forward the main in the simulation runtime */
extern int _main_SimulationRuntime(int argc, char**argv, DATA *data, threadData_t *threadData);

#include "DTS_12jac.h"
#include "DTS_13opt.h"

struct OpenModelicaGeneratedFunctionCallbacks DTS_callback = {
   (int (*)(DATA *, threadData_t *, void *)) DTS_performSimulation,
   (int (*)(DATA *, threadData_t *, void *)) DTS_performQSSSimulation,
   DTS_updateContinuousSystem,
   DTS_callExternalObjectDestructors,
   NULL,
   NULL,
   NULL,
   #if !defined(OMC_NO_STATESELECTION)
   DTS_initializeStateSets,
   #else
   NULL,
   #endif
   DTS_initializeDAEmodeData,
   DTS_functionODE,
   DTS_functionAlgebraics,
   DTS_functionDAE,
   DTS_functionLocalKnownVars,
   DTS_input_function,
   DTS_input_function_init,
   DTS_input_function_updateStartValues,
   DTS_output_function,
   DTS_function_storeDelayed,
   DTS_updateBoundVariableAttributes,
   DTS_functionInitialEquations,
   1, /* useHomotopy - 0: local homotopy (equidistant lambda), 1: global homotopy (equidistant lambda), 2: new global homotopy approach (adaptive lambda), 3: new local homotopy approach (adaptive lambda)*/
   DTS_functionInitialEquations_lambda0,
   DTS_functionRemovedInitialEquations,
   DTS_updateBoundParameters,
   DTS_checkForAsserts,
   DTS_function_ZeroCrossingsEquations,
   DTS_function_ZeroCrossings,
   DTS_function_updateRelations,
   DTS_zeroCrossingDescription,
   DTS_relationDescription,
   DTS_function_initSample,
   DTS_INDEX_JAC_A,
   DTS_INDEX_JAC_B,
   DTS_INDEX_JAC_C,
   DTS_INDEX_JAC_D,
   DTS_initialAnalyticJacobianA,
   DTS_initialAnalyticJacobianB,
   DTS_initialAnalyticJacobianC,
   DTS_initialAnalyticJacobianD,
   DTS_functionJacA_column,
   DTS_functionJacB_column,
   DTS_functionJacC_column,
   DTS_functionJacD_column,
   DTS_linear_model_frame,
   DTS_linear_model_datarecovery_frame,
   DTS_mayer,
   DTS_lagrange,
   DTS_pickUpBoundsForInputsInOptimization,
   DTS_setInputData,
   DTS_getTimeGrid,
   DTS_symbolicInlineSystem,
   DTS_function_initSynchronous,
   DTS_function_updateSynchronous,
   DTS_function_equationsSynchronous,
   DTS_inputNames,
   NULL,
   NULL,
   NULL,
   -1

};

#define _OMC_LIT_RESOURCE_0_name_data "Complex"
#define _OMC_LIT_RESOURCE_0_dir_data "/usr/lib/omlibrary"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_0_name,7,_OMC_LIT_RESOURCE_0_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_0_dir,18,_OMC_LIT_RESOURCE_0_dir_data);

#define _OMC_LIT_RESOURCE_1_name_data "DTS"
#define _OMC_LIT_RESOURCE_1_dir_data "/home/enrico/Dropbox/teaching/2017/verifica-validazione-sistemi-2017/modelica/examples/dts"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_1_name,3,_OMC_LIT_RESOURCE_1_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_1_dir,90,_OMC_LIT_RESOURCE_1_dir_data);

#define _OMC_LIT_RESOURCE_2_name_data "Modelica"
#define _OMC_LIT_RESOURCE_2_dir_data "/usr/lib/omlibrary/Modelica 3.2.2"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_2_name,8,_OMC_LIT_RESOURCE_2_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_2_dir,33,_OMC_LIT_RESOURCE_2_dir_data);

#define _OMC_LIT_RESOURCE_3_name_data "ModelicaServices"
#define _OMC_LIT_RESOURCE_3_dir_data "/usr/lib/omlibrary/ModelicaServices 3.2.2"
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_3_name,16,_OMC_LIT_RESOURCE_3_name_data);
static const MMC_DEFSTRINGLIT(_OMC_LIT_RESOURCE_3_dir,41,_OMC_LIT_RESOURCE_3_dir_data);

static const MMC_DEFSTRUCTLIT(_OMC_LIT_RESOURCES,8,MMC_ARRAY_TAG) {MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_0_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_0_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_1_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_1_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_2_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_2_dir), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_3_name), MMC_REFSTRINGLIT(_OMC_LIT_RESOURCE_3_dir)}};
void DTS_setupDataStruc(DATA *data, threadData_t *threadData)
{
  assertStreamPrint(threadData,0!=data, "Error while initialize Data");
  threadData->localRoots[LOCAL_ROOT_SIMULATION_DATA] = data;
  data->callback = &DTS_callback;
  OpenModelica_updateUriMapping(threadData, MMC_REFSTRUCTLIT(_OMC_LIT_RESOURCES));
  data->modelData->modelName = "DTS";
  data->modelData->modelFilePrefix = "DTS";
  data->modelData->resultFileName = NULL;
  data->modelData->modelDir = "/home/enrico/Dropbox/teaching/2017/verifica-validazione-sistemi-2017/modelica/examples/dts";
  data->modelData->modelGUID = "{e8158f2b-ce7a-44b6-a7e8-aecc67777baf}";
  #if defined(OPENMODELICA_XML_FROM_FILE_AT_RUNTIME)
  data->modelData->initXMLData = NULL;
  data->modelData->modelDataXml.infoXMLData = NULL;
  #else
  #if defined(_MSC_VER) /* handle joke compilers */
  {
  /* for MSVC we encode a string like char x[] = {'a', 'b', 'c', '\0'} */
  /* because the string constant limit is 65535 bytes */
  static const char contents_init[] =
    #include "DTS_init.c"
    ;
  static const char contents_info[] =
    #include "DTS_info.c"
    ;
    data->modelData->initXMLData = contents_init;
    data->modelData->modelDataXml.infoXMLData = contents_info;
  }
  #else /* handle real compilers */
  data->modelData->initXMLData =
  #include "DTS_init.c"
    ;
  data->modelData->modelDataXml.infoXMLData =
  #include "DTS_info.c"
    ;
  #endif /* defined(_MSC_VER) */
  #endif /* defined(OPENMODELICA_XML_FROM_FILE_AT_RUNTIME) */
  
  data->modelData->nStates = 0;
  data->modelData->nVariablesReal = 2;
  data->modelData->nDiscreteReal = 2;
  data->modelData->nVariablesInteger = 0;
  data->modelData->nVariablesBoolean = 1;
  data->modelData->nVariablesString = 0;
  data->modelData->nParametersReal = 5;
  data->modelData->nParametersInteger = 0;
  data->modelData->nParametersBoolean = 0;
  data->modelData->nParametersString = 0;
  data->modelData->nInputVars = 0;
  data->modelData->nOutputVars = 0;
  
  data->modelData->nAliasReal = 0;
  data->modelData->nAliasInteger = 0;
  data->modelData->nAliasBoolean = 0;
  data->modelData->nAliasString = 0;
  
  data->modelData->nZeroCrossings = 0;
  data->modelData->nSamples = 1;
  data->modelData->nRelations = 0;
  data->modelData->nMathEvents = 0;
  data->modelData->nExtObjs = 0;
  data->modelData->modelDataXml.fileName = "DTS_info.json";
  data->modelData->modelDataXml.modelInfoXmlLength = 0;
  data->modelData->modelDataXml.nFunctions = 0;
  data->modelData->modelDataXml.nProfileBlocks = 0;
  data->modelData->modelDataXml.nEquations = 9;
  data->modelData->nMixedSystems = 0;
  data->modelData->nLinearSystems = 0;
  data->modelData->nNonLinearSystems = 0;
  data->modelData->nStateSets = 0;
  data->modelData->nJacobians = 4;
  data->modelData->nOptimizeConstraints = 0;
  data->modelData->nOptimizeFinalConstraints = 0;
  
  data->modelData->nDelayExpressions = 0;
  
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
  
    DTS_setupDataStruc(&data, threadData);
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

