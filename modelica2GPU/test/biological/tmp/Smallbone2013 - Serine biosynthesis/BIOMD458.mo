
model BIOMD458 "Smallbone2013 - Serine biosynthesis"

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



    parameter Real kcatA_0 = 0.55;
    parameter Real KAp3g_0 = 1.2;
    parameter Real KAphp_0 = 0.0032;
    parameter Real KiAser_0 = 0.0038;
    parameter Real kcatC_1 = 1.75;
    parameter Real KCphp_1 = 0.0015;
    parameter Real KCpser_1 = 0.0017;
    parameter Real kcatB_2 = 1.43;
    parameter Real KBpser_2 = 0.0015;
    parameter Real KBser_2 = 0.15;
    parameter Real cell = 1.0;



    Real p3g;
    Real php;
    Real pser;
    Real ser;
    Real serA;
    Real serC;
    Real serB;

initial equation
    p3g = 2.36;
    php = 0.6;
    pser = 0.09;
    ser = 4.9;
    serA = 1.15;
    serC = 0.1;
    serB = 0.25;

equation

    der(p3g) = 0.0;
    der(php) = (cell * serA * kcatA_0 * (p3g / KAp3g_0) / (1 + p3g / KAp3g_0 + php / KAphp_0) / (1 + ser / KiAser_0)) - (cell * serC * kcatC_1 * (php / KCphp_1) / (1 + php / KCphp_1 + pser / KCpser_1));
    der(pser) = (cell * serC * kcatC_1 * (php / KCphp_1) / (1 + php / KCphp_1 + pser / KCpser_1)) - (cell * serB * kcatB_2 * (pser / KBpser_2) / (1 + pser / KBpser_2 + ser / KBser_2));
    der(ser) = 0.0;
    der(serA) = 0.0;
    der(serC) = 0.0;
    der(serB) = 0.0;




end BIOMD458;
