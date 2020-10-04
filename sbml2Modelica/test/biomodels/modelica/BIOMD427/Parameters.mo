within BIOMD427;
class Parameters

    Real elmt_kd_PI3K_a(unit = "") "kd_PI3K_a";
    Real elmt_k_P90Rsk_ERKActive(unit = "") "k_P90Rsk_ERKActive";
    Real elmt_gamma_EGFR(unit = "") "gamma_EGFR";
    Real elmt_gamma_IGFR(unit = "") "gamma_IGFR";
    Real elmt_KM_P90Rsk_ERKActive(unit = "") "KM_P90Rsk_ERKActive";


    initial equation
        elmt_kd_PI3K_a = 0.005;
        elmt_k_P90Rsk_ERKActive = 0.0213697;
        elmt_gamma_EGFR = 0.02;
        elmt_gamma_IGFR = 0.02;
        elmt_KM_P90Rsk_ERKActive = 763523.0;


    equation
        der(elmt_kd_PI3K_a) = 0;
        der(elmt_k_P90Rsk_ERKActive) = 0;
        der(elmt_gamma_EGFR) = 0;
        der(elmt_gamma_IGFR) = 0;
        der(elmt_KM_P90Rsk_ERKActive) = 0;

end Parameters;
