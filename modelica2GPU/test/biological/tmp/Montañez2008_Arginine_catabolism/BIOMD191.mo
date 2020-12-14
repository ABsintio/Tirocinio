
model BIOMD191 "Montañez2008_Arginine_catabolism"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Vmaxarg_Arginase = 110.0;
    parameter Real Kmarg_Arginase = 1500.0;
    parameter Real Kioarg_Arginase = 1000.0;
    parameter Real Kmhat_Arginine_transport = 70.0;
    parameter Real Vmaxhat_Arginine_transport = 160.5;
    parameter Real Kmlat_Arginine_transport = 847.0;
    parameter Real Vmaxlat_Arginine_transport = 420.0;
    parameter Real Kiornhat_Arginine_transport = 360.0;
    parameter Real Kmhat_Ornithine_efflux = 70.0;
    parameter Real Kmlat_Ornithine_efflux = 847.0;
    parameter Real Vmaxefflhat_Ornithine_efflux = 160.5;
    parameter Real Vmaxeffllat_Ornithine_efflux = 420.0;
    parameter Real Kmeffllat_Ornithine_efflux = 847.0;
    parameter Real Kiornhat_Ornithine_efflux = 360.0;
    parameter Real Vmaxnos1_NOS = 1.33;
    parameter Real Kmnos1_NOS = 16.0;
    parameter Real Vmaxodc_ODC = 0.013;
    parameter Real Kmodc_ODC = 90.0;
    parameter Real extracellular = 1.0;
    parameter Real cytosol = 1.0;



    Real ARGex;
    Real ORN;
    Real ARGin;

initial equation
    ARGex = 330.0;
    ORN = 1.0;
    ARGin = 1.0;

equation

    der(ARGex) = 0.0;
    der(ORN) = (cytosol * (Vmaxarg_Arginase * ARGin / (Kmarg_Arginase * (1 + ORN / Kioarg_Arginase) + ARGin))) - (cytosol * ((Vmaxefflhat_Ornithine_efflux / (1 + ARGex / Kmhat_Ornithine_efflux)) * (ORN / (Kiornhat_Ornithine_efflux * (1 + ARGin / Kmhat_Ornithine_efflux) + ORN)) + (Vmaxeffllat_Ornithine_efflux / (1 + ARGex / Kmlat_Ornithine_efflux)) * (ORN / (Kmeffllat_Ornithine_efflux * (1 + ARGin / Kmlat_Ornithine_efflux) + ORN)))) - (cytosol * (Vmaxodc_ODC * ORN / (Kmodc_ODC + ORN)));
    der(ARGin) = (extracellular * ((ARGex / (Kmhat_Arginine_transport + ARGex)) * (Vmaxhat_Arginine_transport / (1 + ORN / Kiornhat_Arginine_transport + ARGin / Kmhat_Arginine_transport)) + (ARGex / (Kmlat_Arginine_transport + ARGex)) * (Vmaxlat_Arginine_transport / (1 + ORN / Kiornhat_Arginine_transport + ARGin / Kmlat_Arginine_transport)))) - (cytosol * (Vmaxarg_Arginase * ARGin / (Kmarg_Arginase * (1 + ORN / Kioarg_Arginase) + ARGin))) - (cytosol * (Vmaxnos1_NOS * ARGin / (Kmnos1_NOS + ARGin)));




end BIOMD191;
