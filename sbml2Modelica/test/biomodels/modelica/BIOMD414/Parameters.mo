within BIOMD414;
class Parameters

    Real elmt_p2(unit = "") "";
    Real elmt_lambda_star(unit = "") "";
    Real elmt_qj_star(unit = "") "";
    Real elmt_p1_star(unit = "") "";


    initial equation
        elmt_p2 = 0.0053;
        elmt_lambda_star = 0.52;
        elmt_qj_star = 0.16;
        elmt_p1_star = 0.056;


    equation
        der(elmt_p2) = 0;
        der(elmt_lambda_star) = 0;
        der(elmt_qj_star) = 0;
        der(elmt_p1_star) = 0;

end Parameters;
