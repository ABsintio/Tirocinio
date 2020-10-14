within BIOMD625;
class Functions

    function elmt_Molecule_Production__1A_0I__1
        input Real arg_nTreg;
        input Real arg_sigma;

        output Real result;
        algorithm
            result := (arg_sigma * arg_nTreg);
    end elmt_Molecule_Production__1A_0I__1;

    function elmt_Molecule_Production__1A_0I__2
        input Real arg_IL2;
        input Real arg_sigma;

        output Real result;
        algorithm
            result := (arg_sigma * arg_IL2);
    end elmt_Molecule_Production__1A_0I__2;

    function elmt_Molecule_Production__2A_3I__v2_1
        input Real arg_Blimp1;
        input Real arg_ICOS;
        input Real arg_RXR;
        input Real arg_STAT3;
        input Real arg_STAT5;
        input Real arg_alpha1;
        input Real arg_alpha2;
        input Real arg_alpha3;
        input Real arg_sigma1;
        input Real arg_sigma2;

        output Real result;
        algorithm
            result := (((arg_sigma1 * arg_ICOS) + (arg_sigma2 * arg_STAT3)) / ((arg_alpha1 + arg_Blimp1) * (arg_alpha2 + arg_STAT5) * (arg_alpha3 + arg_RXR)));
    end elmt_Molecule_Production__2A_3I__v2_1;

    function elmt_Molecule_Production__2A_0I__1
        input Real arg_IL21;
        input Real arg_IL6;
        input Real arg_sigma1;
        input Real arg_sigma2;

        output Real result;
        algorithm
            result := ((arg_sigma1 * arg_IL6) + (arg_sigma2 * arg_IL21));
    end elmt_Molecule_Production__2A_0I__1;

    function elmt_Molecule_Production__1A_0I__5
        input Real arg_IL10;
        input Real arg_sigma;

        output Real result;
        algorithm
            result := (arg_sigma * arg_IL10);
    end elmt_Molecule_Production__1A_0I__5;

    function elmt_Molecule_Production__1A_0I__3
        input Real arg_Tfh;
        input Real arg_sigma;

        output Real result;
        algorithm
            result := (arg_sigma * arg_Tfh);
    end elmt_Molecule_Production__1A_0I__3;

    function elmt_Molecule_Production__1A_0I__4
        input Real arg_Tfr;
        input Real arg_sigma;

        output Real result;
        algorithm
            result := (arg_sigma * arg_Tfr);
    end elmt_Molecule_Production__1A_0I__4;

    function elmt_Molecule_Production__2A_1I__1
        input Real arg_Blimp1;
        input Real arg_Tfh;
        input Real arg_Tfr;
        input Real arg_alpha;
        input Real arg_sigma1;
        input Real arg_sigma2;

        output Real result;
        algorithm
            result := (((arg_sigma1 * arg_Tfh) + (arg_sigma2 * arg_Tfr)) / (arg_alpha + arg_Blimp1));
    end elmt_Molecule_Production__2A_1I__1;

    function elmt_Molecule_Production__1A_1I__1
        input Real arg_Bcl6;
        input Real arg_Tfr;
        input Real arg_alpha;
        input Real arg_sigma;

        output Real result;
        algorithm
            result := ((arg_sigma * arg_Tfr) / (arg_alpha + arg_Bcl6));
    end elmt_Molecule_Production__1A_1I__1;

    function elmt_Molecule_Production__1A_1I__2
        input Real arg_TGFb;
        input Real arg_Tgif1;
        input Real arg_alpha;
        input Real arg_sigma;

        output Real result;
        algorithm
            result := ((arg_sigma * arg_TGFb) / (arg_alpha + arg_Tgif1));
    end elmt_Molecule_Production__1A_1I__2;

    function elmt_Cell_Differentiation__1A_1I__1
        input Real arg_Bcl6;
        input Real arg_IL10;
        input Real arg_NaiveCD4;
        input Real arg_alpha;
        input Real arg_gamma;

        output Real result;
        algorithm
            result := ((arg_gamma * arg_NaiveCD4 * arg_Bcl6) / (arg_alpha + arg_IL10));
    end elmt_Cell_Differentiation__1A_1I__1;

    function elmt_Cell_Differentiation__2A__1
        input Real arg_Bcl6;
        input Real arg_CXCR5;
        input Real arg_gamma1;
        input Real arg_gamma2;
        input Real arg_nTreg;

        output Real result;
        algorithm
            result := ((arg_gamma1 * arg_nTreg * arg_Bcl6) + (arg_gamma2 * arg_nTreg * arg_CXCR5));
    end elmt_Cell_Differentiation__2A__1;

    function elmt_Molecule_Production__0A_1I__1
        input Real arg_IL4;
        input Real arg_alpha1;
        input Real arg_sigma1;

        output Real result;
        algorithm
            result := (arg_sigma1 / (arg_alpha1 + arg_IL4));
    end elmt_Molecule_Production__0A_1I__1;

    function elmt_Constant_flux__irreversible
        input Real arg_v;

        output Real result;
        algorithm
            result := arg_v;
    end elmt_Constant_flux__irreversible;


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
