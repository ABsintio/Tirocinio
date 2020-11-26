model BIOMD029 "Signaling switches and bistability arising from multisite phosphorylation in protein kinase cascades"

  parameter Real Km1 = 410.000;
  parameter Real kcat1 = 1.080;
  parameter Real Km2 = 40.000;
  parameter Real kcat2 = 0.007;
  parameter Real Km3 = 20.000;
  parameter Real kcat3 = 0.008;
  parameter Real Km4 = 300.000;
  parameter Real kcat4 = 0.450;
  parameter Real Km5 = 22.000;
  parameter Real kcat5 = 0.084;
  parameter Real Km6 = 18.000;
  parameter Real kcat6 = 0.060;
  parameter Real Km7 = 34.000;
  parameter Real kcat7 = 0.108;
  parameter Real Km8 = 40.000;

  Real M;
  Real MpY;
  Real MpT;
  Real Mpp;
  Real MEK;
  Real MKP3;

initial equation
  M = 800.000;
  MpY = 0.000;
  MpT = 0.000;
  Mpp = 0.000;
  MEK = 180.000;
  MKP3 = 100.000;

equation
  der(M) = kcat6*MKP3*MpT/Km6/(1+Mpp/Km5+MpT/Km6+MpY/Km7+M/Km8) + kcat7*MKP3*MpY/Km7/(1+Mpp/Km5+MpT/Km6+MpY/Km7+M/Km8) - kcat1*MEK*M/Km1/(1+M*(Km1+Km3)/(Km1*Km3)+MpY/Km2+MpT/Km4) - kcat3*MEK*M/Km3/(1+M*(Km1+Km3)/(Km1*Km3)+MpY/Km2+MpT/Km4);
  der(MpY) = kcat1*MEK*M/Km1/(1+M*(Km1+Km3)/(Km1*Km3)+MpY/Km2+MpT/Km4) - kcat2*MEK*MpY/Km2/(1+M*(Km1+Km3)/(Km1*Km3)+MpY/Km2+MpT/Km4) - kcat7*MKP3*MpY/Km7/(1+Mpp/Km5+MpT/Km6+MpY/Km7+M/Km8);
  der(MpT) = kcat3*MEK*M/Km3/(1+M*(Km1+Km3)/(Km1*Km3)+MpY/Km2+MpT/Km4) + kcat5*MKP3*Mpp/Km5/(1+Mpp/Km5+MpT/Km6+MpY/Km7+M/Km8) - kcat4*MEK*MpT/Km4/(1+M*(Km1+Km3)/(Km1*Km3)+MpY/Km2+MpT/Km4) - kcat6*MKP3*MpT/Km6/(1+Mpp/Km5+MpT/Km6+MpY/Km7+M/Km8);
  der(Mpp) = kcat2*MEK*MpY/Km2/(1+M*(Km1+Km3)/(Km1*Km3)+MpY/Km2+MpT/Km4) + kcat4*MEK*MpT/Km4/(1+M*(Km1+Km3)/(Km1*Km3)+MpY/Km2+MpT/Km4) - kcat5*MKP3*Mpp/Km5/(1+Mpp/Km5+MpT/Km6+MpY/Km7+M/Km8);
  der(MEK) = 0.0;
  der(MKP3) = 0.0;

end BIOMD029;
