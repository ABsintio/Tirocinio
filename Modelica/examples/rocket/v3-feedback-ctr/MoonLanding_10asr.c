/* Asserts */
/* Simulation code for MoonLanding generated by the OpenModelica Compiler 1.9.2 (r25115). */

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

#include "MoonLanding_functions.h"
#include "MoonLanding_model.h"
#include "MoonLanding_literals.h"




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

#if defined(__cplusplus)
extern "C" {
#endif

/* function to check assert after a step is done */
int MoonLanding_checkForAsserts(DATA *data)
{
  TRACE_PUSH

  
  TRACE_POP
  return 0;
}

#if defined(__cplusplus)
}
#endif

