/* Jacobians */
static const REAL_ATTRIBUTE dummyREAL_ATTRIBUTE = omc_dummyRealAttribute;
/* Jacobian Variables */
#if defined(__cplusplus)
extern "C" {
#endif
  #define BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_F 0
  int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacF_column(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *thisJacobian, ANALYTIC_JACOBIAN *parentJacobian);
  int BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianF(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian);
#if defined(__cplusplus)
}
#endif
#if defined(__cplusplus)
extern "C" {
#endif
  #define BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_D 1
  int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacD_column(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *thisJacobian, ANALYTIC_JACOBIAN *parentJacobian);
  int BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianD(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian);
#if defined(__cplusplus)
}
#endif
#if defined(__cplusplus)
extern "C" {
#endif
  #define BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_C 2
  int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacC_column(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *thisJacobian, ANALYTIC_JACOBIAN *parentJacobian);
  int BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianC(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian);
#if defined(__cplusplus)
}
#endif
#if defined(__cplusplus)
extern "C" {
#endif
  #define BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_B 3
  int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacB_column(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *thisJacobian, ANALYTIC_JACOBIAN *parentJacobian);
  int BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianB(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian);
#if defined(__cplusplus)
}
#endif
#if defined(__cplusplus)
extern "C" {
#endif
  #define BIOMD033_Brown2004_NGF_EGF_signaling_INDEX_JAC_A 4
  int BIOMD033_Brown2004_NGF_EGF_signaling_functionJacA_column(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *thisJacobian, ANALYTIC_JACOBIAN *parentJacobian);
  int BIOMD033_Brown2004_NGF_EGF_signaling_initialAnalyticJacobianA(void* data, threadData_t *threadData, ANALYTIC_JACOBIAN *jacobian);
#if defined(__cplusplus)
}
#endif


