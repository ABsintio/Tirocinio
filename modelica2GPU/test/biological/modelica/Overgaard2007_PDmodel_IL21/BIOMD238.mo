
model BIOMD238 "Overgaard2007_PDmodel_IL21"

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


    parameter Real T_a = 21.0;
    parameter Real T_b = 38.0;
    parameter Real delta_T = 1.57;
    parameter Real kinc = 0.0258;
    parameter Real tdose1 = 24.0;
    parameter Real tdose2 = 72.0;
    parameter Real tdose3 = 120.0;
    parameter Real t_day = 17.5;
    parameter Real t_night = 6.73;
    parameter Real day_length = 86400.0;
    parameter Real km = 1.1375;
    parameter Real c = 3.47;
    parameter Real pEtot = 0.144;
    parameter Real kR = 5.35;
    parameter Real AMT_dose = 3.0;
    parameter Real pEf1 = 1.0;
    parameter Real pEs1 = 0.2;
    parameter Real pEf2 = 3.57;
    parameter Real pEs2 = 2.43;
    parameter Real pEf3 = 8.0;
    parameter Real pEs3 = 50.0;
    parameter Real M_b = 3.0;
    parameter Real t_prime = 45.12;
    parameter Real alpha = 0.2229166;
    parameter Real delta_high_dose = 1.0;
    parameter Real Ns = 4.0;
    parameter Real Nf = 4.0;
    parameter Real Ts = 2.45;
    parameter Real Tf = 0.368;
    parameter Real COMpartment = 1.0;

    Real M(start=3.5);
    Real T(start=38.785);
    Real BR(start=0.0);
    Real E_slow(start=0.0);
    Real E_fast(start=0.0);
    Real f_prime(start=0.0);
    Real M_c(start=0.0);
    Real tprime(start=0.0);
    Real k(start=0.0);
    Real f2_drug(start=0.0);
    Real T_day(start=0.0);
    Real T_night(start=0.0);
    Real kb(start=0.0);
    Real M_day(start=0.0);
    Real M_night(start=0.0);
    Real M_night_baseline(start=0.0);
    Real gNsTs1(start=0.0);
    Real gNsTs2(start=0.0);
    Real gNsTs3(start=0.0);
    Real gNfTf1(start=0.0);
    Real gNfTf2(start=0.0);
    Real gNfTf3(start=0.0);
    Real X1(start=0.0);
    Real X2(start=0.0);
    Real X3(start=0.0);
    Real Kf(start=0.0);
    Real Ks(start=0.0);



initial equation


equation
    tprime = time * 3600 * 1 - floor(time * 3600 * 1 / day_length) * day_length;
    kb = M_b / (T_b - T_a);
    T_day = T_b + delta_T / 2;
    M_day = (kb + kinc * (T_day - T_b)) * (T_day - T_a);
    f_prime = delta_high_dose * pow(1 + exp(-alpha * (time - (tdose1 + t_prime))), -1);
    T_night = T_b - delta_T / 2;
    M_night_baseline = (kb + kinc * (T_night - T_b)) * (T_night - T_a);
    M_night = (1 - f_prime) * M_night_baseline + f_prime * M_day;
    M_c = piecewise(M_night, ((tprime / 3600 >= t_night) and (tprime / 3600 < t_day)), M_day);
    f2_drug = 0;
    k = kb + kinc * (T - T_b * (1 + pEtot * BR)) + f2_drug;
    X1 = (time - tdose1) / 24;
    X2 = (time - tdose2) / 24;
    X3 = (time - tdose3) / 24;
    Kf = Nf / Tf;
    Ks = Ns / Ts;
    gNsTs1 = piecewise(pow(Ks, Ns) / 6 * exp(-Ks * X1) * pow(X1, Ns - 1), (X1 > 0), 0);
    gNsTs2 = piecewise(pow(Ks, Ns) / 6 * exp(-Ks * X2) * pow(X2, Ns - 1), (X2 > 0), 0);
    gNsTs3 = piecewise(pow(Ks, Ns) / 6 * exp(-Ks * X3) * pow(X3, Ns - 1), (X3 > 0), 0);
    gNfTf1 = piecewise(pow(Kf, Nf) / 6 * exp(-Kf * X1) * pow(X1, Nf - 1), (X1 > 0), 0);
    gNfTf2 = piecewise(pow(Kf, Nf) / 6 * exp(-Kf * X2) * pow(X2, Nf - 1), (X2 > 0), 0);
    gNfTf3 = piecewise(pow(Kf, Nf) / 6 * exp(-Kf * X3) * pow(X3, Nf - 1), (X3 > 0), 0);
    E_slow = AMT_dose * pEs2 * (gNsTs1 + gNsTs2 + gNsTs3);
    E_fast = pEf2 * (gNfTf1 + gNfTf2 + gNfTf3);
    der(M) = -km * (M - M_c);
    der(T) = pow(c, -1) * (M - k * (T - T_a));
    der(BR) = f_prime * (E_slow + E_fast) * (1 - BR) - kR * BR;




end BIOMD238;
