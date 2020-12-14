
model BIOMD160 "Xie2007_CircClock"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real dccpt = 15.06;
    parameter Real bccperp = 0.069;
    parameter Real ubccperp = 0.262;
    parameter Real bccpt = 51.0;
    parameter Real dperm = 0.053;
    parameter Real tlper = 36.0;
    parameter Real tcccperp = 11.0;
    parameter Real tcdvpmt = 0.028;
    parameter Real dvri = 1.226;
    parameter Real tcclkp = 1.42;
    parameter Real bcc = 2.349;
    parameter Real dclk = 0.2;
    parameter Real ubcc = 0.89;
    parameter Real bpt = 1.1;
    parameter Real ubpt = 2.93;
    parameter Real dper = 0.62;
    parameter Real tcccvrip = 16.86;
    parameter Real tcccpdpp = 9.831;
    parameter Real dvrim = 0.07;
    parameter Real dpdpm = 0.06;
    parameter Real ubccpt = 7.89;
    parameter Real tlvri = 14.68;
    parameter Real tlpdp = 1.87;
    parameter Real bccvrip = 0.1;
    parameter Real bccpdpp = 0.062;
    parameter Real ubccvrip = 0.276;
    parameter Real ubccpdpp = 0.145;
    parameter Real tcpdpclkp = 125.54;
    parameter Real dclkm = 0.643;
    parameter Real bvriclkp = 1.858;
    parameter Real bpdpclkp = 1.155;
    parameter Real ubvriclkp = 1.043;
    parameter Real ubpdpclkp = 0.952;
    parameter Real tcvriclkp = 0.053;
    parameter Real dpdp = 0.156;
    parameter Real tlclk = 35.0;
    parameter Real dcc = 0.184;
    parameter Real dpt = 0.279;
    parameter Real dtim = 0.62;
    parameter Real dtimm = 0.053;
    parameter Real tltim = 36.0;
    parameter Real bcctimp = 0.069;
    parameter Real ubcctimp = 0.262;
    parameter Real tccctimp = 11.0;
    parameter Real npt = 5.0;
    parameter Real nvri = 4.0;
    parameter Real npdp = 6.0;



    Real CC;
    Real CCPT;
    Real clkp;
    Real perp;
    Real clkm;
    Real perm;
    Real PT;
    Real vrip;
    Real vrim;
    Real VRI;
    Real pdpp;
    Real pdpm;
    Real PDP;
    Real CLK;
    Real PER;
    Real timp;
    Real timm;
    Real TIM;
    Real CYC;
    Real prcper;
    Real prcv;
    Real prcpdp;
    Real prvc;
    Real prpc;
    Real prct;

initial equation
    CC = 0.5566;
    CCPT = 0.4982;
    clkp = 0.003185;
    perp = 0.003185;
    clkm = 0.2583;
    perm = 0.2395;
    PT = 0.4014;
    vrip = 0.003185;
    vrim = 0.2571;
    VRI = 3.175;
    pdpp = 0.003185;
    pdpm = 0.3175;
    PDP = 4.1953;
    CLK = 3.6628;
    PER = 2.7527;
    timp = 0.003185;
    timm = 0.2395;
    TIM = 2.7527;
    CYC = 1.0;
    prcper = 0.0431;
    prcv = 0.0585;
    prcpdp = 0.08;
    prvc = 0.489;
    prpc = 0.426;
    prct = 0.043;

equation

    der(CC) = (1.0 * CLK * bcc * CYC) + (1.0 * CCPT * ubccpt) - (1.0 * CC * PT * bccpt) - (1.0 * CC * dcc) - (1.0 * CC * ubcc);
    der(CCPT) = (1.0 * CC * PT * bccpt) - (1.0 * CCPT * dccpt) - (1.0 * CCPT * ubccpt);
    der(clkp) = 0.0;
    der(perp) = 0.0;
    der(clkm) = (1.0 * (prvc * tcvriclkp + prpc * tcpdpclkp + (1 - prvc - prpc) * tcclkp) * clkp) - (1.0 * clkm * dclkm);
    der(perm) = (1.0 * ((1 - (1 - prcper)^npt) * tcccperp + (1 - prcper)^npt * tcdvpmt) * perp) - (1.0 * perm * dperm);
    der(PT) = (1.0 * PER * TIM * bpt) + (1.0 * CCPT * ubccpt) - (1.0 * CC * PT * bccpt) - (1.0 * PT * dpt) - (1.0 * PT * ubpt);
    der(vrip) = 0.0;
    der(vrim) = (1.0 * ((1 - (1 - prcv)^nvri) * tcccvrip + (1 - prcv)^nvri * tcdvpmt) * vrip) - (1.0 * vrim * dvrim);
    der(VRI) = (1.0 * vrim * tlvri) - (1.0 * VRI * dvri);
    der(pdpp) = 0.0;
    der(pdpm) = (1.0 * ((1 - (1 - prcpdp)^npdp) * tcccpdpp + (1 - prcpdp)^npdp * tcdvpmt) * pdpp) - (1.0 * pdpm * dpdpm);
    der(PDP) = (1.0 * pdpm * tlpdp) - (1.0 * PDP * dpdp);
    der(CLK) = (1.0 * clkm * tlclk) + (1.0 * CC * ubcc) - (1.0 * CLK * bcc * CYC) - (1.0 * CLK * dclk);
    der(PER) = (1.0 * perm * tlper) + (1.0 * PT * ubpt) - (1.0 * PER * TIM * bpt) - (1.0 * PER * dper);
    der(timp) = 0.0;
    der(timm) = (1.0 * ((1 - (1 - prct)^npt) * tccctimp + (1 - prct)^npt * tcdvpmt) * timp) - (1.0 * timm * dtimm);
    der(TIM) = (1.0 * PT * ubpt) + (1.0 * timm * tltim) - (1.0 * PER * TIM * bpt) - (1.0 * TIM * dtim);
    der(CYC) = 0.0;
    der(prcper) = (1.0 * (1 - prcper) * bccperp * CC) - (1.0 * prcper * ubccperp);
    der(prcv) = (1.0 * (1 - prcv) * bccvrip * CC) - (1.0 * ubccvrip * prcv);
    der(prcpdp) = (1.0 * (1 - prcpdp) * bccpdpp * CC) - (1.0 * ubccpdpp * prcpdp);
    der(prvc) = (1.0 * (1 - prvc - prpc) * bvriclkp * VRI) - (1.0 * prvc * ubvriclkp);
    der(prpc) = (1.0 * (1 - prvc - prpc) * bpdpclkp * PDP) - (1.0 * prpc * ubpdpclkp);
    der(prct) = (1.0 * (1 - prct) * bcctimp * CC) - (1.0 * prct * ubcctimp);



end BIOMD160;
