/* Linearization */
#include "BouncingBall_model.h"
#if defined(__cplusplus)
extern "C" {
#endif

const char *BouncingBall_linear_model_frame()
{
  return "model linear_BouncingBall\n  parameter Integer n = 2; // states\n  parameter Integer k = 0; // top-level inputs\n  parameter Integer l = 0; // top-level outputs\n"
  "  parameter Real x0[2] = {%s};\n"
  "  parameter Real u0[0] = {%s};\n"
  "  parameter Real A[2,2] = [%s];\n"
  "  parameter Real B[2,0] = zeros(2,0);%s\n"
  "  parameter Real C[0,2] = zeros(0,2);%s\n"
  "  parameter Real D[0,0] = zeros(0,0);%s\n"
  "  Real x[2](start=x0);\n"
  "  input Real u[0];\n"
  "  output Real y[0];\n"
  "\n  Real 'x_h' = x[1];\nReal 'x_v' = x[2];\n\n"
  "equation\n  der(x) = A * x + B * u;\n  y = C * x + D * u;\nend linear_BouncingBall;\n";
}
const char *BouncingBall_linear_model_datarecovery_frame()
{
  return "model linear_BouncingBall\n  parameter Integer n = 2; // states\n  parameter Integer k = 0; // top-level inputs\n  parameter Integer l = 0; // top-level outputs\n  parameter Integer nz = 0; // data recovery variables\n"
  "  parameter Real x0[2] = {%s};\n"
  "  parameter Real u0[0] = {%s};\n"
  "  parameter Real z0[0] = {%s};\n"
  "  parameter Real A[2,2] = [%s];\n"
  "  parameter Real B[2,0] = zeros(2,0);%s\n"
  "  parameter Real C[0,2] = zeros(0,2);%s\n"
  "  parameter Real D[0,0] = zeros(0,0);%s\n"
  "  parameter Real Cz[0,2] = zeros(0,2);%s\n"
  "  parameter Real Dz[0,0] = zeros(0,0);%s\n"
  "  Real x[2](start=x0);\n"
  "  input Real u[0];\n"
  "  output Real y[0];\n"
  "  output Real z[0];\n"
  "\nReal 'x_h' = x[1];\nReal 'x_v' = x[2];\n\n"
  "equation\n  der(x) = A * x + B * u;\n  y = C * x + D * u;\n  z = Cz * x + Dz * u;\nend linear_BouncingBall;\n";
}
#if defined(__cplusplus)
}
#endif

