/* Algebraic */
#include "BIOMD033.Brown2004_NGF_EGF_signaling_model.h"

#ifdef __cplusplus
extern "C" {
#endif


/* forwarded equations */
extern void BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_467(DATA* data, threadData_t *threadData);

static void functionAlg_system0(DATA *data, threadData_t *threadData)
{
    BIOMD033_Brown2004_NGF_EGF_signaling_eqFunction_467(data, threadData);
}
/* for continuous time variables */
int BIOMD033_Brown2004_NGF_EGF_signaling_functionAlgebraics(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH

#if !defined(OMC_MINIMAL_RUNTIME)
  if (measure_time_flag) rt_tick(SIM_TIMER_ALGEBRAICS);
#endif
  data->simulationInfo->callStatistics.functionAlgebraics++;

  functionAlg_system0(data, threadData);

  BIOMD033_Brown2004_NGF_EGF_signaling_function_savePreSynchronous(data, threadData);
  
#if !defined(OMC_MINIMAL_RUNTIME)
  if (measure_time_flag) rt_accumulate(SIM_TIMER_ALGEBRAICS);
#endif

  TRACE_POP
  return 0;
}

#ifdef __cplusplus
}
#endif
