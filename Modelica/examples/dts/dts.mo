class DTS "Discrete Time System"

parameter Real T = 1;

parameter Real A[2, 2] = [0.5, 0; 0, 0.2];

Real x[2];


initial equation

x = {1, 2};


equation

when sample(T, T) then

x = A*pre(x);

end when;


end DTS;

