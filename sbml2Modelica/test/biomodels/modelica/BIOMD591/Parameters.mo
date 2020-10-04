within BIOMD591;
class Parameters

    Real elmt_k_exp_hetero(unit = "") "";
    Real elmt_k_phos(unit = "") "";
    Real elmt_ratio(unit = "") "";
    Real elmt_k_imp_hetero(unit = "") "";
    Real elmt_k_imp_homo(unit = "") "";
    Real elmt_k_exp_homo(unit = "") "";
    Real elmt_Epo_degradation_BaF3(unit = "") "";


    initial equation
        elmt_k_exp_hetero = 1.00097114635938E-5;
        elmt_k_phos = 15767.6469913504;
        elmt_ratio = 0.693;
        elmt_k_imp_hetero = 0.0163701561812467;
        elmt_k_imp_homo = 96807.6817909446;
        elmt_k_exp_homo = 0.0061723799618614;
        elmt_Epo_degradation_BaF3 = 0.0269765368088175;


    equation
        der(elmt_k_exp_hetero) = 0;
        der(elmt_k_phos) = 0;
        der(elmt_ratio) = 0;
        der(elmt_k_imp_hetero) = 0;
        der(elmt_k_imp_homo) = 0;
        der(elmt_k_exp_homo) = 0;
        der(elmt_Epo_degradation_BaF3) = 0;

end Parameters;
