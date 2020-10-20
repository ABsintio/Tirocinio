#if defined(__cplusplus)
  extern "C" {
#endif
  int MoonLanding_mayer(DATA* data, modelica_real** res, short*);
  int MoonLanding_lagrange(DATA* data, modelica_real** res, short *, short *);
  int MoonLanding_pickUpBoundsForInputsInOptimization(DATA* data, modelica_real* min, modelica_real* max, modelica_real*nominal, modelica_boolean *useNominal, char ** name, modelica_real * start, modelica_real * startTimeOpt);
  int MoonLanding_setInputData(DATA *data);
  int MoonLanding_getTimeGrid(DATA *data, modelica_integer * nsi, modelica_real**t);
#if defined(__cplusplus)
}
#endif