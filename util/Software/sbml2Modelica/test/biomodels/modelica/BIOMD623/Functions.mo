within BIOMD623;
class Functions

    function elmt_MM_Explicit_Enzyme_1
        input Real arg_kcat;
        input Real arg_km;
        input Real arg_species_0;
        input Real arg_species_20;

        output Real result;
        algorithm
            result := ((arg_kcat * arg_species_0 * arg_species_20) / (arg_km + arg_species_20));
    end elmt_MM_Explicit_Enzyme_1;

    function elmt_Menten_Explicit_Enzyme_7
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_26;
        input Real arg_species_8;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_26 * arg_species_8) / (arg_km + arg_species_8));
    end elmt_Menten_Explicit_Enzyme_7;

    function elmt_Menten_Explicit_Enzyme_10
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_10;
        input Real arg_species_13;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_10 * arg_species_13) / (arg_km + arg_species_13));
    end elmt_Menten_Explicit_Enzyme_10;

    function elmt_Menten_Explicit_Enzyme_11
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_12;
        input Real arg_species_2;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_12 * arg_species_2) / (arg_km + arg_species_2));
    end elmt_Menten_Explicit_Enzyme_11;

    function elmt_Menten_Explicit_Enzyme_8
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_11;
        input Real arg_species_8;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_8 * arg_species_11) / (arg_km + arg_species_11));
    end elmt_Menten_Explicit_Enzyme_8;

    function elmt_Menten_Explicit_Enzyme_9
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_10;
        input Real arg_species_26;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_26 * arg_species_10) / (arg_km + arg_species_10));
    end elmt_Menten_Explicit_Enzyme_9;

    function elmt_Menten_Explicit_Enzyme_14
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_14;
        input Real arg_species_17;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_14 * arg_species_17) / (arg_km + arg_species_17));
    end elmt_Menten_Explicit_Enzyme_14;

    function elmt_Menten_Explicit_Enzyme_3
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_28;
        input Real arg_species_4;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_28 * arg_species_4) / (arg_km + arg_species_4));
    end elmt_Menten_Explicit_Enzyme_3;

    function elmt_Menten_Explicit_Enzyme_4
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_4;
        input Real arg_species_7;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_4 * arg_species_7) / (arg_km + arg_species_7));
    end elmt_Menten_Explicit_Enzyme_4;

    function elmt_Menten_Explicit_Enzyme_15
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_16;
        input Real arg_species_6;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_16 * arg_species_6) / (arg_km + arg_species_6));
    end elmt_Menten_Explicit_Enzyme_15;

    function elmt_Menten_Explicit_Enzyme_12
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_0;
        input Real arg_species_15;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_0 * arg_species_15) / (arg_km + arg_species_15));
    end elmt_Menten_Explicit_Enzyme_12;

    function elmt_Menten_Explicit_Enzyme_5
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_27;
        input Real arg_species_6;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_27 * arg_species_6) / (arg_km + arg_species_6));
    end elmt_Menten_Explicit_Enzyme_5;

    function elmt_Menten_Explicit_Enzyme_6
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_6;
        input Real arg_species_9;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_6 * arg_species_9) / (arg_km + arg_species_9));
    end elmt_Menten_Explicit_Enzyme_6;

    function elmt_Menten_Explicit_Enzyme_13
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_15;
        input Real arg_species_4;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_4 * arg_species_15) / (arg_km + arg_species_15));
    end elmt_Menten_Explicit_Enzyme_13;

    function elmt_MM_Explicit_Enzyme_7
        input Real arg_kcat;
        input Real arg_km;
        input Real arg_species_24;
        input Real arg_species_4;

        output Real result;
        algorithm
            result := ((arg_kcat * arg_species_4 * arg_species_24) / (arg_km + arg_species_24));
    end elmt_MM_Explicit_Enzyme_7;

    function elmt_MM_Explicit_Enzyme_6
        input Real arg_kcat;
        input Real arg_km;
        input Real arg_species_23;
        input Real arg_species_9;

        output Real result;
        algorithm
            result := ((arg_kcat * arg_species_23 * arg_species_9) / (arg_km + arg_species_9));
    end elmt_MM_Explicit_Enzyme_6;

    function elmt_Menten_Explicit_Enzyme_1
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_0;
        input Real arg_species_3;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_0 * arg_species_3) / (arg_km + arg_species_3));
    end elmt_Menten_Explicit_Enzyme_1;

    function elmt_Menten_Explicit_Enzyme_2
        input Real arg_Kcat;
        input Real arg_km;
        input Real arg_species_2;
        input Real arg_species_5;

        output Real result;
        algorithm
            result := ((arg_Kcat * arg_species_2 * arg_species_5) / (arg_km + arg_species_5));
    end elmt_Menten_Explicit_Enzyme_2;

    function elmt_MM_Explicit_Enzyme_3
        input Real arg_kcat;
        input Real arg_km;
        input Real arg_species_21;
        input Real arg_species_29;

        output Real result;
        algorithm
            result := ((arg_kcat * arg_species_29 * arg_species_21) / (arg_km + arg_species_21));
    end elmt_MM_Explicit_Enzyme_3;

    function elmt_MM_Explicit_Enzyme_2
        input Real arg_kcat;
        input Real arg_km;
        input Real arg_species_19;
        input Real arg_species_22;

        output Real result;
        algorithm
            result := ((arg_kcat * arg_species_19 * arg_species_22) / (arg_km + arg_species_22));
    end elmt_MM_Explicit_Enzyme_2;

    function elmt_MM_Explicit_Enzyme_5
        input Real arg_kcat;
        input Real arg_km;
        input Real arg_species_23;
        input Real arg_species_27;

        output Real result;
        algorithm
            result := ((arg_kcat * arg_species_27 * arg_species_23) / (arg_km + arg_species_23));
    end elmt_MM_Explicit_Enzyme_5;

    function elmt_Constant_flux__irreversible
        input Real arg_v;

        output Real result;
        algorithm
            result := arg_v;
    end elmt_Constant_flux__irreversible;

    function elmt_MM_Explicit_Enzyme_4
        input Real arg_kcat;
        input Real arg_km;
        input Real arg_species_21;
        input Real arg_species_24;

        output Real result;
        algorithm
            result := ((arg_kcat * arg_species_21 * arg_species_24) / (arg_km + arg_species_24));
    end elmt_MM_Explicit_Enzyme_4;


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
