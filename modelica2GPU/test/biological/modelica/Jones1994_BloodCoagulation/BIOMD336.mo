
model BIOMD336 "Jones1994_BloodCoagulation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function function_4_VIIIa_IXa_degradation_2
        	input Real I;
	input Real VIIIa_IXa;
	input Real compartment_1;
        output Real y;
    algorithm
        y :=  (compartment_1 * abs(I - VIIIa_IXa) + (I - VIIIa_IXa)) / compartment_1;
    end function_4_VIIIa_IXa_degradation_2;


    parameter Real k1 = 20000000.0;
    parameter Real k2 = 20000000.0;
    parameter Real k3 = 10000000.0;
    parameter Real k4 = 20000000.0;
    parameter Real k5 = 10000000.0;
    parameter Real k6 = 100000000.0;
    parameter Real k7 = 10000000.0;
    parameter Real k8 = 400000000.0;
    parameter Real k9 = 0.005;
    parameter Real k10 = 0.4;
    parameter Real k11 = 0.3;
    parameter Real k12 = 1.15;
    parameter Real k13 = 8.2;
    parameter Real k14 = 32.0;
    parameter Real k15 = 100000.0;
    parameter Real k16 = 24.0;
    parameter Real k17 = 44.0;
    parameter Real k18 = 0.001;
    parameter Real k19 = 70.0;
    parameter Real k20 = 0.02;
    parameter Real compartment_1 = 1.0;

    Real I(start=0.0);
    Real IIa_plus_1_2mIIa(start=0.0);

    Real IX;
    Real IX_TF_VIIa;
    Real TF_VIIa;
    Real IXa;
    Real X;
    Real X_TF_VIIa;
    Real Xa;
    Real VIIIa_IXa;
    Real X_VIIIa_IXa;
    Real V;
    Real Va;
    Real VIII;
    Real VIIIa;
    Real IIa;
    Real II;
    Real II_Va_Xa;
    Real Va_Xa;
    Real mIIa;

initial equation
    IX = 9e-08;
    IX_TF_VIIa = 0.0;
    TF_VIIa = 5e-09;
    IXa = 0.0;
    X = 1.7e-07;
    X_TF_VIIa = 0.0;
    Xa = 0.0;
    VIIIa_IXa = 0.0;
    X_VIIIa_IXa = 0.0;
    V = 2e-08;
    Va = 0.0;
    VIII = 7e-10;
    VIIIa = 0.0;
    IIa = 0.0;
    II = 1.4e-06;
    II_Va_Xa = 0.0;
    Va_Xa = 0.0;
    mIIa = 0.0;

