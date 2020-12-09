model BIOMD026 "Signaling switches and bistability arising from multisite phosphorylation in protein kinase cascade"

  parameter Real k1 = 0.020;
  parameter Real k_1 = 1.000;
  parameter Real k2 = 0.010;
  parameter Real k3 = 0.032;
  parameter Real k_3 = 1.000;
  parameter Real k4 = 15.000;
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

  Real M;
  Real Mp;
  Real Mpp;
  Real MAPKK;
  Real MKP3;
  Real M_MAPKK;
  Real Mp_MAPKK;
  Real Mpp_MKP3;
  Real Mp_MKP3_dep;
  Real Mp_MKP3;
  Real M_MKP3;

initial equation
  M = 500.0;
  Mp = 0.0;
  Mpp = 0.0;
  MAPKK = 50.0;
  MKP3 = 100.0;
  M_MAPKK = 0.0;
  Mp_MAPKK = 0.0;
  Mpp_MKP3 = 0.0;
  Mp_MKP3_dep = 0.0;
  Mp_MKP3 = 0.0;
  M_MKP3 = 0.0;

equation
  der(M) = (h6*M_MKP3-h_6*M*MKP3) - (k1*M*MAPKK-k_1*M_MAPKK);
  der(Mp) = k2*M_MAPKK + (h3*Mp_MKP3_dep-h_3*Mp*MKP3) - (k3*Mp*MAPKK-k_3*Mp_MAPKK) - (h4*Mp*MKP3-h_4*Mp_MKP3);
  der(Mpp) = k4*Mp_MAPKK - (h1*Mpp*MKP3-h_1*Mpp_MKP3);
  der(MAPKK) = k2*M_MAPKK + k4*Mp_MAPKK - (k1*M*MAPKK-k_1*M_MAPKK) - (k3*Mp*MAPKK-k_3*Mp_MAPKK);
  der(MKP3) = (h3*Mp_MKP3_dep-h_3*Mp*MKP3) + (h6*M_MKP3-h_6*M*MKP3) - (h1*Mpp*MKP3-h_1*Mpp_MKP3) - (h4*Mp*MKP3-h_4*Mp_MKP3);
  der(M_MAPKK) = (k1*M*MAPKK-k_1*M_MAPKK) - k2*M_MAPKK;
  der(Mp_MAPKK) = (k3*Mp*MAPKK-k_3*Mp_MAPKK) - k4*Mp_MAPKK;
  der(Mpp_MKP3) = (h1*Mpp*MKP3-h_1*Mpp_MKP3) - h2*Mpp_MKP3;
  der(Mp_MKP3_dep) = h2*Mpp_MKP3 - (h3*Mp_MKP3_dep-h_3*Mp*MKP3);
  der(Mp_MKP3) = (h4*Mp*MKP3-h_4*Mp_MKP3) - h5*Mp_MKP3;
  der(M_MKP3) = h5*Mp_MKP3 - (h6*M_MKP3-h_6*M*MKP3);

end BIOMD026;
