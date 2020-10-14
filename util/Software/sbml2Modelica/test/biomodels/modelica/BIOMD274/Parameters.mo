within BIOMD274;
class Parameters

    Real elmt_k1(unit = "") "k1";
    Real elmt_k2(unit = "") "k2";
    Real elmt_k3(unit = "") "k3";
    Real elmt_a4(unit = "") "a4";
    Real elmt_a5(unit = "") "a5";
    Real elmt_a2(unit = "") "a2";
    Real elmt_b3(unit = "") "b3";
    Real elmt_a3(unit = "") "a3";
    Real elmt_b1(unit = "") "b1";
    Real elmt_a1(unit = "") "a1";
    Real elmt_b2(unit = "") "b2";
    Real elmt_epsilon(unit = "") "epsilon";
    Real elmt_delta(unit = "") "delta";


    initial equation
        elmt_k1 = 0.1;
        elmt_k2 = 0.5;
        elmt_k3 = 0.025;
        elmt_a4 = 0.01;
        elmt_a5 = 0.005;
        elmt_a2 = 0.009;
        elmt_b3 = 0.01;
        elmt_a3 = 0.675;
        elmt_b1 = 0.1;
        elmt_a1 = 0.05;
        elmt_b2 = 0.3;
        elmt_epsilon = 0.1;
        elmt_delta = 0.9;


    equation
        der(elmt_k1) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_a4) = 0;
        der(elmt_a5) = 0;
        der(elmt_a2) = 0;
        der(elmt_b3) = 0;
        der(elmt_a3) = 0;
        der(elmt_b1) = 0;
        der(elmt_a1) = 0;
        der(elmt_b2) = 0;
        der(elmt_epsilon) = 0;
        der(elmt_delta) = 0;

end Parameters;
