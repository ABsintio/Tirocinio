model System
    
    Real x;
    
    Real v1;
    Real v2;
    
    parameter Real alpha = 0.1;
    parameter Real beta  = 10.0;
    
initial equation
    x = 0.1;

equation
    v1 = alpha*sin(x)/(v2*beta+cos(x^2));
    v2 = x*beta;
    
    der(x) = v1*v2;
    
end System;
