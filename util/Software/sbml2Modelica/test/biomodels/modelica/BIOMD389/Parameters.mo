within BIOMD389;
class Parameters

    input Real elmt_HePc;
    input Real elmt_UTP;

    Real elmt_phi(unit = "") "phi";
    Real elmt_v_15(unit = "") "v(15)";
    Real elmt_D(unit = "") "D";
    Real elmt_r(unit = "") "r";


    initial equation
        elmt_phi = 1.0E-4;
        elmt_D = 1.0E-4;
        elmt_r = 3.0E-5;


    equation
        der(elmt_phi) = 0;
        elmt_v_15 = (0.0258 * elmt_HePc * elmt_UTP);
        der(elmt_D) = 0;
        der(elmt_r) = 0;

end Parameters;
