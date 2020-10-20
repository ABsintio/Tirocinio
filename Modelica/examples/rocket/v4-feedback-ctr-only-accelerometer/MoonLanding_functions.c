#include "MoonLanding_functions.h"
#ifdef __cplusplus
extern "C" {
#endif

#include "MoonLanding_literals.h"
#include "MoonLanding_includes.h"


DLLExport
modelica_real omc_ECU_autopilot7(threadData_t *threadData, modelica_real _h, modelica_real _v, modelica_real _f1, modelica_real _f2, modelica_real _oldval)
{
  modelica_real _y;
  modelica_real _error;
  _tailrecursive: OMC_LABEL_UNUSED
  if((_h >= 60000.0))
  {
    _y = 0.0;
  }

  if(((_h <= 60000.0) && (_h >= 10000.0)))
  {
    if((_v <= -501.0))
    {
      _y = _f1;
    }
    else
    {
      if((_v >= -499.0))
      {
        _y = 0.0;
      }
      else
      {
        _y = _oldval;
      }
    }
  }

  if(((_h <= 10000.0) && (_h >= 5000.0)))
  {
    if((_v <= -301.0))
    {
      _y = _f1;
    }
    else
    {
      if((_v >= -299.0))
      {
        _y = 0.0;
      }
      else
      {
        _y = _oldval;
      }
    }
  }

  if(((_h <= 5000.0) && (_h >= 1000.0)))
  {
    if((_v <= -201.0))
    {
      _y = _f1;
    }
    else
    {
      if((_v >= -199.0))
      {
        _y = 0.0;
      }
      else
      {
        _y = _oldval;
      }
    }
  }

  if(((_h <= 1000.0) && (_h >= 100.0)))
  {
    if((_v <= -101.0))
    {
      _y = _f1;
    }
    else
    {
      if((_v >= -99.0))
      {
        _y = 0.0;
      }
      else
      {
        _y = _oldval;
      }
    }
  }

  if(((_h <= 100.0) && (_h >= 3.0)))
  {
    if((_v <= -11.0))
    {
      _y = _f2;
    }
    else
    {
      if((_v >= -9.0))
      {
        _y = 0.0;
      }
      else
      {
        _y = _oldval;
      }
    }
  }

  if(((_h <= 3.0) && (_h >= 1.0)))
  {
    if((_v <= -0.7))
    {
      _y = _f2;
    }
    else
    {
      if((_v >= -0.3))
      {
        _y = 0.0;
      }
      else
      {
        _y = _oldval;
      }
    }
  }

  if(((_h <= 1.0) && (_h >= -1.0)))
  {
    _y = 0.0;
  }

  if(((_h <= -1.0) && (_h >= -6.0)))
  {
    if((_v <= 0.4))
    {
      _y = _f2;
    }
    else
    {
      if((_v >= 0.8))
      {
        _y = 0.0;
      }
      else
      {
        _y = _oldval;
      }
    }
  }

  if((_h < -6.0))
  {
    _y = _f1;
  }
  _return: OMC_LABEL_UNUSED
  return _y;
}
modelica_metatype boxptr_ECU_autopilot7(threadData_t *threadData, modelica_metatype _h, modelica_metatype _v, modelica_metatype _f1, modelica_metatype _f2, modelica_metatype _oldval)
{
  modelica_real tmp1;
  modelica_real tmp2;
  modelica_real tmp3;
  modelica_real tmp4;
  modelica_real tmp5;
  modelica_real _y;
  modelica_metatype out_y;
  tmp1 = mmc_unbox_real(_h);
  tmp2 = mmc_unbox_real(_v);
  tmp3 = mmc_unbox_real(_f1);
  tmp4 = mmc_unbox_real(_f2);
  tmp5 = mmc_unbox_real(_oldval);
  _y = omc_ECU_autopilot7(threadData, tmp1, tmp2, tmp3, tmp4, tmp5);
  out_y = mmc_mk_rcon(_y);
  return out_y;
}

#ifdef __cplusplus
}
#endif
