within BIOMD138;
class Parameters

    input Real elmt_c;

    Real elmt_phif(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_phia(unit = "") "";
    Real elmt_ibk(unit = "") "";
    Real elmt_ff(unit = "") "";
    Real elmt_gsk(unit = "") "";
    Real elmt_sa(unit = "") "";
    Real elmt_h(unit = "") "";
    Real elmt_phik(unit = "") "";
    Real elmt_Cm(unit = "") "membrane capacitance";
    Real elmt_cinf(unit = "") "";
    Real elmt_phih(unit = "") "";
    Real elmt_vk(unit = "") "reversal potential for K";
    Real elmt_ica(unit = "") "";
    Real elmt_vh(unit = "") "";
    Real elmt_phical(unit = "") "";
    Real elmt_vf(unit = "") "";
    Real elmt_isk(unit = "") "";
    Real elmt_V(unit = "") "";
    Real elmt_alpha(unit = "") "";
    Real elmt_vm(unit = "") "";
    Real elmt_vn(unit = "") "";
    Real elmt_gk(unit = "") "";
    Real elmt_vca(unit = "") "reversal potential for Ca";
    Real elmt_ikdr(unit = "") "";
    Real elmt_ik(unit = "") "";
    Real elmt_gf(unit = "") "";
    Real elmt_va(unit = "") "";
    Real elmt_ks(unit = "") "";
    Real elmt_sh(unit = "") "";
    Real elmt_sf(unit = "") "";
    Real elmt_tauh(unit = "") "";
    Real elmt_sn(unit = "") "";
    Real elmt_gcal(unit = "") "";
    Real elmt_ga(unit = "") "";
    Real elmt_sm(unit = "") "";
    Real elmt_taun(unit = "") "";
    Real elmt_lambda(unit = "") "";
    Real elmt_kc(unit = "") "";
    Real elmt_ia(unit = "") "";


    initial equation
        elmt_n = 0.1;
        elmt_ff = 0.01;
        elmt_gsk = 1.7;
        elmt_sa = 10.0;
        elmt_h = 0.1;
        elmt_Cm = 10.0;
        elmt_vk = (-75.0);
        elmt_vh = (-60.0);
        elmt_vf = (-20.0);
        elmt_V = (-60.0);
        elmt_alpha = 0.0015;
        elmt_vm = (-20.0);
        elmt_vn = (-5.0);
        elmt_gk = 4.0;
        elmt_vca = 50.0;
        elmt_gf = 0.0;
        elmt_va = (-20.0);
        elmt_ks = 0.5;
        elmt_sh = 5.0;
        elmt_sf = 5.6;
        elmt_tauh = 20.0;
        elmt_sn = 10.0;
        elmt_gcal = 2.0;
        elmt_ga = 0.0;
        elmt_sm = 12.0;
        elmt_taun = 30.0;
        elmt_lambda = 0.7;
        elmt_kc = 0.16;


    equation
        elmt_phif = (1.0 / (1.0 + exp(((elmt_vf - elmt_V) / elmt_sf))));
        der(elmt_n) = ((elmt_lambda * (elmt_phik - elmt_n)) / elmt_taun);
        elmt_phia = (1.0 / (1.0 + exp(((elmt_va - elmt_V) / elmt_sa))));
        elmt_ibk = (elmt_gf * elmt_phif * (elmt_V - elmt_vk));
        der(elmt_ff) = 0;
        der(elmt_gsk) = 0;
        der(elmt_sa) = 0;
        der(elmt_h) = ((elmt_phih - elmt_h) / elmt_tauh);
        elmt_phik = (1.0 / (1.0 + exp(((elmt_vn - elmt_V) / elmt_sn))));
        der(elmt_Cm) = 0;
        elmt_cinf = (Functions.pow(elmt_c, 2.0) / (Functions.pow(elmt_c, 2.0) + Functions.pow(elmt_ks, 2.0)));
        elmt_phih = (1.0 / (1.0 + exp(((elmt_V - elmt_vh) / elmt_sh))));
        der(elmt_vk) = 0;
        elmt_ica = (elmt_gcal * elmt_phical * (elmt_V - elmt_vca));
        der(elmt_vh) = 0;
        elmt_phical = (1.0 / (1.0 + exp(((elmt_vm - elmt_V) / elmt_sm))));
        der(elmt_vf) = 0;
        elmt_isk = (elmt_gsk * elmt_cinf * (elmt_V - elmt_vk));
        der(elmt_V) = ((- (elmt_ica + elmt_ik)) / elmt_Cm);
        der(elmt_alpha) = 0;
        der(elmt_vm) = 0;
        der(elmt_vn) = 0;
        der(elmt_gk) = 0;
        der(elmt_vca) = 0;
        elmt_ikdr = (elmt_gk * elmt_n * (elmt_V - elmt_vk));
        elmt_ik = (elmt_isk + elmt_ibk + elmt_ikdr + elmt_ia);
        der(elmt_gf) = 0;
        der(elmt_va) = 0;
        der(elmt_ks) = 0;
        der(elmt_sh) = 0;
        der(elmt_sf) = 0;
        der(elmt_tauh) = 0;
        der(elmt_sn) = 0;
        der(elmt_gcal) = 0;
        der(elmt_ga) = 0;
        der(elmt_sm) = 0;
        der(elmt_taun) = 0;
        der(elmt_lambda) = 0;
        der(elmt_kc) = 0;
        elmt_ia = (elmt_ga * elmt_phia * elmt_h * (elmt_V - elmt_vk));

end Parameters;
