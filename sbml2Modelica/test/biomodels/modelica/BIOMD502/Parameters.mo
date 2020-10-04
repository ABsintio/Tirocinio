within BIOMD502;
class Parameters

    Real elmt_Kx5p_TAL(unit = "m-3.0.") "";
    Real elmt_Kr5p_TAL(unit = "m-3.0.") "";
    Real elmt_Kf6p_TAL(unit = "m-3.0.") "";
    Real elmt_Ke4p_TAL(unit = "m-3.0.") "";
    Real elmt_Ks7p_TAL(unit = "m-3.0.") "";
    Real elmt_Kgap_TAL(unit = "m-3.0.") "";
    Real elmt_sum_NADP(unit = "m-3.0.") "";


    initial equation
        elmt_Kx5p_TAL = 0.67;
        elmt_Kr5p_TAL = 0.235;
        elmt_Kf6p_TAL = 1.1;
        elmt_Ke4p_TAL = 0.946;
        elmt_Ks7p_TAL = 0.15;
        elmt_Kgap_TAL = 0.1;
        elmt_sum_NADP = 0.33;


    equation
        der(elmt_Kx5p_TAL) = 0;
        der(elmt_Kr5p_TAL) = 0;
        der(elmt_Kf6p_TAL) = 0;
        der(elmt_Ke4p_TAL) = 0;
        der(elmt_Ks7p_TAL) = 0;
        der(elmt_Kgap_TAL) = 0;
        der(elmt_sum_NADP) = 0;

end Parameters;
