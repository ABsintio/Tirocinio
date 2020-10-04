within BIOMD197;
class Parameters

    Real elmt_p5(unit = "s-1.0") "";
    Real elmt_p6(unit = "mol-1.0.s-1.0") "";
    Real elmt_p3(unit = "s-1.0") "";
    Real elmt_p4(unit = "s-1.0") "";
    Real elmt_p1(unit = "s-1.0") "";
    Real elmt_p2(unit = "s-1.0") "";
    Real elmt_p12(unit = "m3.0.s-1.0") "";
    Real elmt_p9(unit = "mol-1.0.s-1.0") "";
    Real elmt_p7(unit = "s-1.0") "";
    Real elmt_p8(unit = "") "";
    Real elmt_p11(unit = "") "";
    Real elmt_p10(unit = "s-1.0") "";


    initial equation
        elmt_p5 = 0.0091;
        elmt_p6 = 6.4E-5;
        elmt_p3 = 0.0013;
        elmt_p4 = 0.0827;
        elmt_p1 = 0.0025;
        elmt_p2 = 0.0784;
        elmt_p12 = 3.0E-4;
        elmt_p9 = 0.0098;
        elmt_p7 = 0.0397;
        elmt_p8 = 1000.0;
        elmt_p11 = 1000.0;
        elmt_p10 = 1.6;


    equation
        der(elmt_p5) = 0;
        der(elmt_p6) = 0;
        der(elmt_p3) = 0;
        der(elmt_p4) = 0;
        der(elmt_p1) = 0;
        der(elmt_p2) = 0;
        der(elmt_p12) = 0;
        der(elmt_p9) = 0;
        der(elmt_p7) = 0;
        der(elmt_p8) = 0;
        der(elmt_p11) = 0;
        der(elmt_p10) = 0;

end Parameters;
