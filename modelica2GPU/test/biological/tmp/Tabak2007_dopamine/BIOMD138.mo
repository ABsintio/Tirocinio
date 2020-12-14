
model BIOMD138 "Tabak2007_dopamine"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real vca = 50.0;
    parameter Real vk = -75.0;
    parameter Real Cm = 10.0;
    parameter Real gk = 4.0;
    parameter Real gcal = 2.0;
    parameter Real gsk = 1.7;
    parameter Real ga = 0.0;
    parameter Real gf = 0.0;
    parameter Real vn = -5.0;
    parameter Real va = -20.0;
    parameter Real vm = -20.0;
    parameter Real vh = -60.0;
    parameter Real vf = -20.0;
    parameter Real sn = 10.0;
    parameter Real sa = 10.0;
    parameter Real sm = 12.0;
    parameter Real sh = 5.0;
    parameter Real sf = 5.6;
    parameter Real taun = 30.0;
    parameter Real tauh = 20.0;
    parameter Real lambda = 0.7;
    parameter Real kc = 0.16;
    parameter Real ks = 0.5;
    parameter Real ff = 0.01;
    parameter Real alpha = 0.0015;
    parameter Real cell = 1.0;

    Real phik(start=0.0);
    Real phia(start=0.0);
    Real phih(start=0.0);
    Real phif(start=0.0);
    Real phical(start=0.0);
    Real cinf(start=0.0);
    Real ica(start=0.0);
    Real isk(start=0.0);
    Real ibk(start=0.0);
    Real ikdr(start=0.0);
    Real ia(start=0.0);
    Real ik(start=0.0);
    Real n(start=0.1);
    Real h(start=0.1);
    Real V(start=-60.0);

    Real c;

initial equation
    c = 0.3;

equation
    phik = 1 / (1 + exp((vn - V) / sn));
    phia = 1 / (1 + exp((va - V) / sa));
    phih = 1 / (1 + exp((V - vh) / sh));
    phif = 1 / (1 + exp((vf - V) / sf));
    phical = 1 / (1 + exp((vm - V) / sm));
    ica = gcal * phical * (V - vca);
    cinf = pow(c, 2) / (pow(c, 2) + pow(ks, 2));
    isk = gsk * cinf * (V - vk);
    ibk = gf * phif * (V - vk);
    ikdr = gk * n * (V - vk);
    ia = ga * phia * h * (V - vk);
    ik = isk + ibk + ikdr + ia;
    der(V) = -(ica + ik) / Cm;
    der(n) = lambda * (phik - n) / taun;
    der(h) = (phih - h) / tauh;
    der(c) = ((-ff * (alpha * ica + kc * c) * cell)) ;




end BIOMD138;
