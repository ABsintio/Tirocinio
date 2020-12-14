
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
    parameter Real kd_TF_degradation = 1.0;
    parameter Real Rbas_TF_synthesis_basal = 0.1;
    parameter Real v0_Calcium_Influx = 1.0;
    parameter Real v1_Calcium_Influx_stimulation = 5.7;
    parameter Real beta_Calcium_Influx_stimulation = 0.3;
    parameter Real Vm2_Calcium_into_store = 30.0;
    parameter Real K2_Calcium_into_store = 0.5;
    parameter Real n_Calcium_into_store = 2.0;
    parameter Real Vm3_Calcium_into_cytoplasm = 325.0;
    parameter Real Kr_Calcium_into_cytoplasm = 1.7;
    parameter Real K_A_Calcium_into_cytoplasm = 0.46;
    parameter Real m_Calcium_into_cytoplasm = 2.0;
    parameter Real p_Calcium_into_cytoplasm = 4.0;
    parameter Real k1_Leakage = 0.7;
    parameter Real k_Leakage_from_cytoplasm = 10.0;

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
    der(X) = (kf * X^2 / (X^2 + Kd)) + (Rbas_TF_synthesis_basal) - (kd_TF_degradation * X);
    der(Y) = (Vm2_Calcium_in_Calcium_into_1.0to_1.0 * Z^n_Calcium_into_1.0 / (K2_Calcium_in_Calcium_into_1.0to_1.0^n_Calcium_into_1.0 + Z^n_Calcium_into_1.0)) - ((Vm_Calcium_into_cytop_Calcium_into_1.0lasm3_Calcium_Calcium_into_cytop_Calcium_into_1.0lasm_into_cytop_Calcium_into_1.0lasm_Calcium_into_cytop_Calcium_into_1.0lasm * Y^m_Calcium_into_cytop_Calcium_into_1.0lasm / (Kr_Calcium_Calcium_into_cytop_Calcium_into_1.0lasm_into_cytop_Calcium_into_1.0lasm_Calcium_into_cytop_Calcium_into_1.0lasm^m_Calcium_into_cytop_Calcium_into_1.0lasm + Y^m_Calcium_into_cytop_Calcium_into_1.0lasm)) * Z^p_Calcium_into_1.0 / (K_A_Calcium_Calcium_into_cytop_Calcium_into_1.0lasm_into_cytop_Calcium_into_1.0lasm_Calcium_into_cytop_Calcium_into_1.0lasm^p_Calcium_into_1.0 + Z^p_Calcium_into_1.0)) - (k1_Leakage * Y);
    der(Z) = (v0_Calcium_Influx) + (v1_Calcium_Influx_stimulation * beta_Calcium_Influx_stimulation) + ((Vm_Calcium_into_cytop_Calcium_into_1.0lasm3_Calcium_Calcium_into_cytop_Calcium_into_1.0lasm_into_cytop_Calcium_into_1.0lasm_Calcium_into_cytop_Calcium_into_1.0lasm * Y^m_Calcium_into_cytop_Calcium_into_1.0lasm / (Kr_Calcium_Calcium_into_cytop_Calcium_into_1.0lasm_into_cytop_Calcium_into_1.0lasm_Calcium_into_cytop_Calcium_into_1.0lasm^m_Calcium_into_cytop_Calcium_into_1.0lasm + Y^m_Calcium_into_cytop_Calcium_into_1.0lasm)) * Z^p_Calcium_into_1.0 / (K_A_Calcium_Calcium_into_cytop_Calcium_into_1.0lasm_into_cytop_Calcium_into_1.0lasm_Calcium_into_cytop_Calcium_into_1.0lasm^p_Calcium_into_1.0 + Z^p_Calcium_into_1.0)) + (k1_Leakage * Y) - (Vm2_Calcium_in_Calcium_into_1.0to_1.0 * Z^n_Calcium_into_1.0 / (K2_Calcium_in_Calcium_into_1.0to_1.0^n_Calcium_into_1.0 + Z^n_Calcium_into_1.0)) - (k_Leakage_from_1.0 * Z);




end BIOMD166;
