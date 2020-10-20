/* Initialization */
#include "DTS_model.h"
#include "DTS_11mix.h"
#include "DTS_12jac.h"
#if defined(__cplusplus)
extern "C" {
#endif

void DTS_functionInitialEquations_0(DATA *data, threadData_t *threadData);

/*
 equation index: 1
 type: SIMPLE_ASSIGN
 $whenCondition1 = false
 */
void DTS_eqFunction_1(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,1};
  data->localData[0]->booleanVars[0] /* $whenCondition1 DISCRETE */ = 0;
  TRACE_POP
}

/*
 equation index: 2
 type: SIMPLE_ASSIGN
 x[1] = 1.0
 */
void DTS_eqFunction_2(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,2};
  data->localData[0]->realVars[0] /* x[1] DISCRETE */ = 1.0;
  TRACE_POP
}

/*
 equation index: 3
 type: SIMPLE_ASSIGN
 $PRE._x[1] = x[1]
 */
void DTS_eqFunction_3(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,3};
  data->simulationInfo->realVarsPre[0] /* x[1] DISCRETE */ = data->localData[0]->realVars[0] /* x[1] DISCRETE */;
  TRACE_POP
}

/*
 equation index: 4
 type: SIMPLE_ASSIGN
 x[2] = 2.0
 */
void DTS_eqFunction_4(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,4};
  data->localData[0]->realVars[1] /* x[2] DISCRETE */ = 2.0;
  TRACE_POP
}

/*
 equation index: 5
 type: SIMPLE_ASSIGN
 $PRE._x[2] = x[2]
 */
void DTS_eqFunction_5(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,5};
  data->simulationInfo->realVarsPre[1] /* x[2] DISCRETE */ = data->localData[0]->realVars[1] /* x[2] DISCRETE */;
  TRACE_POP
}
OMC_DISABLE_OPT
void DTS_functionInitialEquations_0(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  DTS_eqFunction_1(data, threadData);
  DTS_eqFunction_2(data, threadData);
  DTS_eqFunction_3(data, threadData);
  DTS_eqFunction_4(data, threadData);
  DTS_eqFunction_5(data, threadData);
  TRACE_POP
}


int DTS_functionInitialEquations(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  data->simulationInfo->discreteCall = 1;
  DTS_functionInitialEquations_0(data, threadData);
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}


int DTS_functionInitialEquations_lambda0(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  data->simulationInfo->discreteCall = 1;
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}
int DTS_functionRemovedInitialEquations(DATA *data, threadData_t *threadData)
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

