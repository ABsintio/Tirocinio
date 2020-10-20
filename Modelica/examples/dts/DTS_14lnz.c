/* Linearization */
#include "DTS_model.h"
#if defined(__cplusplus)
extern "C" {
#endif

const char *DTS_linear_model_frame()
{
  return "model linear_DTS\n  parameter Integer n = 0; // states\n  parameter Integer k = 0; // top-level inputs\n  parameter Integer l = 0; // top-level outputs\n"
  "  parameter Real x0[0] = {%s};\n"
  "  parameter Real u0[0] = {%s};\n"
  "  parameter Real A[0,0] = zeros(0,0);%s\n"
  "  parameter Real B[0,0] = zeros(0,0);%s\n"
  "  parameter Real C[0,0] = zeros(0,0);%s\n"
  "  parameter Real D[0,0] = zeros(0,0);%s\n"
  "  Real x[0];\n"
  "  input Real u[0];\n"
  "  output Real y[0];\n"
  "\n  \n"
  "equation\n  der(x) = A * x + B * u;\n  y = C * x + D * u;\nend linear_DTS;\n";
}
const char *DTS_linear_model_datarecovery_frame()
{
  return "model linear_DTS\n  parameter Integer n = 0; // states\n  parameter Integer k = 0; // top-level inputs\n  parameter Integer l = 0; // top-level outputs\n  parameter Integer nz = 0; // data recovery variables\n"
  "  parameter Real x0[0] = {%s};\n"
  "  parameter Real u0[0] = {%s};\n"
  "  parameter Real z0[0] = {%s};\n"
  "  parameter Real A[0,0] = zeros(0,0);%s\n"
  "  parameter Real B[0,0] = zeros(0,0);%s\n"
  "  parameter Real C[0,0] = zeros(0,0);%s\n"
  "  parameter Real D[0,0] = zeros(0,0);%s\n"
  "  parameter Real Cz[0,0] = zeros(0,0);%s\n"
  "  parameter Real Dz[0,0] = zeros(0,0);%s\n"
  "  Real x[0];\n"
  "  input Real u[0];\n"
  "  output Real y[0];\n"
  "  output Real z[0];\n"
  "\n\n"
  "equation\n  der(x) = A * x + B * u;\n  y = C * x + D * u;\n  z = Cz * x + Dz * u;\nend linear_DTS;\n";
}
#if defined(__cplusplus)
}
#endif

