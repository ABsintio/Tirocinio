#if defined(__cplusplus)
  extern "C" {
#endif
  int BIOMD033_Brown2004_NGF_EGF_signaling_mayer(DATA* data, modelica_real** res, short*);
  int BIOMD033_Brown2004_NGF_EGF_signaling_lagrange(DATA* data, modelica_real** res, short *, short *);
  int BIOMD033_Brown2004_NGF_EGF_signaling_pickUpBoundsForInputsInOptimization(DATA* data, modelica_real* min, modelica_real* max, modelica_real*nominal, modelica_boolean *useNominal, char ** name, modelica_real * start, modelica_real * startTimeOpt);
  int BIOMD033_Brown2004_NGF_EGF_signaling_setInputData(DATA *data, const modelica_boolean file);
  int BIOMD033_Brown2004_NGF_EGF_signaling_getTimeGrid(DATA *data, modelica_integer * nsi, modelica_real**t);
#if defined(__cplusplus)
}
#endif