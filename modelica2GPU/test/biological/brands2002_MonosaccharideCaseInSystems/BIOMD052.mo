model BIOMD052 "Kinetic modeling of reactions in heated monosaccharide-casein systems"

    parameter Real K1 = 0.01;
    parameter Real K2 = 0.005;
    parameter Real K3 = 4.7e-4;
    parameter Real K4 = 0.001;
    parameter Real K5 = 0.007;
    parameter Real K6 = 0.004;
    parameter Real K7 = 1.8e-4;
    parameter Real K8 = 0.111;
    parameter Real K9 = 0.144;
    parameter Real K10 = 1.5e-4;
    parameter Real K11 = 0.125;

    Real Glu;
    Real Fru;
    Real Formic_acid;
    Real Triose;
    Real Acetic_acid;
    Real Cn;
    Real Amadori;
    Real AMP;
    Real C5;
    Real lys_R;
    Real Melanoidin;

initial equation
    Glu = 160.0;
    Fru = 0.0;
    Formic_acid = 0.0;
    Triose = 0.0;
    Acetic_acid = 0.0;
    Cn = 0.0;
    Amadori = 0.0;
    AMP = 0.0;
    C5 = 0.0;
    lys_R = 15.0;
    Melanoidin = 0.0;

equation
    der(Glu) = K2*Fru - K1*Glu - K3*Glu - K7*Glu*lys_R;
    der(Fru) = K1*Glu - K2*Fru - K4*Fru - K5*Fru - K10*Fru*lys_R;
    der(Formic_acid) = K3*Glu + K4*Fru;
    der(Triose) = 2*K5*Fru - K6*Triose;
    der(Acetic_acid) = K6*Triose + K8*Amadori;
    der(Cn) = K6*Triose;
    der(Amadori) = K7*Glu*lys_R - K8*Amadori - K9*Amadori;
    der(AMP) = K9*Amadori + K10*Fru*lys_R - K11*AMP;
    der(C5) = K3*Glu + K4*Fru;
    der(lys_R) = K8*Amadori - K7*Glu*lys_R - K10*Fru*lys_R;
    der(Melanoidin) = K11*AMP;
    
end BIOMD052;