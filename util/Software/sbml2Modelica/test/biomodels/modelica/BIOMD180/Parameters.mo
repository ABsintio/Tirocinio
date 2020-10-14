within BIOMD180;
class Parameters

    Real elmt_sP1R1(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_d_P1_prime(unit = "") "";
    Real elmt_sP1_prime_P1(unit = "") "";
    Real elmt_sP2R2(unit = "") "";
    Real elmt_sP4_prime_P1_prime(unit = "") "";
    Real elmt_s2(unit = "") "";
    Real elmt_s3(unit = "") "";
    Real elmt_sP3_prime_P2_prime(unit = "") "";
    Real elmt_d_R1(unit = "") "";
    Real elmt_d_P1(unit = "") "";
    Real elmt_i2(unit = "") "";
    Real elmt_d_P4_prime(unit = "") "";
    Real elmt_d_R2(unit = "") "";
    Real elmt_i1(unit = "") "";
    Real elmt_d_P2(unit = "") "";
    Real elmt_s1(unit = "") "";
    Real elmt_d_P3_prime(unit = "") "";
    Real elmt_sP2_prime_P2(unit = "") "";
    Real elmt_d_P2_prime(unit = "") "";


    initial equation
        elmt_sP1R1 = 0.47305;
        elmt_n = 9.0;
        elmt_d_P1_prime = 0.37048;
        elmt_sP1_prime_P1 = 0.28687;
        elmt_sP2R2 = 0.47305;
        elmt_sP4_prime_P1_prime = 0.5;
        elmt_s2 = 0.3;
        elmt_s3 = 0.2;
        elmt_sP3_prime_P2_prime = 0.5;
        elmt_d_R1 = 0.23521;
        elmt_d_P1 = 0.22367;
        elmt_d_P4_prime = 0.37048;
        elmt_d_R2 = 0.23521;
        elmt_d_P2 = 0.22367;
        elmt_s1 = 0.4;
        elmt_d_P3_prime = 0.37048;
        elmt_sP2_prime_P2 = 0.28687;
        elmt_d_P2_prime = 0.37048;


    equation
        der(elmt_sP1R1) = 0;
        der(elmt_n) = 0;
        der(elmt_d_P1_prime) = 0;
        der(elmt_sP1_prime_P1) = 0;
        der(elmt_sP2R2) = 0;
        der(elmt_sP4_prime_P1_prime) = 0;
        der(elmt_s2) = 0;
        der(elmt_s3) = 0;
        der(elmt_sP3_prime_P2_prime) = 0;
        der(elmt_d_R1) = 0;
        der(elmt_d_P1) = 0;
        elmt_i2 = (if ((time >= 175.0) and (time <= 225.0)) then 1.0 else 0.0);
        der(elmt_d_P4_prime) = 0;
        der(elmt_d_R2) = 0;
        elmt_i1 = (if ((time >= 50.0) and (time <= 100.0)) then 1.0 else 0.0);
        der(elmt_d_P2) = 0;
        der(elmt_s1) = 0;
        der(elmt_d_P3_prime) = 0;
        der(elmt_sP2_prime_P2) = 0;
        der(elmt_d_P2_prime) = 0;

end Parameters;
