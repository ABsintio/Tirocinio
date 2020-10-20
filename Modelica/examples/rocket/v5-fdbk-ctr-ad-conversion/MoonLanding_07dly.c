/* Delay */
#include "MoonLanding_model.h"
#if defined(__cplusplus)
extern "C" {
#endif

int MoonLanding_function_storeDelayed(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

  storeDelayedExpression(data, threadData, 0, data->localData[0]->realVars[0] /* apollo.altitude STATE(1,apollo.velocity) */, data->localData[0]->timeValue, (((modelica_real)((modelica_integer)data->simulationInfo->integerParameter[0]))) * (data->simulationInfo->realParameter[4]), (((modelica_real)((modelica_integer)data->simulationInfo->integerParameter[0]))) * (data->simulationInfo->realParameter[4]));
  
  TRACE_POP
  return 0;
}

#if defined(__cplusplus)
}
#endif

