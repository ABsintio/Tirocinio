model BIOMD063 "Fermentation pathway kinetics and metabolic flux control in suspended and immobilized Saccharomyces cerevisiae"

    parameter Real parameter_4 = 14.31;
    parameter Real parameter_5 = 8.25;
    parameter Real parameter_6 = 2.00;
    parameter Real parameter_7 = 68.50;
    parameter Real Vm1 = 19.7;
    parameter Real Ki1G6P = 3.7;
    parameter Real Vm2 = 68.500;
    parameter Real Km2Glc = 0.110;
    parameter Real Km2ATP = 0.100;
    parameter Real Ks2Glc = 0.006;
    parameter Real Vm3 = 14.31;
    parameter Real n3 = 8.25;
    parameter Real K3Gly = 2.00;
    parameter Real Km30 = 1.0;
    parameter Real Km3G6P = 1.10;
    parameter Real Vm4 = 31.700;
    parameter Real g4R = 10.000;
    parameter Real K4F6P = 1.000;
    parameter Real K4ATP = 0.060;
    parameter Real L40 = 3342.000;
    parameter Real c4AMP = 0.019;
    parameter Real K4AMP = 0.025;
    parameter Real c4F6P = 5.0e-4;
    parameter Real c4ATP = 1.000;
    parameter Real gT = 1.000;
    parameter Real Vm5 = 49.900;
    parameter Real K5G3P = 0.003;
    parameter Real K5NAD = 0.180;
    parameter Real NAD = 1.919;
    parameter Real NADH = 0.081;
    parameter Real K5NADH = 3.0e-4;
    parameter Real K5ADP = 1.500;
    parameter Real K5AMP = 1.100;
    parameter Real K5ATP = 2.500;
    parameter Real Vm6 = 3440.000;
    parameter Real K6PEP = 0.008;
    parameter Real K6ADP = 5.000;
    parameter Real g6R = 0.100;
    parameter Real q6 = 1.000;
    parameter Real L60 = 164.084;
    parameter Real c6FDP = 0.010;
    parameter Real K6FDP = 0.200;
    parameter Real g6T = 1.000;
    parameter Real c6PEP = 1.58793e-4;
    parameter Real c6ADP = 1.000;
    parameter Real h6 = 1.14815e-7;
    parameter Real Vm7 = 203.000;
    parameter Real Vm8 = 25.1;

    Real VappGly(start=0.00);
    Real VratioVmax(start=0.00);
    
    Real Clci;
    Real ATP;
    Real G6P;
    Real FDP;
    Real PEP;
    Real Gly;
    Real EtOH;
    Real Carbo;
    Real Glco;

initial equation
    Glci = 0.0345;
    ATP = 1.19;
    G6P = 1.011;
    FDP = 9.144;
    PEP = 0.0095;
    Gly = 0.0;
    EtOH = 0.0;
    Carbo = 0.0;
    Glco = 1.0;

