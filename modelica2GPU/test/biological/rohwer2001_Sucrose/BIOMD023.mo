model BIOMD023 "Analysis of sucrose accumulation in the sugar cane culm on the basis of in vitro kinetic data"

  parameter Real Vmax1 = 0.286;
  parameter Real Km1Fruex = 0.200;
  parameter Real Mi1Fru = 1.000;
  parameter Real Vmax2 = 1.000;
  parameter Real Km2Glcex = 0.200;
  parameter Real Ki2Glc = 1.000;
  parameter Real Vmax3 = 0.197;
  parameter Real Km3Glc = 0.070;
  parameter Real Km3ATP = 0.250;
  parameter Real Km4Fru = 10.000;
  parameter Real Ki3G6P = 0.100;
  parameter Real Ki4F6P = 10.000;
  parameter Real Vmax4 = 0.197;
  parameter Real Km4ATP = 0.250;
  parameter Real Vmax5 = 0.164;
  parameter Real Ki5Fru = 12.000;
  parameter Real Km5Fru = 0.100;
  parameter Real Km5ATP = 0.085;
  parameter Real Ki5ADP = 2.000;
  parameter Real Vmax6f = 0.379;
  parameter Real Keq6 = 10.000;
  parameter Real Ki6Suc6P = 0.070;
  parameter Real Km6F6P = 0.600;
  parameter Real Ki6Pi = 3.000;
  parameter Real Ki6UDPGlc = 1.400;
  parameter Real Km6UDPGlc = 1.800;
  parameter Real Vmax6r = 0.200;
  parameter Real Km6UDP = 0.300;
  parameter Real Km6Suc6P = 0.100;
  parameter Real Ki6F6P = 0.400;
  parameter Real Vmax7 = 0.5;
  parameter Real Km7Suc6P = 0.1;
  parameter Real Vmax8f = 0.677;
  parameter Real Keq8 = 5.000;
  parameter Real Ki8Fru = 4.000;
  parameter Real Km8Suc = 50.000;
  parameter Real Ki8UDP = 0.300;
  parameter Real Km8UDP = 0.300;
  parameter Real Vmax8r = 0.300;
  parameter Real Km8UDPGlc = 0.300;
  parameter Real Km8Fru = 4.000;
  parameter Real Ki8Suc = 40.000;
  parameter Real Vmax9 = 0.372;
  parameter Real Ki9Glc = 15.000;
  parameter Real Km9Suc = 10.000;
  parameter Real Ki9Fru = 15.000;
  parameter Real Vmax10 = 0.1;
  parameter Real Km10F6P = 0.2;
  parameter Real Vmax11 = 1.0;
  parameter Real Km11Suc = 100.0;

  Real Fru;
  Real Glc;
  Real HexP;
  Real Suc6P;
  Real Suc;
  Real Sucvac;
  Real glycolysis;
  Real phos;
  Real UDP;
  Real ADP;
  Real ATP;
  Real Glcex;
  Real Fruex;

initial equation
  Fru = 1.0;
  Glc = 1.0;
  HexP = 1.0,
  Suc6P = 1.0;
  Suc = 1.0;
  Sucvac = 0.0;
  glycolysis = 0.0;
  phos = 0.0;
  UDP = 0.0;
  ADP = 0.0;
  ATP = 0.0;
  Glcex = 5.0;
  Fruex = 5.0;

