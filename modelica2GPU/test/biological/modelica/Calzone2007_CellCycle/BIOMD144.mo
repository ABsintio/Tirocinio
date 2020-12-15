
model BIOMD144 "Calzone2007_CellCycle"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real ksc = 0.01;
    parameter Real kdc = 0.01;
    parameter Real kdnp = 0.01;
    parameter Real kdn = 1.5;
    parameter Real kaie = 1.0;
    parameter Real kiie = 0.4;
    parameter Real kafzy = 1.0;
    parameter Real kifzy = 0.2;
    parameter Real kweep = 0.005;
    parameter Real kwee = 1.0;
    parameter Real kstgp = 0.2;
    parameter Real kstg = 2.0;
    parameter Real ksstg = 0.0;
    parameter Real kdstg = 0.0;
    parameter Real kastgp = 0.0;
    parameter Real kastg = 1.0;
    parameter Real kistg = 0.3;
    parameter Real kawee = 0.3;
    parameter Real kiweep = 0.01;
    parameter Real kiwee = 1.0;
    parameter Real kt = 0.15;
    parameter Real Jaie = 0.01;
    parameter Real Jiie = 0.01;
    parameter Real Jafzy = 0.01;
    parameter Real Jifzy = 0.01;
    parameter Real Jastg = 0.05;
    parameter Real Jistg = 0.05;
    parameter Real Jawee = 0.05;
    parameter Real Jiwee = 0.05;
    parameter Real Jm = 0.05;
    parameter Real kdmp = 0.002;
    parameter Real kdm = 0.2;
    parameter Real koutw_1 = 0.01;
    parameter Real kinw_1 = 0.04;
    parameter Real kouts_1 = 0.02;
    parameter Real kins_1 = 0.08;
    parameter Real kez_1 = 0.5;
    parameter Real factor_1 = 1.95;
    parameter Real E_1 = 7e-05;
    parameter Real ksxp_1 = 0.001;
    parameter Real ksxm_1 = 0.0005;
    parameter Real kout_1 = 0.0;
    parameter Real StringT = 0.8;
    parameter Real Wee1T = 0.8;
    parameter Real nuclei = 1.0;
    parameter Real cytoplasm = 1.0;

    Real CycBT(start=0.0);
    Real StgPT(start=0.0);

    Real MPFc;
    Real preMPFc;
    Real StgPc;
    Real Wee1c;
    Real Wee1Pc;
    Real Stgm;
    Real Xp;
    Real Stgc;
    Real Xm;
    Real MPFn;
    Real preMPFn;
    Real Wee1Pn;
    Real Wee1n;
    Real StgPn;
    Real Stgn;
    Real FZYa;
    Real IEa_1;
    Real N;

initial equation
    MPFc = 1.0;
    preMPFc = 0.0;
    StgPc = 0.8;
    Wee1c = 0.0;
    Stgm = 1.0;
    Xp = 0.0;
    Stgc = 0.0;
    Xm = 0.0;
    MPFn = 0.0;
    preMPFn = 0.0;
    Wee1Pn = 0.0;
    Wee1n = 0.0;
    StgPn = 0.0;
    Stgn = 0.0;
    FZYa = 0.0;
    IEa_1 = 0.0;
    N = 1.0;

