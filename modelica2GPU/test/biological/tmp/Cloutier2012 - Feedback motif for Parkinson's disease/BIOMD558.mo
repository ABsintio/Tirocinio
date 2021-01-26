
model BIOMD558 "Cloutier2012 - Feedback motif for Parkinson's disease"

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


    function V2_4
        	input Real k;
	input Real S;
	input Real Sx;
        output Real y;
    algorithm
        y :=  k * S * Sx;
    end V2_4;


    function V3
        	input Real k;
	input Real S;
	input Real Sx;
        output Real y;
    algorithm
        y :=  k * S * Sx;
    end V3;


    function V1
        	input Real k1;
	input Real Sx;
	input Real d;
	input Real S;
	input Real k2;
        output Real y;
    algorithm
        y :=  k1 * (1 + Sx + d * ((S / k2)^4 / (1 + (S / k2)^4)));
    end V1;


    parameter Real k1 = 17280.0;
    parameter Real k2 = 17280.0;
    parameter Real k3 = 0.168;
    parameter Real k4 = 0.168;
    parameter Real dalphasyn = 15.0;
    parameter Real kalphasyn = 8.5;
    parameter Real S2_4 = 1.0;
    parameter Real Neuron = 1.0;

    Real S1(start=0.0);

    Real ROS;
    Real alpha_syn;

initial equation
    ROS = 1.0;
    alpha_syn = 1.0;

equation
    S1 = piecewise(2.6, and(gt(time, 10), lt(time, 150)), 0);
    der(ROS) = (Neuron * V1(k1, S1, dalphasyn, alpha_syn, kalphasyn)) - (Neuron * V2_4(k2, ROS, S2_4));
    der(alpha_syn) = (Neuron * V3(k3, ROS, S2_4)) - (Neuron * V2_4(k4, alpha_syn, S2_4));




end BIOMD558;
