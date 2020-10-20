#include "MoonLanding_functions.h"
#ifdef __cplusplus
extern "C" {
#endif

#include "MoonLanding_literals.h"
#include "MoonLanding_includes.h"


DLLExport
modelica_real omc_MoonLanding_autopilot1(threadData_t *threadData, modelica_real _x, modelica_real _decreasetime, modelica_real _endtime, modelica_real _f1, modelica_real _f2)
{
  modelica_real _y;
  _tailrecursive: OMC_LABEL_UNUSED
  if((_x < _decreasetime))
  {
    _y = _f1;
  }
  else
  {
    if((_x < _endtime))
    {
      _y = _f2;
    }
    else
    {
      _y = 0.0;
    }
  }
  _return: OMC_LABEL_UNUSED
  return _y;
}
modelica_metatype boxptr_MoonLanding_autopilot1(threadData_t *threadData, modelica_metatype _x, modelica_metatype _decreasetime, modelica_metatype _endtime, modelica_metatype _f1, modelica_metatype _f2)
{
  modelica_real tmp1;
  modelica_real tmp2;
  modelica_real tmp3;
  modelica_real tmp4;
  modelica_real tmp5;
  modelica_real _y;
  modelica_metatype out_y;
  tmp1 = mmc_unbox_real(_x);
  tmp2 = mmc_unbox_real(_decreasetime);
  tmp3 = mmc_unbox_real(_endtime);
  tmp4 = mmc_unbox_real(_f1);
  tmp5 = mmc_unbox_real(_f2);
  _y = omc_MoonLanding_autopilot1(threadData, tmp1, tmp2, tmp3, tmp4, tmp5);
  out_y = mmc_mk_rcon(_y);
  return out_y;
}

#ifdef __cplusplus
}
#endif
