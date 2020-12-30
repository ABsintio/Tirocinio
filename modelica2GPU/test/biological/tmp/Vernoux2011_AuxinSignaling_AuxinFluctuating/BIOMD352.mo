
model BIOMD352 "Vernoux2011_AuxinSignaling_AuxinFluctuating"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real pi_I = 1.0;
    parameter Real d_r = 0.007;
    parameter Real d_A = 0.003;
    parameter Real d_II = 0.003;
    parameter Real d_IA = 0.003;
    parameter Real k_II = 1.0;
    parameter Real k_IA = 1.0;
    parameter Real B_d = 100.0;
    parameter Real f_A = 10.0;
    parameter Real gamma_I = 10.0;
    parameter Real K_aux = 1.0;
    parameter Real K_II = 10.0;
    parameter Real K_IA = 10.0;
    parameter Real f_c = 10.0;
    parameter Real w_A = 10.0;
    parameter Real w_I = 10.0;
    parameter Real w_D = 10.0;
    parameter Real d_I = 0.05;
    parameter Real pi_A = 1.0;
    parameter Real k_Am = 10.0;
    parameter Real compartment_0000001 = 1.0;

    Real kprime_IA(start=10.0);
    Real kprime_II(start=10.0);
    Real aux_basal(start=0.11);

    Real I;
    Real A;
    Real D_II;
    Real D_IA;
    Real R;
    Real aux;

initial equation
    I = 10.0;
    A = 10.0;
    D_II = 10.0;
    D_IA = 10.0;
    R = 1.0;

equation
    aux = 1.11 * sin(2 * 3.1416 / 800 * (time - 200)) + 1.11;
    kprime_IA = K_IA * k_IA;
    kprime_II = K_II * k_II;
    aux_basal = 1 / (K_aux * (gamma_I - 1));
    der(I) = (gamma_I * d_I * K_aux * aux / (K_aux * aux + 1) * D_II) + (pi_I * R) - (k_IA * I * A - kprime_IA * D_IA) - (k_II * I * I - kprime_II * D_II) - (k_II * I * I - kprime_II * D_II) - (gamma_I * d_I * K_aux * aux / (K_aux * aux + 1) * I);
    der(A) = (gamma_I * d_I * K_aux * aux / (K_aux * aux + 1) * D_IA) + (pi_A) - (k_IA * I * A - kprime_IA * D_IA) - (d_A * A);
    der(D_II) = (k_II * I * I - kprime_II * D_II) - (d_II * D_II) - (gamma_I * d_I * K_aux * aux / (K_aux * aux + 1) * D_II);
    der(D_IA) = (k_IA * I * A - kprime_IA * D_IA) - (d_IA * D_IA) - (gamma_I * d_I * K_aux * aux / (K_aux * aux + 1) * D_IA);
    der(R) = ((1 + f_c / B_d * A * (1 + w_A * f_A * A / B_d)) / (1 + A / B_d * (1 + w_A * A / B_d) + w_I * A * I / (K_IA * B_d) + w_D * D_IA / B_d + k_Am)) - (d_r * R);




end BIOMD352;
