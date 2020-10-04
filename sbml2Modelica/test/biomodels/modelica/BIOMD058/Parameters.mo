within BIOMD058;
class Parameters

    input Real elmt_c2;
    input Real elmt_c1;

    Real elmt_k1(unit = "") "";
    Real elmt_R5(unit = "") "";
    Real elmt_R3(unit = "") "";
    Real elmt_r4(unit = "") "";
    Real elmt_R1(unit = "") "";
    Real elmt_r2(unit = "") "";
    Real elmt_Phi2_c1(unit = "") "";
    Real elmt_Phi3_c2(unit = "") "";
    Real elmt_Phi3_c1(unit = "") "";
    Real elmt_Phi1_c1(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_k3(unit = "") "";
    Real elmt_Phi1_c2(unit = "") "";
    Real elmt_Phi2_c2(unit = "") "";
    Real elmt_Phi_minus1_c1(unit = "") "";
    Real elmt_Phi_minus1_c2(unit = "") "";


    initial equation
        elmt_k1 = 44.0;
        elmt_R5 = 1.6;
        elmt_R3 = 50.0;
        elmt_r4 = 20.0;
        elmt_R1 = 6.0;
        elmt_r2 = 100.0;
        elmt_k2 = 26.5;
        elmt_k3 = 1.6;


    equation
        der(elmt_k1) = 0;
        der(elmt_R5) = 0;
        der(elmt_R3) = 0;
        der(elmt_r4) = 0;
        der(elmt_R1) = 0;
        der(elmt_r2) = 0;
        elmt_Phi2_c1 = ((elmt_k2 + (elmt_r4 * elmt_c1)) / (elmt_R3 + elmt_c1));
        elmt_Phi3_c2 = (elmt_k3 / (elmt_R5 + elmt_c2));
        elmt_Phi3_c1 = (elmt_k3 / (elmt_R5 + elmt_c1));
        elmt_Phi1_c1 = ((elmt_r2 * elmt_c1) / (elmt_R1 + elmt_c1));
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        elmt_Phi1_c2 = ((elmt_r2 * elmt_c2) / (elmt_R1 + elmt_c2));
        elmt_Phi2_c2 = ((elmt_k2 + (elmt_r4 * elmt_c2)) / (elmt_R3 + elmt_c2));
        elmt_Phi_minus1_c1 = (elmt_k1 / (elmt_R3 + elmt_c1));
        elmt_Phi_minus1_c2 = (elmt_k1 / (elmt_R3 + elmt_c2));

end Parameters;
