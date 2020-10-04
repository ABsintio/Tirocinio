within BIOMD401;
class Parameters

    input Real elmt_C;
    input Real elmt_B;

    Real elmt_k1(unit = "") "k1";
    Real elmt_C_bar(unit = "") "C_bar";
    Real elmt_beta1(unit = "") "beta1";
    Real elmt_beta2(unit = "") "beta2";
    Real elmt_k2(unit = "") "k2";
    Real elmt_g12(unit = "") "g12";
    Real elmt_g11(unit = "") "g11";
    Real elmt_g22(unit = "") "g22";
    Real elmt_g21(unit = "") "g21";
    Real elmt_B_bar(unit = "") "B_bar";
    Real elmt_gamma(unit = "") "gamma";
    Real elmt_alpha1(unit = "") "alpha1";
    Real elmt_alpha2(unit = "") "alpha2";
    Real elmt_y2(unit = "") "maxB_Bbar";
    Real elmt_y1(unit = "") "maxC_Cbar";


    initial equation
        elmt_k1 = 0.24;
        elmt_beta1 = 0.2;
        elmt_beta2 = 0.02;
        elmt_k2 = 0.0017;
        elmt_g12 = 1.0;
        elmt_g11 = 0.5;
        elmt_g22 = 0.0;
        elmt_g21 = (-0.5);
        elmt_alpha1 = 3.0;
        elmt_alpha2 = 4.0;


    equation
        der(elmt_k1) = 0;
        elmt_C_bar = (Functions.pow((elmt_beta1 / elmt_alpha1), ((1.0 - elmt_g22) / elmt_gamma)) * Functions.pow((elmt_beta2 / elmt_alpha2), (elmt_g21 / elmt_gamma)));
        der(elmt_beta1) = 0;
        der(elmt_beta2) = 0;
        der(elmt_k2) = 0;
        der(elmt_g12) = 0;
        der(elmt_g11) = 0;
        der(elmt_g22) = 0;
        der(elmt_g21) = 0;
        elmt_B_bar = (Functions.pow((elmt_beta1 / elmt_alpha1), (elmt_g12 / elmt_gamma)) * Functions.pow((elmt_beta2 / elmt_alpha2), ((1.0 - elmt_g11) / elmt_gamma)));
        elmt_gamma = ((elmt_g12 * elmt_g21) - ((1.0 - elmt_g11) * (1.0 - elmt_g22)));
        der(elmt_alpha1) = 0;
        der(elmt_alpha2) = 0;
        elmt_y2 = (if (elmt_B > elmt_B_bar) then (elmt_B - elmt_B_bar) else 0.0);
        elmt_y1 = (if (elmt_C > elmt_C_bar) then (elmt_C - elmt_C_bar) else 0.0);

end Parameters;
