/* Jacobians */
static const REAL_ATTRIBUTE dummyREAL_ATTRIBUTE = omc_dummyRealAttribute;
/* Jacobian Variables */
#if defined(__cplusplus)
extern "C" {
#endif
  #define DTS_INDEX_JAC_D 0
  int DTS_functionJacD_column(void* data, threadData_t *threadData);
  int DTS_initialAnalyticJacobianD(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* D */

#if defined(__cplusplus)
extern "C" {
#endif
  #define DTS_INDEX_JAC_C 1
  int DTS_functionJacC_column(void* data, threadData_t *threadData);
  int DTS_initialAnalyticJacobianC(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* C */

#if defined(__cplusplus)
extern "C" {
#endif
  #define DTS_INDEX_JAC_B 2
  int DTS_functionJacB_column(void* data, threadData_t *threadData);
  int DTS_initialAnalyticJacobianB(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* B */

#if defined(__cplusplus)
extern "C" {
#endif
  #define DTS_INDEX_JAC_A 3
  int DTS_functionJacA_column(void* data, threadData_t *threadData);
  int DTS_initialAnalyticJacobianA(void* data, threadData_t *threadData);
#if defined(__cplusplus)
}
#endif
/* A */


