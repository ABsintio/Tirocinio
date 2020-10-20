/* Jacobians */
static const REAL_ATTRIBUTE dummyREAL_ATTRIBUTE = omc_dummyRealAttribute;
/* Jacobian Variables */
#if defined(__cplusplus)
extern "C" {
#endif
  #define MoonLanding_INDEX_JAC_D 0
  int MoonLanding_functionJacD_column(void* data, threadData_t *threadData);
  int MoonLanding_initialAnalyticJacobianD(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* D */

#if defined(__cplusplus)
extern "C" {
#endif
  #define MoonLanding_INDEX_JAC_C 1
  int MoonLanding_functionJacC_column(void* data, threadData_t *threadData);
  int MoonLanding_initialAnalyticJacobianC(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* C */

#if defined(__cplusplus)
extern "C" {
#endif
  #define MoonLanding_INDEX_JAC_B 2
  int MoonLanding_functionJacB_column(void* data, threadData_t *threadData);
  int MoonLanding_initialAnalyticJacobianB(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* B */

#if defined(__cplusplus)
extern "C" {
#endif
  #define MoonLanding_INDEX_JAC_A 3
  int MoonLanding_functionJacA_column(void* data, threadData_t *threadData);
  int MoonLanding_initialAnalyticJacobianA(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* A */
/* $Papollo$Paltitude$PSeedA */
#define _$Papollo$Paltitude$PSeedA(i) data->simulationInfo->analyticJacobians[3].seedVars[0]
#define $Papollo$Paltitude$PSeedA _$Papollo$Paltitude$PSeedA(0)

/* $Papollo$Pmass$PSeedA */
#define _$Papollo$Pmass$PSeedA(i) data->simulationInfo->analyticJacobians[3].seedVars[1]
#define $Papollo$Pmass$PSeedA _$Papollo$Pmass$PSeedA(0)

/* $Papollo$Pvelocity$PSeedA */
#define _$Papollo$Pvelocity$PSeedA(i) data->simulationInfo->analyticJacobians[3].seedVars[2]
#define $Papollo$Pvelocity$PSeedA _$Papollo$Pvelocity$PSeedA(0)


