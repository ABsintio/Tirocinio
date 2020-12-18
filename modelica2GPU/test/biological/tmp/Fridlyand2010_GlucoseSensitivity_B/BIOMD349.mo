
model BIOMD349 "Fridlyand2010_GlucoseSensitivity_B"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real ai = 0.341;
    parameter Real am = 0.2;
    parameter Real Ao = 4000.0;
    parameter Real ATP_init = 3700.0;
    parameter Real Cac_init = 0.1;
    parameter Real Cam_init = 0.2;
    parameter Real Cmit = 1.82;
    parameter Real Cmp = 6158.0;
    parameter Real F = 96480.0;
    parameter Real fi = 0.01;
    parameter Real fm = 0.0003;
    parameter Real G3P_init = 30.0;
    parameter Real gKCa = 25.0;
    parameter Real Glu = 8.0;
    parameter Real gmVCa = 20.0;
    parameter Real hgl = 1.7;
    parameter Real hp = 8.0;
    parameter Real hpc = 8.0;
    parameter Real kat = -0.00492;
    parameter Real kATP = 4e-05;
    parameter Real kATPCa = 9e-05;
    parameter Real kbt = -0.00443;
    parameter Real kCaA = 30.0;
    parameter Real KCaj = 8.0;
    parameter Real KCam = 0.05;
    parameter Real KgNc = 0.09;
    parameter Real kgpd = 1e-05;
    parameter Real Klnc = 1.0;
    parameter Real klp = 0.0305;
    parameter Real Kmadp = 20.0;
    parameter Real KmATP = 500.0;
    parameter Real Kmg3p = 200.0;
    parameter Real Kmgl = 7.0;
    parameter Real KmLD = 47.5;
    parameter Real KmNh = 3000.0;
    parameter Real Kmph = 131.4;
    parameter Real Kmpyr = 47.5;
    parameter Real knadhc = 0.0001;
    parameter Real knadhm = 0.0001;
    parameter Real KNaj = 8000.0;
    parameter Real KpCam = 0.165;
    parameter Real KPNm = 81.0;
    parameter Real ksg = 2e-05;
    parameter Real KTNc = 0.002;
    parameter Real KTNm = 16.78;
    parameter Real NADHc_init = 10.0;
    parameter Real NADHm_init = 50.0;
    parameter Real Nam = 5000.0;
    parameter Real Ni = 10000.0;
    parameter Real Ntc = 2000.0;
    parameter Real Ntm = 2200.0;
    parameter Real PCa = 0.004;
    parameter Real Plb = 0.0012;
    parameter Real Plr = 0.0012;
    parameter Real PYR_init = 10.0;
    parameter Real Tnadh = 0.05;
    parameter Real Tv = 26.73;
    parameter Real u1 = 1.5;
    parameter Real u2 = 1.1;
    parameter Real Vci = 0.764;
    parameter Real Vi = 0.53;
    parameter Real Vm_init = 100.0;
    parameter Real Vme = 22.0;
    parameter Real Vmglu = 0.011;
    parameter Real Vmgpd = 0.5;
    parameter Real Vmldh = 1.2;
    parameter Real Vmmit = 0.0144;
    parameter Real Vmnc = 0.025;
    parameter Real Vmpdh = 0.3;
    parameter Real Vmph = 8.0;
    parameter Real Vp_init = -70.0;
    parameter Real ZCa = 2.0;
    parameter Real compartment = 1.0;

    Real ACa(start=0.0);
    Real AD(start=0.0);
    Real ADP(start=0.0);
    Real AT(start=0.0);
    Real DelJNCa(start=0.0);
    Real FDe(start=0.0);
    Real FLNADc(start=0.0);
    Real FNADc(start=0.0);
    Real FPCa(start=0.0);
    Real FPNAD(start=0.0);
    Real FPYR(start=0.0);
    Real FTe(start=0.0);
    Real hCa(start=0.0);
    Real IKCa(start=0.0);
    Real IVCa(start=0.0);
    Real JGlu(start=0.0);
    Real Jgpd(start=0.0);
    Real Jhl(start=0.0);
    Real Jhres(start=0.0);
    Real JLDH(start=0.0);
    Real JNCa(start=0.0);
    Real JO2(start=0.0);
    Real Jph(start=0.0);
    Real JPYR(start=0.0);
    Real Jtnadh(start=0.0);
    Real Juni(start=0.0);
    Real MgADP(start=0.0);
    Real NADc(start=0.0);
    Real NADm(start=0.0);
    Real nKCa(start=0.0);
    Real PVCa(start=0.0);
    Real Vp(start=Vp_init);
    Real Cac(start=Cac_init);

    Real G3P;
    Real PYR;
    Real ATP;
    Real NADHm;
    Real NADHc;
    Real Vm;
    Real Cam;

