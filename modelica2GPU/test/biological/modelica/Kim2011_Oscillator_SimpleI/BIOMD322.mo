
model BIOMD322 "Kim2011_Oscillator_SimpleI"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function function_2
        	input Real substrate;
	input Real Shalve;
	input Real V;
	input Real h;
        output Real y;
    algorithm
        y :=  V * substrate^h / (Shalve^h + substrate^h);
    end function_2;


    function function_1
        	input Real V;
	input Real Shalve;
	input Real h;
	input Real substrate;
        output Real y;
    algorithm
        y :=  V / (Shalve^h + substrate^h);
    end function_1;


    parameter Real parameter_1 = 0.57;
    parameter Real parameter_2 = 2.5;
    parameter Real parameter_3 = 1.0;
    parameter Real parameter_4 = 6.5;
    parameter Real parameter_5 = 6.5;
    parameter Real parameter_6 = 1.5;
    parameter Real k1_0 = 1.0;
    parameter Real k1_1 = 1.0;
    parameter Real k1_2 = 1.0;
    parameter Real k1_3 = 1.0;
    parameter Real V_6 = 1.0;
    parameter Real Shalve_6 = 1.0;
    parameter Real Shalve_7 = 1.0;
    parameter Real V_7 = 1.0;
    parameter Real compartment_1 = 1.0;



    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;

initial equation
    species_1 = 0.1;
    species_2 = 0.1;
    species_3 = 0.1;
    species_4 = 0.1;

equation

    der(species_1) = (compartment_1 * parameter_1 * species_3) + (compartment_1 * function_2(species_1, Shalve_7, V_7, parameter_5)) + (compartment_1 * parameter_6 * species_4) - (compartment_1 * k1_0 * species_1) - (compartment_1 * function_2(species_1, Shalve_7, V_7, parameter_5));
    der(species_2) = (compartment_1 * parameter_2 * species_4) + (compartment_1 * function_1(V_6, Shalve_6, parameter_4, species_2)) - (compartment_1 * k1_1 * species_2) - (compartment_1 * function_1(V_6, Shalve_6, parameter_4, species_2));
    der(species_3) = (compartment_1 * parameter_1 * species_3) + (compartment_1 * function_1(V_6, Shalve_6, parameter_4, species_2)) - (compartment_1 * k1_2 * species_3) - (compartment_1 * parameter_1 * species_3);
    der(species_4) = (compartment_1 * parameter_2 * species_4) + (compartment_1 * function_2(species_1, Shalve_7, V_7, parameter_5)) + (compartment_1 * parameter_6 * species_4) - (compartment_1 * k1_3 * species_4) - (compartment_1 * parameter_2 * species_4) - (compartment_1 * parameter_6 * species_4);




end BIOMD322;
