
model BIOMD409 "Queralt2006_MitoticExit_Cdc55DownregulationBySeparase"

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



    parameter Real ksclb2 = 0.03;
    parameter Real kdclb2 = 0.03;
    parameter Real kadclb2 = 0.2;
    parameter Real kaadclb2 = 2.0;
    parameter Real kscdc20 = 0.015;
    parameter Real kdcdc20 = 0.05;
    parameter Real kadcdc20 = 2.0;
    parameter Real kdcdh = 0.01;
    parameter Real kadcdh = 1.0;
    parameter Real kapcdh = 1.0;
    parameter Real Jcdh = 0.0015;
    parameter Real Cdh1T = 1.0;
    parameter Real kssecurin = 0.03;
    parameter Real kdsecurin = 0.05;
    parameter Real kadsecurin = 2.0;
    parameter Real ksseparase = 0.001;
    parameter Real kdseparase = 0.004;
    parameter Real lasecurin = 500.0;
    parameter Real ldsecurin = 1.0;
    parameter Real kad = 0.1;
    parameter Real kd = 0.45;
    parameter Real kp = 0.4;
    parameter Real kap = 2.0;
    parameter Real Jnet = 0.2;
    parameter Real lanet = 500.0;
    parameter Real ldnet = 1.0;
    parameter Real Net1T = 1.0;
    parameter Real Cdc14T = 0.5;
    parameter Real kspolo = 0.01;
    parameter Real kdpolo = 0.01;
    parameter Real kadpolo = 0.25;
    parameter Real kapolo = 0.0;
    parameter Real kaapolo = 0.5;
    parameter Real kipolo = 0.1;
    parameter Real Jpolo = 0.25;
    parameter Real katem = 0.0;
    parameter Real kaatem = 0.5;
    parameter Real kitem = 0.1;
    parameter Real kaitem = 1.0;
    parameter Real Jtem1 = 0.005;
    parameter Real Tem1T = 1.0;
    parameter Real kacdc15 = 0.02;
    parameter Real kaacdc15 = 0.5;
    parameter Real kicdc15 = 0.0;
    parameter Real kaicdc15 = 0.2;
    parameter Real Jcdc15 = 0.2;
    parameter Real lamen = 10.0;
    parameter Real ldmen = 0.1;
    parameter Real Cdc15T = 1.0;
    parameter Real kpp = 0.1;
    parameter Real ki = 20.0;
    parameter Real PP2AT = 1.0;
    parameter Real Inh = 0.0;
    parameter Real compartment = 1.0;

    Real Cdk(start=0.0);

    Real AA;
    Real Clb2;
    Real degr;
    Real Cdc20;
    Real Cdh1;
    Real Cdh1_i;
    Real securinT;
    Real securin;
    Real separaseT;
    Real separase;
    Real securinseparase;
    Real Net1;
    Real Net1Cdc14;
    Real PoloT;
    Real Polo;
    Real Polo_i;
    Real Tem1;
    Real Tem1_i;
    Real Cdc15;
    Real Cdc15_i;
    Real MEN;
    Real PP2A;
    Real Net1P;
    Real Cdc14;

initial equation
    AA = 1.0;
    Clb2 = 0.997;
    degr = 1.0;
    Cdc20 = 0.0;
    Cdh1 = 3.8e-05;
    securinT = 0.6;
    separaseT = 0.25;
    securinseparase = 0.248;
    Net1 = 0.098;
    Net1Cdc14 = 0.485;
    PoloT = 0.99;
    Polo = 0.945;
    Tem1 = 0.00389;
    Cdc15 = 0.0257;
    MEN = 8e-06;

equation
    separase = separaseT - securinseparase;
    Cdh1_i = Cdh1T - Cdh1;
    Tem1_i = Tem1T - Tem1;
    securin = securinT - securinseparase;
    Polo_i = PoloT - Polo;
    Cdk = Clb2 / (1 + Inh);
    Net1P = Net1T - Net1 - Net1Cdc14;
    Cdc14 = Cdc14T - Net1Cdc14;
    Cdc15_i = Cdc15T - Cdc15;
    PP2A = (1 + kpp * ki * separase) / (1 + ki * separase) * PP2AT;
    der(AA) = 0.0;
    der(Clb2) = (ksclb2) - ((kdclb2 + kadclb2 * Cdc20 + kaadclb2 * Cdh1) * Clb2);
    der(degr) = 0.0;
    der(Cdc20) = (kscdc20) - ((kdcdc20 + kadcdc20 * Cdh1) * Cdc20);
    der(Cdh1) = ((kdcdh + kadcdh * Cdc14) * ((Cdh1T - Cdh1) / (Jcdh + Cdh1T - Cdh1))) - (kapcdh * Cdk * (Cdh1 / (Jcdh + Cdh1)));
    der(securinT) = (kssecurin) - ((kdsecurin + kadsecurin * Cdc20) * securinT);
    der(separaseT) = (ksseparase) - (kdseparase * separaseT);
    der(securinseparase) = (lasecurin * securin * separase - ldsecurin * securinseparase) - ((kdsecurin + kadsecurin * Cdc20) * securinseparase) - (kdseparase * securinseparase);
    der(Net1) = ((kad * Cdc14 + kd * PP2A) * (Net1P / (Jnet + Net1P))) + (ldnet * Net1Cdc14) - ((kp * Cdk + kap * MEN) * (Net1 / (Jnet + Net1 + Net1Cdc14))) - (lanet * Net1 * Cdc14);
    der(Net1Cdc14) = (lanet * Net1 * Cdc14) - (ldnet * Net1Cdc14) - ((kp * Cdk + kap * MEN) * (Net1Cdc14 / (Jnet + Net1 + Net1Cdc14)));
    der(PoloT) = (kspolo) - ((kdpolo + kadpolo * Cdh1) * PoloT);
    der(Polo) = ((kapolo + kaapolo * Cdk) * ((PoloT - Polo) / (Jpolo + PoloT - Polo))) - (kipolo * (Polo / (Jpolo + Polo))) - ((kdpolo + kadpolo * Cdh1) * Polo);
    der(Tem1) = ((katem + kaatem * Polo) * ((Tem1T - Tem1) / (Jtem1 + Tem1T - Tem1))) - ((kitem + kaitem * PP2A) * (Tem1 / (Jtem1 + Tem1)));
    der(Cdc15) = ((kacdc15 + kaacdc15 * Cdc14) * ((Cdc15T - Cdc15) / (Jcdc15 + Cdc15T - Cdc15))) - ((kicdc15 + kaicdc15 * Cdk) * (Cdc15 / (Jcdc15 + Cdc15)));
    der(MEN) = (lamen * (Tem1 - MEN) * (Cdc15 - MEN)) - (ldmen * MEN) - ((kitem + kaitem * PP2A) * (MEN / (Jtem1 + Tem1))) - ((kicdc15 + kaicdc15 * Cdk) * (MEN / (Jcdc15 + Cdc15)));




end BIOMD409;
