within BIOMD019;
class Parameters

    input Real elmt_x1;

    Real elmt_kr19(unit = "s-1.0") "";
    Real elmt_kr8(unit = "s-1.0") "";
    Real elmt_k52(unit = "s-1.0") "";
    Real elmt_kr21(unit = "s-1.0") "";
    Real elmt_k50(unit = "s-1.0") "";
    Real elmt_kr20(unit = "s-1.0") "";
    Real elmt_k16(unit = "s-1.0") "";
    Real elmt_k15(unit = "s-1.0") "";
    Real elmt_k59(unit = "s-1.0") "";
    Real elmt_k14(unit = "s-1.0") "";
    Real elmt_kr29(unit = "s-1.0") "";
    Real elmt_k58(unit = "s-1.0") "";
    Real elmt_k13(unit = "s-1.0") "";
    Real elmt_kr28(unit = "s-1.0") "";
    Real elmt_k57(unit = "s-1.0") "";
    Real elmt_k12(unit = "s-1.0") "";
    Real elmt_kr23(unit = "s-1.0") "";
    Real elmt_k56(unit = "s-1.0") "";
    Real elmt_k11(unit = "s-1.0") "";
    Real elmt_kr22(unit = "s-1.0") "";
    Real elmt_k55(unit = "s-1.0") "";
    Real elmt_k10(unit = "s-1.0") "";
    Real elmt_kr25(unit = "s-1.0") "";
    Real elmt_kr24(unit = "s-1.0") "";
    Real elmt_k53(unit = "s-1.0") "";
    Real elmt_Km36(unit = "") "";
    Real elmt_k1(unit = "s-1.0") "";
    Real elmt_k19(unit = "s-1.0") "";
    Real elmt_k18(unit = "s-1.0") "";
    Real elmt_k17(unit = "s-1.0") "";
    Real elmt_k8(unit = "s-1.0") "";
    Real elmt_k6(unit = "s-1.0") "";
    Real elmt_k7(unit = "s-1.0") "";
    Real elmt_k4(unit = "s-1.0") "";
    Real elmt_C(unit = "") "C_internalization";
    Real elmt_k5(unit = "s-1.0") "";
    Real elmt_k2(unit = "s-1.0") "";
    Real elmt_k3(unit = "s-1.0") "";
    Real elmt_kr52(unit = "s-1.0") "";
    Real elmt_kr10(unit = "s-1.0") "";
    Real elmt_k61(unit = "s-1.0") "";
    Real elmt_k60(unit = "s-1.0") "";
    Real elmt_kr50(unit = "s-1.0") "";
    Real elmt_kr16(unit = "s-1.0") "";
    Real elmt_kr18(unit = "s-1.0") "";
    Real elmt_k25(unit = "s-1.0") "";
    Real elmt_kr17(unit = "s-1.0") "";
    Real elmt_k24(unit = "s-1.0") "";
    Real elmt_kr12(unit = "s-1.0") "";
    Real elmt_k23(unit = "s-1.0") "";
    Real elmt_kr56(unit = "s-1.0") "";
    Real elmt_kr11(unit = "s-1.0") "";
    Real elmt_k22(unit = "s-1.0") "";
    Real elmt_kr14(unit = "s-1.0") "";
    Real elmt_k21(unit = "s-1.0") "";
    Real elmt_kr58(unit = "s-1.0") "";
    Real elmt_k20(unit = "s-1.0") "";
    Real elmt_RT(unit = "") "total_Receptors";
    Real elmt_k29(unit = "s-1.0") "";
    Real elmt_k28(unit = "s-1.0") "";
    Real elmt_Vm36(unit = "s-1.0") "";
    Real elmt_kr41(unit = "s-1.0") "";
    Real elmt_kr40(unit = "s-1.0") "";
    Real elmt_kr42(unit = "s-1.0") "";
    Real elmt_k37(unit = "s-1.0") "";
    Real elmt_kr48(unit = "s-1.0") "";
    Real elmt_k35(unit = "s-1.0") "";
    Real elmt_k34(unit = "s-1.0") "";
    Real elmt_k33(unit = "s-1.0") "";
    Real elmt_kr44(unit = "s-1.0") "";
    Real elmt_k32(unit = "s-1.0") "";
    Real elmt_k41(unit = "s-1.0") "";
    Real elmt_k40(unit = "s-1.0") "";
    Real elmt_kr32(unit = "s-1.0") "";
    Real elmt_k49(unit = "s-1.0") "";
    Real elmt_kr6(unit = "s-1.0") "";
    Real elmt_kr37(unit = "s-1.0") "";
    Real elmt_k48(unit = "s-1.0") "";
    Real elmt_k47(unit = "s-1.0") "";
    Real elmt_kr4(unit = "s-1.0") "";
    Real elmt_kr3(unit = "s-1.0") "";
    Real elmt_kr34(unit = "s-1.0") "";
    Real elmt_k45(unit = "s-1.0") "";
    Real elmt_kr2(unit = "s-1.0") "";
    Real elmt_kr33(unit = "s-1.0") "";
    Real elmt_k44(unit = "s-1.0") "";
    Real elmt_kr1(unit = "s-1.0") "";
    Real elmt_k43(unit = "s-1.0") "";
    Real elmt_kr35(unit = "s-1.0") "";
    Real elmt_k42(unit = "s-1.0") "";


    initial equation
        elmt_kr19 = 1.0E-5;
        elmt_kr8 = 12.0;
        elmt_k52 = 0.00534;
        elmt_kr21 = 2.2E-5;
        elmt_k50 = 2.5E-5;
        elmt_kr20 = 24.0;
        elmt_k16 = 0.001;
        elmt_k15 = 600000.0;
        elmt_k59 = 18.0;
        elmt_k14 = 1.0E-4;
        elmt_kr29 = 7.0E-5;
        elmt_k58 = 5.0E-4;
        elmt_k13 = 130.2;
        elmt_kr28 = 0.318;
        elmt_k57 = 16.2;
        elmt_k12 = 60.0;
        elmt_kr23 = 36.0;
        elmt_k56 = 0.00145;
        elmt_k11 = 0.001;
        elmt_kr22 = 6.0;
        elmt_k55 = 342.0;
        elmt_k10 = 3.25581;
        elmt_kr25 = 1.284;
        elmt_kr24 = 33.0;
        elmt_k53 = 960.0;
        elmt_Km36 = 2.0E14;
        elmt_k1 = 0.003;
        elmt_k19 = 30.0;
        elmt_k18 = 0.0015;
        elmt_k17 = 0.001;
        elmt_k8 = 1.0E-4;
        elmt_k6 = 0.003;
        elmt_k7 = 0.003;
        elmt_k4 = 1.038E-5;
        elmt_k2 = 0.001;
        elmt_k3 = 60.0;
        elmt_kr52 = 1.98;
        elmt_kr10 = 0.66;
        elmt_k61 = 0.01002;
        elmt_k60 = 0.04002;
        elmt_kr50 = 30.0;
        elmt_kr16 = 16.5;
        elmt_kr18 = 78.0;
        elmt_k25 = 0.001;
        elmt_kr17 = 3.6;
        elmt_k24 = 0.001;
        elmt_kr12 = 0.6;
        elmt_k23 = 360.0;
        elmt_kr56 = 36.0;
        elmt_kr11 = 6.0;
        elmt_k22 = 0.0021;
        elmt_kr14 = 12.0;
        elmt_k21 = 1.38;
        elmt_kr58 = 30.0;
        elmt_k20 = 2.1E-4;
        elmt_RT = 50000.0;
        elmt_k29 = 60.0;
        elmt_k28 = 1.0E-4;
        elmt_Vm36 = 61200.0;
        elmt_kr41 = 2.574;
        elmt_kr40 = 3.84;
        elmt_kr42 = 12.0;
        elmt_k37 = 18.0;
        elmt_kr48 = 48.0;
        elmt_k35 = 0.09;
        elmt_k34 = 1.8;
        elmt_k33 = 12.0;
        elmt_kr44 = 1.0998;
        elmt_k32 = 6.0;
        elmt_k41 = 0.003;
        elmt_k40 = 0.003;
        elmt_kr32 = 2.4E-5;
        elmt_k49 = 3.48;
        elmt_kr6 = 0.3;
        elmt_kr37 = 9.0E-5;
        elmt_k48 = 0.00143;
        elmt_k47 = 174.0;
        elmt_kr4 = 0.0996;
        elmt_kr3 = 0.6;
        elmt_kr34 = 4.5E-4;
        elmt_k45 = 210.0;
        elmt_kr2 = 6.0;
        elmt_kr33 = 0.0021;
        elmt_k44 = 0.00111;
        elmt_kr1 = 0.228;
        elmt_k43 = 60.0;
        elmt_kr35 = 4.5E-4;
        elmt_k42 = 0.0071;


    equation
        der(elmt_kr19) = 0;
        der(elmt_kr8) = 0;
        der(elmt_k52) = 0;
        der(elmt_kr21) = 0;
        der(elmt_k50) = 0;
        der(elmt_kr20) = 0;
        der(elmt_k16) = 0;
        der(elmt_k15) = 0;
        der(elmt_k59) = 0;
        der(elmt_k14) = 0;
        der(elmt_kr29) = 0;
        der(elmt_k58) = 0;
        der(elmt_k13) = 0;
        der(elmt_kr28) = 0;
        der(elmt_k57) = 0;
        der(elmt_k12) = 0;
        der(elmt_kr23) = 0;
        der(elmt_k56) = 0;
        der(elmt_k11) = 0;
        der(elmt_kr22) = 0;
        der(elmt_k55) = 0;
        der(elmt_k10) = 0;
        der(elmt_kr25) = 0;
        der(elmt_kr24) = 0;
        der(elmt_k53) = 0;
        der(elmt_Km36) = 0;
        der(elmt_k1) = 0;
        der(elmt_k19) = 0;
        der(elmt_k18) = 0;
        der(elmt_k17) = 0;
        der(elmt_k8) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        elmt_C = (elmt_RT / ((elmt_kr1 / (elmt_k1 * elmt_x1)) + 1.0));
        elmt_k5 = (if (elmt_C < 3100.0) then 1.55 elseif (elmt_C > 100000.0) then 0.2 else ((elmt_C * (-1.35E-5)) + 1.55));
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_kr52) = 0;
        der(elmt_kr10) = 0;
        der(elmt_k61) = 0;
        der(elmt_k60) = 0;
        der(elmt_kr50) = 0;
        der(elmt_kr16) = 0;
        der(elmt_kr18) = 0;
        der(elmt_k25) = 0;
        der(elmt_kr17) = 0;
        der(elmt_k24) = 0;
        der(elmt_kr12) = 0;
        der(elmt_k23) = 0;
        der(elmt_kr56) = 0;
        der(elmt_kr11) = 0;
        der(elmt_k22) = 0;
        der(elmt_kr14) = 0;
        der(elmt_k21) = 0;
        der(elmt_kr58) = 0;
        der(elmt_k20) = 0;
        der(elmt_RT) = 0;
        der(elmt_k29) = 0;
        der(elmt_k28) = 0;
        der(elmt_Vm36) = 0;
        der(elmt_kr41) = 0;
        der(elmt_kr40) = 0;
        der(elmt_kr42) = 0;
        der(elmt_k37) = 0;
        der(elmt_kr48) = 0;
        der(elmt_k35) = 0;
        der(elmt_k34) = 0;
        der(elmt_k33) = 0;
        der(elmt_kr44) = 0;
        der(elmt_k32) = 0;
        der(elmt_k41) = 0;
        der(elmt_k40) = 0;
        der(elmt_kr32) = 0;
        der(elmt_k49) = 0;
        der(elmt_kr6) = 0;
        der(elmt_kr37) = 0;
        der(elmt_k48) = 0;
        der(elmt_k47) = 0;
        der(elmt_kr4) = 0;
        der(elmt_kr3) = 0;
        der(elmt_kr34) = 0;
        der(elmt_k45) = 0;
        der(elmt_kr2) = 0;
        der(elmt_kr33) = 0;
        der(elmt_k44) = 0;
        der(elmt_kr1) = 0;
        der(elmt_k43) = 0;
        der(elmt_kr35) = 0;
        der(elmt_k42) = 0;

end Parameters;
