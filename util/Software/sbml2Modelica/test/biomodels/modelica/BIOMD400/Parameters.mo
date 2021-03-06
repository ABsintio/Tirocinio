within BIOMD400;
class Parameters

    input Real elmt_Rg;
    input Real elmt_P;
    input Real elmt_Pc;
    input Real elmt_Pcg;
    input Real elmt_Gt;
    input Real elmt_Gd;
    input Real elmt_Ca;
    input Real elmt_Rlg;
    input Real elmt_IP3;
    input Real elmt_Rl;
    input Real elmt_Pg;
    input Real elmt_R;

    Real elmt_kf3(unit = "") "kf3";
    Real elmt_kf2(unit = "") "kf2";
    Real elmt_kf1(unit = "") "kf1";
    Real elmt_ts(unit = "") "ts";
    Real elmt_kr9(unit = "") "kr9";
    Real elmt_kr8(unit = "") "kr8";
    Real elmt_Cc(unit = "") "Cc";
    Real elmt_Cp(unit = "") "Cp";
    Real elmt_kf9(unit = "") "kf9";
    Real elmt_kf8(unit = "") "kf8";
    Real elmt_kf7(unit = "") "kf7";
    Real elmt_kf6(unit = "") "kf6";
    Real elmt_kf5(unit = "") "kf5";
    Real elmt_kf4(unit = "") "kf4";
    Real elmt_Rpc(unit = "") "Rpc";
    Real elmt_Kd1(unit = "") "Kd1";
    Real elmt_L(unit = "") "L";
    Real elmt_J7(unit = "") "J7";
    Real elmt_kf11(unit = "") "kf11";
    Real elmt_J8(unit = "") "J8";
    Real elmt_kf12(unit = "") "kf12";
    Real elmt_J5(unit = "") "J5";
    Real elmt_kf13(unit = "") "kf13";
    Real elmt_J6(unit = "") "J6";
    Real elmt_kf14(unit = "") "kf14";
    Real elmt_J3(unit = "") "J3";
    Real elmt_Kd4(unit = "") "Kd4";
    Real elmt_J4(unit = "") "J4";
    Real elmt_Ls(unit = "") "Ls";
    Real elmt_J1(unit = "") "J1";
    Real elmt_Kd2(unit = "") "Kd2";
    Real elmt_J2(unit = "") "J2";
    Real elmt_kf10(unit = "") "kf10";
    Real elmt_kr10(unit = "") "kr10";
    Real elmt_kf15(unit = "") "kf15";
    Real elmt_kf16(unit = "") "kf16";
    Real elmt_J16(unit = "") "J16";
    Real elmt_J14(unit = "") "J14";
    Real elmt_J15(unit = "") "J15";
    Real elmt_Kd11(unit = "") "Kd11";
    Real elmt_J12(unit = "") "J12";
    Real elmt_kr11(unit = "") "kr11";
    Real elmt_J13(unit = "") "J13";
    Real elmt_J10(unit = "") "J10";
    Real elmt_J11(unit = "") "J11";
    Real elmt_Cpc(unit = "") "Cpc";
    Real elmt_Vc(unit = "") "Vc";
    Real elmt_J9(unit = "") "J9";
    Real elmt_Km14(unit = "") "Km14";
    Real elmt_Km15(unit = "") "Km15";
    Real elmt_PIP2(unit = "") "PIP2";
    Real elmt_kr4(unit = "") "kr4";
    Real elmt_kr3(unit = "") "kr3";
    Real elmt_kr2(unit = "") "kr2";
    Real elmt_kr1(unit = "") "kr1";


    initial equation
        elmt_kf3 = 1.0;
        elmt_kf2 = 2.75E-4;
        elmt_kf1 = 3.0E-4;
        elmt_ts = 30.0;
        elmt_kr9 = 1.0;
        elmt_kr8 = 0.0167;
        elmt_kf9 = 0.0042;
        elmt_kf8 = 0.0167;
        elmt_kf7 = 0.15;
        elmt_kf6 = 1.0;
        elmt_kf5 = 4.0E-4;
        elmt_kf4 = 0.3;
        elmt_Rpc = 4.61;
        elmt_Kd1 = 3.0E-5;
        elmt_kf11 = 0.0334;
        elmt_kf12 = 6.0;
        elmt_kf13 = 6.0;
        elmt_kf14 = 0.444;
        elmt_Kd4 = 3.0E-5;
        elmt_Ls = 0.1;
        elmt_Kd2 = 27500.0;
        elmt_kf10 = 0.042;
        elmt_kr10 = 1.0;
        elmt_kf15 = 3.8;
        elmt_kf16 = 1.25;
        elmt_Kd11 = 0.1;
        elmt_Vc = 2550.0;
        elmt_Km14 = 19.8;
        elmt_Km15 = 5.0;
        elmt_PIP2 = 4000.0;
        elmt_kr3 = 0.001;


    equation
        der(elmt_kf3) = 0;
        der(elmt_kf2) = 0;
        der(elmt_kf1) = 0;
        der(elmt_ts) = 0;
        der(elmt_kr9) = 0;
        der(elmt_kr8) = 0;
        elmt_Cc = (1.0 / (elmt_Vc * 602.2));
        elmt_Cp = (1.0 / (elmt_Vc * elmt_Rpc));
        der(elmt_kf9) = 0;
        der(elmt_kf8) = 0;
        der(elmt_kf7) = 0;
        der(elmt_kf6) = 0;
        der(elmt_kf5) = 0;
        der(elmt_kf4) = 0;
        der(elmt_Rpc) = 0;
        der(elmt_Kd1) = 0;
        elmt_L = (if ((time < (elmt_ts + 0.15)) and (time >= elmt_ts)) then (elmt_Ls / (1.0 + exp(((- 80.0) * ((time - elmt_ts) - 0.05))))) elseif (time >= (elmt_ts + 0.15)) then elmt_Ls else 0.0);
        elmt_J7 = (elmt_kf7 * elmt_Gt);
        der(elmt_kf11) = 0;
        elmt_J8 = ((elmt_kf8 * elmt_P * elmt_Ca) - (elmt_kr8 * elmt_Pc));
        der(elmt_kf12) = 0;
        elmt_J5 = (elmt_kf5 * elmt_Rlg);
        der(elmt_kf13) = 0;
        elmt_J6 = (elmt_kf6 * elmt_Rlg);
        der(elmt_kf14) = 0;
        elmt_J3 = ((elmt_kf3 * elmt_Rl * elmt_Gd) - (elmt_kr3 * elmt_Rlg));
        der(elmt_Kd4) = 0;
        elmt_J4 = ((elmt_kf4 * elmt_L * elmt_Rg) - (elmt_kr4 * elmt_Rlg));
        der(elmt_Ls) = 0;
        elmt_J1 = ((elmt_kf1 * elmt_R * elmt_L) - (elmt_kr1 * elmt_Rl));
        der(elmt_Kd2) = 0;
        elmt_J2 = ((elmt_kf2 * elmt_R * elmt_Gd) - (elmt_kr2 * elmt_Rg));
        der(elmt_kf10) = 0;
        der(elmt_kr10) = 0;
        der(elmt_kf15) = 0;
        der(elmt_kf16) = 0;
        elmt_J16 = (elmt_kf16 * elmt_IP3);
        elmt_J14 = ((elmt_kf14 * elmt_Pc * elmt_PIP2) / ((elmt_Km14 / elmt_Cpc) + elmt_PIP2));
        elmt_J15 = ((elmt_kf15 * elmt_Pcg * elmt_PIP2) / ((elmt_Km15 / elmt_Cpc) + elmt_PIP2));
        der(elmt_Kd11) = 0;
        elmt_J12 = (elmt_kf12 * elmt_Pcg);
        elmt_kr11 = (elmt_kf11 * elmt_Kd11);
        elmt_J13 = (elmt_kf13 * elmt_Pg);
        elmt_J10 = ((elmt_kf10 * elmt_Pc * elmt_Gt) - (elmt_kr10 * elmt_Pcg));
        elmt_J11 = ((elmt_kf11 * elmt_Pg * elmt_Ca) - (elmt_kr11 * elmt_Pcg));
        elmt_Cpc = (elmt_Cc / elmt_Cp);
        der(elmt_Vc) = 0;
        elmt_J9 = ((elmt_kf9 * elmt_P * elmt_Gt) - (elmt_kr9 * elmt_Pg));
        der(elmt_Km14) = 0;
        der(elmt_Km15) = 0;
        der(elmt_PIP2) = 0;
        elmt_kr4 = (elmt_kf4 * elmt_Kd4);
        der(elmt_kr3) = 0;
        elmt_kr2 = (elmt_kf2 * elmt_Kd2);
        elmt_kr1 = (elmt_kf1 * elmt_Kd1);

end Parameters;
