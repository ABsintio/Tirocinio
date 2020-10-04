within BIOMD026;
class Parameters

    Real elmt_k1(unit = "") "";
    Real elmt_h5(unit = "") "";
    Real elmt_k_3(unit = "") "";
    Real elmt_h6(unit = "") "";
    Real elmt_h_6(unit = "") "";
    Real elmt_h3(unit = "") "";
    Real elmt_k_1(unit = "") "";
    Real elmt_h4(unit = "") "";
    Real elmt_h_4(unit = "") "";
    Real elmt_k4(unit = "") "";
    Real elmt_h1(unit = "") "";
    Real elmt_h_3(unit = "") "";
    Real elmt_h2(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_h_1(unit = "") "";
    Real elmt_k3(unit = "") "";


    initial equation
        elmt_k1 = 0.02;
        elmt_h5 = 0.5;
        elmt_k_3 = 1.0;
        elmt_h6 = 0.086;
        elmt_h_6 = 0.0011;
        elmt_h3 = 1.0;
        elmt_k_1 = 1.0;
        elmt_h4 = 0.01;
        elmt_h_4 = 1.0;
        elmt_k4 = 15.0;
        elmt_h1 = 0.045;
        elmt_h_3 = 0.01;
        elmt_h2 = 0.092;
        elmt_k2 = 0.01;
        elmt_h_1 = 1.0;
        elmt_k3 = 0.032;


    equation
        der(elmt_k1) = 0;
        der(elmt_h5) = 0;
        der(elmt_k_3) = 0;
        der(elmt_h6) = 0;
        der(elmt_h_6) = 0;
        der(elmt_h3) = 0;
        der(elmt_k_1) = 0;
        der(elmt_h4) = 0;
        der(elmt_h_4) = 0;
        der(elmt_k4) = 0;
        der(elmt_h1) = 0;
        der(elmt_h_3) = 0;
        der(elmt_h2) = 0;
        der(elmt_k2) = 0;
        der(elmt_h_1) = 0;
        der(elmt_k3) = 0;

end Parameters;
