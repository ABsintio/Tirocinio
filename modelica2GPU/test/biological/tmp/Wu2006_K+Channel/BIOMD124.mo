
model BIOMD124 "Wu2006_K+Channel"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real gca = 1000.0;
    parameter Real gkca = 900.0;
    parameter Real gk = 1400.0;
    parameter Real gir = 5.0;
    parameter Real vca = 50.0;
    parameter Real vk = -75.0;
    parameter Real vir = -75.0;
    parameter Real cm = 5300.0;
    parameter Real taun = 16.0;
    parameter Real alpha = 4.5e-06;
    parameter Real fcyt = 0.01;
    parameter Real kpmca = 0.2;
    parameter Real kd = 0.3;
    parameter Real vn = -16.0;
    parameter Real vm = -20.0;
    parameter Real sn = 5.0;
    parameter Real sm = 12.0;
    parameter Real kserca = 0.4;
    parameter Real dact = 0.35;
    parameter Real dinact = 0.4;
    parameter Real fer = 0.01;
    parameter Real pleak = 0.0005;
    parameter Real dip3 = 0.5;
    parameter Real vcytver = 5.0;
    parameter Real ip3 = 0.0;
    parameter Real sa = 0.1;
    parameter Real r = 0.14;
    parameter Real taua = 300000.0;

    Real gkatp(start=500.0);
    Real alphaIRn(start=0.0);
    Real betaIRn(start=0.0);
    Real nIRinf(start=0.0);
    Real tauIRn(start=0.0);
    Real alphaIRr(start=0.0);
    Real betaIRr(start=0.0);
    Real rIRinf(start=0.0);
    Real tauIRr(start=0.0);
    Real ica(start=0.0);
    Real ik(start=0.0);
    Real ikca(start=0.0);
    Real ikatp(start=0.0);
    Real iir(start=0.0);
    Real minf(start=0.0);
    Real ninf(start=0.0);
    Real ainf(start=0.0);
    Real w(start=0.0);
    Real jmem(start=0.0);
    Real jserca(start=0.0);
    Real jleak(start=0.0);
    Real jip3(start=0.0);
    Real oinf(start=0.0);
    Real jer(start=0.0);
    Real V(start=-60.0);
    Real n(start=0.01);
    Real a(start=0.46);
    Real nIR(start=0.008);
    Real rIR(start=0.282);

    Real c;
    Real cer;

initial equation
    c = 0.1;
    cer = 100.0;

equation
    alphaIRn = 0.09 / (1 + exp(0.11 * (V + 100)));
    betaIRn = 0.00035 * exp(0.07 * (V + 25));
    nIRinf = 1 / (1 + betaIRn / alphaIRn);
    tauIRn = 1 / (alphaIRn + betaIRn);
    alphaIRr = 30 / (1 + exp(0.04 * (V + 230)));
    betaIRr = 0.15 / (1 + exp(-0.05 * (V + 120)));
    rIRinf = 1 / (1 + betaIRr / alphaIRr);
    tauIRr = 1 / (alphaIRr + betaIRr);
    minf = 1 / (1 + exp((vm - V) / sm));
    ik = gk * n * (V - vk);
    w = pow(c, 5) / (pow(c, 5) + pow(kd, 5));
    ikatp = gkatp * a * (V - vk);
    ica = gca * minf * (V - vca);
    ninf = 1 / (1 + exp((vn - V) / sn));
    ainf = 1 / (1 + exp((r - c) / sa));
    ikca = gkca * w * (V - vk);
    jmem = -(alpha * ica + kpmca * c);
    jserca = kserca * c;
    jleak = pleak * (cer - c);
    oinf = c / (dact + c) * (ip3 / (dip3 + ip3)) * (dinact / (dinact + c));
    jip3 = oinf * (cer - c);
    jer = jleak + jip3 - jserca;
    iir = gir * nIR * rIR * (V - vir);
    der(nIR) = (nIRinf - nIR) / tauIRn;
    der(rIR) = (rIRinf - rIR) / tauIRr;
    der(n) = (ninf - n) / taun;
    der(a) = (ainf - a) / taua;
    der(V) = -(ica + ik + ikca + ikatp + iir) / cm;
    der(c) = (1.0 * fcyt * (jmem + jer)) ;
    der(cer) = (-fer * vcytver * jer * 1.0) ;

    when time > 3e4 then
        reinit(gkatp,530);
    end when;

end BIOMD124;
