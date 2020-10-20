/* Linearization */
#include "MoonLanding_model.h"
#if defined(__cplusplus)
extern "C" {
#endif

const char *MoonLanding_linear_model_frame()
{
  return "model linear_MoonLanding\n  parameter Integer n = 3; // states\n  parameter Integer k = 0; // top-level inputs\n  parameter Integer l = 0; // top-level outputs\n"
  "  parameter Real x0[3] = {%s};\n"
  "  parameter Real u0[0] = {%s};\n"
  "  parameter Real A[3,3] = [%s];\n"
  "  parameter Real B[3,0] = zeros(3,0);%s\n"
  "  parameter Real C[0,3] = zeros(0,3);%s\n"
  "  parameter Real D[0,0] = zeros(0,0);%s\n"
  "  Real x[3](start=x0);\n"
  "  input Real u[0];\n"
  "  output Real y[0];\n"
  "\n  Real 'x_apollo.altitude' = x[1];\nReal 'x_apollo.mass' = x[2];\nReal 'x_apollo.velocity' = x[3];\n\n"
  "equation\n  der(x) = A * x + B * u;\n  y = C * x + D * u;\nend linear_MoonLanding;\n";
}
const char *MoonLanding_linear_model_datarecovery_frame()
{
  return "model linear_MoonLanding\n  parameter Integer n = 3; // states\n  parameter Integer k = 0; // top-level inputs\n  parameter Integer l = 0; // top-level outputs\n  parameter Integer nz = 4; // data recovery variables\n"
  "  parameter Real x0[3] = {%s};\n"
  "  parameter Real u0[0] = {%s};\n"
  "  parameter Real z0[4] = {%s};\n"
  "  parameter Real A[3,3] = [%s];\n"
  "  parameter Real B[3,0] = zeros(3,0);%s\n"
  "  parameter Real C[0,3] = zeros(0,3);%s\n"
  "  parameter Real D[0,0] = zeros(0,0);%s\n"
  "  parameter Real Cz[4,3] = [%s];\n"
  "  parameter Real Dz[4,0] = zeros(4,0);%s\n"
  "  Real x[3](start=x0);\n"
  "  input Real u[0];\n"
  "  output Real y[0];\n"
  "  output Real z[4];\n"
  "\nReal 'x_apollo.altitude' = x[1];\nReal 'x_apollo.mass' = x[2];\nReal 'x_apollo.velocity' = x[3];\nReal 'z_apollo.gravity' = z[1];\nReal 'z_ctr.acceleration' = z[2];\nReal 'z_ctr.initial_altitude' = z[3];\nReal 'z_ctr.initial_velocity' = z[4];\n\n"
  "equation\n  der(x) = A * x + B * u;\n  y = C * x + D * u;\n  z = Cz * x + Dz * u;\nend linear_MoonLanding;\n";
}
#if defined(__cplusplus)
}
#endif

