within BIOMD527;
class Parameters

    Real elmt_r5(unit = "s-1.0") "r5";
    Real elmt_r3(unit = "s-1.0") "r3";
    Real elmt_t5(unit = "") "t5";
    Real elmt_t10(unit = "") "t10";
    Real elmt_r1(unit = "s-1.0") "r1";
    Real elmt_t3(unit = "") "t3";
    Real elmt_r10(unit = "s-1.0") "r10";
    Real elmt_c1(unit = "s-1.0") "c1";
    Real elmt_c5(unit = "s-1.0") "c5";
    Real elmt_c10(unit = "s-1.0") "c10";
    Real elmt_c3(unit = "s-1.0") "c3";
    Real elmt_t1(unit = "") "t1";
    Real elmt_mu5(unit = "s-1.0") "mu5";
    Real elmt_mu3(unit = "s-1.0") "mu3";
    Real elmt_mu10(unit = "s-1.0") "mu10";
    Real elmt_mu1(unit = "s-1.0") "mu1";


    initial equation
        elmt_r5 = 1.8812956;
        elmt_r3 = 4.5867007;
        elmt_t5 = 5.0;
        elmt_t10 = 10.0;
        elmt_r1 = 2.8195198;
        elmt_t3 = 3.0;
        elmt_r10 = 0.3757764;
        elmt_c1 = 0.0;
        elmt_c5 = 2.497735;
        elmt_c10 = 2.43E-7;
        elmt_c3 = 5.042901;
        elmt_t1 = 1.0;
        elmt_mu5 = 0.0;
        elmt_mu3 = 0.0;
        elmt_mu10 = 0.0;
        elmt_mu1 = 297.78957;


    equation
        der(elmt_r5) = 0;
        der(elmt_r3) = 0;
        der(elmt_t5) = 0;
        der(elmt_t10) = 0;
        der(elmt_r1) = 0;
        der(elmt_t3) = 0;
        der(elmt_r10) = 0;
        der(elmt_c1) = 0;
        der(elmt_c5) = 0;
        der(elmt_c10) = 0;
        der(elmt_c3) = 0;
        der(elmt_t1) = 0;
        der(elmt_mu5) = 0;
        der(elmt_mu3) = 0;
        der(elmt_mu10) = 0;
        der(elmt_mu1) = 0;

end Parameters;
