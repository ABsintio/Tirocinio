
model BIOMD380 "Smallbone2011_TrehaloseBiosynthesis"

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



    parameter Real heat = 0.0;
    parameter Real glc_0 = 0.09765;
    parameter Real g1p_0 = 0.1;
    parameter Real g6p_0 = 2.675;
    parameter Real trh_0 = 0.05;
    parameter Real t6p_0 = 0.02;
    parameter Real udg_0 = 0.7;
    parameter Real Vmax_0 = 1071.0;
    parameter Real Kg6p_0 = 1.4;
    parameter Real Kf6p_0 = 0.29;
    parameter Real Keq_0 = 0.3;
    parameter Real shock_0 = 1.0;
    parameter Real Vmax_1 = 97.24;
    parameter Real Kglc_1 = 1.1918;
    parameter Real Ki_1 = 0.91;
    parameter Real shock_1 = 8.0;
    parameter Real Vmax_2 = 289.6;
    parameter Real Kglc_2 = 0.08;
    parameter Real Katp_2 = 0.15;
    parameter Real Kg6p_2 = 30.0;
    parameter Real Kadp_2 = 0.23;
    parameter Real Keq_2 = 2000.0;
    parameter Real Kit6p_2 = 0.04;
    parameter Real shock_2 = 8.0;
    parameter Real Vmax_3 = 0.3545;
    parameter Real Kg6p_3 = 0.05;
    parameter Real Kg1p_3 = 0.023;
    parameter Real Keq_3 = 0.1667;
    parameter Real shock_3 = 16.0;
    parameter Real Vmax_4 = 6.5;
    parameter Real Kt6p_4 = 0.5;
    parameter Real shock_4 = 18.0;
    parameter Real Vmax_5 = 1.371;
    parameter Real Kg6p_5 = 3.8;
    parameter Real Kudg_5 = 0.886;
    parameter Real shock_5 = 12.0;
    parameter Real activity_5 = 1.0;
    parameter Real Vmax_6 = 15.2;
    parameter Real Ktrh_6 = 2.99;
    parameter Real shock_6 = 6.0;
    parameter Real Vmax_7 = 36.82;
    parameter Real Kutp_7 = 0.11;
    parameter Real Kiutp_7 = 0.11;
    parameter Real Kg1p_7 = 0.32;
    parameter Real Kiudg_7 = 0.0035;
    parameter Real shock_7 = 16.0;
    parameter Real cell = 1.0;
    parameter Real medium = 1.0;

    Real glc_change(start=0.0);
    Real g1p_change(start=0.0);
    Real g6p_change(start=0.0);
    Real trh_change(start=0.0);
    Real t6p_change(start=0.0);
    Real udg_change(start=0.0);

    Real glc;
    Real g1p;
    Real g6p;
    Real trh;
    Real t6p;
    Real udg;
    Real adp;
    Real atp;
    Real ppi;
    Real f6p;
    Real h;
    Real pho;
    Real udp;
    Real utp;
    Real h2o;
    Real glx;

initial equation
    glc = glc_0;
    g1p = g1p_0;
    g6p = g6p_0;
    trh = trh_0;
    t6p = t6p_0;
    udg = udg_0;
    adp = 1.282;
    atp = 2.525;
    ppi = 0.0;
    f6p = 0.625;
    h = 0.0;
    pho = 0.0;
    udp = 0.2815;
    utp = 0.6491;
    h2o = 0.0;
    glx = 100.0;

