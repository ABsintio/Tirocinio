/* Initialization */
#include "MoonLanding_model.h"
#include "MoonLanding_11mix.h"
#include "MoonLanding_12jac.h"
#if defined(__cplusplus)
extern "C" {
#endif

void MoonLanding_functionInitialEquations_0(DATA *data, threadData_t *threadData);

/*
 equation index: 1
 type: SIMPLE_ASSIGN
 ctr._initial_altitude = apollo.initial_altitude
 */
void MoonLanding_eqFunction_1(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,1};
  data->localData[0]->realVars[8] /* ctr.initial_altitude variable */ = data->simulationInfo->realParameter[0];
  TRACE_POP
}

/*
 equation index: 2
 type: SIMPLE_ASSIGN
 ctr._altitude = ctr.initial_altitude
 */
void MoonLanding_eqFunction_2(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,2};
  data->localData[0]->realVars[10] /* ctr.altitude DISCRETE */ = data->localData[0]->realVars[8] /* ctr.initial_altitude variable */;
  TRACE_POP
}

/*
 equation index: 3
 type: SIMPLE_ASSIGN
 $PRE._ctr._altitude = ctr.altitude
 */
void MoonLanding_eqFunction_3(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,3};
  data->simulationInfo->realVarsPre[10] /* ctr.altitude DISCRETE */ = data->localData[0]->realVars[10] /* ctr.altitude DISCRETE */;
  TRACE_POP
}

/*
 equation index: 4
 type: SIMPLE_ASSIGN
 ctr._initial_velocity = apollo.initial_velocity
 */
void MoonLanding_eqFunction_4(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,4};
  data->localData[0]->realVars[9] /* ctr.initial_velocity variable */ = data->simulationInfo->realParameter[1];
  TRACE_POP
}

/*
 equation index: 5
 type: SIMPLE_ASSIGN
 ctr._velocity = ctr.initial_velocity
 */
void MoonLanding_eqFunction_5(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,5};
  data->localData[0]->realVars[14] /* ctr.velocity DISCRETE */ = data->localData[0]->realVars[9] /* ctr.initial_velocity variable */;
  TRACE_POP
}

/*
 equation index: 6
 type: SIMPLE_ASSIGN
 $PRE._ctr._velocity = ctr.velocity
 */
void MoonLanding_eqFunction_6(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,6};
  data->simulationInfo->realVarsPre[14] /* ctr.velocity DISCRETE */ = data->localData[0]->realVars[14] /* ctr.velocity DISCRETE */;
  TRACE_POP
}

/*
 equation index: 7
 type: SIMPLE_ASSIGN
 $PRE._ctr._thrust = $START.ctr.thrust
 */
void MoonLanding_eqFunction_7(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,7};
  data->simulationInfo->realVarsPre[13] /* ctr.thrust DISCRETE */ = data->modelData->realVarsData[13].attribute /* ctr.thrust DISCRETE */.start;
  TRACE_POP
}

/*
 equation index: 8
 type: SIMPLE_ASSIGN
 ctr._thrust = $PRE.ctr.thrust
 */
void MoonLanding_eqFunction_8(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,8};
  data->localData[0]->realVars[13] /* ctr.thrust DISCRETE */ = data->simulationInfo->realVarsPre[13] /* ctr.thrust DISCRETE */;
  TRACE_POP
}

/*
 equation index: 9
 type: SIMPLE_ASSIGN
 der(apollo._mass) = (-apollo.massLossRate) * abs(ctr.thrust)
 */
void MoonLanding_eqFunction_9(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,9};
  data->localData[0]->realVars[4] /* der(apollo.mass) STATE_DER */ = ((-data->simulationInfo->realParameter[3])) * (fabs(data->localData[0]->realVars[13] /* ctr.thrust DISCRETE */));
  TRACE_POP
}

/*
 equation index: 10
 type: SIMPLE_ASSIGN
 apollo._altitude = apollo.initial_altitude
 */
void MoonLanding_eqFunction_10(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,10};
  data->localData[0]->realVars[0] /* apollo.altitude STATE(1,apollo.velocity) */ = data->simulationInfo->realParameter[0];
  TRACE_POP
}

