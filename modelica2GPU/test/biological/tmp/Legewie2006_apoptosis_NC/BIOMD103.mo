
model BIOMD103 "Legewie2006_apoptosis_NC"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 0.002;
    parameter Real kb1 = 0.1;
    parameter Real k2 = 5e-06;
    parameter Real k3 = 0.00035;
    parameter Real k9 = 0.001;
    parameter Real k9b = 0.001;
    parameter Real k10 = 0.001;
    parameter Real k10b = 0.001;
    parameter Real k13 = 0.002;
    parameter Real k13b = 0.1;
    parameter Real k15 = 0.003;
    parameter Real k15b = 0.001;
    parameter Real k4 = 0.0002;
    parameter Real k5 = 0.0002;
    parameter Real k8 = 0.002;
    parameter Real k8b = 0.1;
    parameter Real k11 = 0.001;
    parameter Real k11b = 0.001;
    parameter Real k12 = 0.001;
    parameter Real k12b = 0.001;
    parameter Real k14 = 0.002;
    parameter Real k14b = 0.1;
    parameter Real k6 = 5e-05;
    parameter Real k7 = 0.0035;
    parameter Real k16 = 0.001;
    parameter Real k16prod = 0.02;
    parameter Real k17 = 0.001;
    parameter Real k17prod = 0.02;
    parameter Real k18 = 0.001;
    parameter Real k18prod = 0.04;
    parameter Real k19 = 0.001;
    parameter Real k20 = 0.001;
    parameter Real k21 = 0.001;
    parameter Real k22 = 0.001;
    parameter Real k22prod = 0.2;
    parameter Real k23 = 0.001;
    parameter Real k24 = 0.001;
    parameter Real k25 = 0.001;
    parameter Real k26 = 0.001;
    parameter Real k27 = 0.001;
    parameter Real k28 = 0.001;
    parameter Real k29 = 0.001;
    parameter Real k30 = 0.001;
    parameter Real k31 = 0.001;
    parameter Real k32 = 0.001;
    parameter Real a = 1.0;
    parameter Real d = 1.0;
    parameter Real k41 = 1.0;
    parameter Real k42 = 1.0;
    parameter Real cytosol = 1.0;



    Real A;
    Real C9;
    Real C9X;
    Real X;
    Real AC9X;
    Real AC9;
    Real C3;
    Real C3_star;
    Real C3_starX;
    Real C9_starX;
    Real C9_star;
    Real AC9_star;
    Real AC9_starX;
    Real C9X_C3_star;
    Real AC9X_C3_star;
    Real C9_starX_C3_star;
    Real AC9_starX_C3_star;

initial equation
    A = 20.0;
    C9 = 20.0;
    C9X = 0.0;
    X = 40.0;
    AC9X = 0.0;
    AC9 = 0.0;
    C3 = 200.0;
    C3_star = 0.0;
    C3_starX = 0.0;
    C9_starX = 0.0;
    C9_star = 0.0;
    AC9_star = 0.0;
    AC9_starX = 0.0;
    C9X_C3_star = 0.0;
    AC9X_C3_star = 0.0;
    C9_starX_C3_star = 0.0;
    AC9_starX_C3_star = 0.0;

