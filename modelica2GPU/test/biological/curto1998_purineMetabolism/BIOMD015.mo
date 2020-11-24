model BIOMD015 "Mathematical models of purine metabolism in man."

  parameter Real aada = 0.001;
  parameter Real fada4 = 0.970;
  parameter Real aade = 0.01;
  parameter Real fade6 = 0.55;
  parameter Real aadna = 3.279;
  parameter Real fdnap9 = 0.420;
  parameter Real fdnap10 = 0.330;
  parameter Real aadrnr = 0.060;
  parameter Real fadrnr4 = 0.100;
  parameter Real fadrnr9 = -0.300;
  parameter Real fadrnr10 = 0.870;
  parameter Real aampd = 0.027;
  parameter Real fampd4 = 0.800;
  parameter Real fampd8 = -0.030;
  parameter Real fampd18 = -0.100;
  parameter Real aaprt = 233.800;
  parameter Real faprt1 = 0.500;
  parameter Real faprt4 = -0.800;
  parameter Real faprt6 = 0.750;
  parameter Real aarna = 614.500;
  parameter Real frnap4 = 0.050;
  parameter Real frnap8 = 0.130;
  parameter Real aasuc = 3.593;
  parameter Real fasuc2 = 0.400;
  parameter Real fasuc4 = -0.240;
  parameter Real fasuc8 = 0.200;
  parameter Real fasuc18 = -0.050;
  parameter Real aasli = 66544.000;
  parameter Real fasli3 = 0.990;
  parameter Real fasli4 = -0.950;
  parameter Real adada = 0.033;
  parameter Real fdada9 = 1.000;
  parameter Real aden = 5.273;
  parameter Real fden1 = 2.000;
  parameter Real fden2 = -0.060;
  parameter Real fden4 = -0.250;
  parameter Real fden8 = -0.200;
  parameter Real fden18 = -0.080;
  parameter Real adgnuc = 0.033;
  parameter Real fdgnuc10 = 1.000;
  parameter Real adnaa = 0.002;
  parameter Real fdnan12 = 1.000;
  parameter Real adnag = 0.001;
  parameter Real agdna = 2.230;
  parameter Real agdrnr = 0.120;
  parameter Real fgdrnr8 = 0.400;
  parameter Real fgdrnr9 = -1.200;
  parameter Real fgdrnr10 = -0.390;
  parameter Real agmpr = 0.301;
  parameter Real fgmpr2 = -0.150;
  parameter Real fgmpr4 = -0.070;
  parameter Real fgmpr7 = -0.760;
  parameter Real fgmpr8 = 0.700;
  parameter Real agmps = 0.374;
  parameter Real fgmps4 = 0.120;
  parameter Real fgmps7 = 0.160;
  parameter Real agnuc = 0.251;
  parameter Real fgnuc8 = 0.900;
  parameter Real fgnuc18 = -0.340;
  parameter Real agprt = 361.690;
  parameter Real fgprt1 = 1.200;
  parameter Real fgprt8 = -1.200;
  parameter Real fgprt15 = 0.420;
  parameter Real agrna = 409.600;
  parameter Real frnap4 = 0.050;
  parameter Real franp8 = 0.130;
  parameter Real agua = 0.492;
  parameter Real fgua15 = 0.500;
  parameter Real ahprt = 12.569;
  parameter Real fhprt1 = 1.100;
  parameter Real fhprt2 = -0.890;
  parameter Real fhprt13 = 0.480;
  parameter Real ahx = 0.004;
  parameter Real fhx13 = 1.120;
  parameter Real ahxd = 0.275;
  parameter Real fhxd13 = 0.650;
  parameter Real aimpd = 1.282;
  parameter Real fimpd2 = 0.150;
  parameter Real fimpd7 = -0.090;
  parameter Real fimpd8 = -0.030;
  parameter Real ainuc = 0.914;
  parameter Real finuc2 = 0.800;
  parameter Real finuc18 = -0.360;
  parameter Real amat = 7.207;
  parameter Real fmat4 = 0.200;
  parameter Real fmat5 = -0.600;
  parameter Real apolyam = 0.290;
  parameter Real fpolyam5 = 0.900;
  parameter Real aprpps = 0.900;
  parameter Real fprpps1 = -0.030;
  parameter Real fprpps4 = -0.450;
  parameter Real fprpps8 = -0.040;
  parameter Real fprpps17 = 0.650;
  parameter Real fprpps18 = 0.700;
  parameter Real apyr = 1.295;
  parameter Real fpyr1 = 1.270;
  parameter Real arnaa = 0.069;
  parameter Real arnag = 0.046;
  parameter Real atrans = 8.854;
  parameter Real ftrans5 = 0.330;
  parameter Real aua = 8.744e-5;
  parameter Real fua16 = 2.210;
  parameter Real ax = 0.001;
  parameter Real axd = 0.949;
  parameter Real fxd14 = 0.550;

  Real PRPP "phosphoribosylpyrophosphate";
  Real IMP  "inose monophosphate";
  Real SAMP "adenylosuccinate";
  Real ATP  "ATP_ADP_AMP_Ado";
  Real SAM  "s-adenosyl-L-methionine";
  Real Ade  "adenine";
  Real XMP  "xanthosine monophosphate";
  Real GTP  "GTP_GDP_GMP";
  Real dATP "dATP_dADP_dAMP_dAdo";
  Real dGTP "dGTP_dGDP_dGMP";
  Real RNA;
  Real DNA;
  Real HX   "dIno_Ino_HX";
  Real Xa   "xanthine";
  Real Gua  "guanine";
  Real UA   "uric acid";
  Real R5P  "ribose-5-phosphate";
  Real Pi   "phosphate";

