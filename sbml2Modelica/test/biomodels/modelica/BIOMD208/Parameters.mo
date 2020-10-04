within BIOMD208;
class Parameters

    Real elmt_k4a(unit = "") "";
    Real elmt_k1(unit = "") "";
    Real elmt_k4_double_prime(unit = "") "";
    Real elmt_k1_double_prime(unit = "") "";
    Real elmt_k4i(unit = "") "";
    Real elmt_k6(unit = "") "";
    Real elmt_k1_prime(unit = "") "";
    Real elmt_k4(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_k3(unit = "") "";
    Real elmt_phi4a(unit = "") "";
    Real elmt_phi6(unit = "") "";
    Real elmt_emax(unit = "") "";
    Real elmt_phi3(unit = "") "";
    Real elmt_phi2(unit = "") "";
    Real elmt_phi1(unit = "") "";
    Real elmt_phi4i(unit = "") "";
    Real elmt_F6(unit = "") "";


    initial equation
        elmt_k4a = 2.0;
        elmt_k1 = 1.0;
        elmt_k4_double_prime = 0.1;
        elmt_k1_double_prime = 10.0;
        elmt_k4i = 1.0;
        elmt_k6 = 0.0;
        elmt_k1_prime = 1.0;
        elmt_k4 = 0.09;
        elmt_k2 = 1.0;
        elmt_k3 = 0.4;
        elmt_phi4a = 0.01;
        elmt_phi6 = 0.1;
        elmt_emax = 2.0;
        elmt_phi3 = 0.1;
        elmt_phi2 = 0.01;
        elmt_phi1 = 0.1;
        elmt_phi4i = 0.01;


    equation
        der(elmt_k4a) = 0;
        der(elmt_k1) = 0;
        der(elmt_k4_double_prime) = 0;
        der(elmt_k1_double_prime) = 0;
        der(elmt_k4i) = 0;
        der(elmt_k6) = 0;
        der(elmt_k1_prime) = 0;
        der(elmt_k4) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_phi4a) = 0;
        der(elmt_phi6) = 0;
        der(elmt_emax) = 0;
        der(elmt_phi3) = 0;
        der(elmt_phi2) = 0;
        der(elmt_phi1) = 0;
        der(elmt_phi4i) = 0;
        elmt_F6 = (if (time <= 60.0) then 0.044 else 0.0);

end Parameters;