equation
  der(Sucvac) = 0.0;
  der(glycolysis) = 0.0;
  der(phos) = 0.0;
  der(UDP) = 0.0;
  der(ADP) = 0.0;
  der(ATP) = 0.0;
  der(Glcex) = 0.0;
  der(Fruex) = 0.0;
  der(Fru) = Vmax1*Fruex/(Km1Fruex*(1+Fru/Ki1Fru) + Fruex) + Vmax9/(1+Glc/Ki9Glc)*Suc/(Km9Suc*(1+Fru/Ki9Fru)+Suc) - Vmax4*Fru/Km4Fru*ATP/Km4ATP/((1+ATP/Km4ATP)*(1+Glc/Km3Glc+Fru/Km4Fru+0.113*HexP/Ki3G6P+0.0575*HexP/Ki4F6P)) - Vmax5/(1+Fru/Ki5Fru)*Fru/Km5Fru*ATP/Km5ATP/(1+Fru/Km5Fru+ATP/Km5ATP+Fru*ATP/(Km5Fru*Km5ATP)+ADP/Ki5ADP) - (-Vmax8f)*(Suc*UDP-Fru*0.8231*HexP/Keq8)/(Suc*UDP*(1+Fru/Ki8Fru)+Km8Suc*(UDP+Ki8UDP)+Km8UDP*Suc+Vmax8f/(Vmax8r*Keq8)*(Km8UDPGlc*Fru*(1+UDP/Ki8UDP)+0.8231*HexP*(Km8Fru*(1+Km8UDP*Suc/(Ki8UDP*Km8Suc))+Fru*(1+Suc/Ki8Suc))));
  der(Glc) = Vmax2*Glcex/(Km2Glcex*(1+Glc/Ki2Glc)+Glcex) + Vmax9/(1+Glc/Ki9Glc)*Suc/(Km9Suc*(1+Fru/Ki9Fru)+Suc) - Vmax3*Glc/Km3Glc*ATP/Km3ATP/((1+ATP/Km3ATP)*(1+Glc/Km3Glc+Fru/Km4Fru+0.113*HexP/Ki3G6P+0.0575*HexP/Ki4F6P));
  der(HexP) = Vmax3*Glc/Km3Glc*ATP/Km3ATP/((1+ATP/Km3ATP)*(1+Glc/Km3Glc+Fru/Km4Fru+0.113*HexP/Ki3G6P+0.0575*HexP/Ki4F6P)) + Vmax4*Fru/Km4Fru*ATP/Km4ATP/((1+ATP/Km4ATP)*(1+Glc/Km3Glc+Fru/Km4Fru+0.113*HexP/Ki3G6P+0.0575*HexP/Ki4F6P)) + Vmax5/(1+Fru/Ki5Fru)*Fru/Km5Fru*ATP/Km5ATP/(1+Fru/Km5Fru+ATP/Km5ATP+Fru*ATP/(Km5Fru*Km5ATP)+ADP/Ki5ADP) - 2 * (((Vmax6f*((0.0575*HexP*0.8231*HexP)-((Suc6P*UDP)/Keq6)))/((0.0575*HexP*0.8231*HexP*(1.0+(Suc6P/Ki6Suc6P)))+(Km6F6P*(1.0+(phos/Ki6Pi))*((0.8231*HexP)+Ki6UDPGlc))+(Km6UDPGlc*0.0575*HexP)+((Vmax6f/(Vmax6r*Keq6))*((Km6UDP*Suc6P*(1.0+((0.8231*HexP)/Ki6UDPGlc)))+(UDP*((Km6Suc6P*(1.0+((Km6UDPGlc*0.0575*HexP)/(Ki6UDPGlc*Km6F6P*(1.0+(phos/Ki6Pi))))))+(Suc6P*(1.0+((0.0575*HexP)/Ki6F6P)))))))))) - (-Vmax8f)*(Suc*UDP-Fru*0.8231*HexP/Keq8)/(Suc*UDP*(1+Fru/Ki8Fru)+Km8Suc*(UDP+Ki8UDP)+Km8UDP*Suc+Vmax8f/(Vmax8r*Keq8)*(Km8UDPGlc*Fru*(1+UDP/Ki8UDP)+0.8231*HexP*(Km8Fru*(1+Km8UDP*Suc/(Ki8UDP*Km8Suc))+Fru*(1+Suc/Ki8Suc)))) - Vmax10*0.0575*HexP/(Km10F6P+0.0575*HexP);
  der(Suc6) = ((Vmax6f*((0.0575*HexP*0.8231*HexP)-((Suc6P*UDP)/Keq6)))/((0.0575*HexP*0.8231*HexP*(1.0+(Suc6P/Ki6Suc6P)))+(Km6F6P*(1.0+(phos/Ki6Pi))*((0.8231*HexP)+Ki6UDPGlc))+(Km6UDPGlc*0.0575*HexP)+((Vmax6f/(Vmax6r*Keq6))*((Km6UDP*Suc6P*(1.0+((0.8231*HexP)/Ki6UDPGlc)))+(UDP*((Km6Suc6P*(1.0+((Km6UDPGlc*0.0575*HexP)/(Ki6UDPGlc*Km6F6P*(1.0+(phos/Ki6Pi))))))+(Suc6P*(1.0+((0.0575*HexP)/Ki6F6P))))))))) - Vmax7*Suc6P/(Km7Suc6P+Suc6P);
  der(Suc) = Vmax7*Suc6P/(Km7Suc6P+Suc6P) + (-Vmax8f)*(Suc*UDP-Fru*0.8231*HexP/Keq8)/(Suc*UDP*(1+Fru/Ki8Fru)+Km8Suc*(UDP+Ki8UDP)+Km8UDP*Suc+Vmax8f/(Vmax8r*Keq8)*(Km8UDPGlc*Fru*(1+UDP/Ki8UDP)+0.8231*HexP*(Km8Fru*(1+Km8UDP*Suc/(Ki8UDP*Km8Suc))+Fru*(1+Suc/Ki8Suc)))) - Vmax9/(1+Glc/Ki9Glc)*Suc/(Km9Suc*(1+Fru/Ki9Fru)+Suc) - Vmax11*Suc/(Km11Suc+Suc);

end BIOMD023;
