within BIOMD054;
class Parameters

    input Real elmt_E;
    input Real elmt_A;

    Real elmt_P(unit = "") "Membrane permeability";
    Real elmt_M(unit = "") "AMP";
    Real elmt_n(unit = "") "Dependence of AMP degradation on ATP";
    Real elmt_k(unit = "") "Dependence of AMP degradation on AMP";
    Real elmt_J(unit = "") "Extracellular ion concentration";
    Real elmt_W(unit = "") "AMP degradation";
    Real elmt_W2(unit = "") "Ion pump activity";
    Real elmt_U(unit = "") "de novo AMP synthesis";
    Real elmt_W3(unit = "") "Glycolytic activity";
    Real elmt_T(unit = "") "ATP";


    initial equation
        elmt_P = 0.121;
        elmt_n = 1.2;
        elmt_k = (-1.0);
        elmt_J = 100.0;
        elmt_W = 0.01;
        elmt_W2 = 0.2;
        elmt_U = 0.02;
        elmt_W3 = 13.48;


    equation
        der(elmt_P) = 0;
        elmt_M = ((((7.0 * elmt_A) - (3.0 * elmt_E)) - Functions.pow((((6.0 * elmt_A * elmt_E) - (3.0 * Functions.pow(elmt_E, 2.0))) + Functions.pow(elmt_A, 2.0)), 0.5)) / 6.0);
        der(elmt_n) = 0;
        der(elmt_k) = 0;
        der(elmt_J) = 0;
        der(elmt_W) = 0;
        der(elmt_W2) = 0;
        der(elmt_U) = 0;
        der(elmt_W3) = 0;
        elmt_T = (((elmt_A + (3.0 * elmt_E)) - Functions.pow((((6.0 * elmt_A * elmt_E) - (3.0 * Functions.pow(elmt_E, 2.0))) + Functions.pow(elmt_A, 2.0)), 0.5)) / 6.0);

end Parameters;
