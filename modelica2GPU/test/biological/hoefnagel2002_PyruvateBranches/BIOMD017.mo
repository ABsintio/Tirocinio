model BIOMD017 "Metabolic engineering of lactic acid bacteria"

  parameter Real V_1 = 2397.000;
  parameter Real Kglc_1 = 0.100;
  parameter Real Knad_1 = 0.141;
  parameter Real Kadp_1 = 0.047;
  parameter Real Kpyr_1 = 2.500;
  parameter Real Knadh_1 = 0.090;
  parameter Real Katp_1 = 0.019;
  parameter Real V_2 = 5118.00;
  parameter Real Keq_2 = 21120.69;
  parameter Real Kpyr_2 = 1.50;
  parameter Real Knadh_2 = 0.08;
  parameter Real Klac_2 = 100.00;
  parameter Real Knad_2 = 2.40;
  parameter Real V_3 = 259.000;
  parameter Real Kpyr_3 = 1.000;
  parameter Real Knad_3 = 0.400;
  parameter Real Kcoa_3 = 0.014;
  parameter Real Ki_3 = 46.416;
  parameter Real Knadh_3 = 0.100;
  parameter Real Kaccoa_3 = 0.008;
  parameter Real V_4 = 42.000;
  parameter Real Keq_4 = 0.007;
  parameter Real Kiaccoa_4 = 0.200;
  parameter Real Kpi_4 = 2.600;
  parameter Real Kipi_4 = 2.600;
  parameter Real Kiacp_4 = 0.200;
  parameter Real Kicoa_4 = 0.029;
  parameter Real Kacp_4 = 0.700;
  parameter Real V_5 = 2700.000;
  parameter Real Keq_5 = 174.217;
  parameter Real Kadp_5 = 0.500;
  parameter Real Kacp_5 = 0.160;
  parameter Real Kac_5 = 7.000;
  parameter Real Katp_5 = 0.070;
  parameter Real V_6 = 97.000;
  parameter Real Keq_6 = 1.000;
  parameter Real Kaccoa_6 = 0.007;
  parameter Real Knadh_6 = 0.025;
  parameter Real Knad_6 = 0.080;
  parameter Real Kcoa_6 = 0.008;
  parameter Real Kaco_6 = 10.000;
  parameter Real V_7 = 162.000;
  parameter Real Keq_7 = 12354.90;
  parameter Real Kaco_7 = 0.030;
  parameter Real Knadh_7 = 0.050;
  parameter Real Knad_7 = 0.080;
  parameter Real Ketoh_7 = 1.00;
  parameter Real V_8 = 600.00;
  parameter Real Kpyr_8 = 50.000;
  parameter Real Keq_8 = 9.00e12;
  parameter Real Kaclac_8 = 100.000;
  parameter Real n_8 = 2.400;
  parameter Real V_9 = 106.0;
  parameter Real Kaclac_9 = 10.0;
  parameter Real Kacet_9 = 100.0;
  parameter Real V_10 = 200.0;
  parameter Real Kacet_10 = 5.0;
  parameter Real V_11 = 105.00;
  parameter Real Keq_11 = 1400.00;
  parameter Real Kacet_11 = 0.06;
  parameter Real Knadh_11 = 0.02;
  parameter Real Kbut_11 = 2.60;
  parameter Real Knad_11 = 0.16;
  parameter Real V_12 = 900.000;
  parameter Real Katp_12 = 6.196;
  parameter Real n_12 = 2.580;
  parameter Real V_13 = 118.000;
  parameter Real Knadh_13 = 0.041;
  parameter Real Ko_13 = 0.200;
  parameter Real Knad_13 = 1.000;
  parameter Real k_14 = 3.00e-4;

  Real ADP;
  Real NAD;
  Real ATP;
  Real NADH;
  Real pyruvate;
  Real lactate;
  Real CoA;
  Real halfglucose;
  Real AcCoA;
  Real AcP;
  Real Ac;
  Real AcO;
  Real EtOH;
  Real AcLac;
  Real AcetoinIn;
  Real AcetoinOut;
  Real Butanediol;
  Real O2;
  Real PO4;

