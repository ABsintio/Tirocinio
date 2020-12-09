model BIOMD050 "Kinetic modelling of Amadori N-(1-deoxy-D-fructos-1-yl)-glycine degradation pathways. Part II--kinetic analysis"

    parameter Real k1 = 0.006;
    parameter Real k2 = 0.016;
    parameter Real k3 = 0.016;
    parameter Real k4 = 0.079;
    parameter Real k5 = 0.091;
    parameter Real k6 = 0.027;
    parameter Real k7 = 0.213;
    parameter Real k8 = 0.0;
    parameter Real k9 = 1.909;
    parameter Real k10 = 0.071;
    parameter Real k11 = 0.113;
    parameter Real k12 = 8.0e-4;
    parameter Real k13 = 0.002;
    parameter Real k14 = 0.003;
    parameter Real k15 = 0.016;
    parameter Real k16 = 0.013;

    Real DFG;
    Real E1;
    Real E2;
    Real Cn;
    Real Gly;
    Real _3DG;
    Real FA;
    Real _1DG;
    Real AA;
    Real Man;
    Real Glu;
    Real MG;
    Real Mel;
    Real Fru;

initial equation
    DFG = 9;
    E1 = 0.0;
    E2 = 0.0;
    Cn = 0.0;
    Gly = 0.0;
    _3DG = 0.0;
    FA = 0.0;
    _1DG = 0.0;
    AA = 0.0;
    Man = 0.0;
    Glu = 0.0;
    MG = 0.0;
    Mel = 0.0;
    Fru = 0.0;

equation
    der(DFG) = -k1*DFG - k2*DFG - k3*DFG;
    der(E1) = k1*DFG - k4*E1 - k10*E1 - k11*E1;
    der(E2) = k2*DFG - k7*E2 - k16*E2;
    der(Cn) = k3*DFG + k5*_3DG + k8*_1DG;
    der(Gly) = k3*DFG + k4*E1 + k7*E2 + k10*E1 + k11*E1 + k16*E2 - k14*Cn*Gly;
    der(_3DG) = k4*E1 + k13*Glu - k5*_3DG - k6*_3DG;
    der(FA) = k6*_3DG + k15*Cn;
    der(_1DG) = k7*E2 - k8*_1DG - k9*_1DG;
    der(AA) = k9*_1DG + k15*Cn;
    der(Man) = k10*E1 + k15*Cn;
    der(Glu) = k11*E1 + k12*Man - k13*Glu;
    der(MG) = k15*Cn;
    der(Mel) = k14*Cn*Gly;
    der(Fru) = k16*E2;
    
end BIOMD050;