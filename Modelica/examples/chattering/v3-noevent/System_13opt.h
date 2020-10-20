#if defined(__cplusplus)
  extern "C" {
#endif
  int System_mayer(DATA* data, modelica_real** res, short*);
  int System_lagrange(DATA* data, modelica_real** res, short *, short *);
  int System_pickUpBoundsForInputsInOptimization(DATA* data, modelica_real* min, modelica_real* max, modelica_real*nominal, modelica_boolean *useNominal, char ** name, modelica_real * start, modelica_real * startTimeOpt);
  int System_setInputData(DATA *data);
  int System_getTimeGrid(DATA *data, modelica_integer * nsi, modelica_real**t);
#if defined(__cplusplus)
}
#endif