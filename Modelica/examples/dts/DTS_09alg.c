/* Algebraic */
#include "DTS_model.h"

#ifdef __cplusplus
extern "C" {
#endif


/* forwarded equations */
extern void DTS_eqFunction_6(DATA* data, threadData_t *threadData);

static void functionAlg_system0(DATA *data, threadData_t *threadData)
{
  DTS_eqFunction_6(data, threadData);
}
/* for continuous time variables */
int DTS_functionAlgebraics(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  
  data->simulationInfo->callStatistics.functionAlgebraics++;
  
  functionAlg_system0(data, threadData);

  DTS_function_savePreSynchronous(data, threadData);
  
  TRACE_POP
  return 0;
}

#ifdef __cplusplus
}
#endif
