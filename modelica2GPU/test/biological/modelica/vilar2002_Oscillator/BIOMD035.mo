model BIOMD035 "Mechanisms of noise-resistance in genetic oscillators"

  parameter Real gammaC = 2.0;
  parameter Real deltaA = 1.0;
  parameter Real deltaR = 0.2;
  parameter Real gammaA = 1.0;
  parameter Real thetaA = 50.0;
  parameter Real alphaA = 50.0;
  parameter Real alphaAp = 500.0;
  parameter Real deltaMA = 10.0;
  parameter Real betaA = 50.0;
  parameter Real gammaR = 1.0;
  parameter Real thetaR = 100.0;
  parameter Real alphaR = 0.01;
  parameter Real alphaRp = 50.0;
  parameter Real deltaMR = 0.5;
  parameter Real betaR = 5.0;

  Real A;
  Real C;
  Real DA;
  Real DAp;
  Real DR;
  Real DRp;
  Real MA;
  Real MR;
  Real R;

initial equation
  A = 0.0;
  C = 0.0;
  DA = 1.0;
  DAp = 0.0;
  DR = 1.0;
  DRp = 0.0;
  MA = 0.0;
  MR = 0.0;
  R = 0.0;

equation
  der(A) = DAp*thetaA + MA*betaA + DRp*thetaR - A*R*gammaC - A*deltaA - A*DA*gammaA - A*DR*gammaR;
  der(C) = A*R*gammaC - C*deltaA;
  der(DA) = DAp*thetaA + DA*alphaA - A*DA*gammaA - DA*alphaA;
  der(DAp) = A*DA*gammaA + DAp*alphaAp - DAp*thetaA - DAp*alphaAp;
  der(DR) = DRp*thetaR + DR*alphaR - A*DR*gammaR - DR*alphaR;
  der(DRp) = A*DR*gammaR + DRp*alphaRp - DRp*thetaR - DRp*alphaRp;
  der(MA) = DA*alphaA + DAp*alphaAp + MA*betaA - MA*deltaMA - MA*betaA;
  der(MR) = DR*alphaR + DRp*alphaRp + MR*betaR - MR*deltaMR - MR*betaR;
  der(R) = C*deltaA + MR*betaR - A*R*gammaC - R*deltaR;

end BIOMD035;
