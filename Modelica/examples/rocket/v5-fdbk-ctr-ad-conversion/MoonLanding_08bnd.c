/* update bound parameters and variable attributes (start, nominal, min, max) */
#include "MoonLanding_model.h"
#if defined(__cplusplus)
extern "C" {
#endif

OMC_DISABLE_OPT
int MoonLanding_updateBoundVariableAttributes(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  /* min ******************************************************** */
  
  infoStreamPrint(LOG_INIT, 1, "updating min-values");
  if (ACTIVE_STREAM(LOG_INIT)) messageClose(LOG_INIT);
  
  /* max ******************************************************** */
  
  infoStreamPrint(LOG_INIT, 1, "updating max-values");
  if (ACTIVE_STREAM(LOG_INIT)) messageClose(LOG_INIT);
  
  /* nominal **************************************************** */
  
  infoStreamPrint(LOG_INIT, 1, "updating nominal-values");
  if (ACTIVE_STREAM(LOG_INIT)) messageClose(LOG_INIT);
  
  /* start ****************************************************** */
  infoStreamPrint(LOG_INIT, 1, "updating primary start-values");
  if (ACTIVE_STREAM(LOG_INIT)) messageClose(LOG_INIT);
  
  TRACE_POP
  return 0;
}

OMC_DISABLE_OPT
int MoonLanding_updateBoundParameters(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  data->simulationInfo->realParameter[9] = 43.2;
  data->modelData->realParameterData[9].time_unvarying = 1;
  data->simulationInfo->realParameter[10] = 210.0;
  data->modelData->realParameterData[10].time_unvarying = 1;
  TRACE_POP
  return 0;
}

#if defined(__cplusplus)
}
#endif

