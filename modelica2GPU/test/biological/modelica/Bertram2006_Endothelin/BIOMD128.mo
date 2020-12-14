
model BIOMD128 "Bertram2006_Endothelin"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real vh = -20.0;
    parameter Real sh = 70.0;
    parameter Real tauh = 20.0;
    parameter Real kserca = 0.4;
    parameter Real sigmav = 10.0;
    parameter Real kc = 0.15;
    parameter Real vn = -16.0;
    parameter Real vk = -75.0;
    parameter Real taun = 20.0;
    parameter Real gk = 3500.0;
    parameter Real sn = 5.0;
    parameter Real vca = 25.0;
    parameter Real gca = 2000.0;
    parameter Real vm = -20.0;
    parameter Real sm = 12.0;
    parameter Real lambda = 1.25;
    parameter Real cm = 5300.0;
    parameter Real f = 0.01;
    parameter Real fer = 0.01;
    parameter Real alpha = 4.5e-06;
    parameter Real perl = 0.0005;
    parameter Real dact = 0.35;
    parameter Real dip3 = 0.5;
    parameter Real dinh = 0.4;
    parameter Real ki = 0.5;
    parameter Real taudir = 20000.0;
    parameter Real cAMPlow = 0.2;

    Real ninf(start=0.0);
    Real minf(start=0.0);
    Real hinf(start=0.0);
    Real ica(start=0.0);
    Real igirk(start=0.0);
    Real ik(start=0.0);
    Real girk(start=1000.0);
    Real IP3(start=0.0);
    Real ainf(start=0.0);
    Real hinfer(start=0.0);
    Real jerp(start=0.0);
    Real binf(start=0.0);
    Real o(start=0.0);
    Real jerleak(start=0.0);
    Real jerip3(start=0.0);
    Real jertot(start=0.0);
    Real jmemtot(start=0.0);
    Real perl_inf(start=0.0);
    Real ETswitch(start=0.0);
    Real h(start=0.0);
    Real inh(start=1.0);
    Real V(start=-60.0);
    Real n(start=0.0);

    Real c;
    Real cer;
    Real cAMP;

initial equation
    c = 0.3;
    cer = 260.0;
    cAMP = 1.0;

equation
    minf = 1 / (1 + exp((vm - V) / sm));
    ninf = 1 / (1 + exp((vn - V) / sn));
    hinf = 1 / (1 + exp((vh - V) / sh));
    ica = gca * minf * (V - vca);
    igirk = girk * h * (V - vk);
    ik = gk * n * (V - vk);
    ainf = 1 / (1 + dact / c);
    hinfer = 1 / (1 + c / dinh);
    jerp = kserca * c;
    binf = IP3 / (IP3 + dip3);
    o = pow(ainf, 3) * pow(binf, 3) * pow(hinfer, 3);
    jmemtot = -(alpha * ica + kc * c);
    jerleak = perl * (cer - c);
    jerip3 = o * (cer - c);
    jertot = jerleak + jerip3 - jerp;
    perl_inf = inh * cAMP * pow(c, 4) / (pow(ki, 4) + pow(c, 4));
    der(h) = (hinf - h) / tauh;
    der(inh) = ETswitch * ((0.2 - inh) / taudir);
    der(V) = (-ica - ik - igirk) / cm;
    der(n) = lambda * (ninf - n) / taun;
    der(c) = (1.0 * f * (jertot + jmemtot)) ;
    der(cer) = (-fer * sigmav * jertot * 1.0) ;
    der(cAMP) = (1.0 * ETswitch * ((cAMPlow - cAMP) / taudir)) ;
    der(girk)=0.0;
    der(IP3)=0.0;
    der(ETswitch)=0.0;

    when time > 60000 then
        reinit(IP3,0.3);
        reinit(girk,3000);
        reinit(ETswitch,1);
    end when;

end BIOMD128;
