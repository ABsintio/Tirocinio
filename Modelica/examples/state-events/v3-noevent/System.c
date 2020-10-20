/* Main Simulation File */
/* Simulation code for System generated by the OpenModelica Compiler 1.9.2 (r25115). */

#include "openmodelica.h"
#include "openmodelica_func.h"
#include "simulation_data.h"
#include "simulation/simulation_info_xml.h"
#include "simulation/simulation_runtime.h"
#include "util/omc_error.h"
#include "simulation/solver/model_help.h"
#include "simulation/solver/delay.h"
#include "simulation/solver/linearSystem.h"
#include "simulation/solver/nonlinearSystem.h"
#include "simulation/solver/mixedSystem.h"

#include <assert.h>
#include <string.h>

#include "System_functions.h"
#include "System_model.h"
#include "System_literals.h"




#if defined(HPCOM) && !defined(_OPENMP)
  #error "HPCOM requires OpenMP or the results are wrong"
#endif
#if defined(_OPENMP)
  #include <omp.h>
#else
  /* dummy omp defines */
  #define omp_get_max_threads() 1
#endif

#define threadData data->threadData


#define prefixedName_performSimulation System_performSimulation
#include <simulation/solver/perform_simulation.c>

#define prefixedName_performQSSSimulation System_performQSSSimulation
#include <simulation/solver/perform_qss_simulation.c>

/* dummy VARINFO and FILEINFO */
const FILE_INFO dummyFILE_INFO = omc_dummyFileInfo;
const VAR_INFO dummyVAR_INFO = omc_dummyVarInfo;
#if defined(__cplusplus)
extern "C" {
#endif
int measure_time_flag = 0;

int System_input_function(DATA *data)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

int System_input_function_init(DATA *data)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}


int System_output_function(DATA *data)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}


/*
 equation index: 3
 type: SIMPLE_ASSIGN
 der(x) = if noEvent(x >= 0.0) then -sqrt(x) else 0.0
 */
void System_eqFunction_3(DATA *data)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,3};
  modelica_boolean tmp1;
  modelica_real tmp2;
  modelica_boolean tmp3;
  modelica_real tmp4;
  tmp1 = GreaterEq($Px,0.0);
  tmp3 = (modelica_boolean)tmp1;
  if(tmp3)
  {
    tmp2 = $Px; 
    if(!(tmp2 >= 0.0))
    {
        FILE_INFO info = {"",0,0,0,0,0};
        omc_assert_warning(info, "The following assertion has been violated at time %f", time);
        throwStreamPrintWithEquationIndexes(threadData, equationIndexes, "Model error: Argument of sqrt(x) was %g should be >= 0", tmp2);
    }
    tmp4 = (-sqrt(tmp2));
  }
  else
  {
    tmp4 = 0.0;
  }
  $P$DER$Px = tmp4;
  TRACE_POP
}


int System_functionDAE(DATA *data)
{
  TRACE_PUSH
  int equationIndexes[1] = {0};
  
  data->simulationInfo.needToIterate = 0;
  data->simulationInfo.discreteCall = 1;
  System_eqFunction_3(data);
  
  TRACE_POP
  return 0;
}


/* forwarded equations */
extern void System_eqFunction_3(DATA* data);

static void functionODE_system0(DATA *data)
{
  System_eqFunction_3(data);
}

int System_functionODE(DATA *data)
{
  TRACE_PUSH

  
  data->simulationInfo.callStatistics.functionODE++;
  
  data->simulationInfo.discreteCall = 0;
  functionODE_system0(data);

  
  TRACE_POP
  return 0;
}

/* forward the main in the simulation runtime */
extern int _main_SimulationRuntime(int argc, char**argv, DATA *data);

#include "System_12jac.h"
#include "System_13opt.h"
extern void System_callExternalObjectConstructors(DATA *data);
extern void System_callExternalObjectDestructors(DATA *_data);
extern void System_initialNonLinearSystem(int nNonLinearSystems, NONLINEAR_SYSTEM_DATA *data);
extern void System_initialLinearSystem(int nLinearSystems, LINEAR_SYSTEM_DATA *data);
extern void System_initialMixedSystem(int nMixedSystems, MIXED_SYSTEM_DATA *data);
extern void System_initializeStateSets(int nStateSets, STATE_SET_DATA* statesetData, DATA *data);
extern int System_functionAlgebraics(DATA *data);
extern int System_function_storeDelayed(DATA *data);
extern int System_updateBoundVariableAttributes(DATA *data);
extern int System_functionInitialEquations(DATA *data);
extern int System_functionRemovedInitialEquations(DATA *data);
extern int System_updateBoundParameters(DATA *data);
extern int System_checkForAsserts(DATA *data);
extern int System_function_ZeroCrossingsEquations(DATA *data);
extern int System_function_ZeroCrossings(DATA *data, double* gout);
extern int System_function_updateRelations(DATA *data, int evalZeroCross);
extern int System_checkForDiscreteChanges(DATA *data);
extern const char* System_zeroCrossingDescription(int i, int **out_EquationIndexes);
extern const char* System_relationDescription(int i);
extern void System_function_initSample(DATA *data);
extern int System_initialAnalyticJacobianG(void* data);
extern int System_initialAnalyticJacobianA(void* data);
extern int System_initialAnalyticJacobianB(void* data);
extern int System_initialAnalyticJacobianC(void* data);
extern int System_initialAnalyticJacobianD(void* data);
extern int System_functionJacG_column(void* data);
extern int System_functionJacA_column(void* data);
extern int System_functionJacB_column(void* data);
extern int System_functionJacC_column(void* data);
extern int System_functionJacD_column(void* data);
extern const char* System_linear_model_frame(void);
extern int System_mayer(DATA* data, modelica_real** res, short *);
extern int System_lagrange(DATA* data, modelica_real** res, short *, short *);
extern int System_pickUpBoundsForInputsInOptimization(DATA* data, modelica_real* min, modelica_real* max, modelica_real*nominal, modelica_boolean *useNominal, char ** name, modelica_real * start, modelica_real * startTimeOpt);
extern int System_setInputData(DATA *data);
extern int System_getTimeGrid(DATA *data, modelica_integer * nsi, modelica_real**t);

