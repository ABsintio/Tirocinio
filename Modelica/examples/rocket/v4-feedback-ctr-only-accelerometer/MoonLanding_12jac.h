/* Jacobians */
static const REAL_ATTRIBUTE dummyREAL_ATTRIBUTE = omc_dummyRealAttribute;
/* Jacobian Variables */
#if defined(__cplusplus)
extern "C" {
#endif
  #define MoonLanding_INDEX_JAC_D 3
  int MoonLanding_functionJacD_column(void* data);
  int MoonLanding_initialAnalyticJacobianD(void* data);
#if defined(__cplusplus)
}
#endif
/* D */

#if defined(__cplusplus)
extern "C" {
#endif
  #define MoonLanding_INDEX_JAC_C 2
  int MoonLanding_functionJacC_column(void* data);
  int MoonLanding_initialAnalyticJacobianC(void* data);
#if defined(__cplusplus)
}
#endif
/* C */

#if defined(__cplusplus)
extern "C" {
#endif
  #define MoonLanding_INDEX_JAC_B 1
  int MoonLanding_functionJacB_column(void* data);
  int MoonLanding_initialAnalyticJacobianB(void* data);
#if defined(__cplusplus)
}
#endif
/* B */

#if defined(__cplusplus)
extern "C" {
#endif
  #define MoonLanding_INDEX_JAC_A 0
  int MoonLanding_functionJacA_column(void* data);
  int MoonLanding_initialAnalyticJacobianA(void* data);
#if defined(__cplusplus)
}
#endif
/* A */
#define $Papollo_altitudeSeedA data->simulationInfo.analyticJacobians[0].seedVars[0]
#define $Papollo_altitudeSeedA__varInfo dummyVAR_INFO
#define $Papollo_massSeedA data->simulationInfo.analyticJacobians[0].seedVars[1]
#define $Papollo_massSeedA__varInfo dummyVAR_INFO
#define $Papollo_velocitySeedA data->simulationInfo.analyticJacobians[0].seedVars[2]
#define $Papollo_velocitySeedA__varInfo dummyVAR_INFO
#define $Pctr_altitudeSeedA data->simulationInfo.analyticJacobians[0].seedVars[3]
#define $Pctr_altitudeSeedA__varInfo dummyVAR_INFO
#define $Pctr_velocitySeedA data->simulationInfo.analyticJacobians[0].seedVars[4]
#define $Pctr_velocitySeedA__varInfo dummyVAR_INFO


