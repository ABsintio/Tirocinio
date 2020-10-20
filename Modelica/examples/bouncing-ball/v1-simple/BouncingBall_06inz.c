/* Initialization */
#include "BouncingBall_model.h"
#include "BouncingBall_11mix.h"
#include "BouncingBall_12jac.h"
#if defined(__cplusplus)
extern "C" {
#endif

void BouncingBall_functionInitialEquations_0(DATA *data, threadData_t *threadData);

/*
 equation index: 1
 type: SIMPLE_ASSIGN
 v = $START.v
 */
void BouncingBall_eqFunction_1(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,1};
  data->localData[0]->realVars[1] /* v STATE(1) */ = data->modelData->realVarsData[1].attribute /* v STATE(1) */.start;
  TRACE_POP
}

/*
 equation index: 2
 type: SIMPLE_ASSIGN
 der(h) = v
 */
void BouncingBall_eqFunction_2(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,2};
  data->localData[0]->realVars[2] /* der(h) STATE_DER */ = data->localData[0]->realVars[1] /* v STATE(1) */;
  TRACE_POP
}

/*
 equation index: 3
 type: SIMPLE_ASSIGN
 $PRE._v = v
 */
void BouncingBall_eqFunction_3(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,3};
  data->simulationInfo->realVarsPre[1] /* v STATE(1) */ = data->localData[0]->realVars[1] /* v STATE(1) */;
  TRACE_POP
}

/*
 equation index: 4
 type: SIMPLE_ASSIGN
 der(v) = -9.81
 */
void BouncingBall_eqFunction_4(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,4};
  data->localData[0]->realVars[3] /* der(v) STATE_DER */ = -9.81;
  TRACE_POP
}

/*
 equation index: 5
 type: SIMPLE_ASSIGN
 h = h0
 */
void BouncingBall_eqFunction_5(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,5};
  data->localData[0]->realVars[0] /* h STATE(1,v) */ = data->simulationInfo->realParameter[1];
  TRACE_POP
}

/*
 equation index: 6
 type: SIMPLE_ASSIGN
 $whenCondition1 = h < 0.0
 */
void BouncingBall_eqFunction_6(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,6};
  modelica_boolean tmp0;
  tmp0 = Less(data->localData[0]->realVars[0] /* h STATE(1,v) */,0.0);
  data->localData[0]->booleanVars[0] /* $whenCondition1 DISCRETE */ = tmp0;
  TRACE_POP
}
OMC_DISABLE_OPT
void BouncingBall_functionInitialEquations_0(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  BouncingBall_eqFunction_1(data, threadData);
  BouncingBall_eqFunction_2(data, threadData);
  BouncingBall_eqFunction_3(data, threadData);
  BouncingBall_eqFunction_4(data, threadData);
  BouncingBall_eqFunction_5(data, threadData);
  BouncingBall_eqFunction_6(data, threadData);
  TRACE_POP
}


int BouncingBall_functionInitialEquations(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  data->simulationInfo->discreteCall = 1;
  BouncingBall_functionInitialEquations_0(data, threadData);
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}


int BouncingBall_functionInitialEquations_lambda0(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  data->simulationInfo->discreteCall = 1;
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}
int BouncingBall_functionRemovedInitialEquations(DATA *data, threadData_t *threadData)
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

