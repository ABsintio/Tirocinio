/* Linear Systems */
/* Simulation code for System generated by the OpenModelica Compiler 1.9.2 (r25115). */

#include "openmodelica.h"
#include "openmodelica_func.h"
#include "simulation_data.h"
#include "simulation/simulation_info_xml.h"
#include "simulation/simulation_runtime.h"
#include "util/omc_error.h"
#include "simulation/solver/model_help.h"
#include "simulation/solver/delay.h"
#include "simulation/solver/linearSystem.h"
#include "simulation/solver/nonlinearSystem.h"
#include "simulation/solver/mixedSystem.h"

#include <assert.h>
#include <string.h>

#include "System_functions.h"
#include "System_model.h"
#include "System_literals.h"




#if defined(HPCOM) && !defined(_OPENMP)
  #error "HPCOM requires OpenMP or the results are wrong"
#endif
#if defined(_OPENMP)
  #include <omp.h>
#else
  /* dummy omp defines */
  #define omp_get_max_threads() 1
#endif

#define threadData data->threadData

#include "System_12jac.h"
#if defined(__cplusplus)
extern "C" {
#endif

/* initial linear systems */
/* parameter linear systems */
/* model linear systems */
/* jacobians linear systems */

/* funtion initialize linear systems */
void System_initialLinearSystem(int nLinearSystems, LINEAR_SYSTEM_DATA* linearSystemData)
{
  /* initial linear systems */
  /* parameter linear systems */
  /* model linear systems */
  /* jacobians linear systems */
}

#if defined(__cplusplus)
}
#endif

