within BIOMD277;
class Parameters

    input Real elmt_Ca;

    Real elmt_m2(unit = "") "m2";
    Real elmt_beta(unit = "") "beta";
    Real elmt_m1(unit = "") "m1";
    Real elmt_k(unit = "") "k";
    Real elmt_m_Ca(unit = "") "m_Ca";
    Real elmt_Ca1(unit = "") "Ca1";
    Real elmt_Ca0(unit = "") "Ca0";
    Real elmt_lambda_Ca(unit = "") "lambda_Ca";
    Real elmt_A(unit = "") "A";
    Real elmt_B(unit = "") "B";
    Real elmt_x2_n(unit = "") "x2_n";
    Real elmt_x1_n(unit = "") "x1_n";
    Real elmt_lambda_2(unit = "") "lambda_2";
    Real elmt_x2_max(unit = "") "x2_max";
    Real elmt_lambda_1(unit = "") "lambda_1";
    Real elmt_x2_min(unit = "") "x2_min";
    Real elmt_t0(unit = "") "t0";
    Real elmt_Ca0_baseline(unit = "") "Ca0_baseline";
    Real elmt_S(unit = "") "S";
    Real elmt_alpha(unit = "") "alpha";
    Real elmt_R(unit = "") "R";


    initial equation
        elmt_m2 = 15.0;
        elmt_beta = 1000000.0;
        elmt_m1 = 112.52;
        elmt_Ca1 = 0.2624;
        elmt_Ca0 = 1.22;
        elmt_x2_n = 6.629;
        elmt_x1_n = 490.78;
        elmt_lambda_2 = 0.5595;
        elmt_x2_max = 14.043;
        elmt_lambda_1 = 0.0125;
        elmt_x2_min = 0.6697;
        elmt_t0 = 575.0;
        elmt_Ca0_baseline = 1.255;
        elmt_alpha = 0.0569;
        elmt_R = 1.2162;


    equation
        der(elmt_m2) = 0;
        der(elmt_beta) = 0;
        der(elmt_m1) = 0;
        elmt_k = ((elmt_lambda_2 * elmt_x2_n) + (elmt_lambda_1 * elmt_x1_n));
        elmt_m_Ca = ((elmt_m1 / (1.0 + exp(((- elmt_beta) * (elmt_R - elmt_Ca))))) + elmt_m2);
        der(elmt_Ca1) = 0;
        der(elmt_Ca0) = 0;
        elmt_lambda_Ca = (((elmt_A - elmt_B) / (1.0 + Functions.pow((elmt_Ca / elmt_S), elmt_m_Ca))) + elmt_B);
        elmt_A = ((elmt_lambda_1 * elmt_lambda_2 * elmt_x2_max) / (elmt_k - (elmt_lambda_2 * elmt_x2_max)));
        elmt_B = ((elmt_lambda_1 * elmt_lambda_2 * elmt_x2_min) / (elmt_k - (elmt_lambda_2 * elmt_x2_min)));
        der(elmt_x2_n) = 0;
        der(elmt_x1_n) = 0;
        der(elmt_lambda_2) = 0;
        der(elmt_x2_max) = 0;
        der(elmt_lambda_1) = 0;
        der(elmt_x2_min) = 0;
        der(elmt_t0) = 0;
        der(elmt_Ca0_baseline) = 0;
        elmt_S = (elmt_Ca0_baseline * Functions.pow(((- ((elmt_x1_n * elmt_B) - (elmt_lambda_2 * elmt_x2_n))) / ((elmt_x1_n * elmt_A) - (elmt_lambda_2 * elmt_x2_n))), (1.0 / elmt_m_Ca)));
        der(elmt_alpha) = 0;
        der(elmt_R) = 0;

end Parameters;
