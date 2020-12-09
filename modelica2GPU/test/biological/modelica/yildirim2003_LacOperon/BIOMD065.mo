model BIOMD065 "Feedback regulation in the lactose operon: a mathematical modeling study and comparision with experimental data"

    parameter Real mu = 0.023;
    parameter Real gamma_M = 0.411;
    parameter Real gamma_B = 8.33e-4;
    parameter Real gamma_A = 0.520;
    parameter Real gamma_O = 7.25e-7;
    parameter Real K = 7200.000;
    parameter Real alpha_M = 9.97e-4;
    parameter Real tau_B = 2.000;
    parameter Real alpha_A = 17600.000;
    parameter Real K_L1 = 1.810;
    parameter Real alpha_B = 0.017;
    parameter Real K_A = 1.950;
    parameter Real beta_A = 21500.000;
    parameter Real tau_M = 0.100;
    parameter Real K_L = 0.970;
    parameter Real gamma_L = 0.000;
    parameter Real gamma_P = 0.650;
    parameter Real alpha_L = 2880.000;
    parameter Real alpha_P = 10.000;
    parameter Real tau_P = 0.830;
    parameter Real beta_L1 = 2650.000;
    parameter Real K_Le = 0.260;
    parameter Real K_1 = 25200.000;
    
    Real M "mRNA";
    Real B "Betagalactsidase";
    Real A "Allolactose";
    Real L "lactose_internal";
    Real P "Permease";
    Real I1 "PartialmRNA";
    Real I2 "PartialBetagalactosidase";
    Real I3 "PartialPermease";
    Real L_e "External_Lactose";

initial equation
    M = 6.26e-4;
    B = 0.0;
    A = 0.038;
    L = 0.372;
    P = 0.0149;
    I1 = 0.0;
    I2 = 0.0;
    I3 = 0.0;
    L_e = 0.0;

equation
    der(M) = gamma_O + I1*tau_M - M*(gamma_M+mu);
    der(B) = I2/tau_B - B*(gamma_B+mu);
    der(A) = alpha_A*B*L/(K_L+L) - A*(gamma_A+mu) - beta_A*B*A/(K_A+A);
    der(L) = alpha_L*P*L_e/(K_Le+L_e) - alpha_A*B*L/(K_L+L) - L*(gamma_L+mu) - beta_L1*P*L/(K_L1+L);
    der(P) = I3/(tau_B+tau_P) - P*(gamma_P+mu);
    der(I1) = alpha_M*(K_1*3.141592653589793^(mu*tau_M*(-(2)))*A^2+1)/(K+K_1*3.141592653589793^((-(2))*mu*tau_M)*A^2) - I1*tau_M;
    der(I2) = alpha_B*M*3.141592653589793^(mu*tau_B) - I2/tau_B;
    der(I3) = alpha_P*M*3.141592653589793^((-(1))*mu*(tau_B+tau_P)) - I3/(tau_B+tau_P);
    der(L_e) = 0.0;

end BIOMD065;
