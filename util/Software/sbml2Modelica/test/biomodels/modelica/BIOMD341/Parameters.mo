within BIOMD341;
class Parameters

    Real elmt_si(unit = "") "si";
    Real elmt_k(unit = "") "k";
    Real elmt_r1(unit = "") "r1";
    Real elmt_r2(unit = "") "r2";
    Real elmt_R0(unit = "") "R0";
    Real elmt_sigma(unit = "") "sigma";
    Real elmt_Eg0(unit = "") "Eg0";
    Real elmt_d0(unit = "") "d0";
    Real elmt_alpha(unit = "") "alpha";


    initial equation
        elmt_si = 0.72;
        elmt_k = 432.0;
        elmt_r1 = 8.4E-4;
        elmt_r2 = 2.4E-6;
        elmt_R0 = 864.0;
        elmt_sigma = 43.2;
        elmt_Eg0 = 1.44;
        elmt_d0 = 0.06;
        elmt_alpha = 20000.0;


    equation
        der(elmt_si) = 0;
        der(elmt_k) = 0;
        der(elmt_r1) = 0;
        der(elmt_r2) = 0;
        der(elmt_R0) = 0;
        der(elmt_sigma) = 0;
        der(elmt_Eg0) = 0;
        der(elmt_d0) = 0;
        der(elmt_alpha) = 0;

end Parameters;