initial equation
  ADP = 4.9;
  NAD = 6.33;
  ATP = 0.1;
  NADH = 3.67;
  pyruvate = 1.0;
  lactate = 0.1;
  CoA = 1.0;
  halfglucose = 30.0;
  AcCoA = 0.0;
  AcP = 0.0;
  Ac = 1.0;
  AcO = 0.0;
  EtOH = 1.0;
  AcLac = 0.0;
  AcetoinIn = 0.0;
  AcetoinOut = 0.0;
  Butanediol = 0.01;
  O2 = 0.2;
  PO4 = 10.0;

equation
  der(ADP) = (V_12*(ATP/(ADP*Katp_12))^n_12)/(1+(ATP/(ADP*Katp_12))^n_12) - (2*V_1*halfglucose/(2*Kglc_1)*NAD/Knad_1*ADP/Kadp_1)/((1+halfglucose/(2*Kglc_1)+pyruvate/Kpyr_1)*(1+NAD/Knad_1+NADH/Knadh_1)*(1+ADP/Kadp_1+ATP/Katp_1)) - (V_5*(AcP*ADP-Ac*ATP/Keq_5)/(Kadp_5*Kacp_5))/((1+AcP/Kacp_5+Ac/Kac_5)*(1+ADP/Kadp_5+ATP/Katp_5));
  der(NAD) = (V_2*((pyruvate*NADH-lactate*NAD/Keq_2)/(Kpyr_2*Knadh_2)))/((1+pyruvate/Kpyr_2+lactate/Klac_2)*(1+NADH/Knadh_2+NAD/Knad_2)) + (V_6*(AcCoA*NADH-CoA*NAD*AcO/Keq_6)/(Kaccoa_6*Knadh_6))/((1+NAD/Knad_6+NADH/Knadh_6)*(1+AcCoA/Kaccoa_6+CoA/Kcoa_6)*(1+AcO/Kaco_6)) + (V_7*(AcO*NADH-EtOH*NAD/Keq_7)/(Kaco_7*Knadh_7))/((1+NAD/Knad_7+NADH/Knadh_7)*(1+AcO/Kaco_7+EtOH/Ketoh_7)) + (V_11*(AcetoinIn*NADH-Butanediol*NAD/Keq_11)/(Kacet_11*Knadh_11))/((1+AcetoinIn/Kacet_11+Butanediol/Kbut_11)*(1+NADH/Knadh_11+NAD/Knad_11)) + (V_13*(NADH*O2/(Knadh_13*Ko_13)))/((1+NADH/Knadh_13+NAD/Knad_13)*(1+O2/Ko_13)) - (2*V_1*halfglucose/(2*Kglc_1)*NAD/Knad_1*ADP/Kadp_1)/((1+halfglucose/(2*Kglc_1)+pyruvate/Kpyr_1)*(1+NAD/Knad_1+NADH/Knadh_1)*(1+ADP/Kadp_1+ATP/Katp_1)) - (V_3*pyruvate/Kpyr_3*NAD/Knad_3*CoA/Kcoa_3*(NAD/(NAD+Ki_3*NADH)))/((1+pyruvate/Kpyr_3)*(1+NAD/Knad_3+NADH/Knadh_3)*(1+CoA/Kcoa_3+AcCoA/Kaccoa_3));
  der(ATP) = (-((V_12*(ATP/(ADP*Katp_12))^n_12)/(1+(ATP/(ADP*Katp_12))^n_12) - (2*V_1*halfglucose/(2*Kglc_1)*NAD/Knad_1*ADP/Kadp_1)/((1+halfglucose/(2*Kglc_1)+pyruvate/Kpyr_1)*(1+NAD/Knad_1+NADH/Knadh_1)*(1+ADP/Kadp_1+ATP/Katp_1)) - (V_5*(AcP*ADP-Ac*ATP/Keq_5)/(Kadp_5*Kacp_5))/((1+AcP/Kacp_5+Ac/Kac_5)*(1+ADP/Kadp_5+ATP/Katp_5))));
  der(NADH) = (-((V_2*((pyruvate*NADH-lactate*NAD/Keq_2)/(Kpyr_2*Knadh_2)))/((1+pyruvate/Kpyr_2+lactate/Klac_2)*(1+NADH/Knadh_2+NAD/Knad_2)) + (V_6*(AcCoA*NADH-CoA*NAD*AcO/Keq_6)/(Kaccoa_6*Knadh_6))/((1+NAD/Knad_6+NADH/Knadh_6)*(1+AcCoA/Kaccoa_6+CoA/Kcoa_6)*(1+AcO/Kaco_6)) + (V_7*(AcO*NADH-EtOH*NAD/Keq_7)/(Kaco_7*Knadh_7))/((1+NAD/Knad_7+NADH/Knadh_7)*(1+AcO/Kaco_7+EtOH/Ketoh_7)) + (V_11*(AcetoinIn*NADH-Butanediol*NAD/Keq_11)/(Kacet_11*Knadh_11))/((1+AcetoinIn/Kacet_11+Butanediol/Kbut_11)*(1+NADH/Knadh_11+NAD/Knad_11)) + (V_13*(NADH*O2/(Knadh_13*Ko_13)))/((1+NADH/Knadh_13+NAD/Knad_13)*(1+O2/Ko_13)) - (2*V_1*halfglucose/(2*Kglc_1)*NAD/Knad_1*ADP/Kadp_1)/((1+halfglucose/(2*Kglc_1)+pyruvate/Kpyr_1)*(1+NAD/Knad_1+NADH/Knadh_1)*(1+ADP/Kadp_1+ATP/Katp_1)) - (V_3*pyruvate/Kpyr_3*NAD/Knad_3*CoA/Kcoa_3*(NAD/(NAD+Ki_3*NADH)))/((1+pyruvate/Kpyr_3)*(1+NAD/Knad_3+NADH/Knadh_3)*(1+CoA/Kcoa_3+AcCoA/Kaccoa_3))));
  der(pyruvate) = (2*V_1*halfglucose/(2*Kglc_1)*NAD/Knad_1*ADP/Kadp_1)/((1+halfglucose/(2*Kglc_1)+pyruvate/Kpyr_1)*(1+NAD/Knad_1+NADH/Knadh_1)*(1+ADP/Kadp_1+ATP/Katp_1)) - (V_2*((pyruvate*NADH-lactate*NAD/Keq_2)/(Kpyr_2*Knadh_2)))/((1+pyruvate/Kpyr_2+lactate/Klac_2)*(1+NADH/Knadh_2+NAD/Knad_2)) - (V_3*pyruvate/Kpyr_3*NAD/Knad_3*CoA/Kcoa_3*(NAD/(NAD+Ki_3*NADH)))/((1+pyruvate/Kpyr_3)*(1+NAD/Knad_3+NADH/Knadh_3)*(1+CoA/Kcoa_3+AcCoA/Kaccoa_3)) - 2 * ((V_8*pyruvate/Kpyr_8*(1-AcLac/(pyruvate*Keq_8))*(pyruvate/Kpyr_8+AcLac/Kaclac_8)^(n_8 - 1))/(1+(pyruvate/Kpyr_8+AcLac/Kaclac_8)^n_8));
  der(lactate) = 0.0;
  der(CoA) = (V_4*(AcCoA*PO4-AcP*CoA/Keq_4)/(Kiaccoa_4*Kpi_4))/(1+AcCoA/Kiaccoa_4+PO4/Kipi_4+AcP/Kiacp_4+CoA/Kicoa_4+AcCoA*PO4/(Kiaccoa_4*Kpi_4)+AcP*CoA/(Kacp_4*Kicoa_4)) + (V_6*(AcCoA*NADH-CoA*NAD*AcO/Keq_6)/(Kaccoa_6*Knadh_6))/((1+NAD/Knad_6+NADH/Knadh_6)*(1+AcCoA/Kaccoa_6+CoA/Kcoa_6)*(1+AcO/Kaco_6)) - (V_3*pyruvate/Kpyr_3*NAD/Knad_3*CoA/Kcoa_3*(NAD/(NAD+Ki_3*NADH)))/((1+pyruvate/Kpyr_3)*(1+NAD/Knad_3+NADH/Knadh_3)*(1+CoA/Kcoa_3+AcCoA/Kaccoa_3));
  der(halfglucose) = 0.0;
  der(AcCoA) = (-((V_4*(AcCoA*PO4-AcP*CoA/Keq_4)/(Kiaccoa_4*Kpi_4))/(1+AcCoA/Kiaccoa_4+PO4/Kipi_4+AcP/Kiacp_4+CoA/Kicoa_4+AcCoA*PO4/(Kiaccoa_4*Kpi_4)+AcP*CoA/(Kacp_4*Kicoa_4)) + (V_6*(AcCoA*NADH-CoA*NAD*AcO/Keq_6)/(Kaccoa_6*Knadh_6))/((1+NAD/Knad_6+NADH/Knadh_6)*(1+AcCoA/Kaccoa_6+CoA/Kcoa_6)*(1+AcO/Kaco_6)) - (V_3*pyruvate/Kpyr_3*NAD/Knad_3*CoA/Kcoa_3*(NAD/(NAD+Ki_3*NADH)))/((1+pyruvate/Kpyr_3)*(1+NAD/Knad_3+NADH/Knadh_3)*(1+CoA/Kcoa_3+AcCoA/Kaccoa_3))));
  der(AcP) = (V_4*(AcCoA*PO4-AcP*CoA/Keq_4)/(Kiaccoa_4*Kpi_4))/(1+AcCoA/Kiaccoa_4+PO4/Kipi_4+AcP/Kiacp_4+CoA/Kicoa_4+AcCoA*PO4/(Kiaccoa_4*Kpi_4)+AcP*CoA/(Kacp_4*Kicoa_4)) - (V_5*(AcP*ADP-Ac*ATP/Keq_5)/(Kadp_5*Kacp_5))/((1+AcP/Kacp_5+Ac/Kac_5)*(1+ADP/Kadp_5+ATP/Katp_5));
  der(Ac) = 0.0;
  der(AcO) = (V_6*(AcCoA*NADH-CoA*NAD*AcO/Keq_6)/(Kaccoa_6*Knadh_6))/((1+NAD/Knad_6+NADH/Knadh_6)*(1+AcCoA/Kaccoa_6+CoA/Kcoa_6)*(1+AcO/Kaco_6)) - (V_7*(AcO*NADH-EtOH*NAD/Keq_7)/(Kaco_7*Knadh_7))/((1+NAD/Knad_7+NADH/Knadh_7)*(1+AcO/Kaco_7+EtOH/Ketoh_7));
  der(EtOH) = 0.0;
  der(AcLac) = (V_8*pyruvate/Kpyr_8*(1-AcLac/(pyruvate*Keq_8))*(pyruvate/Kpyr_8+AcLac/Kaclac_8)^(n_8 - 1))/(1+(pyruvate/Kpyr_8+AcLac/Kaclac_8)^n_8) - (V_9*AcLac/Kaclac_9)/(1+AcLac/Kaclac_9+AcetoinIn/Kacet_9) - k_14*AcLac;
  der(AcetoinIn) = (V_9*AcLac/Kaclac_9)/(1+AcLac/Kaclac_9+AcetoinIn/Kacet_9) + k_14*AcLac - (V_10*AcetoinIn/Kacet_10)/(1+AcetoinIn/Kacet_10) - (V_11*(AcetoinIn*NADH-Butanediol*NAD/Keq_11)/(Kacet_11*Knadh_11))/((1+AcetoinIn/Kacet_11+Butanediol/Kbut_11)*(1+NADH/Knadh_11+NAD/Knad_11));
  der(AcetoinOut) = 0.0;
  der(Butanediol) = 0.0;
  der(O2) = 0.0;
  der(PO4) = 0.0;

end BIOMD017;