/*
 equation index: 11
 type: SIMPLE_ASSIGN
 apollo._gravity = 6.672e-11 * DIVISION(moon.mass, (apollo.altitude + moon.radius) ^ 2.0)
 */
void MoonLanding_eqFunction_11(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,11};
  modelica_real tmp0;
  tmp0 = data->localData[0]->realVars[0] /* apollo.altitude STATE(1,apollo.velocity) */ + data->simulationInfo->realParameter[8];
  data->localData[0]->realVars[6] /* apollo.gravity variable */ = (6.672e-11) * (DIVISION_SIM(data->simulationInfo->realParameter[7],(tmp0 * tmp0),"(apollo.altitude + moon.radius) ^ 2.0",equationIndexes));
  TRACE_POP
}

/*
 equation index: 12
 type: SIMPLE_ASSIGN
 apollo._mass = apollo.initialmass
 */
void MoonLanding_eqFunction_12(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,12};
  data->localData[0]->realVars[1] /* apollo.mass STATE(1) */ = data->simulationInfo->realParameter[2];
  TRACE_POP
}

/*
 equation index: 13
 type: SIMPLE_ASSIGN
 ctr._acceleration = DIVISION(ctr.thrust - apollo.mass * apollo.gravity, apollo.mass)
 */
void MoonLanding_eqFunction_13(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,13};
  data->localData[0]->realVars[7] /* ctr.acceleration variable */ = DIVISION_SIM(data->localData[0]->realVars[13] /* ctr.thrust DISCRETE */ - ((data->localData[0]->realVars[1] /* apollo.mass STATE(1) */) * (data->localData[0]->realVars[6] /* apollo.gravity variable */)),data->localData[0]->realVars[1] /* apollo.mass STATE(1) */,"apollo.mass",equationIndexes);
  TRACE_POP
}

/*
 equation index: 14
 type: SIMPLE_ASSIGN
 der(apollo._velocity) = ctr.acceleration
 */
void MoonLanding_eqFunction_14(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,14};
  data->localData[0]->realVars[5] /* der(apollo.velocity) STATE_DER */ = data->localData[0]->realVars[7] /* ctr.acceleration variable */;
  TRACE_POP
}

/*
 equation index: 15
 type: ALGORITHM
 
   $whenCondition1 := $START.$whenCondition1;
   $whenCondition1 := false;
 */
void MoonLanding_eqFunction_15(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,15};
  data->localData[0]->booleanVars[0] /* $whenCondition1 DISCRETE */ = data->modelData->booleanVarsData[0].attribute /* $whenCondition1 DISCRETE */.start;

  data->localData[0]->booleanVars[0] /* $whenCondition1 DISCRETE */ = 0;
  TRACE_POP
}

/*
 equation index: 16
 type: SIMPLE_ASSIGN
 apollo._velocity = apollo.initial_velocity
 */
void MoonLanding_eqFunction_16(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,16};
  data->localData[0]->realVars[2] /* apollo.velocity STATE(1,ctr.acceleration) */ = data->simulationInfo->realParameter[1];
  TRACE_POP
}

/*
 equation index: 17
 type: SIMPLE_ASSIGN
 der(apollo._altitude) = apollo.velocity
 */
void MoonLanding_eqFunction_17(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,17};
  data->localData[0]->realVars[3] /* der(apollo.altitude) STATE_DER */ = data->localData[0]->realVars[2] /* apollo.velocity STATE(1,ctr.acceleration) */;
  TRACE_POP
}

/*
 equation index: 18
 type: SIMPLE_ASSIGN
 ctr._counter = 0.0
 */
void MoonLanding_eqFunction_18(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,18};
  data->localData[0]->integerVars[0] /* ctr.counter DISCRETE */ = 0.0;
  TRACE_POP
}

/*
 equation index: 19
 type: SIMPLE_ASSIGN
 $PRE._ctr._counter = ctr.counter
 */
void MoonLanding_eqFunction_19(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,19};
  data->simulationInfo->integerVarsPre[0] /* ctr.counter DISCRETE */ = (modelica_integer)data->localData[0]->integerVars[0] /* ctr.counter DISCRETE */;
  TRACE_POP
}

/*
 equation index: 20
 type: SIMPLE_ASSIGN
 $PRE._ctr._vstep = $START.ctr.vstep
 */
