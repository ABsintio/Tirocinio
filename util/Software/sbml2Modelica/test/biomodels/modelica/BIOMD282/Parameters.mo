within BIOMD282;
class Parameters

    Real elmt_k1(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k4_prime(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k4(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k2(unit = "s-1.0") "";


    initial equation
        elmt_k1 = 11.0;
        elmt_k4_prime = 16.6;
        elmt_k4 = 0.72;
        elmt_k2 = 0.0;


    equation
        der(elmt_k1) = 0;
        der(elmt_k4_prime) = 0;
        der(elmt_k4) = 0;
        der(elmt_k2) = 0;

end Parameters;