equation
    CycBT = (1 - N * E_1) * (MPFc + preMPFc) + N * E_1 * (MPFn + preMPFn);
    StgPT = (1 - N * E_1) * StgPc + N * E_1 * StgPn;
    Wee1Pc = (Wee1T - N * E_1 * (Wee1n + Wee1Pn)) / (1 - N * E_1) - Wee1c;
    der(MPFc) = (ksc * cytoplasm) + (cytoplasm * (kstgp + kstg * StgPc) * preMPFc) + (nuclei * (kout_1 * MPFn * E_1 * N / (1 - N * E_1))) - (cytoplasm * (kweep + kwee * Wee1c) * MPFc) - (cytoplasm * kdc * MPFc) - (cytoplasm * (kt * MPFc * E_1 * N / (1 - N * E_1)));
    der(preMPFc) = (cytoplasm * (kweep + kwee * Wee1c) * MPFc) + (nuclei * (kout_1 * preMPFn * N * E_1 / (1 - N * E_1))) - (cytoplasm * (kstgp + kstg * StgPc) * preMPFc) - (cytoplasm * kdc * preMPFc) - (cytoplasm * (kt * preMPFc * E_1 * N / (1 - N * E_1)));
    der(StgPc) = (cytoplasm * ((kastgp + kastg * MPFc) * Stgc / (Jastg + Stgc))) + (nuclei * (kouts_1 * StgPn * E_1 * N / (1 - N * E_1))) - (cytoplasm * (kistg * StgPc / (Jistg + StgPc))) - (cytoplasm * kdstg * StgPc) - (cytoplasm * (kins_1 * StgPc * E_1 * N / (1 - N * E_1)));
    der(Wee1c) = (cytoplasm * (kawee * Wee1Pc / (Jawee + Wee1Pc))) + (nuclei * (koutw_1 * Wee1n * N * E_1 / (1 - N * E_1))) - (cytoplasm * ((kiweep + kiwee * MPFc) * Wee1c / (Jiwee + Wee1c))) - (cytoplasm * (kinw_1 * Wee1c * E_1 * N / (1 - N * E_1)));
    der(Stgm) =  - (nuclei * (kdmp * Stgm / (Jm + Stgm) + kdm * Xp * Stgm));
    der(Xp) = (cytoplasm * ksxp_1 * Xm) ;
    der(Stgc) = (cytoplasm * ksstg * Stgm) + (cytoplasm * (kistg * StgPc / (Jistg + StgPc))) + (nuclei * (kouts_1 * Stgn * E_1 * N / (1 - N * E_1))) - (cytoplasm * ((kastgp + kastg * MPFc) * Stgc / (Jastg + Stgc))) - (cytoplasm * kdstg * Stgc) - (cytoplasm * (kins_1 * Stgc * E_1 * N / (1 - N * E_1)));
    der(Xm) = (nuclei * ksxm_1 * N) ;
    der(MPFn) = (cytoplasm * kt * MPFc) + (nuclei * (kstgp + kstg * StgPn) * preMPFn) - (nuclei * kout_1 * MPFn) - (nuclei * (kweep + kwee * Wee1n) * MPFn) - (nuclei * (kdnp + kdn * FZYa) * MPFn);
    der(preMPFn) = (cytoplasm * kt * preMPFc) + (nuclei * (kweep + kwee * Wee1n) * MPFn) - (nuclei * kout_1 * preMPFn) - (nuclei * (kstgp + kstg * StgPn) * preMPFn) - (nuclei * (kdnp + kdn * FZYa) * preMPFn);
    der(Wee1Pn) = (cytoplasm * kinw_1 * Wee1Pc) + (nuclei * ((kiweep + kiwee * MPFn) * Wee1n / (Jiwee + Wee1n))) - (nuclei * koutw_1 * Wee1Pn) - (nuclei * (kawee * Wee1Pn / (Jawee + Wee1Pn)));
    der(Wee1n) = (cytoplasm * kinw_1 * Wee1c) + (nuclei * (kawee * Wee1Pn / (Jawee + Wee1Pn))) - (nuclei * koutw_1 * Wee1n) - (nuclei * ((kiweep + kiwee * MPFn) * Wee1n / (Jiwee + Wee1n)));
    der(StgPn) = (cytoplasm * kins_1 * StgPc) + (nuclei * ((kastgp + kastg * MPFn) * Stgn / (Jastg + Stgn))) - (nuclei * kouts_1 * StgPn) - (nuclei * (kistg * StgPn / (Jistg + StgPn))) - (nuclei * kdstg * StgPn);
    der(Stgn) = (cytoplasm * kins_1 * Stgc) + (nuclei * (kistg * StgPn / (Jistg + StgPn))) - (nuclei * kouts_1 * Stgn) - (nuclei * ((kastgp + kastg * MPFn) * Stgn / (Jastg + Stgn))) - (nuclei * kdstg * Stgn);
    der(FZYa) = (nuclei * (kafzy * IEa_1 * (1 - FZYa) / (Jafzy + 1 - FZYa))) - (nuclei * (kifzy * FZYa / (Jifzy + FZYa)));
    der(IEa_1) = (nuclei * (kaie * (1 - IEa_1) * MPFn / (Jaie + 1 - IEa_1))) - (nuclei * (kiie * IEa_1 / (Jiie + IEa_1)));
    der(N) = (0) ;


    when FZYa >= kez_1 then
        reinit(N,factor_1 * N);
        reinit(MPFn,MPFn / 1.95);
        reinit(preMPFn,preMPFn / 1.95);
        reinit(Wee1n,Wee1n / 1.95);
        reinit(Wee1Pn,Wee1Pn / 1.95);
        reinit(Wee1c,Wee1c * ((1 - N * E_1) / (1 - 1.95 * N * E_1)));
        reinit(Stgn,Stgn / 1.95);
        reinit(StgPc,StgPc * ((1 - N * E_1) / (1 - 1.95 * N * E_1)));
        reinit(Stgc,Stgc * ((1 - N * E_1) / (1 - 1.95 * N * E_1)));
        reinit(StgPn,StgPn / 1.95);
        reinit(MPFc,MPFc * ((1 - N * E_1) / (1 - 1.95 * N * E_1)));
    end when;

end BIOMD144;
