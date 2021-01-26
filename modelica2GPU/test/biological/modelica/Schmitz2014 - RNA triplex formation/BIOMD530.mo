
model BIOMD530 "Schmitz2014 - RNA triplex formation"

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


    function function_1
        	input Real k_syn_mRNA;
	input Real species_7;
        output Real y;
    algorithm
        y :=  k_syn_mRNA * species_7;
    end function_1;


    function function_3
        	input Real k_syn_miRNA_2;
	input Real species_9;
        output Real y;
    algorithm
        y :=  k_syn_miRNA_2 * species_9;
    end function_3;


    function function_4
        	input Real k_syn_prot;
	input Real species_1;
        output Real y;
    algorithm
        y :=  k_syn_prot * species_1;
    end function_4;


    function function_2
        	input Real k_syn_miRNA_1;
	input Real species_8;
        output Real y;
    algorithm
        y :=  k_syn_miRNA_1 * species_8;
    end function_2;


    parameter Real k1_0 = 0.00045298;
    parameter Real k1_1 = 1.30837e-05;
    parameter Real k1_2 = 0.999534;
    parameter Real k_syn_mRNA_3 = 1.0;
    parameter Real k_syn_miRNA_1_4 = 1.0;
    parameter Real k_syn_miRNA_2_5 = 1.0;
    parameter Real k1_6 = 1.0;
    parameter Real k1_7 = 1.0;
    parameter Real k1_8 = 1.0;
    parameter Real k1_9 = 0.249955;
    parameter Real k1_10 = 0.241033;
    parameter Real k1_11 = 0.187796;
    parameter Real k1_12 = 1.0;
    parameter Real k1_13 = 1.0;
    parameter Real k1_14 = 1.0;
    parameter Real k_syn_prot_15 = 1.0;
    parameter Real k1_16 = 1.0;
    parameter Real compartment_1 = 1.0;



    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_5;
    Real species_6;
    Real species_7;
    Real species_8;
    Real species_9;
    Real species_10;

initial equation
    species_1 = 1.0;
    species_2 = 0.0;
    species_3 = 0.0;
    species_4 = 0.0;
    species_5 = 0.0;
    species_6 = 0.0;
    species_7 = 1.0;
    species_8 = 1.0;
    species_9 = 1.0;
    species_10 = 1.0;

equation

    der(species_1) = (compartment_1 * function_1(k_syn_mRNA_3, species_7)) + (compartment_1 * k1_9 * species_4) + (compartment_1 * k1_10 * species_5) + (compartment_1 * k1_11 * species_6) - (compartment_1 * k1_0 * species_1 * species_2) - (compartment_1 * k1_1 * species_1 * species_3) - (compartment_1 * k1_2 * species_1 * species_2 * species_3) - (compartment_1 * k1_6 * species_1);
    der(species_2) = (compartment_1 * function_2(k_syn_miRNA_1_4, species_8)) + (compartment_1 * k1_9 * species_4) + (compartment_1 * k1_11 * species_6) - (compartment_1 * k1_0 * species_1 * species_2) - (compartment_1 * k1_2 * species_1 * species_2 * species_3) - (compartment_1 * k1_7 * species_2);
    der(species_3) = (compartment_1 * function_3(k_syn_miRNA_2_5, species_9)) + (compartment_1 * k1_10 * species_5) + (compartment_1 * k1_11 * species_6) - (compartment_1 * k1_1 * species_1 * species_3) - (compartment_1 * k1_2 * species_1 * species_2 * species_3) - (compartment_1 * k1_8 * species_3);
    der(species_4) = (compartment_1 * k1_0 * species_1 * species_2) - (compartment_1 * k1_9 * species_4) - (compartment_1 * k1_12 * species_4);
    der(species_5) = (compartment_1 * k1_1 * species_1 * species_3) - (compartment_1 * k1_10 * species_5) - (compartment_1 * k1_13 * species_5);
    der(species_6) = (compartment_1 * k1_2 * species_1 * species_2 * species_3) - (compartment_1 * k1_11 * species_6) - (compartment_1 * k1_14 * species_6);
    der(species_7) = 0.0;
    der(species_8) = 0.0;
    der(species_9) = 0.0;
    der(species_10) = (compartment_1 * function_4(k_syn_prot_15, species_1)) - (compartment_1 * k1_16 * species_10);




end BIOMD530;
