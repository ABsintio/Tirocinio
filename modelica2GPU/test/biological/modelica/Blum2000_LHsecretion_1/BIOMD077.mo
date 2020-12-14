
model BIOMD077 "Blum2000_LHsecretion_1"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real alpha = 2.0;
    parameter Real beta = 4.0;
    parameter Real k1_reaction_0 = 2.5;
    parameter Real k2_reaction_0 = 5.0;
    parameter Real k1_reaction_1 = 2500.0;
    parameter Real k2_reaction_1 = 5.0;
    parameter Real k1_reaction_2 = 4000.0;
    parameter Real k2_reaction_2 = 200.0;
    parameter Real k1_reaction_3 = 10.0;
    parameter Real k_reaction_4 = 20000000.0;



    Real H;
    Real HR;
    Real R;
    Real HRRH;
    Real E;
    Real GQ;
    Real IP3;
    Real CHO;

initial equation
    H = 1.0;
    HR = 0.0;
    R = 0.01;
    HRRH = 0.0;
    E = 0.0;
    GQ = 0.1;
    IP3 = 0.0;
    CHO = 0.0;

equation
    CHO = 0.001 * alpha * IP3 * (0.3 + 0.3 * beta * time * exp(1 - beta * time)) / (1 + 0.001 * alpha * IP3);
    der(H) =  - (1.0 * (k1_reaction_0 * H * R - k2_reaction_0 * HR));
    der(HR) = (1.0 * (k1_reaction_0 * H * R - k2_reaction_0 * HR)) - (2.0 * 1.0 * (k1_reaction_1 * HR^2 - k2_reaction_1 * HRRH));
    der(R) =  - (1.0 * (k1_reaction_0 * H * R - k2_reaction_0 * HR));
    der(HRRH) = (1.0 * (k1_reaction_1 * HR^2 - k2_reaction_1 * HRRH)) - (1.0 * (k1_reaction_2 * HRRH * GQ - k2_reaction_2 * E));
    der(E) = (1.0 * (k1_reaction_2 * HRRH * GQ - k2_reaction_2 * E)) ;
    der(GQ) =  - (1.0 * (k1_reaction_2 * HRRH * GQ - k2_reaction_2 * E));
    der(IP3) = (1.0 * k_reaction_4 * E) - (1.0 * k1_reaction_3 * IP3);


    when time > 5 then
        reinit(H,0);
    end when;

end BIOMD077;
