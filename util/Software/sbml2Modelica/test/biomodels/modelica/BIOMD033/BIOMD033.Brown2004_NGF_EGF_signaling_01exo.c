/* External objects file */
#include "BIOMD033.Brown2004_NGF_EGF_signaling_model.h"
#if defined(__cplusplus)
extern "C" {
#endif

void BIOMD033_Brown2004_NGF_EGF_signaling_callExternalObjectDestructors(DATA *data, threadData_t *threadData)
{
  if(data->simulationInfo->extObjs)
  {
    free(data->simulationInfo->extObjs);
    data->simulationInfo->extObjs = 0;
  }
}
#if defined(__cplusplus)
}
#endif

