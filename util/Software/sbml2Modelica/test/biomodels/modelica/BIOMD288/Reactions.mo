within BIOMD288;
class Reactions

    input Real elmt_kdx2;
    input Real elmt_p;
    input Real elmt_kFBph;
    input Real elmt_n;
    input Real elmt_VmaxOVERKMyph2;
    input Real elmt_VmaxOVERKMyph1;
    input Real elmt_kdx1;
    input Real elmt_kdw;
    input Real elmt_VmaxOVERKMx21;
    input Real elmt_VmaxOVERKMx22;
    input Real elmt_ypp;
    input Real elmt_KMyph1;
    input Real elmt_Kx2;
    input Real elmt_kFBf;
    input Real elmt_m3PI;
    input Real elmt_KMyph2;
    input Real elmt_KMy2;
    input Real elmt_Kf;
    input Real elmt_kminusx;
    input Real elmt_KMy1;
    input Real elmt_VmaxOVERKMzph1;
    input Real elmt_VmaxOVERKMzph2;
    input Real elmt_VmaxOVERKMy1;
    input Real elmt_VmaxOVERKMy2;
    input Real elmt_Gamma;
    input Real elmt_c1;
    input Real elmt_kRas;
    input Real elmt_kxR0;
    input Real elmt_yp;
    input Real elmt_KMx22;
    input Real elmt_KMx21;
    input Real elmt_Zf;
    input Real elmt_zpp;
    input Real elmt_zp;
    input Real elmt_Kph;
    input Real elmt_eGEF;
    input Real elmt_k3PI;
    input Real elmt_c2;
    input Real elmt_Wph;
    input Real elmt_x1;
    input Real elmt_x2;
    input Real elmt_KMx11;
    input Real elmt_VmaxOVERKMx12;
    input Real elmt_KMx12;
    input Real elmt_eph;
    input Real elmt_kt;
    input Real elmt_mRas;
    input Real elmt_VmaxOVERKMx11;
    input Real elmt_KMzph2;
    input Real elmt_fGEF;
    input Real elmt_KMzph1;
    input Real elmt_sumrc1;
    input Real elmt_y;
    input Real elmt_z;
    input Real elmt_w;
    input Real elmt_ePI3K;
    input Real elmt_ke;

    Real elmt_m3PIODE(unit = "") "";
    Real elmt_product2 "";
    Real elmt_wODE(unit = "") "";
    Real elmt_product11 "";
    Real elmt_mRasODE(unit = "") "";
    Real elmt_product3 "";
    Real elmt_c2ODE(unit = "") "";
    Real elmt_product1 "";
    Real elmt_yppODE(unit = "") "";
    Real elmt_product7 "";
    Real elmt_ephODE(unit = "") "";
    Real elmt_product12 "";
    Real elmt_yODE(unit = "") "";
    Real elmt_product6 "";
    Real elmt_sumrc1ODE(unit = "") "";
    Real elmt_product0 "";
    Real elmt_fGEFODE(unit = "") "";
    Real elmt_product10 "";
    Real elmt_zODE(unit = "") "";
    Real elmt_product8 "";
    Real elmt_zppODE(unit = "") "";
    Real elmt_product9 "";
    Real elmt_x1ODE(unit = "") "";
    Real elmt_product4 "";
    Real elmt_x2ODE(unit = "") "";
    Real elmt_product5 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_product8 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_product12 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_m3PIODE = (elmt_k3PI * (elmt_ePI3K - elmt_m3PI));
        elmt_wODE = (elmt_kdw * (elmt_zpp - elmt_w));
        elmt_mRasODE = (elmt_kRas * (((1.0 + elmt_Gamma) * elmt_eGEF) - ((1.0 + (elmt_Gamma * elmt_eGEF)) * elmt_mRas)));
        elmt_c2ODE = ((elmt_kxR0 * Functions.pow(elmt_c1, 2.0)) - ((elmt_kminusx + elmt_ke) * elmt_c2));
        elmt_yppODE = ((((elmt_VmaxOVERKMx12 * elmt_x1 * elmt_yp) / (1.0 + (elmt_y / elmt_KMx11) + (elmt_yp / elmt_KMx12))) + ((elmt_VmaxOVERKMx22 * elmt_x2 * elmt_yp) / (1.0 + (elmt_y / elmt_KMx21) + (elmt_yp / elmt_KMx22)))) - ((elmt_VmaxOVERKMyph2 * elmt_ypp) / (((1.0 + (elmt_z / elmt_KMy1) + (elmt_zp / elmt_KMy2)) * (1.0 + (elmt_yp / elmt_KMyph1))) + (elmt_ypp / elmt_KMyph2))));
        elmt_ephODE = (elmt_kFBph * ((Functions.pow(elmt_w, elmt_p) / (Functions.pow(elmt_Wph, elmt_p) + Functions.pow(elmt_w, elmt_p))) - ((elmt_eph - 1.0) / elmt_Kph)));
        elmt_yODE = ((((elmt_VmaxOVERKMyph1 * elmt_yp) / (1.0 + (elmt_yp / elmt_KMyph1) + (elmt_ypp / elmt_KMyph2))) - ((elmt_VmaxOVERKMx11 * elmt_x1 * elmt_y) / (1.0 + (elmt_y / elmt_KMx11) + (elmt_yp / elmt_KMx12)))) - ((elmt_VmaxOVERKMx21 * elmt_x2 * elmt_y) / (1.0 + (elmt_y / elmt_KMx21) + (elmt_yp / elmt_KMx22))));
        elmt_sumrc1ODE = ((elmt_kt * (1.0 - elmt_sumrc1)) + (2.0 * ((elmt_kminusx * elmt_c2) - (elmt_kxR0 * Functions.pow(elmt_c1, 2.0)))));
        elmt_fGEFODE = (elmt_kFBf * (((1.0 - elmt_fGEF) / elmt_Kf) - ((Functions.pow(elmt_zpp, elmt_n) / (Functions.pow(elmt_Zf, elmt_n) + Functions.pow(elmt_zpp, elmt_n))) * elmt_fGEF)));
        elmt_zODE = (((elmt_VmaxOVERKMzph1 * elmt_eph * elmt_zp) / (1.0 + (elmt_zp / elmt_KMzph1) + (elmt_zpp / elmt_KMzph2))) - ((elmt_VmaxOVERKMy1 * elmt_ypp * elmt_z) / (1.0 + (elmt_z / elmt_KMy1) + (elmt_zp / elmt_KMy2))));
        elmt_zppODE = (((elmt_VmaxOVERKMy2 * elmt_ypp * elmt_zp) / (1.0 + (elmt_z / elmt_KMy1) + (elmt_zp / elmt_KMy2))) - ((elmt_VmaxOVERKMzph2 * elmt_eph * elmt_zpp) / (1.0 + (elmt_zp / elmt_KMzph1) + (elmt_zpp / elmt_KMzph2))));
        elmt_x1ODE = (elmt_kdx1 * (elmt_mRas - (elmt_x1 / (1.0 + (elmt_y / elmt_KMx11) + (elmt_yp / elmt_KMx12)))));
        elmt_x2ODE = (elmt_kdx2 * ((((1.0 + elmt_Kx2) * elmt_m3PI) / (1.0 + (elmt_Kx2 * elmt_m3PI))) - (elmt_x2 / (1.0 + (elmt_y / elmt_KMx21) + (elmt_yp / elmt_KMx22)))));
        der(elmt_product9) = 0;
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_product12) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;

end Reactions;
