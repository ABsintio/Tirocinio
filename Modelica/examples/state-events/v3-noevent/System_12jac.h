/* Jacobians */
static const REAL_ATTRIBUTE dummyREAL_ATTRIBUTE = omc_dummyRealAttribute;
/* Jacobian Variables */
#if defined(__cplusplus)
extern "C" {
#endif
  #define System_INDEX_JAC_D 3
  int System_functionJacD_column(void* data);
  int System_initialAnalyticJacobianD(void* data);
#if defined(__cplusplus)
}
#endif
/* D */

#if defined(__cplusplus)
extern "C" {
#endif
  #define System_INDEX_JAC_C 2
  int System_functionJacC_column(void* data);
  int System_initialAnalyticJacobianC(void* data);
#if defined(__cplusplus)
}
#endif
/* C */

#if defined(__cplusplus)
extern "C" {
#endif
  #define System_INDEX_JAC_B 1
  int System_functionJacB_column(void* data);
  int System_initialAnalyticJacobianB(void* data);
#if defined(__cplusplus)
}
#endif
/* B */

#if defined(__cplusplus)
extern "C" {
#endif
  #define System_INDEX_JAC_A 0
  int System_functionJacA_column(void* data);
  int System_initialAnalyticJacobianA(void* data);
#if defined(__cplusplus)
}
#endif
/* A */
#define $PxSeedA data->simulationInfo.analyticJacobians[0].seedVars[0]
#define $PxSeedA__varInfo dummyVAR_INFO


