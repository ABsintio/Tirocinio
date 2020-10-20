/* Non Linear Systems */
#include "MoonLanding_model.h"
#include "MoonLanding_12jac.h"
#if defined(__cplusplus)
extern "C" {
#endif

/* inner equations */

/*
 equation index: 30
 type: ALGORITHM
 
   ctr.thrust := pre(ctr.thrust);
   ctr.history := pre(ctr.history);
   ctr.velocity := pre(ctr.velocity);
   ctr.altitude := pre(ctr.altitude);
   ctr.astep := pre(ctr.astep);
   ctr.vstep := pre(ctr.vstep);
   ctr.counter := pre(ctr.counter);
   $whenCondition1 := pre($whenCondition1);
   $whenCondition1 := sample(1, 0.0, ctr.T);
   when $whenCondition1 then
     ctr.counter := if pre(ctr.counter) == ctr.altitude_sampling then 0 else 1 + pre(ctr.counter);
     ctr.vstep := ctr.T * ctr.velocity;
     ctr.astep := ECU.ad(ctr.acceleration);
     ctr.altitude := if pre(ctr.counter) == 0 then apollo.altitude else pre(ctr.altitude) + ctr.T * ctr.velocity;
     ctr.velocity := if pre(ctr.counter) == 0 then (apollo.altitude - delay(0, apollo.altitude, (*Real*)(ctr.altitude_sampling) * ctr.T, (*Real*)(ctr.altitude_sampling) * ctr.T)) / (ctr.T * (*Real*)(ctr.altitude_sampling)) else pre(ctr.velocity) + ctr.T * ctr.astep;
     ctr.history := pre(ctr.thrust);
     ctr.thrust := ECU.autopilot7(ctr.altitude, ctr.velocity, force1, force2, ctr.history);
   end when;
 */
void MoonLanding_eqFunction_30(DATA *data, threadData_t *threadData)
{
  TRACE_PUSH
  const int equationIndexes[2] = {1,30};
  modelica_real tmp3;
  modelica_real tmp4;
  modelica_boolean tmp5;
  modelica_real tmp6;
  data->localData[0]->realVars[13] /* ctr.thrust DISCRETE */ = data->simulationInfo->realVarsPre[13] /* ctr.thrust DISCRETE */;

  data->localData[0]->realVars[12] /* ctr.history DISCRETE */ = data->simulationInfo->realVarsPre[12] /* ctr.history DISCRETE */;

  data->localData[0]->realVars[14] /* ctr.velocity DISCRETE */ = data->simulationInfo->realVarsPre[14] /* ctr.velocity DISCRETE */;

  data->localData[0]->realVars[10] /* ctr.altitude DISCRETE */ = data->simulationInfo->realVarsPre[10] /* ctr.altitude DISCRETE */;

  data->localData[0]->realVars[11] /* ctr.astep DISCRETE */ = data->simulationInfo->realVarsPre[11] /* ctr.astep DISCRETE */;

  data->localData[0]->realVars[15] /* ctr.vstep DISCRETE */ = data->simulationInfo->realVarsPre[15] /* ctr.vstep DISCRETE */;

  data->localData[0]->integerVars[0] /* ctr.counter DISCRETE */ = data->simulationInfo->integerVarsPre[0] /* ctr.counter DISCRETE */;

  data->localData[0]->booleanVars[0] /* $whenCondition1 DISCRETE */ = data->simulationInfo->booleanVarsPre[0] /* $whenCondition1 DISCRETE */;

  data->localData[0]->booleanVars[0] /* $whenCondition1 DISCRETE */ = data->simulationInfo->samples[0];

  if(data->simulationInfo->discreteCall == 1)
  {
    if((data->localData[0]->booleanVars[0] /* $whenCondition1 DISCRETE */ && !data->simulationInfo->booleanVarsPre[0] /* $whenCondition1 DISCRETE */ /* edge */))
    {
      data->localData[0]->integerVars[0] /* ctr.counter DISCRETE */ = ((data->simulationInfo->integerVarsPre[0] /* ctr.counter DISCRETE */ == (modelica_integer)data->simulationInfo->integerParameter[0])?((modelica_integer) 0):((modelica_integer) 1) + data->simulationInfo->integerVarsPre[0] /* ctr.counter DISCRETE */);

      data->localData[0]->realVars[15] /* ctr.vstep DISCRETE */ = (data->simulationInfo->realParameter[4]) * (data->localData[0]->realVars[14] /* ctr.velocity DISCRETE */);

      data->localData[0]->realVars[11] /* ctr.astep DISCRETE */ = omc_ECU_ad(threadData, data->localData[0]->realVars[7] /* ctr.acceleration variable */);

      data->localData[0]->realVars[10] /* ctr.altitude DISCRETE */ = ((data->simulationInfo->integerVarsPre[0] /* ctr.counter DISCRETE */ == ((modelica_integer) 0))?data->localData[0]->realVars[0] /* apollo.altitude STATE(1,apollo.velocity) */:data->simulationInfo->realVarsPre[10] /* ctr.altitude DISCRETE */ + (data->simulationInfo->realParameter[4]) * (data->localData[0]->realVars[14] /* ctr.velocity DISCRETE */));

      tmp5 = (modelica_boolean)(data->simulationInfo->integerVarsPre[0] /* ctr.counter DISCRETE */ == ((modelica_integer) 0));
      if(tmp5)
      {
        tmp3 = delayImpl(data, threadData, 0, data->localData[0]->realVars[0] /* apollo.altitude STATE(1,apollo.velocity) */, data->localData[0]->timeValue, (((modelica_real)((modelica_integer)data->simulationInfo->integerParameter[0]))) * (data->simulationInfo->realParameter[4]), (((modelica_real)((modelica_integer)data->simulationInfo->integerParameter[0]))) * (data->simulationInfo->realParameter[4]));
        tmp4 = (data->simulationInfo->realParameter[4]) * (((modelica_real)((modelica_integer)data->simulationInfo->integerParameter[0])));
        if (tmp4 == 0) {throwStreamPrint(threadData, "Division by zero %s", "(apollo.altitude - delay(0, apollo.altitude, /*Real*/(ctr.altitude_sampling) * ctr.T, /*Real*/(ctr.altitude_sampling) * ctr.T)) / (ctr.T * /*Real*/(ctr.altitude_sampling))");}
        tmp6 = (data->localData[0]->realVars[0] /* apollo.altitude STATE(1,apollo.velocity) */ - tmp3) / tmp4;
      }
      else
      {
        tmp6 = data->simulationInfo->realVarsPre[14] /* ctr.velocity DISCRETE */ + (data->simulationInfo->realParameter[4]) * (data->localData[0]->realVars[11] /* ctr.astep DISCRETE */);
      }
      data->localData[0]->realVars[14] /* ctr.velocity DISCRETE */ = tmp6;

      data->localData[0]->realVars[12] /* ctr.history DISCRETE */ = data->simulationInfo->realVarsPre[13] /* ctr.thrust DISCRETE */;

      data->localData[0]->realVars[13] /* ctr.thrust DISCRETE */ = omc_ECU_autopilot7(threadData, data->localData[0]->realVars[10] /* ctr.altitude DISCRETE */, data->localData[0]->realVars[14] /* ctr.velocity DISCRETE */, data->simulationInfo->realParameter[5], data->simulationInfo->realParameter[6], data->localData[0]->realVars[12] /* ctr.history DISCRETE */);
    }
  }
  TRACE_POP
}

void residualFunc32(void** dataIn, const double* xloc, double* res, const int* iflag)
{
  TRACE_PUSH
  DATA *data = (DATA*) ((void**)dataIn[0]);
  threadData_t *threadData = (threadData_t*) ((void**)dataIn[1]);
  const int equationIndexes[2] = {1,32};
  int i;
  /* iteration variables */
  for (i=0; i<1; i++) {
    if (isinf(xloc[i]) || isnan(xloc[i])) {
      for (i=0; i<1; i++) {
        res[i] = NAN;
      }
      return;
    }
  }
  data->localData[0]->realVars[7] /* ctr.acceleration variable */ = xloc[0];
  /* backup outputs */
  /* pre body */
  /* local constraints */
  MoonLanding_eqFunction_30(data, threadData);
  /* body */
  res[0] = (data->localData[0]->realVars[7] /* ctr.acceleration variable */) * (data->localData[0]->realVars[1] /* apollo.mass STATE(1) */) + (data->localData[0]->realVars[1] /* apollo.mass STATE(1) */) * (data->localData[0]->realVars[6] /* apollo.gravity variable */) - data->localData[0]->realVars[13] /* ctr.thrust DISCRETE */;
  /* restore known outputs */
  TRACE_POP
}
void initializeSparsePatternNLS32(NONLINEAR_SYSTEM_DATA* inSysData)
{
  int i=0;
  const int colPtrIndex[1+1] = {0,1};
  const int rowIndex[1] = {0};
  /* sparsity pattern available */
  inSysData->isPatternAvailable = 'T';
  inSysData->sparsePattern.leadindex = (unsigned int*) malloc((1+1)*sizeof(int));
  inSysData->sparsePattern.index = (unsigned int*) malloc(1*sizeof(int));
  inSysData->sparsePattern.numberOfNoneZeros = 1;
  inSysData->sparsePattern.colorCols = (unsigned int*) malloc(1*sizeof(int));
  inSysData->sparsePattern.maxColors = 1;
  
  /* write lead index of compressed sparse column */
  memcpy(inSysData->sparsePattern.leadindex, colPtrIndex, (1+1)*sizeof(int));
  
  for(i=2;i<1+1;++i)
    inSysData->sparsePattern.leadindex[i] += inSysData->sparsePattern.leadindex[i-1];
  
  /* call sparse index */
  memcpy(inSysData->sparsePattern.index, rowIndex, 1*sizeof(int));
  
  /* write color array */
  inSysData->sparsePattern.colorCols[0] = 1;
}
void initializeStaticDataNLS32(void *inData, threadData_t *threadData, void *inSystemData)
{
  DATA* data = (DATA*) inData;
  NONLINEAR_SYSTEM_DATA* sysData = (NONLINEAR_SYSTEM_DATA*) inSystemData;
  int i=0;
  /* static nls data for ctr.acceleration */
  sysData->nominal[i] = data->modelData->realVarsData[7].attribute /* ctr.acceleration */.nominal;
  sysData->min[i]     = data->modelData->realVarsData[7].attribute /* ctr.acceleration */.min;
  sysData->max[i++]   = data->modelData->realVarsData[7].attribute /* ctr.acceleration */.max;
  /* initial sparse pattern */
  initializeSparsePatternNLS32(sysData);
}

void getIterationVarsNLS32(struct DATA *inData, double *array)
{
  DATA* data = (DATA*) inData;
  array[0] = data->localData[0]->realVars[7] /* ctr.acceleration variable */;
}

/* Prototypes for the strict sets (Dynamic Tearing) */

/* Global constraints for the casual sets */
/* function initialize non-linear systems */
void MoonLanding_initialNonLinearSystem(int nNonLinearSystems, NONLINEAR_SYSTEM_DATA* nonLinearSystemData)
{
  
  nonLinearSystemData[0].equationIndex = 32;
  nonLinearSystemData[0].size = 1;
  nonLinearSystemData[0].homotopySupport = 0;
  nonLinearSystemData[0].mixedSystem = 0;
  nonLinearSystemData[0].residualFunc = residualFunc32;
  nonLinearSystemData[0].strictTearingFunctionCall = NULL;
  nonLinearSystemData[0].analyticalJacobianColumn = NULL;
  nonLinearSystemData[0].initialAnalyticalJacobian = NULL;
  nonLinearSystemData[0].jacobianIndex = -1;
  nonLinearSystemData[0].initializeStaticNLSData = initializeStaticDataNLS32;
  nonLinearSystemData[0].getIterationVars = getIterationVarsNLS32;
  nonLinearSystemData[0].checkConstraints = NULL;
}

#if defined(__cplusplus)
}
#endif

