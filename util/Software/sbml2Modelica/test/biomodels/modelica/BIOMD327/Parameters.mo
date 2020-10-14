within BIOMD327;
class Parameters

    input Real elmt_ci;
    input Real elmt_nb;
    input Real elmt_cb;
    input Real elmt_bb;
    input Real elmt_ni;
    input Real elmt_cl;
    input Real elmt_bl;
    input Real elmt_bi;

    input Boolean elmt_event1;    input Boolean elmt_event0;
    input Real assign_elmt_gcftr;


    Real elmt_gnak(unit = ".kg-1.0.m-4.0..s2.0") "";
    Real elmt_zeta(unit = "m-1.0") "";
    Real elmt_gapl(unit = ".kg-1.0.m-4.0..s2.0") "";
    Real elmt_buf(unit = ".s-1.0") "";
    Real elmt_gnaleak(unit = ".kg-1.0.m-4.0..s2.0") "";
    Real elmt_kbi(unit = "m-3.0.") "";
    Real elmt_f(unit = ".mol-1.0.") "Faraday constant";
    Real elmt_temp(unit = "") "";
    Real elmt_jlum(unit = ".s-1.0") "";
    Real elmt_knbc(unit = ".kg-1.0.m-4.0..s2.0") "";
    Real elmt_g_bi(unit = "") "";
    Real elmt_gcftr(unit = ".kg-1.0.m-1.0.s2.0") "";
    Real elmt_enbc(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_japbl(unit = "m-2.0..s-1.0") "";
    Real elmt_gnbc(unit = ".kg-1.0.m-4.0..s2.0") "";
    Real elmt_vr(unit = "") "";
    Real elmt_jnak(unit = "m-2.0..s-1.0") "";
    Real elmt_jac(unit = "m-2.0..s-1.0") "";
    Real elmt_bi0(unit = "m-3.0.") "";
    Real elmt_ena(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_japl(unit = "m-2.0..s-1.0") "";
    Real elmt_ek(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_gcftrbase(unit = ".kg-1.0.m-1.0.s2.0") "";
    Real elmt_gk(unit = ".kg-1.0.m-4.0..s2.0") "";
    Real elmt_kcl(unit = "m-3.0.") "";
    Real elmt_ton(unit = "") "";
    Real elmt_toff(unit = "") "";
    Real elmt_kccf(unit = ".kg-1.0.m-4.0..s2.0") "";
    Real elmt_jbcftr(unit = "m-2.0..s-1.0") "";
    Real elmt_gapbl(unit = ".kg-1.0.m-4.0..s2.0") "";
    Real elmt_kbcf(unit = ".kg-1.0.m-4.0..s2.0") "";
    Real elmt_g_cl(unit = "") "";
    Real elmt_jnbc(unit = "m-2.0..s-1.0") "";
    Real elmt_rat(unit = "") "";
    Real elmt_ionstr(unit = "m-3.0.") "";
    Real elmt_jnaleak(unit = "m-2.0..s-1.0") "";
    Real elmt_epump(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_gcftron(unit = ".kg-1.0.m-1.0.s2.0") "";
    Real elmt_eb(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_ec(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_np0(unit = "m-3.0.") "";
    Real elmt_v(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_jccftr(unit = "m-2.0..s-1.0") "";
    Real elmt_r(unit = "K-1.0..m2.0.mol-1.0.s-2.0") "gas constant";


    initial equation
        elmt_gnak = 3.125;
        elmt_zeta = 50.0;
        elmt_gapl = 0.25;
        elmt_buf = 0.1;
        elmt_gnaleak = 0.4;
        elmt_kbi = 1.0;
        elmt_f = 96485.0;
        elmt_temp = 310.0;
        elmt_g_bi = 0.2;
        elmt_gcftr = elmt_gcftrbase;
        elmt_gnbc = 2.0;
        elmt_vr = 10.0;
        elmt_jac = 0.025;
        elmt_bi0 = 15.0;
        elmt_ek = (-0.085);
        elmt_gcftrbase = 7.0E-5;
        elmt_gk = 1.0;
        elmt_kcl = 10.0;
        elmt_ton = 60.0;
        elmt_toff = 360.0;
        elmt_gapbl = 0.005;
        elmt_g_cl = 1.0;
        elmt_rat = 0.25;
        elmt_ionstr = 160.0;
        elmt_epump = (-0.2);
        elmt_gcftron = 1.0;
        elmt_np0 = 25.0;
        elmt_r = 8.31451;


    equation
        der(elmt_gnak) = 0;
        der(elmt_zeta) = 0;
        der(elmt_gapl) = 0;
        der(elmt_buf) = 0;
        der(elmt_gnaleak) = 0;
        der(elmt_kbi) = 0;
        der(elmt_f) = 0;
        der(elmt_temp) = 0;
        elmt_jlum = ((((- (elmt_jccftr + elmt_jbcftr)) * elmt_vr) + (elmt_jac * (1.0 + elmt_rat))) / elmt_ionstr);
        elmt_knbc = elmt_gnbc;
        der(elmt_g_bi) = 0;
        der(elmt_gcftr) = 0.0;
        elmt_enbc = (((elmt_r * elmt_temp) / elmt_f) * log(((Functions.pow(elmt_bi, 2.0) * elmt_ni) / (Functions.pow(elmt_bb, 2.0) * elmt_nb))));
        elmt_japbl = (((((elmt_bb * elmt_ci) - (elmt_cb * elmt_bi)) / (elmt_kbi * elmt_kcl * (((1.0 + (elmt_bi / elmt_kbi) + (elmt_ci / elmt_kcl)) * ((elmt_bb / elmt_kbi) + (elmt_cb / elmt_kcl))) + ((1.0 + (elmt_bb / elmt_kbi) + (elmt_cb / elmt_kcl)) * ((elmt_bi / elmt_kbi) + (elmt_ci / elmt_kcl))))))) * elmt_gapbl);
        der(elmt_gnbc) = 0;
        der(elmt_vr) = 0;
        elmt_jnak = (elmt_gnak * (elmt_v - elmt_epump) * Functions.pow((elmt_ni / elmt_np0), 3.0));
        der(elmt_jac) = 0;
        der(elmt_bi0) = 0;
        elmt_ena = (((elmt_r * elmt_temp) / elmt_f) * log((elmt_nb / elmt_ni)));
        elmt_japl = (((((elmt_bl * elmt_ci) - (elmt_cl * elmt_bi)) / (elmt_kbi * elmt_kcl * (((1.0 + (elmt_bi / elmt_kbi) + (elmt_ci / elmt_kcl)) * ((elmt_bl / elmt_kbi) + (elmt_cl / elmt_kcl))) + ((1.0 + (elmt_bl / elmt_kbi) + (elmt_cl / elmt_kcl)) * ((elmt_bi / elmt_kbi) + (elmt_ci / elmt_kcl))))))) * elmt_gapl);
        der(elmt_ek) = 0;
        der(elmt_gcftrbase) = 0;
        der(elmt_gk) = 0;
        der(elmt_kcl) = 0;
        der(elmt_ton) = 0;
        der(elmt_toff) = 0;
        elmt_kccf = ((((elmt_ci * elmt_cl * log((elmt_ci / elmt_cl))) / (elmt_ci - elmt_cl))) * elmt_gcftr * elmt_g_cl);
        elmt_jbcftr = (elmt_kbcf * (elmt_v - elmt_eb));
        der(elmt_gapbl) = 0;
        elmt_kbcf = ((((elmt_bi * elmt_bl * log((elmt_bi / elmt_bl))) / (elmt_bi - elmt_bl))) * elmt_gcftr * elmt_g_bi);
        der(elmt_g_cl) = 0;
        elmt_jnbc = (elmt_knbc * (elmt_v - elmt_enbc));
        der(elmt_rat) = 0;
        der(elmt_ionstr) = 0;
        elmt_jnaleak = (elmt_gnaleak * (elmt_v - elmt_ena));
        der(elmt_epump) = 0;
        der(elmt_gcftron) = 0;
        elmt_eb = (((elmt_r * elmt_temp) / elmt_f) * log((elmt_bi / elmt_bl)));
        elmt_ec = (((elmt_r * elmt_temp) / elmt_f) * log((elmt_ci / elmt_cl)));
        der(elmt_np0) = 0;
        elmt_v = (((elmt_knbc * elmt_enbc) + (elmt_kbcf * elmt_eb) + (elmt_kccf * elmt_ec) + (elmt_gk * elmt_ek) + (elmt_gnaleak * elmt_ena)) / (elmt_knbc + elmt_kbcf + elmt_kccf + elmt_gk));
        elmt_jccftr = (elmt_kccf * (elmt_v - elmt_ec));
        der(elmt_r) = 0;

        when elmt_event1 then
            reinit(elmt_gcftr, assign_elmt_gcftr);
        end when;
        when elmt_event0 then
            reinit(elmt_gcftr, assign_elmt_gcftr);
        end when;
end Parameters;
