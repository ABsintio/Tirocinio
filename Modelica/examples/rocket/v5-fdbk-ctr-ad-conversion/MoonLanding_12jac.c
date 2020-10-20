/* Jacobians 4 */
#include "MoonLanding_model.h"
#include "MoonLanding_12jac.h"
int MoonLanding_initialAnalyticJacobianD(void* inData, threadData_t *threadData)
{
  TRACE_PUSH
  TRACE_POP
  return 1;
}
int MoonLanding_initialAnalyticJacobianC(void* inData, threadData_t *threadData)
{
  TRACE_PUSH
  TRACE_POP
  return 1;
}
int MoonLanding_initialAnalyticJacobianB(void* inData, threadData_t *threadData)
{
  TRACE_PUSH
  TRACE_POP
  return 1;
}
OMC_DISABLE_OPT
int MoonLanding_initialAnalyticJacobianA(void* inData, threadData_t *threadData)
{
  TRACE_PUSH
  DATA* data = ((DATA*)inData);
  int index = MoonLanding_INDEX_JAC_A;
  const int colPtrIndex[1+3] = {0,2,2,1};
  const int rowIndex[5] = {1,2,1,2,0};
  int i = 0;
  
  data->simulationInfo->analyticJacobians[index].sizeCols = 3;
  data->simulationInfo->analyticJacobians[index].sizeRows = 3;
  data->simulationInfo->analyticJacobians[index].sizeTmpVars = 0;
  data->simulationInfo->analyticJacobians[index].seedVars = (modelica_real*) calloc(3,sizeof(modelica_real));
  data->simulationInfo->analyticJacobians[index].resultVars = (modelica_real*) calloc(3,sizeof(modelica_real));
  data->simulationInfo->analyticJacobians[index].tmpVars = (modelica_real*) calloc(0,sizeof(modelica_real));
  data->simulationInfo->analyticJacobians[index].sparsePattern.leadindex = (unsigned int*) malloc((3+1)*sizeof(int));
  data->simulationInfo->analyticJacobians[index].sparsePattern.index = (unsigned int*) malloc(5*sizeof(int));
  data->simulationInfo->analyticJacobians[index].sparsePattern.numberOfNoneZeros = 5;
  data->simulationInfo->analyticJacobians[index].sparsePattern.colorCols = (unsigned int*) malloc(3*sizeof(int));
  data->simulationInfo->analyticJacobians[index].sparsePattern.maxColors = 2;
  data->simulationInfo->analyticJacobians[index].jacobian = NULL;
  
  /* write lead index of compressed sparse column */
  memcpy(data->simulationInfo->analyticJacobians[index].sparsePattern.leadindex, colPtrIndex, (3+1)*sizeof(int));
  
  for(i=2;i<3+1;++i)
    data->simulationInfo->analyticJacobians[index].sparsePattern.leadindex[i] += data->simulationInfo->analyticJacobians[index].sparsePattern.leadindex[i-1];
  
  /* call sparse index */
  memcpy(data->simulationInfo->analyticJacobians[index].sparsePattern.index, rowIndex, 5*sizeof(int));
  
  /* write color array */
  data->simulationInfo->analyticJacobians[index].sparsePattern.colorCols[0] = 1;
  data->simulationInfo->analyticJacobians[index].sparsePattern.colorCols[1] = 2;
  data->simulationInfo->analyticJacobians[index].sparsePattern.colorCols[2] = 2;
  TRACE_POP
  return 0;
}

int MoonLanding_functionJacD_column(void* data, threadData_t *threadData)
{
  TRACE_PUSH
  TRACE_POP
  return 0;
}
int MoonLanding_functionJacC_column(void* data, threadData_t *threadData)
{
  TRACE_PUSH
  TRACE_POP
  return 0;
}
int MoonLanding_functionJacB_column(void* data, threadData_t *threadData)
{
  TRACE_PUSH
  TRACE_POP
  return 0;
}
int MoonLanding_functionJacA_column(void* inData, threadData_t *threadData)
{
  TRACE_PUSH

  DATA* data = ((DATA*)inData);
  int index = MoonLanding_INDEX_JAC_A;
  
  TRACE_POP
  return 0;
}