struct OpenModelicaGeneratedFunctionCallbacks System_callback = {
   (int (*)(DATA *, void *)) System_performSimulation,
   (int (*)(DATA *, void *)) System_performQSSSimulation,
   System_callExternalObjectConstructors,
   System_callExternalObjectDestructors,
   System_initialNonLinearSystem,
   System_initialLinearSystem,
   System_initialMixedSystem,
   System_initializeStateSets,
   System_functionODE,
   System_functionAlgebraics,
   System_functionDAE,
   System_input_function,
   System_input_function_init,
   System_output_function,
   System_function_storeDelayed,
   System_updateBoundVariableAttributes,
   1 /* useSymbolicInitialization */,
   0 /* useHomotopy */,
   System_functionInitialEquations,
   System_functionRemovedInitialEquations,
   System_updateBoundParameters,
   System_checkForAsserts,
   System_function_ZeroCrossingsEquations,
   System_function_ZeroCrossings,
   System_function_updateRelations,
   System_checkForDiscreteChanges,
   System_zeroCrossingDescription,
   System_relationDescription,
   System_function_initSample,
   System_INDEX_JAC_A,
   System_INDEX_JAC_B,
   System_INDEX_JAC_C,
   System_INDEX_JAC_D,
   System_initialAnalyticJacobianA,
   System_initialAnalyticJacobianB,
   System_initialAnalyticJacobianC,
   System_initialAnalyticJacobianD,
   System_functionJacA_column,
   System_functionJacB_column,
   System_functionJacC_column,
   System_functionJacD_column,
   System_linear_model_frame,
   System_mayer,
   System_lagrange,
   System_pickUpBoundsForInputsInOptimization,
   System_setInputData,
   System_getTimeGrid

};

void System_setupDataStruc(DATA *data)
{
  assertStreamPrint(threadData,0!=data, "Error while initialize Data");
  data->callback = &System_callback;
  data->modelData.modelName = "System";
  data->modelData.modelFilePrefix = "System";
  data->modelData.resultFileName = NULL;
  data->modelData.modelDir = "/home/enrico/Dropbox/teaching/2017/verifica-validazione-sistemi/modelica/examples/state-events/v3-noevent";
  data->modelData.modelGUID = "{8c4e810f-3df3-4a00-8276-176fa3c9f9e0}";
  #ifdef OPENMODELICA_XML_FROM_FILE_AT_RUNTIME
  data->modelData.initXMLData = NULL;
  data->modelData.modelDataXml.infoXMLData = NULL;
  #else
  data->modelData.initXMLData =
  #include "System_init.c"
  ;
  data->modelData.modelDataXml.infoXMLData =
  #include "System_info.c"
  ;
  #endif
  
  data->modelData.nStates = 1;
  data->modelData.nVariablesReal = 2*1+0+0+0 + 0;
  data->modelData.nDiscreteReal = 0;
  data->modelData.nVariablesInteger = 0;
  data->modelData.nVariablesBoolean = 0;
  data->modelData.nVariablesString = 0;
  data->modelData.nParametersReal = 0;
  data->modelData.nParametersInteger = 0;
  data->modelData.nParametersBoolean = 0;
  data->modelData.nParametersString = 0;
  data->modelData.nInputVars = 0;
  data->modelData.nOutputVars = 0;
  
  data->modelData.nAliasReal = 0;
  data->modelData.nAliasInteger = 0;
  data->modelData.nAliasBoolean = 0;
  data->modelData.nAliasString = 0;
  
  data->modelData.nZeroCrossings = 0;
  data->modelData.nSamples = 0;
  data->modelData.nRelations = 0;
  data->modelData.nMathEvents = 0;
  data->modelData.nExtObjs = 0;
  setupModelInfoFunctions(1);
  data->modelData.modelDataXml.fileName = "System_info.json";
  data->modelData.modelDataXml.modelInfoXmlLength = 0;
  data->modelData.modelDataXml.nFunctions = 0;
  data->modelData.modelDataXml.nProfileBlocks = 0;
  data->modelData.modelDataXml.nEquations = 4;
  data->modelData.nMixedSystems = 0;
  data->modelData.nLinearSystems = 0;
  data->modelData.nNonLinearSystems = 0;
  data->modelData.nStateSets = 0;
  data->modelData.nJacobians = 4;
  data->modelData.nOptimizeConstraints = 0;
  data->modelData.nOptimizeFinalConstraints = 0;
  
  data->modelData.nDelayExpressions = 0;
  
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
  DATA simulation_data;
  MMC_INIT();omc_alloc_interface.init();
  {
    MMC_TRY_TOP()
  
    MMC_TRY_STACK()
  
    System_setupDataStruc(&simulation_data);
    simulation_data.threadData = threadData;
    res = _main_SimulationRuntime(argc, argv, &simulation_data);
    
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

