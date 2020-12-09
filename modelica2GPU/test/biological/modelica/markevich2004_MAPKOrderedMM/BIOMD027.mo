model BIOMD027 "MAPK double phosphorylation,  ordered Michaelis-Menton"

  parameter Real Km1 = 50.0;
  parameter Real Km2 = 500.0;
  parameter Real Km3 = 22.00;
  parameter Real Km4 = 18.00;
  parameter Real Km5 = 78.0;
  parameter Real k4cat = 0.06;
  parameter Real k3cat = 0.084;
  parameter Real k2cat = 15.00;
  parameter Real k1cat = 0.01;

  Real M;
  Real Mp;
  Real MKP3;
  Real MAPKK;
  Real Mpp;

initial equation
  M = 500.0;
  Mp = 0.0;
  MKP3 = 100.0;
  MAPKK = 50.0;
  Mpp = 0.0;

equation
  der(MKP3) = 0.0;
  der(MAPKK) = 0.0;
  der(M) = (((k4cat*MKP3*Mp)/Km3)/(1.0+(Mpp/Km3)+(Mp/Km4)+(M/Km5))) - (((k1cat*MAPKK*M)/Km1)/(1.0+(M/Km1)+(Mp/Km2)));
  der(Mp) = (((k3cat*MKP3*Mpp)/Km3)/(1.0+(Mpp/Km3)+(Mp/Km4)+(M/Km5))) - (((k4cat*MKP3*Mp)/Km3)/(1.0+(Mpp/Km3)+(Mp/Km4)+(M/Km5))) + (((k1cat*MAPKK*M)/Km1)/(1.0+(M/Km1)+(Mp/Km2))) - (((k2cat*MAPKK*Mp)/Km2)/(1.0+(M/Km1)+(Mp/Km2)));
  der(Mpp) = (((k2cat*MAPKK*Mp)/Km2)/(1.0+(M/Km1)+(Mp/Km2))) - (((k3cat*MKP3*Mpp)/Km3)/(1.0+(Mpp/Km3)+(Mp/Km4)+(M/Km5)));

end BIOMD027;
