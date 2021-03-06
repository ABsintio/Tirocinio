within BIOMD436;
class Parameters

    input Boolean elmt_event2;    input Boolean elmt_event1;    input Boolean elmt_event4;    input Boolean elmt_event3;    input Boolean elmt_event6;    input Boolean elmt_event5;    input Boolean elmt_event0;
    input Real assign_elmt_LPSint;
    input Real assign_elmt_GPChoint;
    input Real assign_elmt_DGint;
    input Real assign_elmt_LPSslope;
    input Real assign_elmt_DGslope;
    input Real assign_elmt_GPChoslope;


    Real elmt_LPSslope1(unit = "s-1.0") "";
    Real elmt_LPSintzero(unit = "") "";
    Real elmt_DGslope4(unit = "s-1.0") "";
    Real elmt_LPSint(unit = "") "";
    Real elmt_DGslope3(unit = "s-1.0") "";
    Real elmt_LPSslope3(unit = "s-1.0") "";
    Real elmt_DGslope6(unit = "s-1.0") "";
    Real elmt_DGint2(unit = "") "";
    Real elmt_DGslope5(unit = "s-1.0") "";
    Real elmt_DGint1(unit = "") "";
    Real elmt_GPChoslopezero(unit = ".s-1.0") "";
    Real elmt_LPSactivity(unit = "") "";
    Real elmt_DGslope2(unit = "s-1.0") "";
    Real elmt_DGslope1(unit = "s-1.0") "";
    Real elmt_GPChoint(unit = "") "";
    Real elmt_DGint4(unit = "") "";
    Real elmt_DGint3(unit = "") "";
    Real elmt_DGint6(unit = "") "";
    Real elmt_DGint5(unit = "") "";
    Real elmt_DGslopezero(unit = "s-1.0") "";
    Real elmt_k16(unit = "s-1.0") "";
    Real elmt_GPChoint3(unit = "") "";
    Real elmt_k15(unit = "s-1.0") "";
    Real elmt_GPChoint4(unit = "") "";
    Real elmt_k14(unit = "s-1.0") "";
    Real elmt_GPChoint5(unit = "") "";
    Real elmt_k13(unit = "s-1.0") "";
    Real elmt_GPChoint6(unit = "") "";
    Real elmt_k12(unit = "s-1.0") "";
    Real elmt_DGint(unit = "") "";
    Real elmt_k11(unit = "s-1.0") "";
    Real elmt_k10(unit = ".s-1.0") "";
    Real elmt_GPChoint1(unit = "") "";
    Real elmt_GPChoint2(unit = "") "";
    Real elmt_k1(unit = "s-1.0") "";
    Real elmt_GPChoratio(unit = "") "";
    Real elmt_GPChoslope1(unit = ".s-1.0") "";
    Real elmt_k19(unit = "s-1.0") "";
    Real elmt_GPChoslope2(unit = ".s-1.0") "";
    Real elmt_k18(unit = "s-1.0") "";
    Real elmt_k17(unit = "s-1.0") "";
    Real elmt_k8(unit = "s-1.0") "";
    Real elmt_GPChoslope5(unit = ".s-1.0") "";
    Real elmt_k9(unit = "s-1.0") "";
    Real elmt_GPChoslope6(unit = ".s-1.0") "";
    Real elmt_k6(unit = "s-1.0") "";
    Real elmt_GPChoslope3(unit = ".s-1.0") "";
    Real elmt_k7(unit = "s-1.0") "";
    Real elmt_GPChoslope4(unit = ".s-1.0") "";
    Real elmt_k4(unit = "s-1.0") "";
    Real elmt_k5(unit = ".s-1.0") "";
    Real elmt_k2(unit = "s-1.0") "";
    Real elmt_k3(unit = "s-1.0") "";
    Real elmt_DGperDNA(unit = "kg-1.0.") "";
    Real elmt_GPChointzero(unit = "") "";
    Real elmt_k22(unit = "s-1.0") "";
    Real elmt_k21(unit = "s-1.0") "";
    Real elmt_k20(unit = "s-1.0") "";
    Real elmt_DNA(unit = "") "";
    Real elmt_t5(unit = "") "";
    Real elmt_t6(unit = "") "";
    Real elmt_t3(unit = "") "";
    Real elmt_t4(unit = "") "";
    Real elmt_LPSint1(unit = "") "";
    Real elmt_LPSint3(unit = "") "";
    Real elmt_zero(unit = "") "";
    Real elmt_t1(unit = "") "";
    Real elmt_t2(unit = "") "";
    Real elmt_t0(unit = "") "";
    Real elmt_LPSslopezero(unit = "s-1.0") "";
    Real elmt_timevalue(unit = "") "";
    Real elmt_LPSslope(unit = "s-1.0") "";
    Real elmt_DGslope(unit = "s-1.0") "";
    Real elmt_GPChoslope(unit = ".s-1.0") "";
    Real elmt_DGintzero(unit = "") "";
    Real elmt_DGactivity(unit = "") "";
    Real elmt_onepmol(unit = "") "";


    initial equation
        elmt_LPSslope1 = (-0.6667);
        elmt_LPSintzero = 0.0;
        elmt_DGslope4 = 0.0976;
        elmt_LPSint = 0.0;
        elmt_DGslope3 = (-0.0913);
        elmt_LPSslope3 = 0.0;
        elmt_DGslope6 = 0.0846;
        elmt_DGint2 = 1.0282;
        elmt_DGslope5 = 0.0711;
        elmt_DGint1 = 1.2292;
        elmt_GPChoslopezero = (-158.43);
        elmt_DGslope2 = 0.0439;
        elmt_DGslope1 = (-0.1572);
        elmt_GPChoint = 315.3137;
        elmt_DGint4 = 0.543;
        elmt_DGint3 = 1.2987;
        elmt_DGint6 = 0.5927;
        elmt_DGint5 = 0.7549;
        elmt_DGslopezero = 0.3014;
        elmt_k16 = 1.0E-15;
        elmt_GPChoint3 = 396.41;
        elmt_k15 = 0.061;
        elmt_GPChoint4 = 214.77;
        elmt_k14 = 1.0E-15;
        elmt_GPChoint5 = 41.93;
        elmt_k13 = 0.204;
        elmt_GPChoint6 = 425.43;
        elmt_k12 = 0.098;
        elmt_DGint = 1.0;
        elmt_k11 = 0.111;
        elmt_k10 = 0.024;
        elmt_GPChoint1 = 179.96;
        elmt_GPChoint2 = 267.93;
        elmt_k1 = 355.637;
        elmt_GPChoslope1 = 112.28;
        elmt_k19 = 0.029;
        elmt_GPChoslope2 = 24.31;
        elmt_k18 = 0.054;
        elmt_k17 = 3.116;
        elmt_k8 = 0.007;
        elmt_GPChoslope5 = 27.08;
        elmt_k9 = 0.187;
        elmt_GPChoslope6 = (-4.874);
        elmt_k6 = 0.33;
        elmt_GPChoslope3 = (-39.93);
        elmt_k7 = 1.0E-15;
        elmt_GPChoslope4 = 5.48;
        elmt_k4 = 1.0E-15;
        elmt_k5 = 1.0E-15;
        elmt_k2 = 1.0E-15;
        elmt_k3 = 1.0E-15;
        elmt_DGperDNA = 1.0;
        elmt_GPChointzero = 315.3137;
        elmt_k22 = 0.116;
        elmt_k21 = 0.034;
        elmt_k20 = 0.014;
        elmt_DNA = 1.0;
        elmt_t5 = 8.0;
        elmt_t6 = 12.0;
        elmt_t3 = 2.0;
        elmt_t4 = 4.0;
        elmt_LPSint1 = 1.3335;
        elmt_LPSint3 = 0.0;
        elmt_zero = 0.0;
        elmt_t1 = 0.5;
        elmt_t2 = 1.0;
        elmt_t0 = 0.0;
        elmt_LPSslopezero = 2.0;
        elmt_LPSslope = 0.0;
        elmt_DGslope = 1.0;
        elmt_GPChoslope = (-158.43);
        elmt_DGintzero = 1.0;
        elmt_onepmol = 1.0;


    equation
        der(elmt_LPSslope1) = 0;
        der(elmt_LPSintzero) = 0;
        der(elmt_DGslope4) = 0;
        der(elmt_LPSint) = 0.0;
        der(elmt_DGslope3) = 0;
        der(elmt_LPSslope3) = 0;
        der(elmt_DGslope6) = 0;
        der(elmt_DGint2) = 0;
        der(elmt_DGslope5) = 0;
        der(elmt_DGint1) = 0;
        der(elmt_GPChoslopezero) = 0;
        elmt_LPSactivity = ((elmt_LPSint + (elmt_timevalue * elmt_LPSslope)));
        der(elmt_DGslope2) = 0;
        der(elmt_DGslope1) = 0;
        der(elmt_GPChoint) = 0.0;
        der(elmt_DGint4) = 0;
        der(elmt_DGint3) = 0;
        der(elmt_DGint6) = 0;
        der(elmt_DGint5) = 0;
        der(elmt_DGslopezero) = 0;
        der(elmt_k16) = 0;
        der(elmt_GPChoint3) = 0;
        der(elmt_k15) = 0;
        der(elmt_GPChoint4) = 0;
        der(elmt_k14) = 0;
        der(elmt_GPChoint5) = 0;
        der(elmt_k13) = 0;
        der(elmt_GPChoint6) = 0;
        der(elmt_k12) = 0;
        der(elmt_DGint) = 0.0;
        der(elmt_k11) = 0;
        der(elmt_k10) = 0;
        der(elmt_GPChoint1) = 0;
        der(elmt_GPChoint2) = 0;
        der(elmt_k1) = 0;
        elmt_GPChoratio = (((elmt_GPChoint + (elmt_timevalue * elmt_GPChoslope))) / elmt_GPChointzero);
        der(elmt_GPChoslope1) = 0;
        der(elmt_k19) = 0;
        der(elmt_GPChoslope2) = 0;
        der(elmt_k18) = 0;
        der(elmt_k17) = 0;
        der(elmt_k8) = 0;
        der(elmt_GPChoslope5) = 0;
        der(elmt_k9) = 0;
        der(elmt_GPChoslope6) = 0;
        der(elmt_k6) = 0;
        der(elmt_GPChoslope3) = 0;
        der(elmt_k7) = 0;
        der(elmt_GPChoslope4) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_DGperDNA) = 0;
        der(elmt_GPChointzero) = 0;
        der(elmt_k22) = 0;
        der(elmt_k21) = 0;
        der(elmt_k20) = 0;
        der(elmt_DNA) = 0;
        der(elmt_t5) = 0;
        der(elmt_t6) = 0;
        der(elmt_t3) = 0;
        der(elmt_t4) = 0;
        der(elmt_LPSint1) = 0;
        der(elmt_LPSint3) = 0;
        der(elmt_zero) = 0;
        der(elmt_t1) = 0;
        der(elmt_t2) = 0;
        der(elmt_t0) = 0;
        der(elmt_LPSslopezero) = 0;
        elmt_timevalue = (time + elmt_t0);
        der(elmt_LPSslope) = 0.0;
        der(elmt_DGslope) = 0.0;
        der(elmt_GPChoslope) = 0.0;
        der(elmt_DGintzero) = 0;
        elmt_DGactivity = ((elmt_DGint + (elmt_timevalue * elmt_DGslope)));
        der(elmt_onepmol) = 0;

        when elmt_event2 then
            reinit(elmt_GPChoint, assign_elmt_GPChoint);
            reinit(elmt_DGint, assign_elmt_DGint);
            reinit(elmt_DGslope, assign_elmt_DGslope);
            reinit(elmt_GPChoslope, assign_elmt_GPChoslope);
        end when;
        when elmt_event1 then
            reinit(elmt_LPSint, assign_elmt_LPSint);
            reinit(elmt_GPChoint, assign_elmt_GPChoint);
            reinit(elmt_DGint, assign_elmt_DGint);
            reinit(elmt_LPSslope, assign_elmt_LPSslope);
            reinit(elmt_DGslope, assign_elmt_DGslope);
            reinit(elmt_GPChoslope, assign_elmt_GPChoslope);
        end when;
        when elmt_event4 then
            reinit(elmt_GPChoint, assign_elmt_GPChoint);
            reinit(elmt_DGint, assign_elmt_DGint);
            reinit(elmt_DGslope, assign_elmt_DGslope);
            reinit(elmt_GPChoslope, assign_elmt_GPChoslope);
        end when;
        when elmt_event3 then
            reinit(elmt_LPSint, assign_elmt_LPSint);
            reinit(elmt_GPChoint, assign_elmt_GPChoint);
            reinit(elmt_DGint, assign_elmt_DGint);
            reinit(elmt_LPSslope, assign_elmt_LPSslope);
            reinit(elmt_DGslope, assign_elmt_DGslope);
            reinit(elmt_GPChoslope, assign_elmt_GPChoslope);
        end when;
        when elmt_event6 then
            reinit(elmt_GPChoint, assign_elmt_GPChoint);
            reinit(elmt_DGint, assign_elmt_DGint);
            reinit(elmt_DGslope, assign_elmt_DGslope);
            reinit(elmt_GPChoslope, assign_elmt_GPChoslope);
        end when;
        when elmt_event5 then
            reinit(elmt_GPChoint, assign_elmt_GPChoint);
            reinit(elmt_DGint, assign_elmt_DGint);
            reinit(elmt_DGslope, assign_elmt_DGslope);
            reinit(elmt_GPChoslope, assign_elmt_GPChoslope);
        end when;
        when elmt_event0 then
            reinit(elmt_LPSint, assign_elmt_LPSint);
            reinit(elmt_GPChoint, assign_elmt_GPChoint);
            reinit(elmt_DGint, assign_elmt_DGint);
            reinit(elmt_LPSslope, assign_elmt_LPSslope);
            reinit(elmt_DGslope, assign_elmt_DGslope);
            reinit(elmt_GPChoslope, assign_elmt_GPChoslope);
        end when;
end Parameters;
