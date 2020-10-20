#ifndef MoonLanding__H
#define MoonLanding__H
#include "meta/meta_modelica.h"
#include "util/modelica.h"
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

#include "simulation/simulation_runtime.h"
#ifdef __cplusplus
extern "C" {
#endif


DLLExport
modelica_real omc_MoonLanding_autopilot1(threadData_t *threadData, modelica_real _x, modelica_real _decreasetime, modelica_real _endtime, modelica_real _f1, modelica_real _f2);
DLLExport
modelica_metatype boxptr_MoonLanding_autopilot1(threadData_t *threadData, modelica_metatype _x, modelica_metatype _decreasetime, modelica_metatype _endtime, modelica_metatype _f1, modelica_metatype _f2);
static const MMC_DEFSTRUCTLIT(boxvar_lit_MoonLanding_autopilot1,2,0) {(void*) boxptr_MoonLanding_autopilot1,0}};
#define boxvar_MoonLanding_autopilot1 MMC_REFSTRUCTLIT(boxvar_lit_MoonLanding_autopilot1)


#ifdef __cplusplus
}
#endif
#endif

