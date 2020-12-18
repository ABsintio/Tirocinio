
model BIOMD253 "Teusink1998_Glycolysis_TurboDesign"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real KRHMP = 1.0;
    parameter Real gR = 10.0;
    parameter Real c1 = 0.0005;
    parameter Real L0 = 1000.0;
    parameter Real KRATP = 0.06;
    parameter Real gT = 1.0;
    parameter Real c2 = 1.0;
    parameter Real KiATP = 10.0;
    parameter Real ci = 10.0;
    parameter Real VHK_0 = 68.0;
    parameter Real KATP_0 = 0.15;
    parameter Real KGlc_0 = 1.0;
    parameter Real KiTre6P_0 = 4.422;
    parameter Real wild_type_0 = 1.0;
    parameter Real VPFK_1 = 30.0;
    parameter Real Vlower_2 = 20.0;
    parameter Real KFru16P2_2 = 1.0;
    parameter Real KADP_2 = 0.1;
    parameter Real VATPase_3 = 68.0;
    parameter Real KATP_3 = 3.0;
    parameter Real cell = 1.0;

    Real lambda1(start=0.0);
    Real lambda2(start=0.0);
    Real lambda3(start=0.0);
    Real R(start=0.0);
    Real T(start=0.0);
    Real L(start=0.0);

    Real HMP;
    Real Fru16P2;
    Real ATP;
    Real Glc;
    Real Tre6P;
    Real ADP;

initial equation
    HMP = 0.1;
    Fru16P2 = 1.0;
    ATP = 4.0;
    Glc = 10.0;

equation
    Tre6P = pow(HMP, 2);
    ADP = 5 - ATP;
    lambda1 = HMP / KRHMP;
    lambda2 = ATP / KRATP;
    lambda3 = ATP / KiATP;
    R = 1 + lambda1 + lambda2 + gR * lambda1 * lambda2;
    T = 1 + c1 * lambda1 + c2 * lambda2 + gT * c1 * lambda1 * c2 * lambda2;
    L = L0 * pow((1 + ci * lambda3) / (1 + lambda3), 2);
    der(HMP) = (cell * VHK_0 * Glc * ATP / (KGlc_0 * KATP_0) / ((1 + Glc / KGlc_0 + wild_type_0 * Tre6P / KiTre6P_0) * (1 + ATP / KATP_0))) - (cell * VPFK_1 * gR * lambda1 * lambda2 * R / (R^2 + L * T^2));
    der(Fru16P2) = (cell * VPFK_1 * gR * lambda1 * lambda2 * R / (R^2 + L * T^2)) - (cell * Vlower_2 * Fru16P2 * ADP / (KFru16P2_2 * KADP_2) / ((1 + Fru16P2 / KFru16P2_2) * (1 + ADP / KADP_2)));
    der(ATP) = (4.0 * cell * Vlower_2 * Fru16P2 * ADP / (KFru16P2_2 * KADP_2) / ((1 + Fru16P2 / KFru16P2_2) * (1 + ADP / KADP_2))) - (cell * VHK_0 * Glc * ATP / (KGlc_0 * KATP_0) / ((1 + Glc / KGlc_0 + wild_type_0 * Tre6P / KiTre6P_0) * (1 + ATP / KATP_0))) - (cell * VPFK_1 * gR * lambda1 * lambda2 * R / (R^2 + L * T^2)) - (cell * VATPase_3 * ATP / (KATP_3 + ATP));
    der(Glc) = 0.0;




end BIOMD253;
