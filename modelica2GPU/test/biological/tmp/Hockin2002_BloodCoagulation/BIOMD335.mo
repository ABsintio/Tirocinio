
model BIOMD335 "Hockin2002_BloodCoagulation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real k1 = 0.0031;
    parameter Real k2 = 3200000.0;
    parameter Real k3 = 0.0031;
    parameter Real k4 = 23000000.0;
    parameter Real k5 = 440000.0;
    parameter Real k6 = 13000000.0;
    parameter Real k7 = 23000.0;
    parameter Real k8 = 1.05;
    parameter Real k9 = 25000000.0;
    parameter Real k10 = 6.0;
    parameter Real k11 = 19.0;
    parameter Real k12 = 22000000.0;
    parameter Real k13 = 2.4;
    parameter Real k14 = 10000000.0;
    parameter Real k15 = 1.8;
    parameter Real k16 = 7500.0;
    parameter Real k17 = 20000000.0;
    parameter Real k18 = 0.005;
    parameter Real k19 = 10000000.0;
    parameter Real k20 = 0.001;
    parameter Real k21 = 100000000.0;
    parameter Real k22 = 8.2;
    parameter Real k23 = 22000.0;
    parameter Real k24 = 0.006;
    parameter Real k25 = 0.001;
    parameter Real k26 = 20000000.0;
    parameter Real k27 = 0.2;
    parameter Real k28 = 400000000.0;
    parameter Real k29 = 103.0;
    parameter Real k30 = 100000000.0;
    parameter Real k31 = 63.5;
    parameter Real k32 = 15000000.0;
    parameter Real k33 = 0.00036;
    parameter Real k34 = 900000.0;
    parameter Real k35 = 0.00011;
    parameter Real k36 = 320000000.0;
    parameter Real k37 = 50000000.0;
    parameter Real k38 = 1500.0;
    parameter Real k39 = 7100.0;
    parameter Real k40 = 490.0;
    parameter Real k41 = 7100.0;
    parameter Real k42 = 230.0;
    parameter Real compartment_1 = 1.0;

    Real IIa_plus_1_2mIIa(start=0.0);

    Real TF;
    Real TF_VII;
    Real VII;
    Real TF_VIIa;
    Real VIIa;
    Real Xa;
    Real IIa;
    Real TF_VIIa_X;
    Real X;
    Real TF_VIIa_Xa;
    Real IX;
    Real TF_VIIa_IX;
    Real IXa;
    Real II;
    Real VIII;
    Real VIIIa;
    Real IXa_VIIIa;
    Real IXa_VIIIa_X;
    Real VIIIa1_L;
    Real VIIIa2;
    Real V;
    Real Va;
    Real Xa_Va;
    Real Xa_Va_II;
    Real mIIa;
    Real TFPI;
    Real Xa_TFPI;
    Real TF_VIIa_Xa_TFPI;
    Real ATIII;
    Real Xa_ATIII;
    Real mIIa_ATIII;
    Real IXa_ATIII;
    Real IIa_ATIII;
    Real TF_VIIa_ATIII;

initial equation
    TF = 2.5e-11;
    TF_VII = 0.0;
    VII = 1e-08;
    TF_VIIa = 0.0;
    VIIa = 1e-10;
    Xa = 0.0;
    IIa = 0.0;
    TF_VIIa_X = 0.0;
    X = 1.6e-07;
    TF_VIIa_Xa = 0.0;
    IX = 9e-08;
    TF_VIIa_IX = 0.0;
    IXa = 0.0;
    II = 1.4e-06;
    VIII = 7e-10;
    VIIIa = 0.0;
    IXa_VIIIa = 0.0;
    IXa_VIIIa_X = 0.0;
    VIIIa1_L = 0.0;
    VIIIa2 = 0.0;
    V = 2e-08;
    Va = 0.0;
    Xa_Va = 0.0;
    Xa_Va_II = 0.0;
    mIIa = 0.0;
    TFPI = 2.5e-09;
    Xa_TFPI = 0.0;
    TF_VIIa_Xa_TFPI = 0.0;
    ATIII = 3.4e-06;
    Xa_ATIII = 0.0;
    mIIa_ATIII = 0.0;
    IXa_ATIII = 0.0;
    IIa_ATIII = 0.0;
    TF_VIIa_ATIII = 0.0;

