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
modelica_real omc_ECU_ad(threadData_t *threadData, modelica_real _x);
DLLExport
modelica_metatype boxptr_ECU_ad(threadData_t *threadData, modelica_metatype _x);
static const MMC_DEFSTRUCTLIT(boxvar_lit_ECU_ad,2,0) {(void*) boxptr_ECU_ad,0}};
#define boxvar_ECU_ad MMC_REFSTRUCTLIT(boxvar_lit_ECU_ad)


DLLExport
modelica_real omc_ECU_autopilot7(threadData_t *threadData, modelica_real _h, modelica_real _v, modelica_real _f1, modelica_real _f2, modelica_real _oldval);
DLLExport
modelica_metatype boxptr_ECU_autopilot7(threadData_t *threadData, modelica_metatype _h, modelica_metatype _v, modelica_metatype _f1, modelica_metatype _f2, modelica_metatype _oldval);
static const MMC_DEFSTRUCTLIT(boxvar_lit_ECU_autopilot7,2,0) {(void*) boxptr_ECU_autopilot7,0}};
#define boxvar_ECU_autopilot7 MMC_REFSTRUCTLIT(boxvar_lit_ECU_autopilot7)
#include "MoonLanding_model.h"


#ifdef __cplusplus
}
#endif
#endif