initial equation
    G3P = G3P_init;
    PYR = PYR_init;
    ATP = ATP_init;
    NADHm = NADHm_init;
    NADHc = NADHc_init;
    Vm = Vm_init;
    Cam = Cam_init;

equation
    ACa = 1 -(1 * (1 / exp(Cam * (1 / KpCam))));
    AD = MgADP * MgADP * (1 / (MgADP * MgADP + Kmadp * Kmadp));
    ADP = Ao -ATP;
    AT = pow(Vm, hp) * (1 / (pow(Kmph, hp) + pow(Vm, hp)));
    DelJNCa = 1 + pow(Ni, 3) * (1 / pow(KNaj, 3)) + Cam * (1 / KCaj) + pow(Ni, 3) * Cam * (1 / (pow(KNaj, 3) * KCaj)) + pow(Nam, 3) * (1 / pow(KNaj, 3)) + Cac * (1 / KCaj) + pow(Nam, 3) * Cac * (1 / (pow(KNaj, 3) * KCaj));
    FDe = NADHm * (1 / (KmNh + NADHm));
    FLNADc = NADHc * (1 / (Klnc + NADHc * (1 / NADc))) * (1 / NADc);
    FNADc = NADHc * (1 / (KTNc + NADHc * (1 / NADc))) * (1 / NADc);
    FPCa = 1 * (1 / (1 + u2 * (1 + u1 * (1 / pow(1 + Cam * (1 / KCam), 2)))));
    FPNAD = NADm * (1 / (KPNm + NADm * (1 / NADHm))) * (1 / NADHm);
    FPYR = PYR * (1 / (Kmpyr + PYR));
    FTe = (1 + kat * Vm) * (1 / (1 + kbt * Vm));
    hCa = 1 * (1 / (1 + exp(0.166666666666667 * (15 + Vp))));
    IKCa = gKCa * nKCa * (75 + Vp);
    IVCa = gmVCa * PVCa * hCa * (-100 + Vp);
    JGlu = Vmglu * pow(Glu, hgl) * ATP * (1 / (pow(Kmgl, hgl) + pow(Glu, hgl))) * (1 / (KmATP + ATP));
    Jgpd = Vmgpd * G3P * NADc * (1 / (G3P + Kmg3p)) * (1 / (KgNc + NADc * (1 / NADHc))) * (1 / NADHc);
    Jhl = (Plb + Plr) * exp(klp * Vm);
    Jhres = Vme * FTe * FDe;
    JLDH = Vmldh * FLNADc * PYR * (1 / (KmLD + PYR));
    JNCa = Vmnc * (exp(0.5 * Vm * pow(Ni, 3) * Cam * (1 / (Tv * pow(KNaj, 3) * KCaj))) -exp(-(0.5 * Vm * pow(Nam, 3) * Cac * (1 / (Tv * pow(KNaj, 3) * KCaj))))) * (1 / DelJNCa);
    JO2 = 0.1 * Jhres;
    Jph = Vmph * AD * AT * ACa;
    JPYR = Vmpdh * FPNAD * FPCa * FPYR;
    Jtnadh = Tnadh * FNADc * NADm * (1 / (KTNm + NADm * (1 / NADHm))) * (1 / NADHm);
    Juni = PCa * ZCa * Vm * (am * Cam * exp(-(Vm * ZCa * (1 / Tv))) -(ai * Cac)) * (1 / Tv) * (1 / (-1 + exp(-(Vm * ZCa * (1 / Tv)))));
    MgADP = 0.055 * ADP;
    NADc = Ntc -NADHc;
    NADm = Ntm -NADHm;
    nKCa = pow(Cac, 3) * (1 / (0.015625 + pow(Cac, 3)));
    PVCa = 1 * (1 / (1 + exp(0.105263157894737 * (-19 -Vp))));
    der(G3P) = (2 * JGlu -Jgpd) * (1 / Vi) -(kgpd * G3P);
    der(PYR) = (Jgpd -JPYR -JLDH) * (1 / (Vi + Vmmit));
    der(ATP) = -((kATP + kATPCa * Cac) * ATP) + (2 * JGlu + 0.231 * Jph) * (1 / Vi);
    der(NADHm) = (4.6 * JPYR -(0.1 * Jhres) + Jtnadh) * (1 / Vmmit) -(knadhm * NADHm);
    der(NADHc) = (Jgpd -Jtnadh -JLDH) * (1 / Vi) -(knadhc * NADHc);
    der(Vm) = (Jhres -Jph -Jhl -(2 * Juni) -JNCa) * (1 / Cmit);
    der(Cam) = fm * (Juni -JNCa) * (1 / Vmmit);
    der(Vp) = -((IVCa + IKCa) * (1 / Cmp));
    der(Cac) = -(fi * IVCa * (1 / (2 * F * Vci))) -(ksg * Cac);




end BIOMD349;