equation
    glc_change = log10(glc / glc_0);
    g1p_change = log10(g1p / g1p_0);
    g6p_change = log10(g6p / g6p_0);
    trh_change = log10(trh / trh_0);
    t6p_change = log10(t6p / t6p_0);
    udg_change = log10(udg / udg_0);
    der(glc) = (cell * pow(shock_1, heat) * Vmax_1 * (glx - glc) / Kglc_1 / (1 + (glx + glc) / Kglc_1 + Ki_1 * glx * glc / pow(Kglc_1, 2))) + (2.0 * cell * pow(shock_6, heat) * Vmax_6 * trh / Ktrh_6 / (1 + trh / Ktrh_6)) - (cell * pow(shock_2, heat) * Vmax_2 / (Kglc_2 * Katp_2) * (glc * atp - g6p * adp / Keq_2) / ((1 + glc / Kglc_2 + g6p / Kg6p_2 + t6p / Kit6p_2) * (1 + atp / Katp_2 + adp / Kadp_2)));
    der(g1p) = (cell * pow(shock_3, heat) * Vmax_3 / Kg6p_3 * (g6p - g1p / Keq_3) / (1 + g6p / Kg6p_3 + g1p / Kg1p_3)) - (cell * pow(shock_7, heat) * Vmax_7 * utp * g1p / (Kutp_7 * Kg1p_7) / (Kiutp_7 / Kutp_7 + utp / Kutp_7 + g1p / Kg1p_7 + utp * g1p / (Kutp_7 * Kg1p_7) + Kiutp_7 / Kutp_7 * udg / Kiudg_7 + g1p * udg / (Kg1p_7 * Kiudg_7)));
    der(g6p) = (cell * pow(shock_2, heat) * Vmax_2 / (Kglc_2 * Katp_2) * (glc * atp - g6p * adp / Keq_2) / ((1 + glc / Kglc_2 + g6p / Kg6p_2 + t6p / Kit6p_2) * (1 + atp / Katp_2 + adp / Kadp_2))) - (cell * pow(shock_0, heat) * Vmax_0 / Kg6p_0 * (g6p - f6p / Keq_0) / (1 + g6p / Kg6p_0 + f6p / Kf6p_0)) - (cell * pow(shock_3, heat) * Vmax_3 / Kg6p_3 * (g6p - g1p / Keq_3) / (1 + g6p / Kg6p_3 + g1p / Kg1p_3)) - (cell * activity_5 * pow(shock_5, heat) * Vmax_5 * g6p * udg / (Kg6p_5 * Kudg_5) / ((1 + g6p / Kg6p_5) * (1 + udg / Kudg_5)));
    der(trh) = (cell * pow(shock_4, heat) * Vmax_4 * t6p / Kt6p_4 / (1 + t6p / Kt6p_4)) - (cell * pow(shock_6, heat) * Vmax_6 * trh / Ktrh_6 / (1 + trh / Ktrh_6));
    der(t6p) = (cell * activity_5 * pow(shock_5, heat) * Vmax_5 * g6p * udg / (Kg6p_5 * Kudg_5) / ((1 + g6p / Kg6p_5) * (1 + udg / Kudg_5))) - (cell * pow(shock_4, heat) * Vmax_4 * t6p / Kt6p_4 / (1 + t6p / Kt6p_4));
    der(udg) = (cell * pow(shock_7, heat) * Vmax_7 * utp * g1p / (Kutp_7 * Kg1p_7) / (Kiutp_7 / Kutp_7 + utp / Kutp_7 + g1p / Kg1p_7 + utp * g1p / (Kutp_7 * Kg1p_7) + Kiutp_7 / Kutp_7 * udg / Kiudg_7 + g1p * udg / (Kg1p_7 * Kiudg_7))) - (cell * activity_5 * pow(shock_5, heat) * Vmax_5 * g6p * udg / (Kg6p_5 * Kudg_5) / ((1 + g6p / Kg6p_5) * (1 + udg / Kudg_5)));
    der(adp) = 0.0;
    der(atp) = 0.0;
    der(ppi) = 0.0;
    der(f6p) = 0.0;
    der(h) = 0.0;
    der(pho) = 0.0;
    der(udp) = 0.0;
    der(utp) = 0.0;
    der(h2o) = 0.0;
    der(glx) = 0.0;




end BIOMD380;
