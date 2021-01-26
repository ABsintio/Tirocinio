
model BIOMD527 "Kaiser2014 - Salmonella persistence after ciprofloxacin treatment"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x_1;
        input Boolean condition_1;
        input Real x_2;
        input Boolean condition_2;
        input Real x_3;
        input Boolean condition_3;
        input Real x_4;
        input Boolean condition_4;
        output Real z;
        algorithm
             if condition_1 then
                 z := x_1;
             elseif condition_2 then
                 z := x_2;
             elseif condition_3 then
                 z := x_3;
             elseif condition_4 then
                 z := x_4;
             end if;
//             z := if condition_1 then x_1 elseif condition_2 then x_2 elseif condition_3 then x_3 elseif condition_4 then x_4 else 0;
    end piecewise;

    
    function geq
        input Real x;
        input Real y;
        output Boolean z;
        algorithm
            z := (x >= y);
    end geq;
    
    function gt
        input Real x;
        input Real y;
        output Boolean z;
        algorithm
            z := (x > y);
    end gt;
    
    function leq
        input Real x;
        input Real y;
        output Boolean z;
        algorithm
            z := (x <= y);
    end leq;
    


    parameter Real mu1 = 297.78957;
    parameter Real r1 = 2.8195198;
    parameter Real c1 = 0.0;
    parameter Real t1 = 1.0;
    parameter Real mu3 = 0.0;
    parameter Real r3 = 4.5867007;
    parameter Real c3 = 5.042901;
    parameter Real t3 = 3.0;
    parameter Real mu5 = 0.0;
    parameter Real r5 = 1.8812956;
    parameter Real c5 = 2.497735;
    parameter Real t5 = 5.0;
    parameter Real mu10 = 0.0;
    parameter Real r10 = 0.3757764;
    parameter Real c10 = 2.43e-07;
    parameter Real t10 = 10.0;
    parameter Real LN = 1.0;

    Real L;

initial equation
    L = 0.0;
    
equation
    
    der(L) =piecewise(mu1 + (r1 - c1) * L, geq(time, 0) and leq(time, t1), mu3 + (r3 - c3) * L, (gt(time, t1) and leq(time, t3)), mu5 + (r5 - c5) * L, (gt(time, t3) and leq(time, t5)), mu10 + (r10 - c10) * L, (gt(time, t5) and leq(time, t10)));




end BIOMD527;
