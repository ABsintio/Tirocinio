model BIOMD039 "Complex calcium oscillations and the role of mitochondria and cytosolic proteins"

  parameter Real Kch = 4100.0;
  parameter Real K1 = 5.0;
  parameter Real Kleak = 0.05;
  parameter Real Kpump = 20.0;
  parameter Real Kout = 125.0;
  parameter Real K3 = 5.000;
  parameter Real Km = 0.006;
  parameter Real Kin = 300.0;
  parameter Real K2 = 0.8;
  parameter Real Kminus = 0.01;
  parameter Real Kplus = 0.1;

  Real Ca_cyt;
  Real CaER;
  Real CaM;
  Real CaPr;
  Real Pr;

initial equation
  Ca_cyt = 0.35;
  CaER = 0.76;
  CaM = 0.29;
  CaPr = 85.45;
  Pr = 34.55;

equation
  der(Ca_cyt) = Kch*Ca_cyt^2*(CaER-Ca_cyt)/(K1^2+Ca_cyt^2) + Kleak*(CaER-Ca_cyt) + CaM*(Kout*Ca_cyt^2/(K3^2+Ca_cyt^2)+Km) + Kminus*CaPr - Kpump*Ca_cyt - Kin*Ca_cyt^8/(K2^8+Ca_cyt^8) - Kplus*Ca_cyt*Pr;
  der(CaER) = 0.25*(Kpump*Ca_cyt - Kch*Ca_cyt^2*(CaER-Ca_cyt)/(K1^2+Ca_cyt^2) - Kleak*(CaER-Ca_cyt));
  der(CaM) = 0.25*(Kin*Ca_cyt^8/(K2^8+Ca_cyt^8) - CaM*(Kout*Ca_cyt^2/(K3^2+Ca_cyt^2)+Km));
  der(CaPr) = Kplus*Ca_cyt*Pr - Kminus*CaPr;
  der(Pr) = -(Kplus*Ca_cyt*Pr - Kminus*CaPr);

end BIOMD039;
