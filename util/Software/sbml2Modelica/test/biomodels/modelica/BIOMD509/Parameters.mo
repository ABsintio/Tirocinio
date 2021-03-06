within BIOMD509;
class Parameters

    Real elmt_ps(unit = "") "";
    Real elmt_m(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_k(unit = "") "";
    Real elmt_vdeg(unit = "") "";
    Real elmt_g(unit = "") "";
    Real elmt_kkdeg(unit = "") "";
    Real elmt_f(unit = "") "";
    Real elmt_addash(unit = "") "";
    Real elmt_px(unit = "") "";
    Real elmt_pe(unit = "") "";
    Real elmt_rhstar(unit = "") "";
    Real elmt_pd(unit = "") "";
    Real elmt_af(unit = "") "";
    Real elmt_ae(unit = "") "";
    Real elmt_kdeg(unit = "") "";
    Real elmt_qx(unit = "") "";
    Real elmt_datpp(unit = "") "";
    Real elmt_yo(unit = "") "";
    Real elmt_rscrit(unit = "") "";
    Real elmt_ip30(unit = "") "";
    Real elmt_qd(unit = "") "";
    Real elmt_qe(unit = "") "";
    Real elmt_ddd(unit = "") "";
    Real elmt_dxx(unit = "") "";
    Real elmt_gamma(unit = "") "";
    Real elmt_ymax(unit = "") "";
    Real elmt_krel(unit = "") "";
    Real elmt_p5(unit = "") "";
    Real elmt_p3(unit = "") "";
    Real elmt_p4(unit = "") "";
    Real elmt_p1(unit = "") "";
    Real elmt_rt(unit = "") "";
    Real elmt_p2(unit = "") "";
    Real elmt_dee(unit = "") "";
    Real elmt_dist(unit = "") "";
    Real elmt_vatp_s(unit = "") "";
    Real elmt_alpha(unit = "") "";
    Real elmt_dip(unit = "") "";
    Real elmt_ax(unit = "") "";
    Real elmt_cabasil(unit = "") "";
    Real elmt_gf(unit = "") "";
    Real elmt_smoothness(unit = "") "";
    Real elmt_kr(unit = "") "";
    Real elmt_ka(unit = "") "";
    Real elmt_scale(unit = "") "";
    Real elmt_ip3min(unit = "") "";
    Real elmt_kd(unit = "") "";


    initial equation
        elmt_ps = 0.6;
        elmt_m = 24.1946;
        elmt_n = 9.79183;
        elmt_k = 0.05;
        elmt_vdeg = 2.0;
        elmt_g = 0.528;
        elmt_kkdeg = 50.0;
        elmt_f = 0.2;
        elmt_addash = 0.41;
        elmt_px = 0.48;
        elmt_pe = 0.096;
        elmt_rhstar = 0.6;
        elmt_pd = 0.48;
        elmt_af = 0.9;
        elmt_ae = 0.16;
        elmt_kdeg = 0.0625;
        elmt_qx = 0.8;
        elmt_datpp = 300.0;
        elmt_yo = 1.5;
        elmt_rscrit = 1.0;
        elmt_ip30 = 0.013;
        elmt_qd = 0.6;
        elmt_qe = 0.6;
        elmt_ddd = 0.4;
        elmt_dxx = 1.04;
        elmt_gamma = 1.0;
        elmt_ymax = 500.0;
        elmt_krel = 10.0;
        elmt_p5 = 0.787902;
        elmt_p3 = 1.31319;
        elmt_p4 = 0.332195;
        elmt_p1 = 0.0159835;
        elmt_rt = 2.5;
        elmt_p2 = 0.514987;
        elmt_dee = 0.2;
        elmt_dist = 50.0;
        elmt_vatp_s = 50.0;
        elmt_alpha = 0.083;
        elmt_dip = 280.0;
        elmt_ax = 0.08;
        elmt_cabasil = 0.02055236;
        elmt_gf = 6.3;
        elmt_smoothness = 0.01;
        elmt_kr = 25.0;
        elmt_ka = 0.017;
        elmt_scale = 3600.0;
        elmt_ip3min = 0.012;
        elmt_kd = 0.15;


    equation
        der(elmt_ps) = 0;
        der(elmt_m) = 0;
        der(elmt_n) = 0;
        der(elmt_k) = 0;
        der(elmt_vdeg) = 0;
        der(elmt_g) = 0;
        der(elmt_kkdeg) = 0;
        der(elmt_f) = 0;
        der(elmt_addash) = 0;
        der(elmt_px) = 0;
        der(elmt_pe) = 0;
        der(elmt_rhstar) = 0;
        der(elmt_pd) = 0;
        der(elmt_af) = 0;
        der(elmt_ae) = 0;
        der(elmt_kdeg) = 0;
        der(elmt_qx) = 0;
        der(elmt_datpp) = 0;
        der(elmt_yo) = 0;
        der(elmt_rscrit) = 0;
        der(elmt_ip30) = 0;
        der(elmt_qd) = 0;
        der(elmt_qe) = 0;
        der(elmt_ddd) = 0;
        der(elmt_dxx) = 0;
        der(elmt_gamma) = 0;
        der(elmt_ymax) = 0;
        der(elmt_krel) = 0;
        der(elmt_p5) = 0;
        der(elmt_p3) = 0;
        der(elmt_p4) = 0;
        der(elmt_p1) = 0;
        der(elmt_rt) = 0;
        der(elmt_p2) = 0;
        der(elmt_dee) = 0;
        der(elmt_dist) = 0;
        der(elmt_vatp_s) = 0;
        der(elmt_alpha) = 0;
        der(elmt_dip) = 0;
        der(elmt_ax) = 0;
        der(elmt_cabasil) = 0;
        der(elmt_gf) = 0;
        der(elmt_smoothness) = 0;
        der(elmt_kr) = 0;
        der(elmt_ka) = 0;
        der(elmt_scale) = 0;
        der(elmt_ip3min) = 0;
        der(elmt_kd) = 0;

end Parameters;
