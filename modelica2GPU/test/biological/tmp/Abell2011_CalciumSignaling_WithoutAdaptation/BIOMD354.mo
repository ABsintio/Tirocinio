
model BIOMD354 "Abell2011_CalciumSignaling_WithoutAdaptation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real A = 3.0;
    parameter Real B = 0.266;
    parameter Real D = 2.0;
    parameter Real E = 5.0;
    parameter Real F = 0.018;
    parameter Real k2 = 0.175;
    parameter Real L = 0.01;
    parameter Real R = 1.0;
    parameter Real kIP3R = 0.175;
    parameter Real PMleak = 0.0346;
    parameter Real kSTIM = 1.0;
    parameter Real mw004dcb62_da5f_41c7_a7bd_033574894f48 = 0.02;
    parameter Real mw78dd80b8_e003_4c62_81d1_547d001767af = 0.13;
    parameter Real mw3a93c3a6_623a_44fe_84e9_a47823defd1f = 0.2;
    parameter Real mwd21d3f76_d133_4053_8e44_02a538657e0a = 0.013;
    parameter Real mwf998b218_be11_4aa4_81ae_41141861fb42 = 1.0;
    parameter Real mwc714c217_c8fd_4024_912c_681cd6931f59 = 0.03;
    parameter Real mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33 = 0.005;
    parameter Real mw886be93a_22c7_4966_a1fa_113afd832ae3 = 0.03;
    parameter Real mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d = 0.6;
    parameter Real cytosol = 1.0;
    parameter Real outside = 1.0;
    parameter Real ER_store = 1.0;
    parameter Real mitochondria = 1.0;



    Real CaI;
    Real IP3;
    Real g;
    Real CaO;
    Real CaS;
    Real CaM;

initial equation
    CaI = 0.05;
    IP3 = 0.0;
    g = 0.002;
    CaO = 1000.0;
    CaS = 2.0;
    CaM = 0.0;

equation

    der(CaI) = ((1 - mwc714c217_c8fd_4024_912c_681cd6931f59) * (L + (1 - g) * A * pow(IP3, 2) / (pow(IP3, 2) + pow(kIP3R, 2)) * pow(CaI, 2) / (pow(CaI, 2) + pow(mw78dd80b8_e003_4c62_81d1_547d001767af, 2))) * CaS) + (mw004dcb62_da5f_41c7_a7bd_033574894f48 * (PMleak + pow(kSTIM, 8) / (pow(CaS, 8) + pow(kSTIM, 8)))) + (mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33 * CaM / (CaM + 0.01)) - (B * pow(CaI, 2) / (pow(CaI, 2) + pow(k2, 2))) - (mwd21d3f76_d133_4053_8e44_02a538657e0a * pow(CaI, 2) / (pow(CaI, 2) + pow(mw3a93c3a6_623a_44fe_84e9_a47823defd1f, 2))) - (mw886be93a_22c7_4966_a1fa_113afd832ae3 * pow(CaI, 4) / (pow(CaI, 4) + pow(mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d, 4)));
    der(IP3) = (R * CaI) - (D * IP3);
    der(g) = (E * pow(CaI, 4) / (pow(CaI, 4) + pow(mwf998b218_be11_4aa4_81ae_41141861fb42, 4)) * (1 - g)) - (F * g);
    der(CaO) = 0.0;
    der(CaS) = (B * pow(CaI, 2) / (pow(CaI, 2) + pow(k2, 2))) - ((1 - mwc714c217_c8fd_4024_912c_681cd6931f59) * (L + (1 - g) * A * pow(IP3, 2) / (pow(IP3, 2) + pow(kIP3R, 2)) * pow(CaI, 2) / (pow(CaI, 2) + pow(mw78dd80b8_e003_4c62_81d1_547d001767af, 2))) * CaS) - (mwc714c217_c8fd_4024_912c_681cd6931f59 * (L + (1 - g) * A * pow(IP3, 2) / (pow(IP3, 2) + pow(kIP3R, 2)) * pow(CaI, 2) / (pow(CaI, 2) + pow(mw78dd80b8_e003_4c62_81d1_547d001767af, 2))) * CaS);
    der(CaM) = (mw886be93a_22c7_4966_a1fa_113afd832ae3 * pow(CaI, 4) / (pow(CaI, 4) + pow(mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d, 4))) + (mwc714c217_c8fd_4024_912c_681cd6931f59 * (L + (1 - g) * A * pow(IP3, 2) / (pow(IP3, 2) + pow(kIP3R, 2)) * pow(CaI, 2) / (pow(CaI, 2) + pow(mw78dd80b8_e003_4c62_81d1_547d001767af, 2))) * CaS) - (mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33 * CaM / (CaM + 0.01));




end BIOMD354;
