model BIOMD031 "Signaling switches and bistability arising from multisite phosphorylation in protein kinase cascade"

  parameter Real k1cat = 0.010;
  parameter Real Km1 = 50.000;
  parameter Real k2cat = 15.000;
  parameter Real Km2 = 500.000;
  parameter Real k3cat = 0.084;
  parameter Real Km3 = 5.000;
  parameter Real k4cat = 0.060;
  parameter Real Km4 = 18.000;
  parameter Real Km5 = 78.000;

  Real M;
  Real Mp;
  Real Mpp;
  Real MAPKK1;
  Real MAPKK2;
  Real MKP3;

initial equation

equation
  der(MAPKK1) = 0.0;
  der(MAPKK2) = 0.0;
  der(MKP3) = 0.0;
  der(M) = k4cat*MKP3*Mp/Km4/(1+Mpp/Km3+Mp/Km4+M/Km5) - k1cat*MAPKK1*M/Km1/(1+M/Km1);
  der(Mp) = k1cat*MAPKK1*M/Km1/(1+M/Km1) + k3cat*MKP3*Mpp/Km3/(1+Mpp/Km3+Mp/Km4+M/Km5) - k2cat*MAPKK2*Mp/Km2/(1+Mp/Km2) - k4cat*MKP3*Mp/Km4/(1+Mpp/Km3+Mp/Km4+M/Km5);
  der(Mpp) = k2cat*MAPKK2*Mp/Km2/(1+Mp/Km2) - k3cat*MKP3*Mpp/Km3/(1+Mpp/Km3+Mp/Km4+M/Km5);

end BIOMD031;
