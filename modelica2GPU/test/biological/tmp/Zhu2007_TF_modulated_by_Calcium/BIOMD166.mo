
model BIOMD166 "Zhu2007_TF_modulated_by_Calcium"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real kf0 = 6.0;
    parameter Real gamma = 9.0;
    parameter Real Ka = 0.5;
    parameter Real Kb = 0.5;
    parameter Real Kd0 = 10.0;
    parameter Real kd_1 = 1.0;
    parameter Real Rbas_2 = 0.1;
    parameter Real v0_3 = 1.0;
    parameter Real v1_4 = 5.7;
    parameter Real beta_4 = 0.3;
    parameter Real Vm2_5 = 30.0;
    parameter Real K2_5 = 0.5;
    parameter Real n_5 = 2.0;
    parameter Real Vm3_6 = 325.0;
    parameter Real Kr_6 = 1.7;
    parameter Real K_A_6 = 0.46;
    parameter Real m_6 = 2.0;
    parameter Real p_6 = 4.0;
    parameter Real k1_7 = 0.7;
    parameter Real k_8 = 10.0;
    parameter Real cytoplasm = 1.0;
    parameter Real store = 1.0;

    Real kf(start=0.0);
    Real Kd(start=0.0);

    Real X;
    Real Y;
    Real Z;

initial equation
    X = 15.0;
    Y = 0.0;
    Z = 0.25;

equation
    kf = kf0 * (1 + gamma * pow(Z, 4) / (pow(Ka, 4) + pow(Z, 4)));
    Kd = Kd0 / (1 + pow(Z, 4) / pow(Kb, 4));
    der(X) = (kf * X^2 / (X^2 + Kd)) + (Rbas_2) - (kd_1 * X);
    der(Y) = (Vm2_5 * Z^n_5 / (K2_5^n_5 + Z^n_5)) - ((Vm3_6 * Y^m_6 / (Kr_6^m_6 + Y^m_6)) * Z^p_6 / (K_A_6^p_6 + Z^p_6)) - (k1_7 * Y);
    der(Z) = (v0_3) + (v1_4 * beta_4) + ((Vm3_6 * Y^m_6 / (Kr_6^m_6 + Y^m_6)) * Z^p_6 / (K_A_6^p_6 + Z^p_6)) + (k1_7 * Y) - (Vm2_5 * Z^n_5 / (K2_5^n_5 + Z^n_5)) - (k_8 * Z);




end BIOMD166;
