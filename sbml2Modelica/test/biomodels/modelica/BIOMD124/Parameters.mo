within BIOMD124;
class Parameters

    input Real elmt_cer;
    input Real elmt_c;

    input Boolean elmt_event_0000001;
    input Real assign_elmt_gkatp;


    Real elmt_minf(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_nIRinf(unit = "") "";
    Real elmt_a(unit = "") "";
    Real elmt_ainf(unit = "") "";
    Real elmt_gir(unit = "") "erg k current conductance";
    Real elmt_V(unit = "") "";
    Real elmt_ninf(unit = "") "";
    Real elmt_taua(unit = "") "";
    Real elmt_vca(unit = "") "ca reversal potential";
    Real elmt_ik(unit = "") "delayed rectifier k current";
    Real elmt_iir(unit = "") "erg like k current";
    Real elmt_gkca(unit = "") "ca activated k conductance";
    Real elmt_betaIRn(unit = "") "";
    Real elmt_rIRinf(unit = "") "";
    Real elmt_jip3(unit = "") "";
    Real elmt_ip3(unit = "") "";
    Real elmt_betaIRr(unit = "") "";
    Real elmt_vcytver(unit = "") "";
    Real elmt_taun(unit = "") "";
    Real elmt_tauIRr(unit = "") "";
    Real elmt_oinf(unit = "") "";
    Real elmt_sa(unit = "") "";
    Real elmt_fcyt(unit = "") "";
    Real elmt_dinact(unit = "") "";
    Real elmt_gkatp(unit = "") "";
    Real elmt_vk(unit = "") "k reversal potential";
    Real elmt_ica(unit = "") "calcium current";
    Real elmt_jserca(unit = "") "";
    Real elmt_gca(unit = "") "ca current conductance";
    Real elmt_kpmca(unit = "") "";
    Real elmt_jmem(unit = "") "";
    Real elmt_alpha(unit = "") "";
    Real elmt_vm(unit = "") "";
    Real elmt_dact(unit = "") "";
    Real elmt_vn(unit = "") "";
    Real elmt_tauIRn(unit = "") "";
    Real elmt_jer(unit = "") "";
    Real elmt_nIR(unit = "") "";
    Real elmt_gk(unit = "") "k current conductance";
    Real elmt_fer(unit = "") "";
    Real elmt_pleak(unit = "") "";
    Real elmt_kserca(unit = "") "";
    Real elmt_vir(unit = "") "";
    Real elmt_ikatp(unit = "") "nucleotide sensitive k current";
    Real elmt_jleak(unit = "") "";
    Real elmt_cm(unit = "") "membrane capacitance";
    Real elmt_rIR(unit = "") "";
    Real elmt_alphaIRn(unit = "") "";
    Real elmt_alphaIRr(unit = "") "";
    Real elmt_ikca(unit = "") "ca dependent k current";
    Real elmt_dip3(unit = "") "";
    Real elmt_w(unit = "") "";
    Real elmt_sn(unit = "") "";
    Real elmt_kd(unit = "") "";
    Real elmt_sm(unit = "") "";
    Real elmt_r(unit = "") "";


    initial equation
        elmt_n = 0.01;
        elmt_a = 0.46;
        elmt_gir = 5.0;
        elmt_V = (-60.0);
        elmt_taua = 300000.0;
        elmt_vca = 50.0;
        elmt_gkca = 900.0;
        elmt_ip3 = 0.0;
        elmt_vcytver = 5.0;
        elmt_taun = 16.0;
        elmt_sa = 0.1;
        elmt_fcyt = 0.01;
        elmt_dinact = 0.4;
        elmt_gkatp = 500.0;
        elmt_vk = (-75.0);
        elmt_gca = 1000.0;
        elmt_kpmca = 0.2;
        elmt_alpha = 4.5E-6;
        elmt_vm = (-20.0);
        elmt_dact = 0.35;
        elmt_vn = (-16.0);
        elmt_nIR = 0.008;
        elmt_gk = 1400.0;
        elmt_fer = 0.01;
        elmt_pleak = 5.0E-4;
        elmt_kserca = 0.4;
        elmt_vir = (-75.0);
        elmt_cm = 5300.0;
        elmt_rIR = 0.282;
        elmt_dip3 = 0.5;
        elmt_sn = 5.0;
        elmt_kd = 0.3;
        elmt_sm = 12.0;
        elmt_r = 0.14;


    equation
        elmt_minf = (1.0 / (1.0 + exp(((elmt_vm - elmt_V) / elmt_sm))));
        der(elmt_n) = ((elmt_ninf - elmt_n) / elmt_taun);
        elmt_nIRinf = (1.0 / (1.0 + (elmt_betaIRn / elmt_alphaIRn)));
        der(elmt_a) = ((elmt_ainf - elmt_a) / elmt_taua);
        elmt_ainf = (1.0 / (1.0 + exp(((elmt_r - elmt_c) / elmt_sa))));
        der(elmt_gir) = 0;
        der(elmt_V) = ((- (elmt_ica + elmt_ik + elmt_ikca + elmt_ikatp + elmt_iir)) / elmt_cm);
        elmt_ninf = (1.0 / (1.0 + exp(((elmt_vn - elmt_V) / elmt_sn))));
        der(elmt_taua) = 0;
        der(elmt_vca) = 0;
        elmt_ik = (elmt_gk * elmt_n * (elmt_V - elmt_vk));
        elmt_iir = (elmt_gir * elmt_nIR * elmt_rIR * (elmt_V - elmt_vir));
        der(elmt_gkca) = 0;
        elmt_betaIRn = (3.5E-4 * exp((0.07 * (elmt_V + 25.0))));
        elmt_rIRinf = (1.0 / (1.0 + (elmt_betaIRr / elmt_alphaIRr)));
        elmt_jip3 = (elmt_oinf * (elmt_cer - elmt_c));
        der(elmt_ip3) = 0;
        elmt_betaIRr = (0.15 / (1.0 + exp(((-0.05) * (elmt_V + 120.0)))));
        der(elmt_vcytver) = 0;
        der(elmt_taun) = 0;
        elmt_tauIRr = (1.0 / (elmt_alphaIRr + elmt_betaIRr));
        elmt_oinf = ((elmt_c / (elmt_dact + elmt_c)) * (elmt_ip3 / (elmt_dip3 + elmt_ip3)) * (elmt_dinact / (elmt_dinact + elmt_c)));
        der(elmt_sa) = 0;
        der(elmt_fcyt) = 0;
        der(elmt_dinact) = 0;
        der(elmt_gkatp) = 0.0;
        der(elmt_vk) = 0;
        elmt_ica = (elmt_gca * elmt_minf * (elmt_V - elmt_vca));
        elmt_jserca = (elmt_kserca * elmt_c);
        der(elmt_gca) = 0;
        der(elmt_kpmca) = 0;
        elmt_jmem = (- ((elmt_alpha * elmt_ica) + (elmt_kpmca * elmt_c)));
        der(elmt_alpha) = 0;
        der(elmt_vm) = 0;
        der(elmt_dact) = 0;
        der(elmt_vn) = 0;
        elmt_tauIRn = (1.0 / (elmt_alphaIRn + elmt_betaIRn));
        elmt_jer = ((elmt_jleak + elmt_jip3) - elmt_jserca);
        der(elmt_nIR) = ((elmt_nIRinf - elmt_nIR) / elmt_tauIRn);
        der(elmt_gk) = 0;
        der(elmt_fer) = 0;
        der(elmt_pleak) = 0;
        der(elmt_kserca) = 0;
        der(elmt_vir) = 0;
        elmt_ikatp = (elmt_gkatp * elmt_a * (elmt_V - elmt_vk));
        elmt_jleak = (elmt_pleak * (elmt_cer - elmt_c));
        der(elmt_cm) = 0;
        der(elmt_rIR) = ((elmt_rIRinf - elmt_rIR) / elmt_tauIRr);
        elmt_alphaIRn = (0.09 / (1.0 + exp((0.11 * (elmt_V + 100.0)))));
        elmt_alphaIRr = (30.0 / (1.0 + exp((0.04 * (elmt_V + 230.0)))));
        elmt_ikca = (elmt_gkca * elmt_w * (elmt_V - elmt_vk));
        der(elmt_dip3) = 0;
        elmt_w = (Functions.pow(elmt_c, 5.0) / (Functions.pow(elmt_c, 5.0) + Functions.pow(elmt_kd, 5.0)));
        der(elmt_sn) = 0;
        der(elmt_kd) = 0;
        der(elmt_sm) = 0;
        der(elmt_r) = 0;

        when elmt_event_0000001 then
            reinit(elmt_gkatp, assign_elmt_gkatp);
        end when;
end Parameters;
