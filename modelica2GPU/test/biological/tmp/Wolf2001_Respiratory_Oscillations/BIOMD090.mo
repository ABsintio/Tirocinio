
model BIOMD090 "Wolf2001_Respiratory_Oscillations"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k_v0 = 1.6;
    parameter Real k2 = 0.2;
    parameter Real k3 = 0.2;
    parameter Real k4 = 0.2;
    parameter Real k5 = 0.1;
    parameter Real k6 = 0.12;
    parameter Real k7 = 10.0;
    parameter Real k8 = 10.0;
    parameter Real k9 = 10.0;
    parameter Real k_v10 = 80.0;
    parameter Real k11 = 10.0;
    parameter Real k12 = 5.0;
    parameter Real k_v13 = 4.0;
    parameter Real k14 = 10.0;
    parameter Real k15 = 5.0;
    parameter Real k16 = 10.0;
    parameter Real k17 = 0.02;
    parameter Real k18 = 1.0;
    parameter Real n = 4.0;
    parameter Real m = 4.0;
    parameter Real Ka = 1.0;
    parameter Real Kc = 0.1;
    parameter Real a = 0.1;
    parameter Real Ac = 2.0;
    parameter Real Am = 2.0;
    parameter Real S = 2.0;
    parameter Real N = 2.0;
    parameter Real Kh = 0.5;



    Real sul_ex;
    Real eth_ex;
    Real oxy_ex;
    Real oxy;
    Real H2O;
    Real A3c;
    Real aps;
    Real PPi;
    Real pap;
    Real sul;
    Real eth;
    Real A2c;
    Real hyd;
    Real cys;
    Real N2;
    Real N1;
    Real aco;
    Real oah;
    Real S1;
    Real S2;
    Real C1;
    Real C2;
    Real A2m;
    Real A3m;
    Real Ho;
    Real Hm;

initial equation
    sul_ex = 0.0;
    eth_ex = 0.0;
    oxy_ex = 0.0;
    oxy = 7.0;
    H2O = 0.0;
    A3c = 1.5;
    aps = 0.5;
    PPi = 0.0;
    pap = 0.4;
    sul = 0.4;
    eth = 4.0;
    A2c = 0.5;
    hyd = 0.5;
    cys = 0.3;
    N2 = 2.0;
    N1 = 0.0;
    aco = 0.3;
    oah = 1.5;
    S1 = 1.5;
    S2 = 0.5;
    C1 = 0.0;
    C2 = 0.0;
    A2m = 0.5;
    A3m = 1.5;
    Ho = 0.0;
    Hm = 0.0;

equation
    A2c = Ac - A3c;
    A2m = Am - A3m;
    N1 = N - N2;
    S2 = S - S1;
    der(sul_ex) = 0.0;
    der(eth_ex) = 0.0;
    der(oxy_ex) = 0.0;
    der(oxy) = (1.0 * k_v10) - (1.0 * k14 * oxy) - (1.0 * k11 * N2 * oxy / ((a * N2 + oxy) * (1 + (hyd / Kh)^m)));
    der(H2O) = 0.0;
    der(A3c) = (1.0 * k16 * A3m * A2c) - (1.0 * k2 * sul * A3c) - (1.0 * k3 * aps * A3c) - (1.0 * k12 * A3c);
    der(aps) = (1.0 * k2 * sul * A3c) - (1.0 * k3 * aps * A3c);
    der(PPi) = 0.0;
    der(pap) = (1.0 * k3 * aps * A3c) - (1.0 * k4 * pap * N2);
    der(sul) = (1.0 * k_v0 / (1 + (cys / Kc)^n)) - (1.0 * k2 * sul * A3c);
    der(eth) = (1.0 * k_v13) - (1.0 * k7 * eth * N1);
    der(hyd) = (1.0 * k4 * pap * N2) - (1.0 * k5 * hyd * oah) - (1.0 * k17 * hyd);
    der(cys) = (1.0 * k5 * hyd * oah) - (1.0 * k6 * cys);
    der(N2) = (2.0 * 1.0 * k7 * eth * N1) + (4.0 * 1.0 * k9 * S1 * N1) - (3.0 * 1.0 * k4 * pap * N2) - (1.0 * k11 * N2 * oxy / ((a * N2 + oxy) * (1 + (hyd / Kh)^m)));
    der(aco) = (1.0 * k7 * eth * N1) - (1.0 * k15 * aco) - (1.0 * k8 * aco * S2);
    der(oah) = (1.0 * k15 * aco) - (1.0 * k5 * hyd * oah) - (1.0 * k18 * oah);
    der(S1) = (1.0 * k8 * aco * S2) - (1.0 * k9 * S1 * N1);
    der(C1) = 0.0;
    der(C2) = 0.0;
    der(A3m) = ((1.0 * 3 * k11 * N2 * oxy / ((a * N2 + oxy) * (1 + (hyd / Kh)^m))) * A2m / (Ka + A2m)) - (1.0 * k16 * A3m * A2c);
    der(Ho) = 0.0;
    der(Hm) = 0.0;



end BIOMD090;
