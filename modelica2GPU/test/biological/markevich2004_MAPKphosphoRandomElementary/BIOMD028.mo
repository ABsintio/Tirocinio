model BIOMD028 "Signaling switches and bistability arising from multisite phosphorylation in protein kinase cascades"

  parameter Real k1 = 0.005;
  parameter Real k_1 = 1.000;
  parameter Real k2 = 1.080;
  parameter Real k3 = 0.025;
  parameter Real k_3 = 1.000;
  parameter Real k4 = 0.007;
  parameter Real k5 = 0.050;
  parameter Real k_5 = 1.000;
  parameter Real k6 = 0.008;
  parameter Real k7 = 0.005;
  parameter Real k_7 = 1.000;
  parameter Real k8 = 0.450;
  parameter Real h1 = 0.045;
  parameter Real h_1 = 1.000;
  parameter Real h2 = 0.092;
  parameter Real h3 = 1.000;
  parameter Real h_3 = 0.010;
  parameter Real h4 = 0.010;
  parameter Real h_4 = 1.000;
  parameter Real h5 = 0.500;
  parameter Real h6 = 0.086;
  parameter Real h_6 = 0.001;
  parameter Real h7 = 0.010;
  parameter Real h_7 = 1.000;
  parameter Real h8 = 0.470;
  parameter Real h9 = 0.140;
  parameter Real h_9 = 0.002;

  Real M;
  Real MpY;
  Real MpT;
  Real Mpp;
  Real MEK;
  Real MKP3;
  Real MpY_MEK;
  Real MpT_MEK;
  Real M_MEK_Y;
  Real M_MEK_T;
  Real Mpp_MKP3;
  Real MpY_MKP3;
  Real MpT_MKP3_Y;
  Real MpT_MKP3_T;
  Real M_MKP3_T;
  Real M_MKP3_Y;

initial equation
  M = 800.0;
  MpY = 0.0;
  MpT = 0.0;
  Mpp = 0.0;
  MEK = 180;
  MPK3 = 100.0;
  MpY_MEK = 0.0;
  MpT_MEK = 0.0;
  M_MEK_Y = 0.0;
  M_MEK_T = 0.0;
  Mpp_MKP3 = 0.0;
  MpY_MKP3 = 0.0;
  MpT_MKP3_T = 0.0;
  MpT_MKP3_Y = 0.0;
  M_MKP3_T = 0.0;
  M_MKP3_Y = 0.0;

equation
  der(M) = (h6*M_MKP3_T-h_6*M*MKP3) + (h9*M_MKP3_Y-h_9*M*MKP3) - (k1*M*MEK-k_1*M_MEK_Y) - (k5*M*MEK-k_5*M_MEK_T);
  der(MpY) = k2*M_MEK_Y - (k3*MpY*MEK-k_3*MpY_MEK) - (h7*MpY*MKP3-h_7*MpY_MKP3);
  der(MpT) = k6*M_MEK_T + (h3*MpT_MKP3_Y-h_3*MpT*MKP3) - (k7*MpT*MEK-k_7*MpT_MEK) - (h4*MpT*MKP3-h_4*MpT_MKP3_T);
  der(Mpp) = k4*MpY_MEK + k8*MpT_MEK - (h1*Mpp*MKP3-h_1*Mpp_MKP3);
  der(MEK) = k2*M_MEK_Y + k4*MpY_MEK + k6*M_MEK_T + k8*MpT_MEK - (k1*M*MEK-k_1*M_MEK_Y) - (k3*MpY*MEK-k_3*MpY_MEK) - (k5*M*MEK-k_5*M_MEK_T) - (k7*MpT*MEK-k_7*MpT_MEK);
  der(MKP3) = (h3*MpT_MKP3_Y-h_3*MpT*MKP3) + (h6*M_MKP3_T-h_6*M*MKP3) + (h9*M_MKP3_Y-h_9*M*MKP3) - (h1*Mpp*MKP3-h_1*Mpp_MKP3) - (h4*MpT*MKP3-h_4*MpT_MKP3_T) - (h7*MpY*MKP3-h_7*MpY_MKP3);
  der(MpY_MEK) = (k3*MpY*MEK-k_3*MpY_MEK) - k4*MpY_MEK;
  der(MpT_MEK) = (k7*MpT*MEK-k_7*MpT_MEK) - k8*MpT_MEK;
  der(M_MEK_Y) = (k1*M*MEK-k_1*M_MEK_Y) - k2*M_MEK_Y;
  der(M_MEK_T) = (k5*M*MEK-k_5*M_MEK_T) - k6*M_MEK_T;
  der(Mpp_MKP3) = (h1*Mpp*MKP3-h_1*Mpp_MKP3) - h2*Mpp_MKP3;
  der(MpY_MKP3) = (h7*MpY*MKP3-h_7*MpY_MKP3) - h8*MpY_MKP3;
  der(MpT_MKP3_Y) = h2*Mpp_MKP3 - (h3*MpT_MKP3_Y-h_3*MpT*MKP3);
  der(MpT_MKP3_T) = (h4*MpT*MKP3-h_4*MpT_MKP3_T) - h5*MpT_MKP3_T;
  der(M_MKP3_T) = h5*MpT_MKP3_T - (h6*M_MKP3_T-h_6*M*MKP3);
  der(M_MKP3_Y) = h8*MpY_MKP3 - (h9*M_MKP3_Y-h_9*M*MKP3);

end BIOMD028;
