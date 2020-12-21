
model BIOMD315 "Montagne2011_Oligator_optimised"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k0d = 0.0294;
    parameter Real k0r = 3.43457943925;
    parameter Real k1d = 3.43457943925;
    parameter Real k1r = 0.0294;
    parameter Real k2d = 3.43457943925;
    parameter Real k2r = 0.0294;
    parameter Real k3d = 3.43457943925;
    parameter Real k3r = 0.0294;
    parameter Real k4d = 15.2;
    parameter Real k5d = 11.8408;
    parameter Real k6d = 3.34;
    parameter Real k7d = 0.0294;
    parameter Real k7r = 3.43457943925;
    parameter Real k8d = 0.610714285714;
    parameter Real k8r = 0.0171;
    parameter Real k9d = 0.610714285714;
    parameter Real k9r = 0.0171;
    parameter Real k10d = 3.43457943925;
    parameter Real k10r = 0.0294;
    parameter Real k11d = 11.8408;
    parameter Real k12d = 9.2239832;
    parameter Real k13d = 2.60186;
    parameter Real k14d = 0.0171;
    parameter Real k14r = 0.610714285714;
    parameter Real k15d = 0.00186296832954;
    parameter Real k15r = 0.027;
    parameter Real k16d = 0.027;
    parameter Real k16r = 0.00186296832954;
    parameter Real k17d = 0.0171;
    parameter Real k17r = 0.610714285714;
    parameter Real k18d = 17.024;
    parameter Real k19d = 5.566848;
    parameter Real k20d = 3.2064;
    parameter Real k21d = 0.027;
    parameter Real k21r = 0.00608108108108;
    parameter Real k22d = 0.021546;
    parameter Real k22r = 4.15391351351e-05;
    parameter Real k23d = 4.15391351351e-05;
    parameter Real k23r = 0.021546;
    parameter Real k24d = 0.411;
    parameter Real k25d = 0.485802;
    parameter Real k26d = 1.7262;
    parameter Real sample_ = 1.0;

    Real Bp_concentration(start=0.0);
    Real fluorescence(start=0.0);
    Real Inh_total(start=0.0);
    Real beta_total(start=0.0);
    Real alpha_total(start=0.0);

    Real T1;
    Real alpha;
    Real alpha_T1;
    Real alpha_T1_alpha;
    Real T1_alpha;
    Real alpha_alpha_T1;
    Real T2;
    Real alpha_T2;
    Real alpha_T2_beta;
    Real beta;
    Real T2_beta;
    Real alpha_beta_T2;
    Real T3;
    Real beta_T3;
    Real beta_T3_Inh;
    Real Inh;
    Real T3_Inh;
    Real beta_Inh_T3;
    Real Inh_T1;
    Real empty;

initial equation
    T1 = 38.5;
    alpha = 10.0;
    alpha_T1 = 0.0;
    alpha_T1_alpha = 0.0;
    T1_alpha = 0.0;
    alpha_alpha_T1 = 0.0;
    T2 = 3.89;
    alpha_T2 = 0.0;
    alpha_T2_beta = 0.0;
    beta = 0.0;
    T2_beta = 0.0;
    alpha_beta_T2 = 0.0;
    T3 = 38.5;
    beta_T3 = 0.0;
    beta_T3_Inh = 0.0;
    Inh = 0.0;
    T3_Inh = 0.0;
    beta_Inh_T3 = 0.0;
    Inh_T1 = 0.0;
    empty = 0.0;

