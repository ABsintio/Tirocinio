model BIOMD053 "A quantitative model of the generation of N(epsilon)-(carboxymethyl)lysine in the Maillard reaction between collagen and glucose"
    
    parameter Real p1 = 0.115;
    parameter Real k1a = 0.090;
    parameter Real k1b = 0.36;
    parameter Real p2 = 0.750;
    parameter Real k2a = 0.033;
    parameter Real k2b = 0.001;
    parameter Real ox = 1.000;
    parameter Real p3 = 1.000;
    parameter Real k3 = 7.92e-7;
    parameter Real k4 = 8.7e-5;
    parameter Real p4 = 1.000;
    parameter Real p5 = 1.000;
    parameter Real k5 = 0.019;
    parameter Real k5b = 0.002;
    parameter Real p6 = 2.700;
    parameter Real p7 = 60.000;

    Real Fraction_Amadori(start=0.0);
    Real Fraction_CML(start=0.0);

    Real Glucose;
    Real Lysine;
    Real Schiff;
    Real Amadori;
    Real Glyoxal;
    Real CML;

initial equation
    Glucose = 0.25;
    Lysine = 0.0034;
    Schiff = 0.0;
    Amadori = 0.0;
    Glyoxal = 0.0;
    CML = 0.0;

equation
    Fraction_Amadori = Amadori/0.0034;
    Fraction_CML = CML/0.0034;
    der(Glucose) = k1b*Schiff - p1*k1a*Glucose*Lysine - ox*p3*k3*(Glucose/0.25)^0.36;
    der(Lysine) = k1b*Schiff + 0.05*ox*p7*k3*(Schiff/0.25)^0.36 - p1*k1a*Glucose*Lysine - ox*p5*k5*Glyoxal*Lysine;
    der(Schiff) = p1*k1a*Glucose*Lysine + p2*k2b*Amadori - k1b*Schiff - p2*k2a*Schiff - ox*p6*k3*(Schiff/0.25)^0.36 - ox*p7*k3*(Schiff/0.25)^0.36;
    der(Amadori) = p2*k2a*Schiff - p2*k2b*Amadori - ox*p4*k4*Amadori;
    der(Glyoxal) = ox*p3*k3*(Glucose/0.25)^0.36 + 0.005*ox*p7*k3*(Schiff/0.25)^0.36 - ox*p5*k5*Glyoxal*Lysine - k5b*Glyoxal;
    der(CML) = ox*p4*k4*Amadori + ox*p5*k5*Glyoxal*Lysine + ox*p6*k3*(Schiff/0.25)^0.36;

end BIOMD053;