within BIOMD237;
class Parameters

    Real elmt_k29(unit = "") "k29";
    Real elmt_k28(unit = "") "k28";
    Real elmt_alphaA(unit = "") "alphaA";
    Real elmt_alphastim(unit = "") "alphastim";
    Real elmt_k30(unit = "") "k30";
    Real elmt_alphas(unit = "") "alphas";
    Real elmt_k16(unit = "") "k16";
    Real elmt_alphat(unit = "") "alphat";
    Real elmt_k15(unit = "") "k15";
    Real elmt_k14(unit = "") "k14";
    Real elmt_k13(unit = "") "k13";
    Real elmt_alpha(unit = "") "";
    Real elmt_betaA(unit = "") "betaA";
    Real elmt_k12(unit = "") "k12";
    Real elmt_k34(unit = "") "k34";
    Real elmt_k11(unit = "") "k11";
    Real elmt_k33(unit = "") "k33";
    Real elmt_k10(unit = "") "k10";
    Real elmt_k32(unit = "") "k32";
    Real elmt_k31(unit = "") "k31";
    Real elmt_beta(unit = "") "";
    Real elmt_k1(unit = "") "k1";
    Real elmt_k19(unit = "") "k19";
    Real elmt_alphae(unit = "") "alphae";
    Real elmt_k18(unit = "") "k18";
    Real elmt_k17(unit = "") "k17";
    Real elmt_k8(unit = "") "k8";
    Real elmt_k9(unit = "") "k9";
    Real elmt_k6(unit = "") "k6";
    Real elmt_k7(unit = "") "k7";
    Real elmt_k4(unit = "") "k4";
    Real elmt_k5(unit = "") "k5";
    Real elmt_betas(unit = "") "betas";
    Real elmt_k2(unit = "") "k2";
    Real elmt_betat(unit = "") "betat";
    Real elmt_k3(unit = "") "k3";
    Real elmt_betastim(unit = "") "betastim";
    Real elmt_betae(unit = "") "betae";
    Real elmt_k27(unit = "") "k27";
    Real elmt_k26(unit = "") "k26";
    Real elmt_k25(unit = "") "k25";
    Real elmt_k24(unit = "") "k24";
    Real elmt_k23(unit = "") "k23";
    Real elmt_k22(unit = "") "k22";
    Real elmt_k21(unit = "") "k21";
    Real elmt_k20(unit = "") "k20";


    initial equation
        elmt_k29 = 0.01;
        elmt_k28 = 0.01;
        elmt_alphaA = 1.0;
        elmt_alphastim = 1.0;
        elmt_k30 = 0.1;
        elmt_alphas = 2.0;
        elmt_k16 = 0.1;
        elmt_alphat = 0.0;
        elmt_k15 = 0.1;
        elmt_k14 = 0.1;
        elmt_k13 = 1.0;
        elmt_betaA = 1.0;
        elmt_k12 = 1.0;
        elmt_k34 = 1.0;
        elmt_k11 = 1.0;
        elmt_k33 = 1.0;
        elmt_k10 = 1.0;
        elmt_k32 = 1.0;
        elmt_k31 = 1.0;
        elmt_k1 = 0.01;
        elmt_k19 = 1.0;
        elmt_alphae = 10.0;
        elmt_k18 = 10.0;
        elmt_k17 = 1.0;
        elmt_k8 = 0.1;
        elmt_k9 = 1.0;
        elmt_k6 = 1.0;
        elmt_k7 = 10.0;
        elmt_k4 = 1.0;
        elmt_k5 = 1.0;
        elmt_betas = 20.0;
        elmt_k2 = 0.01;
        elmt_betat = 0.0;
        elmt_k3 = 1.0;
        elmt_betastim = 1.0;
        elmt_betae = 360.0;
        elmt_k27 = 1.0;
        elmt_k26 = 0.1;
        elmt_k25 = 1.0;
        elmt_k24 = 0.01;
        elmt_k23 = 1.0;
        elmt_k22 = 1.0;
        elmt_k21 = 1.0;
        elmt_k20 = 1.0;


    equation
        der(elmt_k29) = 0;
        der(elmt_k28) = 0;
        der(elmt_alphaA) = 0;
        der(elmt_alphastim) = 0;
        der(elmt_k30) = 0;
        der(elmt_alphas) = 0;
        der(elmt_k16) = 0;
        der(elmt_alphat) = 0;
        der(elmt_k15) = 0;
        der(elmt_k14) = 0;
        der(elmt_k13) = 0;
        elmt_alpha = (elmt_alphastim * (if ((time >= elmt_alphat) and (time <= elmt_alphae)) then (elmt_alphaA * (1.0 - exp(((- (time - elmt_alphat)) / elmt_alphas)))) else (if (time >= elmt_alphae) then (elmt_alphaA * exp(((- (time - elmt_alphat)) / elmt_alphas))) else 0.0)));
        der(elmt_betaA) = 0;
        der(elmt_k12) = 0;
        der(elmt_k34) = 0;
        der(elmt_k11) = 0;
        der(elmt_k33) = 0;
        der(elmt_k10) = 0;
        der(elmt_k32) = 0;
        der(elmt_k31) = 0;
        elmt_beta = (elmt_betastim * elmt_betaA * (if ((time >= elmt_betat) and (time <= elmt_betae)) then (1.0 - exp(((- (time - elmt_betat)) / elmt_betas))) else (if (time > elmt_betae) then exp(((- (time - elmt_betae)) / elmt_betas)) else 0.0)));
        der(elmt_k1) = 0;
        der(elmt_k19) = 0;
        der(elmt_alphae) = 0;
        der(elmt_k18) = 0;
        der(elmt_k17) = 0;
        der(elmt_k8) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_betas) = 0;
        der(elmt_k2) = 0;
        der(elmt_betat) = 0;
        der(elmt_k3) = 0;
        der(elmt_betastim) = 0;
        der(elmt_betae) = 0;
        der(elmt_k27) = 0;
        der(elmt_k26) = 0;
        der(elmt_k25) = 0;
        der(elmt_k24) = 0;
        der(elmt_k23) = 0;
        der(elmt_k22) = 0;
        der(elmt_k21) = 0;
        der(elmt_k20) = 0;

end Parameters;
