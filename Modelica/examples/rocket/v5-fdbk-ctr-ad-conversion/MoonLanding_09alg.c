/* Algebraic */
#include "MoonLanding_model.h"

#ifdef __cplusplus
extern "C" {
#endif


/* forwarded equations */
extern void MoonLanding_eqFunction_27(DATA* data, threadData_t *threadData);
extern void MoonLanding_eqFunction_26(DATA* data, threadData_t *threadData);

static void functionAlg_system0(DATA *data, threadData_t *threadData)
{
  MoonLanding_eqFunction_27(data, threadData);

  MoonLanding_eqFunction_26(data, threadData);
}
/* for continuous time variables */
int MoonLanding_functionAlgebraics(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  
  data->simulationInfo->callStatistics.functionAlgebraics++;
  
  functionAlg_system0(data, threadData);

  MoonLanding_function_savePreSynchronous(data, threadData);
  
  TRACE_POP
  return 0;
}

#ifdef __cplusplus
}
#endif
