
model BIOMD196 "Srividhya2006_CellCycle"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function Mass_Action_0
        	input Real k1;
        output Real y;
    algorithm
        y =  k1;
    end Mass_Action_0;


    function Mass_Action_2
        	input Real k1;
	input Real S1;
	input Real S2;
        output Real y;
    algorithm
        y =  k1 * S1 * S2;
    end Mass_Action_2;


    function Mass_Action_1
        	input Real k1;
	input Real S1;
        output Real y;
    algorithm
        y =  k1 * S1;
    end Mass_Action_1;


    parameter Real vf = 0.215;
    parameter Real kf = 1.0;
    parameter Real kc = 0.05;
    parameter Real Bc = 3.5;
    parameter Real kd = 0.2;
    parameter Real B2 = 3.3;
    parameter Real vM1 = 0.7;
    parameter Real a1 = 1.2;
    parameter Real Ka = 0.5;
    parameter Real j1 = 0.01;
    parameter Real B1 = 5.0;
    parameter Real vM1_2 = 0.55;
    parameter Real j1_2 = 0.01;
    parameter Real vM2 = 0.41;
    parameter Real a2 = 1.0;
    parameter Real j2 = 0.01;
    parameter Real vM2_2 = 1.0;
    parameter Real j3 = 0.01;
    parameter Real j2_2 = 0.01;
    parameter Real vM3 = 1.0;
    parameter Real j3_2 = 0.01;
    parameter Real vM3_2 = 1.0;
    parameter Real B3 = 1.0;
    parameter Real vM4 = 0.7;
    parameter Real a4 = 2.0;
    parameter Real tau = 5.0;
    parameter Real j4 = 0.01;
    parameter Real vM4_2 = 1.0;
    parameter Real j4_2 = 0.01;
    parameter Real mu = 0.01;
    parameter Real a = 10.0;
    parameter Real totcdc25 = 1.0;
    parameter Real totwee1 = 1.0;
    parameter Real totAPC = 1.0;
    parameter Real c = 1.1;
    parameter Real cell = 1.0;



    Real x1;
    Real x2;
    Real x3;
    Real x4;
    Real x5;
    Real x6;
    Real m;
    Real y4;
    Real y5;
    Real y6;
    Real Pre_MPF;

initial equation
    x1 = 0.01;
    x3 = 0.1;
    x5 = 0.1;
    x6 = 0.1;
    m = 0.473;
    y4 = 0.9;
    Pre_MPF = 0.2;

equation
    x4 = totcdc25 - y4;
    y5 = totwee1 - x5;
    y6 = totAPC - x6;
    x2 = c - Pre_MPF - x3;
    der(x1) = (Mass_Action_0(vf)) - (Mass_Action_2(kf, x1, x2)) - (x1 * (kc + Bc * x6));
    der(x3) = (vM1 * (1 + a1 * x4 / (Ka + x4)) * (Pre_MPF / (j1 + Pre_MPF))) - (kd * (1 + B2 * x6) * x3) - (vM1_2 * (1 + B1 * x5 / (Ka + x5)) * (x3 / (j1_2 + x3)));
    der(x5) = (vM3 * ((1 - x5) / (j3_2 + 1 - x5))) - (vM3_2 * (1 + B3 * m * x3 / (Ka + m * x3)) * (x5 / (j3 + x5)));
    der(x6) = (vM4 * ((1 + a4 * m * delay(x3, tau) / (Ka + m * delay(x3, tau))) * (1 - x6) / (j4 + (1 - x6)))) - (vM4_2 * x6 / (j4_2 + x6));
    der(m) = (mu * m * (1 - m / a)) ;
    der(y4) = (vM2_2 * x4 / (j2_2 + x4)) - (vM2 * (1 + a2 * m * x3 / (Ka + m * x3)) * ((1 - x4) / (j2 + 1 - x4)));
    der(Pre_MPF) = (Mass_Action_2(kf, x1, x2)) + (vM1_2 * (1 + B1 * x5 / (Ka + x5)) * (x3 / (j1_2 + x3))) - (vM1 * (1 + a1 * x4 / (Ka + x4)) * (Pre_MPF / (j1 + Pre_MPF)));


    when x3 < 0.2 then
        reinit(m,m / 2);
    end when;

end BIOMD196;
