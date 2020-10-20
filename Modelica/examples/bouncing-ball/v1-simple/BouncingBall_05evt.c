/* Events: Sample, Zero Crossings, Relations, Discrete Changes */
#include "BouncingBall_model.h"
#if defined(__cplusplus)
extern "C" {
#endif

/* Initializes the raw time events of the simulation using the now
   calcualted parameters. */
void BouncingBall_function_initSample(DATA *data, threadData_t *threadData)
{
  long i=0;
}

const char *BouncingBall_zeroCrossingDescription(int i, int **out_EquationIndexes)
{
  static const char *res[] = {"h < 0.0"};
  static const int occurEqs0[] = {1,7};
  static const int *occurEqs[] = {occurEqs0};
  *out_EquationIndexes = (int*) occurEqs[i];
  return res[i];
}

/* forwarded equations */
extern void BouncingBall_eqFunction_8(DATA* data, threadData_t *threadData);
extern void BouncingBall_eqFunction_9(DATA* data, threadData_t *threadData);

int BouncingBall_function_ZeroCrossingsEquations(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  data->simulationInfo->callStatistics.functionZeroCrossingsEquations++;

  BouncingBall_eqFunction_8(data, threadData);

  BouncingBall_eqFunction_9(data, threadData);
  
  TRACE_POP
  return 0;
}

int BouncingBall_function_ZeroCrossings(DATA *data, threadData_t *threadData, double *gout)
{
  TRACE_PUSH
  modelica_boolean tmp0;
  
  data->simulationInfo->callStatistics.functionZeroCrossings++;
  
  tmp0 = LessZC(data->localData[0]->realVars[0] /* h STATE(1,v) */, 0.0, data->simulationInfo->storedRelations[0]);
  gout[0] = (tmp0) ? 1 : -1;
  
  TRACE_POP
  return 0;
}

const char *BouncingBall_relationDescription(int i)
{
  const char *res[] = {"h < 0.0"};
  return res[i];
}

int BouncingBall_function_updateRelations(DATA *data, threadData_t *threadData, int evalforZeroCross)
{
  TRACE_PUSH
  modelica_boolean tmp1;
  
  if(evalforZeroCross) {
    tmp1 = LessZC(data->localData[0]->realVars[0] /* h STATE(1,v) */, 0.0, data->simulationInfo->storedRelations[0]);
    data->simulationInfo->relations[0] = tmp1;
  } else {
    data->simulationInfo->relations[0] = (data->localData[0]->realVars[0] /* h STATE(1,v) */ < 0.0);
  }
  
  TRACE_POP
  return 0;
}

#if defined(__cplusplus)
}
#endif

