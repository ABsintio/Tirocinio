model BIOMD062 "Dynamic model of Escherichia coli tryptophan operon shows an optimal structural design."

    parameter Real Tomax = 100.00;
    parameter Real Tex = 0.14;
    parameter Real e_val = 0.90;
    parameter Real f_val = 380.00;

    Real Ts_norm(start=0.0);
    Real To_norm(start=0.0);
    Real Tt_norm(start=0.0);
    Real Enz_norm(start=0.0);

    Real Enz "Anthranilate synthase";
    Real Ts "Synthesized Tryptophan";
    Real Tt "Total Tryptophan";
    Real To "exog. Trp";

initial equation
    Enz = 0.0;
    Ts = 0.0;
    Tt = 0.0;
    To = 0.0;

equation
    To = Tomax*Tex/(Tex*(1+Ts/f_val)+e_val);
    Tt = To + Ts;
    Enz_norm = Enz/1;
    Ts_norm = Ts/82;
    To_norm = To/82;
    Tt_norm = Tt/82;
    der(Enz) = k1*ki1^nH*Ot/(ki1^nH+Tt^nH) - mu*Enz;
    der(Ts) = k2*Enz*Ki2/(Ki2+Tt) - g*Ts/(Kg+TS) - mu*Ts;
    
end BIOMD062;