equation
    IIa_plus_1_2mIIa = IIa + 1.2 * mIIa;
    der(I) = (-abs(I - VIIIa_IXa) + (I - VIIIa_IXa)) * k20;
    der(IX) =  - (compartment_1 * (k6 * IX * TF_VIIa - k16 * IX_TF_VIIa)) - (compartment_1 * k15 * IX * Xa) - (compartment_1 * k15 * IX * Va_Xa);
    der(IX_TF_VIIa) = (compartment_1 * (k6 * IX * TF_VIIa - k16 * IX_TF_VIIa)) - (compartment_1 * k11 * IX_TF_VIIa);
    der(TF_VIIa) = (compartment_1 * k11 * IX_TF_VIIa) + (compartment_1 * k12 * X_TF_VIIa) - (compartment_1 * (k6 * IX * TF_VIIa - k16 * IX_TF_VIIa)) - (compartment_1 * (k6 * X * TF_VIIa - k17 * X_TF_VIIa));
    der(IXa) = (compartment_1 * k11 * IX_TF_VIIa) + (compartment_1 * k15 * IX * Xa) + (compartment_1 * k15 * IX * Va_Xa) - (compartment_1 * (k7 * VIIIa * IXa - k9 * VIIIa_IXa));
    der(X) =  - (compartment_1 * (k6 * X * TF_VIIa - k17 * X_TF_VIIa)) - (compartment_1 * (k6 * X * VIIIa_IXa - k18 * X_VIIIa_IXa));
    der(X_TF_VIIa) = (compartment_1 * (k6 * X * TF_VIIa - k17 * X_TF_VIIa)) - (compartment_1 * k12 * X_TF_VIIa);
    der(Xa) = (compartment_1 * k12 * X_TF_VIIa) + (compartment_1 * k13 * X_VIIIa_IXa) + (compartment_1 * k15 * IX * Xa) + (compartment_1 * k1 * V * Xa) + (compartment_1 * k3 * VIII * Xa) - (compartment_1 * k15 * IX * Xa) - (compartment_1 * k1 * V * Xa) - (compartment_1 * k3 * VIII * Xa) - (compartment_1 * (k6 * Va * Xa - k10 * Va_Xa));
    der(VIIIa_IXa) = (compartment_1 * k13 * X_VIIIa_IXa) + (compartment_1 * (k7 * VIIIa * IXa - k9 * VIIIa_IXa)) - (compartment_1 * (k6 * X * VIIIa_IXa - k18 * X_VIIIa_IXa)) - (compartment_1 * function_4_VIIIa_IXa_degradation_2(I, VIIIa_IXa, compartment_1));
    der(X_VIIIa_IXa) = (compartment_1 * (k6 * X * VIIIa_IXa - k18 * X_VIIIa_IXa)) - (compartment_1 * k13 * X_VIIIa_IXa);
    der(V) =  - (compartment_1 * k1 * V * Xa) - (compartment_1 * k2 * V * IIa) - (compartment_1 * k2 * V * mIIa);
    der(Va) = (compartment_1 * k1 * V * Xa) + (compartment_1 * k2 * V * IIa) + (compartment_1 * k2 * V * mIIa) - (compartment_1 * (k6 * Va * Xa - k10 * Va_Xa));
    der(VIII) =  - (compartment_1 * k3 * VIII * Xa) - (compartment_1 * k4 * VIII * IIa) - (compartment_1 * k4 * VIII * mIIa);
    der(VIIIa) = (compartment_1 * k3 * VIII * Xa) + (compartment_1 * k4 * VIII * IIa) + (compartment_1 * k4 * VIII * mIIa) - (compartment_1 * (k7 * VIIIa * IXa - k9 * VIIIa_IXa));
    der(IIa) = (compartment_1 * k2 * V * IIa) + (compartment_1 * k4 * VIII * IIa) + (compartment_1 * k5 * mIIa * Va_Xa) - (compartment_1 * k2 * V * IIa) - (compartment_1 * k4 * VIII * IIa);
    der(II) =  - (compartment_1 * (k6 * II * Va_Xa - k19 * II_Va_Xa));
    der(II_Va_Xa) = (compartment_1 * (k6 * II * Va_Xa - k19 * II_Va_Xa)) - (compartment_1 * k14 * II_Va_Xa);
    der(Va_Xa) = (compartment_1 * k14 * II_Va_Xa) + (compartment_1 * k5 * mIIa * Va_Xa) + (compartment_1 * (k6 * Va * Xa - k10 * Va_Xa)) + (compartment_1 * k15 * IX * Va_Xa) - (compartment_1 * (k6 * II * Va_Xa - k19 * II_Va_Xa)) - (compartment_1 * k5 * mIIa * Va_Xa) - (compartment_1 * k15 * IX * Va_Xa);
    der(mIIa) = (compartment_1 * k14 * II_Va_Xa) + (compartment_1 * k2 * V * mIIa) + (compartment_1 * k4 * VIII * mIIa) - (compartment_1 * k5 * mIIa * Va_Xa) - (compartment_1 * k2 * V * mIIa) - (compartment_1 * k4 * VIII * mIIa);




end BIOMD336;