void MoonLanding_eqFunction_20(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,20};
  data->simulationInfo->realVarsPre[15] /* ctr.vstep DISCRETE */ = data->modelData->realVarsData[15].attribute /* ctr.vstep DISCRETE */.start;
  TRACE_POP
}

/*
 equation index: 21
 type: SIMPLE_ASSIGN
 ctr._vstep = $PRE.ctr.vstep
 */
void MoonLanding_eqFunction_21(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,21};
  data->localData[0]->realVars[15] /* ctr.vstep DISCRETE */ = data->simulationInfo->realVarsPre[15] /* ctr.vstep DISCRETE */;
  TRACE_POP
}

/*
 equation index: 22
 type: SIMPLE_ASSIGN
 $PRE._ctr._astep = $START.ctr.astep
 */
void MoonLanding_eqFunction_22(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,22};
  data->simulationInfo->realVarsPre[11] /* ctr.astep DISCRETE */ = data->modelData->realVarsData[11].attribute /* ctr.astep DISCRETE */.start;
  TRACE_POP
}

/*
 equation index: 23
 type: SIMPLE_ASSIGN
 ctr._astep = $PRE.ctr.astep
 */
void MoonLanding_eqFunction_23(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,23};
  data->localData[0]->realVars[11] /* ctr.astep DISCRETE */ = data->simulationInfo->realVarsPre[11] /* ctr.astep DISCRETE */;
  TRACE_POP
}

/*
 equation index: 24
 type: SIMPLE_ASSIGN
 $PRE._ctr._history = $START.ctr.history
 */
void MoonLanding_eqFunction_24(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,24};
  data->simulationInfo->realVarsPre[12] /* ctr.history DISCRETE */ = data->modelData->realVarsData[12].attribute /* ctr.history DISCRETE */.start;
  TRACE_POP
}

/*
 equation index: 25
 type: SIMPLE_ASSIGN
 ctr._history = $PRE.ctr.history
 */
void MoonLanding_eqFunction_25(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,25};
  data->localData[0]->realVars[12] /* ctr.history DISCRETE */ = data->simulationInfo->realVarsPre[12] /* ctr.history DISCRETE */;
  TRACE_POP
}
OMC_DISABLE_OPT
void MoonLanding_functionInitialEquations_0(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  MoonLanding_eqFunction_1(data, threadData);
  MoonLanding_eqFunction_2(data, threadData);
  MoonLanding_eqFunction_3(data, threadData);
  MoonLanding_eqFunction_4(data, threadData);
  MoonLanding_eqFunction_5(data, threadData);
  MoonLanding_eqFunction_6(data, threadData);
  MoonLanding_eqFunction_7(data, threadData);
  MoonLanding_eqFunction_8(data, threadData);
  MoonLanding_eqFunction_9(data, threadData);
  MoonLanding_eqFunction_10(data, threadData);
  MoonLanding_eqFunction_11(data, threadData);
  MoonLanding_eqFunction_12(data, threadData);
  MoonLanding_eqFunction_13(data, threadData);
  MoonLanding_eqFunction_14(data, threadData);
  MoonLanding_eqFunction_15(data, threadData);
  MoonLanding_eqFunction_16(data, threadData);
  MoonLanding_eqFunction_17(data, threadData);
  MoonLanding_eqFunction_18(data, threadData);
  MoonLanding_eqFunction_19(data, threadData);
  MoonLanding_eqFunction_20(data, threadData);
  MoonLanding_eqFunction_21(data, threadData);
  MoonLanding_eqFunction_22(data, threadData);
  MoonLanding_eqFunction_23(data, threadData);
  MoonLanding_eqFunction_24(data, threadData);
  MoonLanding_eqFunction_25(data, threadData);
  TRACE_POP
}


int MoonLanding_functionInitialEquations(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  data->simulationInfo->discreteCall = 1;
  MoonLanding_functionInitialEquations_0(data, threadData);
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}


int MoonLanding_functionInitialEquations_lambda0(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  data->simulationInfo->discreteCall = 1;
  data->simulationInfo->discreteCall = 0;
  
  TRACE_POP
  return 0;
}
int MoonLanding_functionRemovedInitialEquations(DATA *data, threadData_t *threadData)
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

