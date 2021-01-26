
model BIOMD552 "Ehrenstein2000 - Positive-Feedback model for the loss of acetylcholine in Alzheimer's disease"

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


    function Constant_flux__irreversible
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end Constant_flux__irreversible;


    function Loss_of_intracellular_choline_0
        	input Real k1;
	input Real a;
	input Real b;
        output Real y;
    algorithm
        y :=  k1 * a * b;
    end Loss_of_intracellular_choline_0;


    function Effect_of_extracellular_ACh_0
        	input Real k3;
	input Real a;
        output Real y;
    algorithm
        y :=  k3 * a;
    end Effect_of_extracellular_ACh_0;


    function Decrease_in_the_extracellular_concentration_of_beta_amyloid_0
        	input Real k4;
	input Real b;
        output Real y;
    algorithm
        y :=  k4 * b;
    end Decrease_in_the_extracellular_concentration_of_beta_amyloid_0;


    parameter Real k1 = 0.007;
    parameter Real k2 = 0.33;
    parameter Real k3 = 0.0042;
    parameter Real k4 = 0.01;
    parameter Real Brain = 1.0;



    Real a;
    Real b;
    Real aRel;

initial equation
    a = 50.0;
    b = 0.0;

equation
    aRel = a / 50;
    der(a) =  - (Brain * Loss_of_intracellular_choline_0(k1, a, b));
    der(b) = (Brain * Constant_flux__irreversible(k2)) - (Brain * Effect_of_extracellular_ACh_0(k3, a)) - (Brain * Decrease_in_the_extracellular_concentration_of_beta_amyloid_0(k4, b));




end BIOMD552;