equation
    VappGly = parameter_4*G6P^parameter_5/(parameter_6^parameter_5+G6P^parameter_5);
    VratioVmax = Vm2/(1+Km2Glc/Glci+Km2ATP/ATP+Ks2Glc*Km2ATP/(Glci*ATP))/parameter_7;
    der(Glci) = (Vm1-Ki1G6P*G6P) - Vm2/(1+Km2Glc/Glci+Km2ATP/ATP+Ks2Glc*Km2ATP/(Glci*ATP));
    der(ATP) = 2*(Vm5/(1+K5G3P/(0.01*FDP)+(K5NAD/NAD+K5G3P*K5NAD/(NAD*0.01*FDP)+K5G3P*K5NAD*NADH/(NAD*0.01*FDP*K5NADH))*(1+0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K5ADP+((3-ATP)-0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5))/K5AMP+ATP/K5ATP))) + Vm6*PEP/K6PEP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP*(g6R*(1+PEP/K6PEP+0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6R*PEP/K6PEP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP)+q6*L60*((1+c6FDP*FDP/K6FDP)/(1+FDP/K6FDP))^2*g6T*c6PEP*PEP/K6PEP*c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP*(1+c6PEP*PEP/K6PEP+c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6T*c6PEP*PEP/K6PEP*c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP))/((1+9.55*10^-9/h6)*((1+PEP/K6PEP+0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6R*PEP/K6PEP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP)^2+L60*((1+c6FDP*FDP/K6FDP)/(1+FDP/K6FDP))^2*(1+c6PEP*PEP/K6PEP+c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6T*c6PEP*PEP/K6PEP*c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP)^2)) - Vm2/(1+Km2Glc/Glci+Km2ATP/ATP+Ks2Glc*Km2ATP/(Glci*ATP)) - Vm3*G6P^n3/(K3Gly^n3+G6P^n3)/(1+Km30/0.7*(1+Km3G6P/G6P)) - Vm4*g4R*0.3*G6P/K4F6P*ATP/K4ATP*(1+0.3*G6P/K4F6P+ATP/K4ATP+g4R*0.3*G6P/K4F6P*ATP/K4ATP)/((1+0.3*G6P/K4F6P+ATP/K4ATP+g4R*0.3*G6P/K4F6P*ATP/K4ATP)^2+L40*((1+c4AMP*((3-ATP)-0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5))/K4AMP)/(1+((3-ATP)-0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5))/K4AMP))^2*(1+c4F6P*0.3*G6P/K4F6P+c4ATP*ATP/K4ATP+gT*c4F6P*0.3*G6P/K4F6P*c4ATP*ATP/K4ATP)^2) - Vm8*ATP;
    der(G6P) = Vm2/(1+Km2Glc/Glci+Km2ATP/ATP+Ks2Glc*Km2ATP/(Glci*ATP)) - Vm3*G6P^n3/(K3Gly^n3+G6P^n3)/(1+Km30/0.7*(1+Km3G6P/G6P)) - Vm4*g4R*0.3*G6P/K4F6P*ATP/K4ATP*(1+0.3*G6P/K4F6P+ATP/K4ATP+g4R*0.3*G6P/K4F6P*ATP/K4ATP)/((1+0.3*G6P/K4F6P+ATP/K4ATP+g4R*0.3*G6P/K4F6P*ATP/K4ATP)^2+L40*((1+c4AMP*((3-ATP)-0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5))/K4AMP)/(1+((3-ATP)-0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5))/K4AMP))^2*(1+c4F6P*0.3*G6P/K4F6P+c4ATP*ATP/K4ATP+gT*c4F6P*0.3*G6P/K4F6P*c4ATP*ATP/K4ATP)^2);
    der(FDP) = Vm4*g4R*0.3*G6P/K4F6P*ATP/K4ATP*(1+0.3*G6P/K4F6P+ATP/K4ATP+g4R*0.3*G6P/K4F6P*ATP/K4ATP)/((1+0.3*G6P/K4F6P+ATP/K4ATP+g4R*0.3*G6P/K4F6P*ATP/K4ATP)^2+L40*((1+c4AMP*((3-ATP)-0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5))/K4AMP)/(1+((3-ATP)-0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5))/K4AMP))^2*(1+c4F6P*0.3*G6P/K4F6P+c4ATP*ATP/K4ATP+gT*c4F6P*0.3*G6P/K4F6P*c4ATP*ATP/K4ATP)^2) - Vm5/(1+K5G3P/(0.01*FDP)+(K5NAD/NAD+K5G3P*K5NAD/(NAD*0.01*FDP)+K5G3P*K5NAD*NADH/(NAD*0.01*FDP*K5NADH))*(1+0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K5ADP+((3-ATP)-0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5))/K5AMP+ATP/K5ATP)) - 0.5*(Vm7*PEP/K6PEP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP*(g6R*(1+PEP/K6PEP+0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6R*PEP/K6PEP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP)+q6*L60*((1+c6FDP*FDP/K6FDP)/(1+FDP/K6FDP))^2*g6T*c6PEP*PEP/K6PEP*c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP*(1+c6PEP*PEP/K6PEP+c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6T*c6PEP*PEP/K6PEP*c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP))/((1+9.55*10^-9/h6)*((1+PEP/K6PEP+0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6R*PEP/K6PEP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP)^2+L60*((1+c6FDP*FDP/K6FDP)/(1+FDP/K6FDP))^2*(1+c6PEP*PEP/K6PEP+c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6T*c6PEP*PEP/K6PEP*c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP)^2)));
    der(PEP) = 2*(Vm5/(1+K5G3P/(0.01*FDP)+(K5NAD/NAD+K5G3P*K5NAD/(NAD*0.01*FDP)+K5G3P*K5NAD*NADH/(NAD*0.01*FDP*K5NADH))*(1+0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K5ADP+((3-ATP)-0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5))/K5AMP+ATP/K5ATP))) - Vm6*PEP/K6PEP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP*(g6R*(1+PEP/K6PEP+0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6R*PEP/K6PEP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP)+q6*L60*((1+c6FDP*FDP/K6FDP)/(1+FDP/K6FDP))^2*g6T*c6PEP*PEP/K6PEP*c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP*(1+c6PEP*PEP/K6PEP+c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6T*c6PEP*PEP/K6PEP*c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP))/((1+9.55*10^-9/h6)*((1+PEP/K6PEP+0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6R*PEP/K6PEP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP)^2+L60*((1+c6FDP*FDP/K6FDP)/(1+FDP/K6FDP))^2*(1+c6PEP*PEP/K6PEP+c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP+g6T*c6PEP*PEP/K6PEP*c6ADP*0.5*((-ATP)+(12*ATP-3*ATP^2)^0.5)/K6ADP)^2));
    der(Gly) = 0.0;
    der(EtOH) = 0.0;
    der(Carbo) = 0.0;
    der(Glco) = 0.0;

end BIOMD063;