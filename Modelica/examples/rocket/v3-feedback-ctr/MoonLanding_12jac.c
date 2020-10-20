/* Jacobians */
/* Simulation code for MoonLanding generated by the OpenModelica Compiler 1.9.2 (r25115). */

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

#include "MoonLanding_functions.h"
#include "MoonLanding_model.h"
#include "MoonLanding_literals.h"




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

#include "MoonLanding_12jac.h"
int MoonLanding_initialAnalyticJacobianD(void* inData)
{
  TRACE_PUSH
  TRACE_POP
  return 1;
}
int MoonLanding_initialAnalyticJacobianC(void* inData)
{
  TRACE_PUSH
  TRACE_POP
  return 1;
}
int MoonLanding_initialAnalyticJacobianB(void* inData)
{
  TRACE_PUSH
  TRACE_POP
  return 1;
}

static void MoonLanding_initialAnalyticJacobianA_0(DATA* data, int index)
{
  int i;
  /* write index for cref: 0 */
  i = data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[0] - 2;
  data->simulationInfo.analyticJacobians[index].sparsePattern.index[i+0] = 1;
  i = data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[0] - 2;
  data->simulationInfo.analyticJacobians[index].sparsePattern.index[i+1] = 2;
}

static void MoonLanding_initialAnalyticJacobianA_1(DATA* data, int index)
{
  int i;
  /* write index for cref: 1 */
  i = data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[1] - 1;
  data->simulationInfo.analyticJacobians[index].sparsePattern.index[i+0] = 2;
}

static void MoonLanding_initialAnalyticJacobianA_2(DATA* data, int index)
{
  int i;
  /* write index for cref: 2 */
  i = data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[2] - 3;
  data->simulationInfo.analyticJacobians[index].sparsePattern.index[i+0] = 0;
  i = data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[2] - 3;
  data->simulationInfo.analyticJacobians[index].sparsePattern.index[i+1] = 1;
  i = data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[2] - 3;
  data->simulationInfo.analyticJacobians[index].sparsePattern.index[i+2] = 2;
}


int MoonLanding_initialAnalyticJacobianA(void* inData)
{
  TRACE_PUSH
  DATA* data = ((DATA*)inData);
  int index = MoonLanding_INDEX_JAC_A;
  
  int i;
  
  data->simulationInfo.analyticJacobians[index].sizeCols = 3;
  data->simulationInfo.analyticJacobians[index].sizeRows = 3;
  data->simulationInfo.analyticJacobians[index].sizeTmpVars = 0;
  data->simulationInfo.analyticJacobians[index].seedVars = (modelica_real*) calloc(3,sizeof(modelica_real));
  data->simulationInfo.analyticJacobians[index].resultVars = (modelica_real*) calloc(3,sizeof(modelica_real));
  data->simulationInfo.analyticJacobians[index].tmpVars = (modelica_real*) calloc(0,sizeof(modelica_real));
  data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex = (unsigned int*) malloc(3*sizeof(int));
  data->simulationInfo.analyticJacobians[index].sparsePattern.index = (unsigned int*) malloc(6*sizeof(int));
  data->simulationInfo.analyticJacobians[index].sparsePattern.numberOfNoneZeros = 6;
  data->simulationInfo.analyticJacobians[index].sparsePattern.colorCols = (unsigned int*) malloc(3*sizeof(int));
  data->simulationInfo.analyticJacobians[index].sparsePattern.maxColors = 3;
  data->simulationInfo.analyticJacobians[index].jacobian = NULL;
  
  /* write column ptr of compressed sparse column*/
  data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[0] = 2;
  data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[1] = 1;
  data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[2] = 3;
  for(i=1;i<3;++i)
      data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[i] += data->simulationInfo.analyticJacobians[index].sparsePattern.leadindex[i-1];
  
  
  /* call functions to write index for each cref */
  MoonLanding_initialAnalyticJacobianA_0(data, index);
  MoonLanding_initialAnalyticJacobianA_1(data, index);
  MoonLanding_initialAnalyticJacobianA_2(data, index);
  
  /* write color array */
  data->simulationInfo.analyticJacobians[index].sparsePattern.colorCols[2] = 1;
  data->simulationInfo.analyticJacobians[index].sparsePattern.colorCols[0] = 2;
  data->simulationInfo.analyticJacobians[index].sparsePattern.colorCols[1] = 3;
  
  TRACE_POP
  return 0;
}

int MoonLanding_functionJacD_column(void* data)
{
  TRACE_PUSH
  TRACE_POP
  return 0;
}
int MoonLanding_functionJacC_column(void* data)
{
  TRACE_PUSH
  TRACE_POP
  return 0;
}
int MoonLanding_functionJacB_column(void* data)
{
  TRACE_PUSH
  TRACE_POP
  return 0;
}
int MoonLanding_functionJacA_column(void* inData)
{
  TRACE_PUSH

  DATA* data = ((DATA*)inData);
  int index = MoonLanding_INDEX_JAC_A;
  
  TRACE_POP
  return 0;
}


