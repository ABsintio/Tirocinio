/* Events: Sample, Zero Crossings, Relations, Discrete Changes */
#include "MoonLanding_model.h"
#if defined(__cplusplus)
extern "C" {
#endif

/* Initializes the raw time events of the simulation using the now
   calcualted parameters. */
void MoonLanding_function_initSample(DATA *data, threadData_t *threadData)
{
  long i=0;
  /* sample 1 */
  data->modelData->samplesInfo[i].index = 1;
  data->modelData->samplesInfo[i].start = 0.0;
  data->modelData->samplesInfo[i].interval = data->simulationInfo->realParameter[4];
  assertStreamPrint(threadData,data->modelData->samplesInfo[i].interval > 0.0, "sample-interval <= 0.0");
  i++;
}

const char *MoonLanding_zeroCrossingDescription(int i, int **out_EquationIndexes)
{
  *out_EquationIndexes = NULL;
  return "empty";
}

/* forwarded equations */

int MoonLanding_function_ZeroCrossingsEquations(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  data->simulationInfo->callStatistics.functionZeroCrossingsEquations++;

  
  TRACE_POP
  return 0;
}

int MoonLanding_function_ZeroCrossings(DATA *data, threadData_t *threadData, double *gout)
{
  TRACE_PUSH
  
  data->simulationInfo->callStatistics.functionZeroCrossings++;
  
  
  TRACE_POP
  return 0;
}

const char *MoonLanding_relationDescription(int i)
{
  return "empty";
}

int MoonLanding_function_updateRelations(DATA *data, threadData_t *threadData, int evalforZeroCross)
{
  TRACE_PUSH
  
  if(evalforZeroCross) {
  } else {
  }
  
  TRACE_POP
  return 0;
}

#if defined(__cplusplus)
}
#endif