initial equation
  PRPP = 5.01742;
  IMP = 98.2634;
  SAMP = 0.198189;
  ATP = 2475.35;
  SAM = 3.99187;
  Ade = 0.98473;
  XMP = 24.793;
  GTP = 410.223;
  dATP = 6.01413;
  dGTP = 3.02581;
  RNA = 28680.5;
  DNA = 5179.34;
  HX = 9.51785;
  Xa = 5.05941;
  Gua = 5.50638;
  UA = 100.293;
  R5P = 18.0;
  Pi = 1400.0;

equation

  der(PRPP) = (aprpps * (PRPP^fprpps1) * (ATP^fprpps4) * (GTP^fprpps8) * (R5P^fprpps17) * (Pi^fprpps18)) - (aaprt * (PRPP^faprt1) * (ATP^faprt4) * (Ade^faprt6)) - (aden * (PRPP^fden1) * (IMP^fden2) * (ATP^fden4) * (GTP^fden8) * (Pi^fden18)) - (agprt * (PRPP^fgprt1) * (GTP^fgprt8) * (Gua^fgprt15)) - (ahprt * (PRPP^fhprt1) * (IMP^fhprt2) * (HX^fhprt13)) - (apyr * (PRPP^fpyr1));
  der(IMP) = (aampd * (ATP^fampd4) * (GTP^fampd8) * (Pi^fampd18)) + (aden * (PRPP^fden1) * (IMP^fden2) * (ATP^fden4) * (GTP^fden8) * (Pi^fden18)) + (agmpr * (IMP^fgmpr2) * (ATP^fgmpr4) * (XMP^fgmpr7) * (GTP^fgmpr8)) + (ahprt * (PRPP^fhprt1) * (IMP^fhprt2) * (HX^fhprt13)) - (aasuc * (IMP^fasuc2) * (ATP^fasuc4) * (GTP^fasuc8) * (Pi^fasuc18)) - (aimpd * (IMP^fimpd2) * (XMP^fimpd7) * (GTP^fimpd8)) - (ainuc * (IMP^finuc2) * (Pi^finuc18));
  der(SAMP) = (aasuc * (IMP^fasuc2) * (ATP^fasuc4) * (GTP^fasuc8) * (Pi^fasuc18)) - (aasli * (SAMP^fasli3) * (ATP^fasli4));
  der(ATP) = (aaprt * (PRPP^faprt1) * (ATP^faprt4) * (Ade^faprt6)) + (aasli * (SAMP^fasli3) * (ATP^fasli4)) + (arnaa * RNA) + (atrans * (SAM^ftrans5)) - (aada * (ATP^fada4)) - (aadrnr * (ATP^fadrnr4) * (dATP^fadrnr9) * (dGTP^fadrnr10)) - (aampd * (ATP^fampd4) * (GTP^fampd8) * (Pi^fampd18)) - (aarna * (ATP^frnap4) * (GTP^frnap8)) - (amat * (ATP^fmat4) * (SAM^fmat5));
  der(SAM) = (amat * (ATP^fmat4) * (SAM^fmat5)) - (apolyam * (SAM^fpolyam5)) - (atrans * (SAM^ftrans5));
  der(Ade) = (apolyam * (SAM^fpolyam5)) - (aade * (Ade^fade6)) - (aaprt * (PRPP^faprt1) * (ATP^faprt4) * (Ade^faprt6));
  der(XMP) = (aimpd * (IMP^fimpd2) * (XMP^fimpd7) * (GTP^fimpd8)) - (agmps * (ATP^fgmps4) * (XMP^fgmps7));
  der(GTP) = (agmps * (ATP^fgmps4) * (XMP^fgmps7)) + (agprt * (PRPP^fgprt1) * (GTP^fgprt8) * (Gua^fgprt15)) + (arnag * RNA) - (agdrnr * (GTP^fgdrnr8) * (dATP^fgdrnr9) * (dGTP^fgdrnr10)) - (agmpr * (IMP^fgmpr2) * (ATP^fgmpr4) * (XMP^fgmpr7) * (GTP^fgmpr8)) - (agnuc * (GTP^fgnuc8) * (Pi^fgnuc18)) - (agrna * (ATP^frnap4) * (GTP^frnap8));
  der(dATP) = (aadrnr * (ATP^fadrnr4) * (dATP^fadrnr9) * (dGTP^fadrnr10)) + (adnaa * (DNA^fdnan12)) - (aadna * (dATP^fdnap9) * (dGTP^fdnap10)) - (adada * (dATP^fdada9));
  der(dGTP) = (adnag * (DNA^fdnan12)) + (agdrnr * (GTP^fgdrnr8) * (dATP^fgdrnr9) * (dGTP^fgdrnr10)) - (adgnuc * (dGTP^fdgnuc10)) - (agdna * (dATP^fdnap9) * (dGTP^fdnap9));
  der(RNA) = (aarna * (ATP^frnap4) * (GTP^frnap8)) + (agrna * (ATP^frnap4) * (GTP^frnap8)) - (arnaa * RNA) - (arnag * RNA);
  der(DNA) = (aadna * (dATP^fdnap9) * (dGTP^fdnap10)) + (agdna * (dATP^fdnap9) * (dGTP^fdnap9)) - (adnaa * (DNA^fdnan12)) - (adnag * (DNA^fdnan12));
  der(HX) = (aada * (ATP^fada4)) + (adada * (dATP^fdada9)) + (ainuc * (IMP^finuc2) * (Pi^finuc18)) - (ahprt * (PRPP^fhprt1) * (IMP^fhprt2) * (HX^fhprt13)) - (ahx * (HX^fhx13)) - (ahxd * (HX^fhxd13));
  der(Xa) = (agua * (Gua^fgua15)) + (ahxd * (HX^fhxd13)) - (ax * Xa * Xa) - (axd * (Xa^fxd14));
  der(Gua) = (adgnuc * (dGTP^fdgnuc10)) + (agnuc * (GTP^fgnuc8) * (Pi^fgnuc18)) - (agprt * (PRPP^fgprt1) * (GTP^fgprt8) * (Gua^fgprt15)) - (agua * (Gua^fgua15));
  der(UA) = (axd * (Xa^fxd14)) - (aua * (UA^fua16));
  der(R5P) = 0.0;
  der(Pi) = 0.0; 

end BIOMD015;