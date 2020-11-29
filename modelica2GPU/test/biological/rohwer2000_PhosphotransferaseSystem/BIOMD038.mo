model BIOMD038 "Understanding glucose transport by the bacteria phosphoenolpyruvate"

  parameter Real k1f = 1960.0;
  parameter Real k1r = 480000.0;
  parameter Real k2f = 108000.0;
  parameter Real k2r = 294.0;
  parameter Real k3f = 14000.0;
  parameter Real k3r = 14000.0;
  parameter Real k4f = 84000.0;
  parameter Real k4r = 3360.0;
  parameter Real k5f = 21960.0;
  parameter Real k5r = 21960.0;
  parameter Real k6f = 4392.0;
  parameter Real k6r = 3384.0;
  parameter Real k7f = 880.0;
  parameter Real k7r = 880.0;
  parameter Real k8f = 2640.0;
  parameter Real k8r = 960.0;
  parameter Real k9f = 260.0;
  parameter Real k9r = 389.0;
  parameter Real k10f = 4800.0;
  parameter Real k10r = 0.005;

  Real EI;
  Real PyrPI;
  Real EIP;
  Real HPr;
  Real EIPHPr;
  Real HPrP;
  Real EIIA;
  Real HPrPIIA;
  Real EIIAP;
  Real EIICB;
  Real EIIAPIICB;
  Real EIICBP;
  Real EIICBPGlc;
  Real PEP;
  Real Pyr;
  Real GlcP;
  Real Glc;

initial equation
  EI = 3.0;
  PyrPI = 0.0;
  EIP = 2.0;
  HPr = 25.0;
  EIPHPr = 0.0;
  HPrP = 25.0;
  EIIA = 20.0;
  HPrPIIA = 0.0;
  EIIAP = 20.0;
  EIICB = 5.0;
  EIIAPIICB = 0.0;
  EIICBP = 5.0;
  EIICBPGlc = 0.0;
  PEP = 2800.0;
  Pyr = 900.0;
  GlcP = 50.0;
  Glc = 500.0;

equation
  der(PEP) = 0.0;
  der(Pyr) = 0.0;
  der(GlcP) = 0.0;
  der(Glc) = 0.0;
  der(EI) = k4f*EIPHPr-k4r*EI*HPrP - (k1f*PEP*EI-k1r*PyrPI);
  der(PyrP) = k1f*PEP*EI-k1r*PyrPI - (k2f*PyrPI-k2r*Pyr*EIP);
  der(EIP) = k2f*PyrPI-k2r*Pyr*EIP - (k3f*EIP*HPr-k3r*EIPHPr);
  der(HPr) = k6f*HPrPIIA-k6r*HPr*EIIA - (k3f*EIP*HPr-k3r*EIPHPr);
  der(EIPHPr) = k3f*EIP*HPr-k3r*EIPHPr - (k4f*EIPHPr-k4r*EI*HPrP);
  der(HPrP) = k4f*EIPHPr-k4r*EI*HPrP - (k5f*HPrP*EIIA-k5r*HPrPIIA);
  der(EIIA) = k8f*EIIAPIICB-k8r*EIIA*EIICBP - (k5f*HPrP*EIIA-k5r*HPrPIIA);
  der(HPrPIIA) = k5f*HPrP*EIIA-k5r*HPrPIIA - (k6f*HPrPIIA-k6r*HPr*EIIA);
  der(EIIAP) = k6f*HPrPIIA-k6r*HPr*EIIA - (k7f*EIIAP*EIICB-k7r*EIIAPIICB);
  der(EIICB) = k10f*EIICBPGlc-k10r*EIICB*GlcP - (k7f*EIIAP*EIICB-k7r*EIIAPIICB);
  der(EIIAPIICB) = k7f*EIIAP*EIICB-k7r*EIIAPIICB - (k8f*EIIAPIICB-k8r*EIIA*EIICBP);
  der(EIICBP) = k8f*EIIAPIICB-k8r*EIIA*EIICBP - (k9f*EIICBP*Glc-k9r*EIICBPGlc);
  der(EIICBPGlc) = k9f*EIICBP*Glc-k9r*EIICBPGlc - (k10f*EIICBPGlc-k10r*EIICB*GlcP);

end BIOMD038;
