model BIOMD062 "Dynamic model of Escherichia coli tryptophan operon shows an optimal structural design."

    parameter Real Tomax = 100.00;
    parameter Real Tex = 0.14;
    parameter Real e_val = 0.90;
    parameter Real f_val = 380.00;
    parameter Real k1 = 65.000;
    parameter Real ki1 = 3.530;
    parameter Real nH = 1.920;
    parameter Real Ot = 0.003;
    parameter Real mu = 0.01;
    parameter Real k2 = 25.0;
    parameter Real Ki2 = 810.0;
    parameter Real g = 25.0;
    parameter Real Kg = 0.2;

    Real Enz "Anthranilate synthase";
    Real Ts "Synthesized Tryptophan";
    Real Tt "Total Tryptophan";
    Real To "exog. Trp";

initial equation
    Enz = 0.0;
    
equation
    To = Tomax*Tex/(Tex*(1+Ts/f_val)+e_val);
    Tt = To + Ts;
    der(Enz) = k1*ki1^nH*Ot/(ki1^nH+Tt^nH) - mu*Enz;
    der(Ts) = k2*Enz*Ki2/(Ki2+Tt) - g*Ts/(Kg+Ts) - mu*Ts;
    
end BIOMD062;
