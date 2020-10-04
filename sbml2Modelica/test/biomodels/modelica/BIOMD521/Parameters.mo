within BIOMD521;
class Parameters

    input Real elmt_P;
    input Real elmt_Qp;
    input Real elmt_Q;

    Real elmt_delta_QP(unit = "") "delta_QP";
    Real elmt_k_PQ(unit = "") "k_PQ";
    Real elmt_Pstar(unit = "") "Pstar";
    Real elmt_K(unit = "") "K";
    Real elmt_Q0(unit = "") "Q0";
    Real elmt_lambda_P(unit = "") "lambda_P";
    Real elmt_P0(unit = "") "P0";
    Real elmt_gamma(unit = "") "gamma";
    Real elmt_k_Qp_P(unit = "") "k_Qp_P";
    Real elmt_KDE(unit = "") "KDE";


    initial equation
        elmt_delta_QP = 0.0087;
        elmt_k_PQ = 0.00295;
        elmt_K = 100.0;
        elmt_Q0 = 41.2;
        elmt_lambda_P = 0.121;
        elmt_P0 = 7.13;
        elmt_gamma = 0.729;
        elmt_k_Qp_P = 0.0031;
        elmt_KDE = 0.24;


    equation
        der(elmt_delta_QP) = 0;
        der(elmt_k_PQ) = 0;
        elmt_Pstar = ((elmt_P + elmt_Q) + elmt_Qp);
        der(elmt_K) = 0;
        der(elmt_Q0) = 0;
        der(elmt_lambda_P) = 0;
        der(elmt_P0) = 0;
        der(elmt_gamma) = 0;
        der(elmt_k_Qp_P) = 0;
        der(elmt_KDE) = 0;

end Parameters;
