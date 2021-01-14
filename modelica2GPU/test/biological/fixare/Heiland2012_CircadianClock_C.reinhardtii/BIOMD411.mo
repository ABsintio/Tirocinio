
model BIOMD411 "Heiland2012_CircadianClock_C.reinhardtii"

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


    function function_2
        	input Real v;
	input Real E;
	input Real R;
	input Real T2;
	input Real T1;
	input Real k;
	input Real S;
	input Real h;
        output Real y;
    algorithm
        y :=  v * exp((E / R) * (T2 - T1) / (T1 * T2)) / (k + S^h);
    end function_2;


    function function_1
        	input Real v;
	input Real E;
	input Real R;
	input Real T2;
	input Real T1;
	input Real S;
        output Real y;
    algorithm
        y :=  v * exp((E / R) * (T2 - T1) / (T1 * T2)) * S;
    end function_1;


    function function_4
        	input Real v;
	input Real E;
	input Real R;
	input Real T2;
	input Real T1;
	input Real S;
        output Real y;
    algorithm
        y :=  v * exp((E / R) * (T2 - T1) / (T1 * T2)) * S;
    end function_4;


    function function_3
        	input Real v;
	input Real E;
	input Real R;
	input Real T2;
	input Real T1;
	input Real S;
	input Real Km;
        output Real y;
    algorithm
        y :=  v * exp((E / R) * (T2 - T1) / (T1 * T2)) * S / (Km + S);
    end function_3;


    function function_5
        	input Real v;
	input Real E;
	input Real R;
	input Real T2;
	input Real T1;
	input Real S1;
	input Real S2;
	input Real a;
        output Real y;
    algorithm
        y :=  v * exp((E / R) * (T2 - T1) / (T1 * T2)) * S1 * S2^a;
    end function_5;


    parameter Real T = 291.0;
    parameter Real parameter_1 = 1.0;
    parameter Real parameter_2 = 0.5;
    parameter Real parameter_3 = 8.31447;
    parameter Real parameter_4 = 10.0;
    parameter Real parameter_5 = 24.0;
    parameter Real parameter_8 = 1.0;
    parameter Real parameter_9 = 60000.0;
    parameter Real parameter_10 = 67000.0;
    parameter Real v_0 = 0.1;
    parameter Real v_1 = 2.6;
    parameter Real k_1 = 0.4;
    parameter Real h_1 = 2.0;
    parameter Real v_2 = 3.0;
    parameter Real Km_2 = 2.0;
    parameter Real v_3 = 2.2;
    parameter Real Km_3 = 0.2;
    parameter Real v_4 = 1.5;
    parameter Real Km_4 = 1.4;
    parameter Real v_5 = 5.0;
    parameter Real v_6 = 19.0;
    parameter Real E_6 = 67000.0;
    parameter Real v_7 = 10.0;
    parameter Real a_7 = 2.0;
    parameter Real v_9 = 30.0;
    parameter Real E_9 = 67000.0;
    parameter Real Km_9 = 2.0;
    parameter Real v_10 = 20.0;
    parameter Real E_10 = 67000.0;
    parameter Real Km_10 = 4.0;
    parameter Real E_12 = 67000.0;
    parameter Real Km_12 = 1.0;
    parameter Real default = 1.0;

    Real T2(start=296.0);
    Real parameter_6(start=50000.0);
    Real parameter_7(start=84000.0);

    Real s2;
    Real s9;
    Real s10;
    Real s11;
    Real s13;
    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_12;

initial equation
    s2 = 1.0;
    s9 = 1.0;
    s10 = 1.0;
    s11 = 1.0;
    s13 = 1.0;
    species_1 = 1.0;
    species_2 = 1.0;
    species_3 = 1.0;
    species_4 = 1.0;
    species_12 = 1.0;

equation
    T2 = 296 + parameter_4 / 2 * sin(2 * Modelica.Constants.pi * time / parameter_5);
    parameter_6 = 50000;
    parameter_7 = 84000;
    der(s2) = 0.0;
    der(s9) = (default * function_2(v_1, parameter_7, parameter_3, T2, T, k_1, s11, h_1)) - (default * function_3(v_2, parameter_6, parameter_3, T2, T, s9, Km_2));
    der(s10) = (default * function_4(v_5, parameter_7, parameter_3, T2, T, s9)) - (default * function_1(v_0, parameter_6, parameter_3, T2, T, s10)) - (default * function_3(v_3, parameter_6, parameter_3, T2, T, s10, Km_3));
    der(s11) = (default * function_1(v_0, parameter_6, parameter_3, T2, T, s10)) - (default * function_3(v_4, parameter_6, parameter_3, T2, T, s11, Km_4)) - (defa_7ult * function_5(v_7, pa_7ra_7meter_7, pa_7ra_7meter_3, T2, T, species_3, s11, a_7));
    der(s13) = 0.0;
    der(species_1) = (default * function_1(v_6, E_6, parameter_3, T2, T, species_2)) + (default * function_1(parameter_2, parameter_10, parameter_3, T2, T, species_3)) - (default * function_1(parameter_1, parameter_9, parameter_3, T2, T, species_1)) - (default * function_3(v_9, E_9, parameter_3, T2, T, species_1, Km_9));
    der(species_2) = 0.0;
    der(species_3) = (default * function_1(parameter_1, parameter_9, parameter_3, T2, T, species_1)) - (defa_7ult * function_5(v_7, pa_7ra_7meter_7, pa_7ra_7meter_3, T2, T, species_3, s11, a_7)) - (default * function_1(parameter_2, parameter_10, parameter_3, T2, T, species_3)) - (default * function_3(parameter_8, E_12, parameter_3, T2, T, species_3, Km_12));
    der(species_4) = (defa_7ult * function_5(v_7, pa_7ra_7meter_7, pa_7ra_7meter_3, T2, T, species_3, s11, a_7)) - (default * function_3(v_10, E_10, parameter_3, T2, T, species_4, Km_10));
    der(species_12) = (default * function_3(v_2, parameter_6, parameter_3, T2, T, s9, Km_2)) + (default * function_3(v_3, parameter_6, parameter_3, T2, T, s10, Km_3)) + (default * function_3(v_4, parameter_6, parameter_3, T2, T, s11, Km_4)) + (default * function_3(v_9, E_9, parameter_3, T2, T, species_1, Km_9)) + (default * function_3(v_10, E_10, parameter_3, T2, T, species_4, Km_10)) + (default * function_3(parameter_8, E_12, parameter_3, T2, T, species_3, Km_12)) ;




end BIOMD411;
