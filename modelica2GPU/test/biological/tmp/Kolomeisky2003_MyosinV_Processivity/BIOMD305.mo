
model BIOMD305 "Kolomeisky2003_MyosinV_Processivity"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k_1 = 0.7;
    parameter Real th_1 = -0.01;
    parameter Real Force = 0.0;
    parameter Real d = 36.0;
    parameter Real kT = 4.1164;
    parameter Real k_2 = 12.0;
    parameter Real th_2 = 0.045;
    parameter Real k_3 = 5e-06;
    parameter Real th_3 = 0.58;
    parameter Real k_4 = 6e-06;
    parameter Real th_4 = 0.385;
    parameter Real compartment_ = 1.0;

    Real S_tot(start=0.0);
    Real V(start=0.0);
    Real V_ave(start=0.0);
    Real tau(start=0.0);

    Real S0;
    Real ATP;
    Real S1;
    Real Pi_;
    Real ADP;
    Real fwd_step1;
    Real fwd_step2;
    Real back_step1;
    Real back_step2;

initial equation
    S0 = 10.0;
    ATP = 20.0;
    S1 = 0.0;
    Pi_ = 0.0;
    ADP = 0.0;
    fwd_step1 = 0.0;
    fwd_step2 = 0.0;
    back_step1 = 0.0;
    back_step2 = 0.0;

equation
    S_tot = S0 + S1;
    V = d * (((k_1 * S0 * ATP * exp(-th_1 * Force * d / kT)) + (k_2 * S1 * exp(-th_2 * Force * d / kT))) / 2 - ((k_3 * S0 * ATP * exp(th_3 * Force * d / kT)) + (k_4 * S1 * exp(th_4 * Force * d / kT))) / 2) / S_tot;
    V_ave = d * ((fwd_step1 + fwd_step2) / 2 - (back_step1 + back_step2) / 2) / (S_tot * time);
    tau = (k_1 * ATP * exp(-th_1 * Force * d / kT) + k_2 * exp(-th_2 * Force * d / kT) + k_3 * ATP * exp(th_3 * Force * d / kT) + k_4 * exp(th_4 * Force * d / kT)) / (k_1 * ATP * exp(-th_1 * Force * d / kT) * k_2 * exp(-th_2 * Force * d / kT) + k_3 * ATP * exp(th_3 * Force * d / kT) * k_4 * exp(th_4 * Force * d / kT));
    der(S0) = (k_2 * S1 * exp(-th_2 * Force * d / kT)) + (k_4 * S1 * exp(th_4 * Force * d / kT)) - (k_1 * S0 * ATP * exp(-th_1 * Force * d / kT)) - (k_3 * S0 * ATP * exp(th_3 * Force * d / kT));
    der(ATP) = 0.0;
    der(S1) = (k_1 * S0 * ATP * exp(-th_1 * Force * d / kT)) + (k_3 * S0 * ATP * exp(th_3 * Force * d / kT)) - (k_2 * S1 * exp(-th_2 * Force * d / kT)) - (k_4 * S1 * exp(th_4 * Force * d / kT));
    der(Pi_) = 0.0;
    der(ADP) = 0.0;
    der(fwd_step1) = (k_1 * S0 * ATP * exp(-th_1 * Force * d / kT)) ;
    der(fwd_step2) = (k_2 * S1 * exp(-th_2 * Force * d / kT)) ;
    der(back_step1) = (k_3 * S0 * ATP * exp(th_3 * Force * d / kT)) ;
    der(back_step2) = (k_4 * S1 * exp(th_4 * Force * d / kT)) ;




end BIOMD305;
