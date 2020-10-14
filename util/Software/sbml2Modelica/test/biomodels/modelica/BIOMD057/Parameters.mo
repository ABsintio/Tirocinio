within BIOMD057;
class Parameters

    input Real elmt_O;
    input Real elmt_A;

    Real elmt_l2(unit = "") "";
    Real elmt_lminus6(unit = "") "";
    Real elmt_open_probability(unit = "") "";
    Real elmt_Phi1(unit = "") "";
    Real elmt_Phi2(unit = "") "";
    Real elmt_Phi3(unit = "") "";
    Real elmt_c(unit = "") "";
    Real elmt_Phi4(unit = "") "";
    Real elmt_l6(unit = "") "";
    Real elmt_Phi5(unit = "") "";
    Real elmt_l4(unit = "") "";
    Real elmt_Phi_minus2(unit = "") "";
    Real elmt_Phi_minus4(unit = "") "";
    Real elmt_L1(unit = "") "";
    Real elmt_k1(unit = "") "";
    Real elmt_kminus4(unit = "") "";
    Real elmt_kminus3(unit = "") "";
    Real elmt_kminus2(unit = "") "";
    Real elmt_kminus1(unit = "") "";
    Real elmt_L5(unit = "") "";
    Real elmt_k4(unit = "") "";
    Real elmt_L3(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_k3(unit = "") "";
    Real elmt_lminus2(unit = "") "";
    Real elmt_lminus4(unit = "") "";
    Real elmt_IP3(unit = "") "IP3";


    initial equation
        elmt_l2 = 1.7;
        elmt_lminus6 = 11.4;
        elmt_c = 10.0;
        elmt_l6 = 4707.0;
        elmt_l4 = 1.7;
        elmt_L1 = 0.12;
        elmt_k1 = 0.64;
        elmt_kminus4 = 0.54;
        elmt_kminus3 = 29.8;
        elmt_kminus2 = 1.4;
        elmt_kminus1 = 0.04;
        elmt_L5 = 54.7;
        elmt_k4 = 4.0;
        elmt_L3 = 0.025;
        elmt_k2 = 37.4;
        elmt_k3 = 0.11;
        elmt_lminus2 = 0.8;
        elmt_lminus4 = 2.5;
        elmt_IP3 = 10.0;


    equation
        der(elmt_l2) = 0;
        der(elmt_lminus6) = 0;
        elmt_open_probability = Functions.pow(((0.1 * elmt_O) + (0.9 * elmt_A)), 4.0);
        elmt_Phi1 = ((((elmt_k1 * elmt_L1) + elmt_l2) * elmt_c) / (elmt_L1 + (elmt_c * (1.0 + (elmt_L1 / elmt_L3)))));
        elmt_Phi2 = (((elmt_k2 * elmt_L3) + (elmt_l4 * elmt_c)) / (elmt_L3 + (elmt_c * (1.0 + (elmt_L3 / elmt_L1)))));
        elmt_Phi3 = ((elmt_k3 * elmt_L5) / (elmt_L5 + elmt_c));
        der(elmt_c) = 0;
        elmt_Phi4 = ((((elmt_k4 * elmt_L5) + elmt_l6) * elmt_c) / (elmt_L5 + elmt_c));
        der(elmt_l6) = 0;
        elmt_Phi5 = ((((elmt_k1 * elmt_L1) + elmt_l2) * elmt_c) / (elmt_L1 + elmt_c));
        der(elmt_l4) = 0;
        elmt_Phi_minus2 = ((elmt_kminus2 + (elmt_lminus4 * elmt_c)) / (1.0 + (elmt_c / elmt_L5)));
        elmt_Phi_minus4 = ((elmt_L1 * (elmt_kminus4 + elmt_lminus6)) / (elmt_L1 + elmt_c));
        der(elmt_L1) = 0;
        der(elmt_k1) = 0;
        der(elmt_kminus4) = 0;
        der(elmt_kminus3) = 0;
        der(elmt_kminus2) = 0;
        der(elmt_kminus1) = 0;
        der(elmt_L5) = 0;
        der(elmt_k4) = 0;
        der(elmt_L3) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_lminus2) = 0;
        der(elmt_lminus4) = 0;
        der(elmt_IP3) = 0;

end Parameters;
