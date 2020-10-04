within BIOMD012;
class Parameters

    Real elmt_beta(unit = "") "beta";
    Real elmt_ps_0(unit = "") "tps_repr";
    Real elmt_n(unit = "") "n";
    Real elmt_t_ave(unit = "") "average mRNA life time";
    Real elmt_tau_prot(unit = "") "protein half life";
    Real elmt_KM(unit = "") "KM";
    Real elmt_a0_tr(unit = "") "a0_tr";
    Real elmt_tau_mRNA(unit = "") "mRNA half life";
    Real elmt_kd_prot(unit = "") "kd_prot";
    Real elmt_a_tr(unit = "") "a_tr";
    Real elmt_ps_a(unit = "") "tps_active";
    Real elmt_eff(unit = "") "translation efficiency";
    Real elmt_kd_mRNA(unit = "") "kd_mRNA";
    Real elmt_k_tl(unit = "") "k_tl";
    Real elmt_alpha(unit = "") "alpha";
    Real elmt_alpha0(unit = "") "alpha0";


    initial equation
        elmt_ps_0 = 5.0E-4;
        elmt_n = 2.0;
        elmt_tau_prot = 10.0;
        elmt_KM = 40.0;
        elmt_tau_mRNA = 2.0;
        elmt_ps_a = 0.5;
        elmt_eff = 20.0;


    equation
        elmt_beta = (elmt_tau_mRNA / elmt_tau_prot);
        der(elmt_ps_0) = 0;
        der(elmt_n) = 0;
        elmt_t_ave = (elmt_tau_mRNA / log(2.0));
        der(elmt_tau_prot) = 0;
        der(elmt_KM) = 0;
        elmt_a0_tr = (elmt_ps_0 * 60.0);
        der(elmt_tau_mRNA) = 0;
        elmt_kd_prot = (log(2.0) / elmt_tau_prot);
        elmt_a_tr = ((elmt_ps_a - elmt_ps_0) * 60.0);
        der(elmt_ps_a) = 0;
        der(elmt_eff) = 0;
        elmt_kd_mRNA = (log(2.0) / elmt_tau_mRNA);
        elmt_k_tl = (elmt_eff / elmt_t_ave);
        elmt_alpha = ((elmt_a_tr * elmt_eff * elmt_tau_prot) / (log(2.0) * elmt_KM));
        elmt_alpha0 = ((elmt_a0_tr * elmt_eff * elmt_tau_prot) / (log(2.0) * elmt_KM));

end Parameters;
