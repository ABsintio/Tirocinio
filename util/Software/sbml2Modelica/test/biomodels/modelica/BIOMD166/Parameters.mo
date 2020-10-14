within BIOMD166;
class Parameters

    input Real elmt_Z;

    Real elmt_Kd0(unit = "") "";
    Real elmt_Ka(unit = "") "Ka";
    Real elmt_kf0(unit = "") "";
    Real elmt_gamma(unit = "") "";
    Real elmt_kf(unit = "") "kf";
    Real elmt_Kd(unit = "") "Kd";
    Real elmt_Kb(unit = "") "Kb";


    initial equation
        elmt_Kd0 = 10.0;
        elmt_Ka = 0.5;
        elmt_kf0 = 6.0;
        elmt_gamma = 9.0;
        elmt_Kb = 0.5;


    equation
        der(elmt_Kd0) = 0;
        der(elmt_Ka) = 0;
        der(elmt_kf0) = 0;
        der(elmt_gamma) = 0;
        elmt_kf = (elmt_kf0 * (1.0 + ((elmt_gamma * Functions.pow(elmt_Z, 4.0)) / (Functions.pow(elmt_Ka, 4.0) + Functions.pow(elmt_Z, 4.0)))));
        elmt_Kd = (elmt_Kd0 / (1.0 + (Functions.pow(elmt_Z, 4.0) / Functions.pow(elmt_Kb, 4.0))));
        der(elmt_Kb) = 0;

end Parameters;
