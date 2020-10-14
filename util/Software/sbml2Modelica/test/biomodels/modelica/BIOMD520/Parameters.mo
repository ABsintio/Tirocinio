within BIOMD520;
class Parameters

    input Real elmt_N1;
    input Real elmt_N2;
    input Real elmt_N0;

    Real elmt_m0(unit = "") "";
    Real elmt_m1(unit = "") "";
    Real elmt_c0(unit = "s-1.0") "";
    Real elmt_d1(unit = "s-1.0") "";
    Real elmt_b0(unit = "s-1.0") "";
    Real elmt_c1(unit = "s-1.0") "";
    Real elmt_d2(unit = "s-1.0") "";
    Real elmt_d0(unit = "s-1.0") "";
    Real elmt_a0(unit = "s-1.0") "";
    Real elmt_b1(unit = "s-1.0") "";
    Real elmt_a1(unit = "s-1.0") "";
    Real elmt_T(unit = "") "cellularity";


    initial equation
        elmt_m0 = 2.92408052354609;
        elmt_m1 = 29.2408052354609;
        elmt_c0 = 1.0;
        elmt_d1 = 0.263;
        elmt_b0 = 0.218;
        elmt_c1 = 1.0;
        elmt_d2 = 1.83;
        elmt_d0 = 0.1;
        elmt_a0 = 0.0999999999999998;
        elmt_b1 = 0.547;
        elmt_a1 = 0.239254806051979;


    equation
        der(elmt_m0) = 0;
        der(elmt_m1) = 0;
        der(elmt_c0) = 0;
        der(elmt_d1) = 0;
        der(elmt_b0) = 0;
        der(elmt_c1) = 0;
        der(elmt_d2) = 0;
        der(elmt_d0) = 0;
        der(elmt_a0) = 0;
        der(elmt_b1) = 0;
        der(elmt_a1) = 0;
        elmt_T = (elmt_N0 + elmt_N1 + elmt_N2);

end Parameters;
