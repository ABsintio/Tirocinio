within BIOMD006;
class Parameters

    Real elmt_kappa(unit = "") "";
    Real elmt_k6(unit = "") "";
    Real elmt_k4prime(unit = "") "";
    Real elmt_k4(unit = "") "";
    Real elmt_alpha(unit = "") "";


    initial equation
        elmt_kappa = 0.015;
        elmt_k6 = 1.0;
        elmt_k4prime = 0.018;
        elmt_k4 = 180.0;


    equation
        der(elmt_kappa) = 0;
        der(elmt_k6) = 0;
        der(elmt_k4prime) = 0;
        der(elmt_k4) = 0;
        elmt_alpha = (elmt_k4prime / elmt_k4);

end Parameters;