equation

    der(A) = (cytosol * (k16prod - k16 * A)) - (cytosol * (k1 * A * C9 - kb1 * AC9)) - (cytosol * (k13 * C9X * A - k13b * AC9X)) - (cytosol * (k8 * C9_star * A - k8b * AC9_star)) - (cytosol * (k14 * C9_starX * A - k14b * AC9_starX)) - (cytosol * (a * k1 * C9X_C3_star * A - d * kb1 * AC9X_C3_star)) - (cytosol * (a * k1 * C9_starX_C3_star * A - d * kb1 * AC9_starX_C3_star));
    der(C9) = (cytosol * k2 * C3 * C9) + (cytosol * (k17prod - k17 * C9)) - (cytosol * (k1 * A * C9 - kb1 * AC9)) - (cytosol * k2 * C3 * C9) - (cytosol * (k9 * C9 * X - k9b * C9X)) - (cytosol * k4 * C9 * C3_star) - (cytosol * (a * k9 * C9 * C3_starX - d * k9b * C9X_C3_star));
    der(C9X) = (cytosol * (k9 * C9 * X - k9b * C9X)) - (cytosol * (k13 * C9X * A - k13b * AC9X)) - (cytosol * k19 * C9X) - (cytosol * (a * k15 * C3_star * C9X - d * k15b * C9X_C3_star));
    der(X) = (cytosol * (k18prod - k18 * X)) - (cytosol * (k9 * C9 * X - k9b * C9X)) - (cytosol * (k10 * AC9 * X - k10b * AC9X)) - (cytosol * (k15 * C3_star * X - k15b * C3_starX)) - (cytosol * (k11 * C9_star * X - k11b * C9_starX)) - (cytosol * (k12 * AC9_star * X - k12b * AC9_starX));
    der(AC9X) = (cytosol * (k10 * AC9 * X - k10b * AC9X)) + (cytosol * (k13 * C9X * A - k13b * AC9X)) - (cytosol * k20 * AC9X) - (cytosol * (a * k15 * C3_star * AC9X - d * k15b * AC9X_C3_star));
    der(AC9) = (cytosol * (k1 * A * C9 - kb1 * AC9)) + (cytosol * k3 * C3 * AC9) - (cytosol * k3 * C3 * AC9) - (cytosol * (k10 * AC9 * X - k10b * AC9X)) - (cytosol * k5 * AC9 * C3_star) - (cytosol * k21 * AC9) - (cytosol * (a * k9 * AC9 * C3_starX - d * k9b * AC9X_C3_star));
    der(C3) = (cytosol * (k22prod - k22 * C3)) - (cytosol * k2 * C3 * C9) - (cytosol * k3 * C3 * AC9) - (cytosol * k6 * C3 * C9_star) - (cytosol * k7 * C3 * AC9_star);
    der(C3_star) = (cytosol * k2 * C3 * C9) + (cytosol * k3 * C3 * AC9) + (cytosol * k4 * C9 * C3_star) + (cytosol * k5 * AC9 * C3_star) + (cytosol * k6 * C3 * C9_star) + (cytosol * k7 * C3 * AC9_star) - (cytosol * (k15 * C3_star * X - k15b * C3_starX)) - (cytosol * k4 * C9 * C3_star) - (cytosol * k5 * AC9 * C3_star) - (cytosol * k23 * C3_star) - (cytosol * (a * k15 * C3_star * C9X - d * k15b * C9X_C3_star)) - (cytosol * (a * k15 * C3_star * AC9X - d * k15b * AC9X_C3_star)) - (cytosol * (a * k15 * C3_star * C9_starX - d * k15b * C9_starX_C3_star)) - (cytosol * (a * k15 * C3_star * AC9_starX - d * k15b * AC9_starX_C3_star));
    der(C3_starX) = (cytosol * (k15 * C3_star * X - k15b * C3_starX)) - (cytosol * k24 * C3_starX) - (cytosol * (a * k9 * C9 * C3_starX - d * k9b * C9X_C3_star)) - (cytosol * (a * k9 * AC9 * C3_starX - d * k9b * AC9X_C3_star)) - (cytosol * (a * k9 * C9_star * C3_starX - d * k9b * C9_starX_C3_star)) - (cytosol * (a * k9 * AC9_star * C3_starX - d * k9b * AC9_starX_C3_star));
    der(C9_starX) = (cytosol * (k11 * C9_star * X - k11b * C9_starX)) - (cytosol * (k14 * C9_starX * A - k14b * AC9_starX)) - (cytosol * k25 * C9_starX) - (cytosol * (a * k15 * C3_star * C9_starX - d * k15b * C9_starX_C3_star));
    der(C9_star) = (cytosol * k4 * C9 * C3_star) + (cytosol * k6 * C3 * C9_star) - (cytosol * (k8 * C9_star * A - k8b * AC9_star)) - (cytosol * (k11 * C9_star * X - k11b * C9_starX)) - (cytosol * k6 * C3 * C9_star) - (cytosol * k26 * C9_star) - (cytosol * (a * k9 * C9_star * C3_starX - d * k9b * C9_starX_C3_star));
    der(AC9_star) = (cytosol * k5 * AC9 * C3_star) + (cytosol * (k8 * C9_star * A - k8b * AC9_star)) + (cytosol * k7 * C3 * AC9_star) - (cytosol * (k12 * AC9_star * X - k12b * AC9_starX)) - (cytosol * k7 * C3 * AC9_star) - (cytosol * k27 * AC9_star) - (cytosol * (a * k9 * AC9_star * C3_starX - d * k9b * AC9_starX_C3_star));
    der(AC9_starX) = (cytosol * (k12 * AC9_star * X - k12b * AC9_starX)) + (cytosol * (k14 * C9_starX * A - k14b * AC9_starX)) - (cytosol * k28 * AC9_starX) - (cytosol * (a * k15 * C3_star * AC9_starX - d * k15b * AC9_starX_C3_star));
    der(C9X_C3_star) = (cytosol * (a * k15 * C3_star * C9X - d * k15b * C9X_C3_star)) + (cytosol * (a * k9 * C9 * C3_starX - d * k9b * C9X_C3_star)) - (cytosol * k29 * C9X_C3_star) - (cytosol * (a * k1 * C9X_C3_star * A - d * kb1 * AC9X_C3_star));
    der(AC9X_C3_star) = (cytosol * (a * k15 * C3_star * AC9X - d * k15b * AC9X_C3_star)) + (cytosol * (a * k9 * AC9 * C3_starX - d * k9b * AC9X_C3_star)) + (cytosol * (a * k1 * C9X_C3_star * A - d * kb1 * AC9X_C3_star)) ;
    der(C9_starX_C3_star) = (cytosol * (a * k15 * C3_star * C9_starX - d * k15b * C9_starX_C3_star)) + (cytosol * (a * k9 * C9_star * C3_starX - d * k9b * C9_starX_C3_star)) - (cytosol * k31 * C9_starX_C3_star) - (cytosol * (a * k1 * C9_starX_C3_star * A - d * kb1 * AC9_starX_C3_star));
    der(AC9_starX_C3_star) = (cytosol * (a * k15 * C3_star * AC9_starX - d * k15b * AC9_starX_C3_star)) + (cytosol * (a * k9 * AC9_star * C3_starX - d * k9b * AC9_starX_C3_star)) + (cytosol * (a * k1 * C9_starX_C3_star * A - d * kb1 * AC9_starX_C3_star)) - (cytosol * k30 * AC9_starX_C3_star) - (cytosol * k32 * AC9_starX_C3_star);




end BIOMD103;