equation
    Bp_concentration = 11 * (alpha_T1 + T1_alpha + alpha_T2 + T2_beta + beta_T3) + 16 * (T3_Inh + Inh_T1) + 22 * (alpha_T1_alpha + alpha_alpha_T1 + alpha_T2_beta + alpha_beta_T2) + 27 * (beta_T3_Inh + beta_Inh_T3);
    fluorescence = -0.38 + 0.00093 * (11 * (alpha_T1 + T1_alpha + alpha_T2 + T2_beta + beta_T3) + 16 * (T3_Inh + Inh_T1) + 22 * (alpha_T1_alpha + alpha_alpha_T1 + alpha_T2_beta + alpha_beta_T2) + 27 * (beta_T3_Inh + beta_Inh_T3));
    Inh_total = Inh + T3_Inh + beta_T3_Inh + Inh_T1;
    beta_total = beta + T2_beta + alpha_T2_beta + beta_T3 + beta_T3_Inh;
    alpha_total = alpha + alpha_T1 + T1_alpha + 2 * alpha_T1_alpha + alpha_T2 + alpha_T2_beta + alpha_T2;
    der(T1) = (sample_ * (k2d * T1_alpha - k2r * T1 * alpha)) - (sample_ * (k0d * T1 * alpha - k0r * alpha_T1)) - (sample_ * (k21d * T1 * Inh - k21r * Inh_T1));
    der(alpha) = (sample_ * (k1d * alpha_T1_alpha - k1r * alpha * alpha_T1)) + (sample_ * (k2d * T1_alpha - k2r * T1 * alpha)) + (sample_ * (k3d * alpha_T1_alpha - k3r * alpha * T1_alpha)) + (sample_ * k5d * alpha_T1_alpha) + (sample_ * (k10d * alpha_T2_beta - k10r * alpha * T2_beta)) + (sample_ * (k22d * T1_alpha * Inh - k22r * alpha * Inh_T1)) - (sample_ * (k0d * T1 * alpha - k0r * alpha_T1)) - (sample_ * (k7d * alpha * T2 - k7r * alpha_T2)) - (sample_ * (k23d * alpha * Inh_T1 - k23r * alpha_T1 * Inh)) - (sample_ * k24d * alpha);
    der(alpha_T1) = (sample_ * (k0d * T1 * alpha - k0r * alpha_T1)) + (sample_ * (k1d * alpha_T1_alpha - k1r * alpha * alpha_T1)) + (sample_ * (k23d * alpha * Inh_T1 - k23r * alpha_T1 * Inh)) - (sample_ * k4d * alpha_T1);
    der(alpha_T1_alpha) = (sample_ * k6d * alpha_alpha_T1) - (sample_ * (k1d * alpha_T1_alpha - k1r * alpha * alpha_T1)) - (sample_ * (k3d * alpha_T1_alpha - k3r * alpha * T1_alpha)) - (sample_ * k5d * alpha_T1_alpha);
    der(T1_alpha) = (sample_ * (k3d * alpha_T1_alpha - k3r * alpha * T1_alpha)) - (sample_ * (k2d * T1_alpha - k2r * T1 * alpha)) - (sample_ * (k22d * T1_alpha * Inh - k22r * alpha * Inh_T1));
    der(alpha_alpha_T1) = (sample_ * k4d * alpha_T1) + (sample_ * k5d * alpha_T1_alpha) - (sample_ * k6d * alpha_alpha_T1);
    der(T2) = (sample_ * (k9d * T2_beta - k9r * T2 * beta)) - (sample_ * (k7d * alpha * T2 - k7r * alpha_T2));
    der(alpha_T2) = (sample_ * (k7d * alpha * T2 - k7r * alpha_T2)) + (sample_ * (k8d * alpha_T2_beta - k8r * alpha_T2 * beta)) - (sample_ * k11d * alpha_T2);
    der(alpha_T2_beta) = (sample_ * k13d * alpha_beta_T2) - (sample_ * (k8d * alpha_T2_beta - k8r * alpha_T2 * beta)) - (sample_ * (k10d * alpha_T2_beta - k10r * alpha * T2_beta)) - (sample_ * k12d * alpha_T2_beta);
    der(beta) = (sample_ * (k8d * alpha_T2_beta - k8r * alpha_T2 * beta)) + (sample_ * (k9d * T2_beta - k9r * T2 * beta)) + (sample_ * k12d * alpha_T2_beta) - (sample_ * (k14d * beta * T3 - k14r * beta_T3)) - (sample_ * (k17d * beta * T3_Inh - k17r * beta_T3_Inh)) - (sample_ * k25d * beta);
    der(T2_beta) = (sample_ * (k10d * alpha_T2_beta - k10r * alpha * T2_beta)) - (sample_ * (k9d * T2_beta - k9r * T2 * beta));
    der(alpha_beta_T2) = (sample_ * k11d * alpha_T2) + (sample_ * k12d * alpha_T2_beta) - (sample_ * k13d * alpha_beta_T2);
    der(T3) =  - (sample_ * (k14d * beta * T3 - k14r * beta_T3)) - (sample_ * (k16d * T3 * Inh - k16r * T3_Inh));
    der(beta_T3) = (sample_ * (k14d * beta * T3 - k14r * beta_T3)) + (sample_ * (k15d * beta_T3_Inh - k15r * beta_T3 * Inh)) - (sample_ * k18d * beta_T3);
    der(beta_T3_Inh) = (sample_ * (k17d * beta * T3_Inh - k17r * beta_T3_Inh)) + (sample_ * k20d * beta_Inh_T3) - (sample_ * (k15d * beta_T3_Inh - k15r * beta_T3 * Inh)) - (sample_ * k19d * beta_T3_Inh);
    der(Inh) = (sample_ * (k15d * beta_T3_Inh - k15r * beta_T3 * Inh)) + (sample_ * k19d * beta_T3_Inh) + (sample_ * (k23d * alpha * Inh_T1 - k23r * alpha_T1 * Inh)) - (sample_ * (k16d * T3 * Inh - k16r * T3_Inh)) - (sample_ * (k21d * T1 * Inh - k21r * Inh_T1)) - (sample_ * (k22d * T1_alpha * Inh - k22r * alpha * Inh_T1)) - (sample_ * k26d * Inh);
    der(T3_Inh) = (sample_ * (k16d * T3 * Inh - k16r * T3_Inh)) - (sample_ * (k17d * beta * T3_Inh - k17r * beta_T3_Inh));
    der(beta_Inh_T3) = (sample_ * k18d * beta_T3) + (sample_ * k19d * beta_T3_Inh) - (sample_ * k20d * beta_Inh_T3);
    der(Inh_T1) = (sample_ * (k21d * T1 * Inh - k21r * Inh_T1)) + (sample_ * (k22d * T1_alpha * Inh - k22r * alpha * Inh_T1)) - (sample_ * (k23d * alpha * Inh_T1 - k23r * alpha_T1 * Inh));
    der(empty) = 0.0;




end BIOMD315;
