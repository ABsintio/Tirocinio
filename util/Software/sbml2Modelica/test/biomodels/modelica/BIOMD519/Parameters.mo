within BIOMD519;
class Parameters

    input Real elmt_N1;
    input Real elmt_N2;
    input Real elmt_N0;

    Real elmt_K(unit = "") "capacity";
    Real elmt_r1(unit = "s-1.0") "";
    Real elmt_p01(unit = "") "";
    Real elmt_p12(unit = "") "";
    Real elmt_d1(unit = "s-1.0") "";
    Real elmt_d2(unit = "s-1.0") "";
    Real elmt_f1(unit = "s-1.0") "N1 division rate";
    Real elmt_d0(unit = "s-1.0") "";
    Real elmt_f0(unit = "s-1.0") "N0 division rate";
    Real elmt_p00(unit = "") "";
    Real elmt_p11(unit = "") "";
    Real elmt_r0(unit = "s-1.0") "";
    Real elmt_T(unit = "") "cellularity";


    initial equation
        elmt_K = 120.0;
        elmt_r1 = 5.88010232010212;
        elmt_p01 = 0.855699855699856;
        elmt_p12 = 0.827377484810943;
        elmt_d1 = 0.420467092599869;
        elmt_d2 = 1.10138534772246;
        elmt_d0 = 0.1;
        elmt_r0 = 1.83898685224665;


    equation
        der(elmt_K) = 0;
        der(elmt_r1) = 0;
        der(elmt_p01) = 0;
        der(elmt_p12) = 0;
        der(elmt_d1) = 0;
        der(elmt_d2) = 0;
        elmt_f1 = (elmt_r1 * elmt_N1 * (1.0 - (elmt_T / elmt_K)));
        der(elmt_d0) = 0;
        elmt_f0 = (elmt_r0 * elmt_N0 * (1.0 - (elmt_T / elmt_K)));
        elmt_p00 = (1.0 - elmt_p01);
        elmt_p11 = (1.0 - elmt_p12);
        der(elmt_r0) = 0;
        elmt_T = (elmt_N0 + elmt_N1 + elmt_N2);

end Parameters;