equation
    IIa_plus_1_2mIIa = IIa + 1.2 * mIIa;
    der(TF) =  - (compartment_1 * (k2 * TF * VII - k1 * TF_VII)) - (compartment_1 * (k4 * TF * VIIa - k3 * TF_VIIa));
    der(TF_VII) = (compartment_1 * (k2 * TF * VII - k1 * TF_VII)) ;
    der(VII) =  - (compartment_1 * (k2 * TF * VII - k1 * TF_VII)) - (compartment_1 * k5 * TF_VIIa * VII) - (compartment_1 * k6 * Xa * VII) - (compartment_1 * k7 * IIa * VII);
    der(TF_VIIa) = (compartment_1 * (k4 * TF * VIIa - k3 * TF_VIIa)) + (compartment_1 * k5 * TF_VIIa * VII) + (compartment_1 * k15 * TF_VIIa_IX) - (compartment_1 * k5 * TF_VIIa * VII) - (compartment_1 * (k9 * TF_VIIa * X - k8 * TF_VIIa_X)) - (compartment_1 * (k12 * TF_VIIa * Xa - k11 * TF_VIIa_Xa)) - (compartment_1 * (k14 * TF_VIIa * IX - k13 * TF_VIIa_IX)) - (compartment_1 * k37 * TF_VIIa * Xa_TFPI) - (compartment_1 * k42 * TF_VIIa * ATIII);
    der(VIIa) = (compartment_1 * k5 * TF_VIIa * VII) + (compartment_1 * k6 * Xa * VII) + (compartment_1 * k7 * IIa * VII) - (compartment_1 * (k4 * TF * VIIa - k3 * TF_VIIa));
    der(Xa) = (compartment_1 * k6 * Xa * VII) + (compartment_1 * k16 * Xa * II) + (compartment_1 * k22 * IXa_VIIIa_X) - (compartment_1 * k6 * Xa * VII) - (compartment_1 * (k12 * TF_VIIa * Xa - k11 * TF_VIIa_Xa)) - (compartment_1 * k16 * Xa * II) - (compartment_1 * (k28 * Xa * Va - k27 * Xa_Va)) - (compartment_1 * (k34 * Xa * TFPI - k33 * Xa_TFPI)) - (compartment_1 * k38 * Xa * ATIII);
    der(IIa) = (compartment_1 * k7 * IIa * VII) + (compartment_1 * k16 * Xa * II) + (compartment_1 * k17 * IIa * VIII) + (compartment_1 * k26 * IIa * V) + (compartment_1 * k32 * mIIa * Xa_Va) - (compartment_1 * k7 * IIa * VII) - (compartment_1 * k17 * IIa * VIII) - (compartment_1 * k26 * IIa * V) - (compartment_1 * k41 * IIa * ATIII);
    der(TF_VIIa_X) = (compartment_1 * (k9 * TF_VIIa * X - k8 * TF_VIIa_X)) - (compartment_1 * k10 * TF_VIIa_X);
    der(X) = (compartment_1 * k25 * IXa_VIIIa_X) - (compartment_1 * (k9 * TF_VIIa * X - k8 * TF_VIIa_X)) - (compartment_1 * (k21 * IXa_VIIIa * X - k20 * IXa_VIIIa_X));
    der(TF_VIIa_Xa) = (compartment_1 * (k12 * TF_VIIa * Xa - k11 * TF_VIIa_Xa)) + (compartment_1 * k10 * TF_VIIa_X) - (compartment_1 * (k36 * TF_VIIa_Xa * TFPI - k35 * TF_VIIa_Xa_TFPI));
    der(IX) =  - (compartment_1 * (k14 * TF_VIIa * IX - k13 * TF_VIIa_IX));
    der(TF_VIIa_IX) = (compartment_1 * (k14 * TF_VIIa * IX - k13 * TF_VIIa_IX)) - (compartment_1 * k15 * TF_VIIa_IX);
    der(IXa) = (compartment_1 * k25 * IXa_VIIIa_X) + (compartment_1 * k25 * IXa_VIIIa) + (compartment_1 * k15 * TF_VIIa_IX) - (compartment_1 * (k19 * IXa * VIIIa - k18 * IXa_VIIIa)) - (compartment_1 * k40 * IXa * ATIII);
    der(II) =  - (compartment_1 * k16 * Xa * II) - (compartment_1 * (k30 * Xa_Va * II - k29 * Xa_Va_II));
    der(VIII) =  - (compartment_1 * k17 * IIa * VIII);
    der(VIIIa) = (compartment_1 * k17 * IIa * VIII) - (compartment_1 * (k19 * IXa * VIIIa - k18 * IXa_VIIIa)) - (compartment_1 * (k24 * VIIIa - k23 * VIIIa1_L * VIIIa2));
    der(IXa_VIIIa) = (compartment_1 * (k19 * IXa * VIIIa - k18 * IXa_VIIIa)) + (compartment_1 * k22 * IXa_VIIIa_X) - (compartment_1 * (k21 * IXa_VIIIa * X - k20 * IXa_VIIIa_X)) - (compartment_1 * k25 * IXa_VIIIa);
    der(IXa_VIIIa_X) = (compartment_1 * (k21 * IXa_VIIIa * X - k20 * IXa_VIIIa_X)) - (compartment_1 * k25 * IXa_VIIIa_X) - (compartment_1 * k22 * IXa_VIIIa_X);
    der(VIIIa1_L) = (compartment_1 * (k24 * VIIIa - k23 * VIIIa1_L * VIIIa2)) + (compartment_1 * k25 * IXa_VIIIa_X) + (compartment_1 * k25 * IXa_VIIIa) ;
    der(VIIIa2) = (compartment_1 * (k24 * VIIIa - k23 * VIIIa1_L * VIIIa2)) + (compartment_1 * k25 * IXa_VIIIa_X) + (compartment_1 * k25 * IXa_VIIIa) ;
    der(V) =  - (compartment_1 * k26 * IIa * V);
    der(Va) = (compartment_1 * k26 * IIa * V) - (compartment_1 * (k28 * Xa * Va - k27 * Xa_Va));
    der(Xa_Va) = (compartment_1 * (k28 * Xa * Va - k27 * Xa_Va)) + (compartment_1 * k32 * mIIa * Xa_Va) + (compartment_1 * k31 * Xa_Va_II) - (compartment_1 * (k30 * Xa_Va * II - k29 * Xa_Va_II)) - (compartment_1 * k32 * mIIa * Xa_Va);
    der(Xa_Va_II) = (compartment_1 * (k30 * Xa_Va * II - k29 * Xa_Va_II)) - (compartment_1 * k31 * Xa_Va_II);
    der(mIIa) = (compartment_1 * k31 * Xa_Va_II) - (compartment_1 * k32 * mIIa * Xa_Va) - (compartment_1 * k39 * mIIa * ATIII);
    der(TFPI) =  - (compartment_1 * (k34 * Xa * TFPI - k33 * Xa_TFPI)) - (compartment_1 * (k36 * TF_VIIa_Xa * TFPI - k35 * TF_VIIa_Xa_TFPI));
    der(Xa_TFPI) = (compartment_1 * (k34 * Xa * TFPI - k33 * Xa_TFPI)) - (compartment_1 * k37 * TF_VIIa * Xa_TFPI);
    der(TF_VIIa_Xa_TFPI) = (compartment_1 * (k36 * TF_VIIa_Xa * TFPI - k35 * TF_VIIa_Xa_TFPI)) + (compartment_1 * k37 * TF_VIIa * Xa_TFPI) ;
    der(ATIII) =  - (compartment_1 * k38 * Xa * ATIII) - (compartment_1 * k39 * mIIa * ATIII) - (compartment_1 * k40 * IXa * ATIII) - (compartment_1 * k41 * IIa * ATIII) - (compartment_1 * k42 * TF_VIIa * ATIII);
    der(Xa_ATIII) = (compartment_1 * k38 * Xa * ATIII) ;
    der(mIIa_ATIII) = (compartment_1 * k39 * mIIa * ATIII) ;
    der(IXa_ATIII) = (compartment_1 * k40 * IXa * ATIII) ;
    der(IIa_ATIII) = (compartment_1 * k41 * IIa * ATIII) ;
    der(TF_VIIa_ATIII) = (compartment_1 * k42 * TF_VIIa * ATIII) ;




end BIOMD335;
