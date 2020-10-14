within BIOMD257;
class Parameters

    Real elmt_k1(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k8(unit = "s-1.0") "";
    Real elmt_k9(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k6(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k7(unit = "s-1.0") "";
    Real elmt_k4(unit = "s-1.0") "";
    Real elmt_k5(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k2(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k3(unit = "s-1.0") "";
    Real elmt_k5r(unit = "s-1.0") "";
    Real elmt_k6r(unit = "s-1.0") "";
    Real elmt_k7r(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k9r(unit = "s-1.0") "";
    Real elmt_k1r(unit = "s-1.0") "";
    Real elmt_k2r(unit = "s-1.0") "";
    Real elmt_k10r(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k11(unit = "s-1.0") "";
    Real elmt_k3r(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k10(unit = "s-1.0") "";


    initial equation
        elmt_k1 = 10.0;
        elmt_k9 = 0.1;
        elmt_k6 = 1.0;
        elmt_k7 = 0.1;
        elmt_k4 = 0.3;
        elmt_k5 = 1.0;
        elmt_k2 = 10.0;
        elmt_k3 = 2.0;
        elmt_k5r = 1.0;
        elmt_k6r = 1.0;
        elmt_k7r = 0.1;
        elmt_k9r = 0.05;
        elmt_k1r = 10.0;
        elmt_k2r = 10.0;
        elmt_k10r = 0.05;
        elmt_k3r = 1.0;
        elmt_k10 = 0.05;


    equation
        der(elmt_k1) = 0;
        elmt_k8 = elmt_k4;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_k5r) = 0;
        der(elmt_k6r) = 0;
        der(elmt_k7r) = 0;
        der(elmt_k9r) = 0;
        der(elmt_k1r) = 0;
        der(elmt_k2r) = 0;
        der(elmt_k10r) = 0;
        elmt_k11 = elmt_k4;
        der(elmt_k3r) = 0;
        der(elmt_k10) = 0;

end Parameters;
