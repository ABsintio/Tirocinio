model BIOMD076 "Metabolic control analysis of glycerol synthesis in Saccharomyces cerevisiae"

    parameter Real Vf1 = 47.000;
    parameter Real K1nadh = 0.023;
    parameter Real K1dhap = 0.540;
    parameter Real NADH = 1.870;
    parameter Real NAD = 1.450;
    parameter Real Keq1 = 10000.000;
    parameter Real F16BP = 6.010;
    parameter Real K1f16bp = 4.800;
    parameter Real ATP = 2.370;
    parameter Real K1atp = 0.730;
    parameter Real ADP = 2.170;
    parameter Real k1adp = 2.000;
    parameter Real K1nad = 0.930;
    parameter Real K1g3p = 1.200;
    parameter Real V2 = 53.0;
    parameter Real K2g3p = 3.5;
    parameter Real Phi = 1.0;
    parameter Real K2phi = 1.0;

    Real G3P "Glycerol 3-phosphate";
    Real Gly "Glycerol";
    Real DHAP "DHAP";

initial equation
    G3P = 0.0;
    Gly = 15.1;
    DHAP = 0.59;

equation
    der(G3P) = Vf1/(K1nadh*K1dhap)*(NADH*DHAP-NAD*G3P/Keq1)/((1+F16BP/K1f16bp+ATP/K1atp+ADP/K1adp)*(1+NADH/K1nadh+NAD/K1nad)*(1+DHAP/K1dhap+G3P/K1g3p)) - V2*G3P/K2g3p/((1+G3P/K2g3p)*(1+Phi/K2phi));
    der(Gly) = 0.0;
    der(DHAP) = 0.0;
    
end BIOMD076;