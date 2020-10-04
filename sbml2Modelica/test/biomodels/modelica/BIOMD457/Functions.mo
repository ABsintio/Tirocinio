within BIOMD457;
class Functions

    function elmt_function_1
        input Real arg_k;
        input Real arg_substrate1;
        input Real arg_substrate2;
        input Real arg_mRNA_tot;
        input Real arg_A1;
        input Real arg_B1;
        input Real arg_C1;
        input Real arg_D1;
        input Real arg_A2;
        input Real arg_B2;
        input Real arg_C2;
        input Real arg_D2;
        input Real arg_E2;
        input Real arg_F2;
        input Real arg_A3;
        input Real arg_B3;
        input Real arg_C3;
        input Real arg_D3;
        input Real arg_E3;
        input Real arg_F3;
        input Real arg_A4;
        input Real arg_B4;
        input Real arg_C4;
        input Real arg_D4;
        input Real arg_E4;
        input Real arg_F4;
        input Real arg_A5;
        input Real arg_B5;
        input Real arg_C5;
        input Real arg_D5;
        input Real arg_E5;
        input Real arg_F5;
        input Real arg_A6;
        input Real arg_B6;
        input Real arg_C6;
        input Real arg_D6;
        input Real arg_E6;
        input Real arg_F6;
        input Real arg_A7;
        input Real arg_B7;
        input Real arg_C7;
        input Real arg_D7;
        input Real arg_E7;
        input Real arg_F7;
        input Real arg_A8;
        input Real arg_B8;
        input Real arg_C8;
        input Real arg_D8;
        input Real arg_E8;
        input Real arg_F8;
        input Real arg_A9;
        input Real arg_B9;
        input Real arg_C9;
        input Real arg_D9;
        input Real arg_E9;
        input Real arg_F9;
        input Real arg_A10;
        input Real arg_B10;
        input Real arg_C10;
        input Real arg_D10;
        input Real arg_E10;
        input Real arg_F10;
        input Real arg_A11;
        input Real arg_B11;
        input Real arg_C11;
        input Real arg_D11;
        input Real arg_E11;
        input Real arg_F11;
        input Real arg_A12;
        input Real arg_B12;
        input Real arg_C12;
        input Real arg_D12;
        input Real arg_E12;
        input Real arg_F12;
        input Real arg_A13;
        input Real arg_B13;
        input Real arg_C13;
        input Real arg_D13;
        input Real arg_E13;
        input Real arg_F13;
        input Real arg_A14;
        input Real arg_B14;
        input Real arg_C14;
        input Real arg_D14;
        input Real arg_E14;
        input Real arg_F14;
        input Real arg_A15;
        input Real arg_B15;
        input Real arg_C15;
        input Real arg_D15;
        input Real arg_E15;
        input Real arg_F15;

        output Real result;
        algorithm
            result := (arg_k * arg_substrate1 * arg_substrate2 * (arg_mRNA_tot - (arg_A1 + arg_B1 + arg_C1 + arg_D1 + arg_A2 + arg_B2 + arg_C2 + arg_D2 + arg_E2 + arg_F2 + arg_A3 + arg_B3 + arg_C3 + arg_D3 + arg_E3 + arg_F3 + arg_A4 + arg_B4 + arg_C4 + arg_D4 + arg_E4 + arg_F4 + arg_A5 + arg_B5 + arg_C5 + arg_D5 + arg_E5 + arg_F5 + arg_A6 + arg_B6 + arg_C6 + arg_D6 + arg_E6 + arg_F6 + arg_A7 + arg_B7 + arg_C7 + arg_D7 + arg_E7 + arg_F7 + arg_A8 + arg_B8 + arg_C8 + arg_D8 + arg_E8 + arg_F8 + arg_A9 + arg_B9 + arg_C9 + arg_D9 + arg_E9 + arg_F9 + arg_A10 + arg_B10 + arg_C10 + arg_D10 + arg_E10 + arg_F10 + arg_A11 + arg_B11 + arg_C11 + arg_D11 + arg_E11 + arg_F11 + arg_A12 + arg_B12 + arg_C12 + arg_D12 + arg_E12 + arg_F12 + arg_A13 + arg_B13 + arg_C13 + arg_D13 + arg_E13 + arg_F13 + arg_A14 + arg_B14 + arg_C14 + arg_D14 + arg_E14 + arg_F14 + arg_A15 + arg_B15 + arg_C15 + arg_D15 + arg_E15 + arg_F15)));
    end elmt_function_1;

    function elmt_function_2
        input Real arg_k;
        input Real arg_substrate;
        input Real arg_mRNA_tot;
        input Real arg_A1;
        input Real arg_B1;
        input Real arg_C1;
        input Real arg_D1;
        input Real arg_E1;
        input Real arg_F1;
        input Real arg_A2;
        input Real arg_B2;
        input Real arg_C2;
        input Real arg_D2;
        input Real arg_E2;
        input Real arg_F2;
        input Real arg_A3;
        input Real arg_B3;
        input Real arg_C3;
        input Real arg_D3;
        input Real arg_E3;
        input Real arg_F3;
        input Real arg_A4;
        input Real arg_B4;
        input Real arg_C4;
        input Real arg_D4;
        input Real arg_E4;
        input Real arg_F4;
        input Real arg_A5;
        input Real arg_B5;
        input Real arg_C5;
        input Real arg_D5;
        input Real arg_E5;
        input Real arg_F5;
        input Real arg_A6;
        input Real arg_B6;
        input Real arg_C6;
        input Real arg_D6;
        input Real arg_E6;
        input Real arg_F6;
        input Real arg_A7;
        input Real arg_B7;
        input Real arg_C7;
        input Real arg_D7;
        input Real arg_E7;
        input Real arg_F7;
        input Real arg_A8;
        input Real arg_B8;
        input Real arg_C8;
        input Real arg_D8;
        input Real arg_E8;
        input Real arg_F8;
        input Real arg_A9;
        input Real arg_B9;
        input Real arg_C9;
        input Real arg_D9;
        input Real arg_E9;
        input Real arg_F9;
        input Real arg_A10;
        input Real arg_B10;
        input Real arg_C10;
        input Real arg_D10;
        input Real arg_E10;
        input Real arg_F10;
        input Real arg_A11;
        input Real arg_B11;
        input Real arg_C11;
        input Real arg_D11;
        input Real arg_E11;
        input Real arg_F11;
        input Real arg_A12;
        input Real arg_B12;
        input Real arg_C12;
        input Real arg_D12;
        input Real arg_E12;
        input Real arg_F12;
        input Real arg_A13;
        input Real arg_B13;
        input Real arg_C13;
        input Real arg_D13;
        input Real arg_E13;
        input Real arg_F13;
        input Real arg_A14;
        input Real arg_B14;
        input Real arg_C14;
        input Real arg_D14;
        input Real arg_E14;
        input Real arg_F14;
        input Real arg_A15;
        input Real arg_B15;
        input Real arg_C15;
        input Real arg_D15;
        input Real arg_E15;
        input Real arg_F15;

        output Real result;
        algorithm
            result := ((arg_k * arg_substrate * (arg_mRNA_tot - (arg_A1 + arg_B1 + arg_C1 + arg_D1 + arg_E1 + arg_F1 + arg_A2 + arg_B2 + arg_C2 + arg_D2 + arg_E2 + arg_F2 + arg_A3 + arg_B3 + arg_C3 + arg_D3 + arg_E3 + arg_F3 + arg_A4 + arg_B4 + arg_C4 + arg_D4 + arg_E4 + arg_F4 + arg_A5 + arg_B5 + arg_C5 + arg_D5 + arg_E5 + arg_F5 + arg_A6 + arg_B6 + arg_C6 + arg_D6 + arg_E6 + arg_F6 + arg_A7 + arg_B7 + arg_C7 + arg_D7 + arg_E7 + arg_F7 + arg_A8 + arg_B8 + arg_C8 + arg_D8 + arg_E8 + arg_F8 + arg_A9 + arg_B9 + arg_C9 + arg_D9 + arg_E9 + arg_F9 + arg_A10 + arg_B10 + arg_C10 + arg_D10 + arg_E10 + arg_F10 + arg_A11 + arg_B11 + arg_C11 + arg_D11 + arg_E11 + arg_F11 + arg_A12 + arg_B12 + arg_C12 + arg_D12 + arg_E12 + arg_F12 + arg_A13 + arg_B13 + arg_C13 + arg_D13 + arg_E13 + arg_F13 + arg_A14 + arg_B14 + arg_C14 + arg_D14 + arg_E14 + arg_F14 + arg_A15 + arg_B15 + arg_C15 + arg_D15 + arg_E15 + arg_F15))) / (arg_mRNA_tot - (arg_A1 + arg_B1 + arg_C1 + arg_D1 + arg_E1 + arg_F1 + arg_A2 + arg_B2 + arg_C2 + arg_D2 + arg_E2 + arg_F2 + arg_A3 + arg_B3 + arg_C3 + arg_D3 + arg_E3 + arg_F3 + arg_A4 + arg_B4 + arg_C4 + arg_D4 + arg_E4 + arg_F4 + arg_A5 + arg_B5 + arg_C5 + arg_D5 + arg_E5 + arg_F5 + arg_A6 + arg_B6 + arg_C6 + arg_D6 + arg_E6 + arg_F6 + arg_A7 + arg_B7 + arg_C7 + arg_D7 + arg_E7 + arg_F7 + arg_A8 + arg_B8 + arg_C8 + arg_D8 + arg_E8 + arg_F8 + arg_A9 + arg_B9 + arg_C9 + arg_D9 + arg_E9 + arg_F9 + arg_A10 + arg_B10 + arg_C10 + arg_D10 + arg_E10 + arg_F10 + arg_A11 + arg_B11 + arg_C11 + arg_D11 + arg_E11 + arg_F11 + arg_A12 + arg_B12 + arg_C12 + arg_D12 + arg_E12 + arg_F12 + arg_A13 + arg_B13 + arg_C13 + arg_D13 + arg_E13 + arg_F13 + arg_A14 + arg_B14 + arg_C14 + arg_D14 + arg_E14 + arg_F14)));
    end elmt_function_2;

    function elmt_function_3
        input Real arg_k;
        input Real arg_substrate;
        input Real arg_mRNA_tot;
        input Real arg_A1;
        input Real arg_B1;
        input Real arg_C1;
        input Real arg_D1;
        input Real arg_E1;
        input Real arg_F1;
        input Real arg_A2;
        input Real arg_B2;
        input Real arg_C2;
        input Real arg_D2;
        input Real arg_E2;
        input Real arg_F2;
        input Real arg_A3;
        input Real arg_B3;
        input Real arg_C3;
        input Real arg_D3;
        input Real arg_E3;
        input Real arg_F3;
        input Real arg_A4;
        input Real arg_B4;
        input Real arg_C4;
        input Real arg_D4;
        input Real arg_E4;
        input Real arg_F4;
        input Real arg_A5;
        input Real arg_B5;
        input Real arg_C5;
        input Real arg_D5;
        input Real arg_E5;
        input Real arg_F5;
        input Real arg_A6;
        input Real arg_B6;
        input Real arg_C6;
        input Real arg_D6;
        input Real arg_E6;
        input Real arg_F6;
        input Real arg_A7;
        input Real arg_B7;
        input Real arg_C7;
        input Real arg_D7;
        input Real arg_E7;
        input Real arg_F7;
        input Real arg_A8;
        input Real arg_B8;
        input Real arg_C8;
        input Real arg_D8;
        input Real arg_E8;
        input Real arg_F8;
        input Real arg_A9;
        input Real arg_B9;
        input Real arg_C9;
        input Real arg_D9;
        input Real arg_E9;
        input Real arg_F9;
        input Real arg_A10;
        input Real arg_B10;
        input Real arg_C10;
        input Real arg_D10;
        input Real arg_E10;
        input Real arg_F10;
        input Real arg_A11;
        input Real arg_B11;
        input Real arg_C11;
        input Real arg_D11;
        input Real arg_E11;
        input Real arg_F11;
        input Real arg_A12;
        input Real arg_B12;
        input Real arg_C12;
        input Real arg_D12;
        input Real arg_E12;
        input Real arg_F12;
        input Real arg_A13;
        input Real arg_B13;
        input Real arg_C13;
        input Real arg_D13;
        input Real arg_E13;
        input Real arg_F13;
        input Real arg_A14;
        input Real arg_B14;
        input Real arg_C14;
        input Real arg_D14;
        input Real arg_E14;
        input Real arg_F14;
        input Real arg_A15;
        input Real arg_E15;
        input Real arg_F15;

        output Real result;
        algorithm
            result := ((arg_k * arg_substrate * (arg_mRNA_tot - (arg_A1 + arg_B1 + arg_C1 + arg_D1 + arg_E1 + arg_F1 + arg_A2 + arg_B2 + arg_C2 + arg_D2 + arg_E2 + arg_F2 + arg_A3 + arg_B3 + arg_C3 + arg_D3 + arg_E3 + arg_F3 + arg_A4 + arg_B4 + arg_C4 + arg_D4 + arg_E4 + arg_F4 + arg_A5 + arg_B5 + arg_C5 + arg_D5 + arg_E5 + arg_F5 + arg_A6 + arg_B6 + arg_C6 + arg_D6 + arg_E6 + arg_F6 + arg_A7 + arg_B7 + arg_C7 + arg_D7 + arg_E7 + arg_F7 + arg_A8 + arg_B8 + arg_C8 + arg_D8 + arg_E8 + arg_F8 + arg_A9 + arg_B9 + arg_C9 + arg_D9 + arg_E9 + arg_F9 + arg_A10 + arg_B10 + arg_C10 + arg_D10 + arg_E10 + arg_F10 + arg_A11 + arg_B11 + arg_C11 + arg_D11 + arg_E11 + arg_F11 + arg_A12 + arg_B12 + arg_C12 + arg_D12 + arg_E12 + arg_F12 + arg_A13 + arg_B13 + arg_C13 + arg_D13 + arg_E13 + arg_F13 + arg_A14 + arg_B14 + arg_C14 + arg_D14 + arg_E14 + arg_F14 + arg_A15 + arg_E15 + arg_F15))) / (arg_mRNA_tot - (arg_A1 + arg_B1 + arg_C1 + arg_D1 + arg_E1 + arg_F1 + arg_A2 + arg_B2 + arg_C2 + arg_D2 + arg_E2 + arg_F2 + arg_A3 + arg_B3 + arg_C3 + arg_D3 + arg_E3 + arg_F3 + arg_A4 + arg_B4 + arg_C4 + arg_D4 + arg_E4 + arg_F4 + arg_A5 + arg_B5 + arg_C5 + arg_D5 + arg_E5 + arg_F5 + arg_A6 + arg_B6 + arg_C6 + arg_D6 + arg_E6 + arg_F6 + arg_A7 + arg_B7 + arg_C7 + arg_D7 + arg_E7 + arg_F7 + arg_A8 + arg_B8 + arg_C8 + arg_D8 + arg_E8 + arg_F8 + arg_A9 + arg_B9 + arg_C9 + arg_D9 + arg_E9 + arg_F9 + arg_A10 + arg_B10 + arg_C10 + arg_D10 + arg_E10 + arg_F10 + arg_A11 + arg_B11 + arg_C11 + arg_D11 + arg_E11 + arg_F11 + arg_A12 + arg_B12 + arg_C12 + arg_D12 + arg_E12 + arg_F12 + arg_A13 + arg_B13 + arg_C13 + arg_D13 + arg_E13 + arg_F13 + arg_A14 + arg_B14 + arg_C14 + arg_D14 + arg_E14 + arg_F14)));
    end elmt_function_3;


    function acosh
        input  Real x;
        output Real y;
        algorithm
            y := log(x + sqrt(x^2 - 1));
    end acosh;

    function acot
        input  Real x;
        output Real y;
        algorithm
            if abs(x) < Constants.EPSILON then
                y := atan(sign(x) * Constants.INFINITY);
            else
                y := atan(1 / x);
            end if;
    end acot;

    function acoth
        input  Real x;
        output Real y;
        algorithm
            y := (1 / 2) * log((x + 1) / (x - 1));
    end acoth;

    function acsc
        input  Real x;
        output Real y;
        algorithm
            y := asin(1 / x);
    end acsc;

    function acsch
        input  Real x;
        output Real y;
        algorithm
            y := sign(x) * log((1 + sqrt(1 + x^2)) / abs(x));
    end acsch;

    function asec
        input  Real x;
        output Real y;
        algorithm
            y := acos(1 / x);
    end asec;

    function asech
        input  Real x;
        output Real y;
        algorithm
            y := log((1 + sqrt(1 - x^2)) / x);
    end asech;

    function asinh
        input  Real x;
        output Real y;
        algorithm
            y := log(x + sqrt(x^2 + 1));
    end asinh;

    function atanh
        input  Real x;
        output Real y;
        algorithm
            y := (1 / 2) * log((1 + x) / (1 - x));
    end atanh;

    function cot
        input  Real x;
        output Real y;
        algorithm
            y := 1 / tan(x);
    end cot;

    function coth
        input  Real x;
        output Real y;
        algorithm
            y := 1 / tanh(x);
    end coth;

    function csc
        input  Real x;
        output Real y;
        algorithm
            y := 1 / sin(x);
    end csc;

    function csch
        input  Real x;
        output Real y;
        algorithm
            y := 1 / sinh(x);
    end csch;

    function factorial
        input  Real n;
        output Real y;
        algorithm
            if eq(n, 0) then
                y := 1;
            else
                y := n * factorial(n - 1);
            end if;
    end factorial;

    function logarithm
        input  Real base;
        input  Real arg;
        output Real y;
        algorithm
            y := log(arg) / log(base);
    end logarithm;

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    function root
        input  Real degree;
        input  Real x;
        output Real y;
        algorithm
            y := x^(1 / degree);
    end root;

    function sec
        input  Real x;
        output Real y;
        algorithm
            y := 1 / cos(x);
    end sec;

    function sech
        input  Real x;
        output Real y;
        algorithm
            y := 1 / cosh(x);
    end sech;

    function implies
        input  Boolean x1;
        input  Boolean x2;
        output Boolean y;
        algorithm
            y := not x1 or x2;
    end implies;

    function xor
        input  Boolean x1;
        input  Boolean x2;
        output Boolean y;
        algorithm
            y := (x1 and not x2) or (not x1 and x2);
    end xor;

    function eq
        input  Real x1;
        input  Real x2;
        output Boolean y;
        algorithm
            y := abs(x1 - x2) / max(abs(x1), Constants.ETA) < Constants.EPSILON;
    end eq;

    function real2bool
        input  Real    x;
        output Boolean y;
        algorithm
            y := (not eq(x, 0));
    end real2bool;

    function bool2real
        input  Boolean x;
        output Real    y;
        algorithm
            if x then
                y := 1.0;
            else
                y := 0.0;
            end if;
    end bool2real;
end Functions;
