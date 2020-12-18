
model BIOMD243 "Neumann2010_CD95Stimulation_NFkB_Apoptosis"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 1.0;
    parameter Real k2 = 0.0001277248;
    parameter Real k3 = 0.6693316;
    parameter Real k4 = 1e-05;
    parameter Real k5 = 0.0005946569;
    parameter Real k6 = 0.9999999;
    parameter Real k7 = 0.8875063;
    parameter Real k8 = 0.0008044378;
    parameter Real k9 = 0.002249759;
    parameter Real k10 = 0.1205258;
    parameter Real k11 = 0.02891451;
    parameter Real k12 = 0.1502914;
    parameter Real k13 = 0.0007204261;
    parameter Real k14 = 0.3588224;
    parameter Real k15 = 3.684162;
    parameter Real k16 = 0.02229912;
    parameter Real k17 = 0.0064182;
    parameter Real default = 1.0;



    Real L;
    Real L_RF;
    Real L_RF_C8;
    Real L_RF_FL;
    Real L_RF_FS;
    Real p43_p41;
    Real C3;
    Real C8;
    Real C8_star;
    Real C3_star;
    Real p43_FLIP;
    Real NF_kB_IkB;
    Real NF_kB_IkB_P;
    Real p43_FLIP_IKK_star;
    Real NF_kB_star;
    Real RF;
    Real FL;
    Real FS;
    Real IKK;
    Real L_RF_C8_FS;
    Real L_RF_FL_FL;
    Real L_RF_FL_FS;
    Real L_RF_FS_FS;

initial equation
    L = 113.22;
    L_RF = 0.0;
    L_RF_C8 = 0.0;
    L_RF_FL = 0.0;
    L_RF_FS = 0.0;
    p43_p41 = 0.0;
    C3 = 1.443404;
    C8 = 64.47652;
    C8_star = 0.0;
    C3_star = 0.0;
    p43_FLIP = 0.0;
    NF_kB_IkB = 4.739546;
    NF_kB_IkB_P = 0.0;
    p43_FLIP_IKK_star = 0.0;
    NF_kB_star = 0.0;
    RF = 91.26592;
    FL = 7.398562;
    FS = 5.083923;
    IKK = 5.772825;
    L_RF_C8_FS = 0.0;
    L_RF_FL_FL = 0.0;
    L_RF_FL_FS = 0.0;
    L_RF_FS_FS = 0.0;

equation

    der(L) =  - (default * k1 * L * RF);
    der(L_RF) = (default * k1 * L * RF) - (default * k2 * L_RF * C8) - (default * k3 * L_RF * FL) - (default * k4 * L_RF * FS);
    der(L_RF_C8) = (default * k2 * L_RF * C8) - (default * k5 * L_RF_C8 * C8) - (default * k6 * L_RF_C8 * FL) - (default * k7 * L_RF_C8 * FS);
    der(L_RF_FL) = (default * k3 * L_RF * FL) - (default * k5 * L_RF_FL * C8) - (default * k6 * L_RF_FL * FL) - (default * k7 * L_RF_FL * FS);
    der(L_RF_FS) = (default * k4 * L_RF * FS) - (default * k5 * L_RF_FS * C8) - (default * k6 * L_RF_FS * FL) - (default * k7 * L_RF_FS * FS);
    der(p43_p41) = (default * k5 * L_RF_C8 * C8) + (default * k5 * L_RF_C8 * C8) + (default * k10 * C8 * C3_star) - (default * k8 * p43_p41 * p43_p41) - (default * k8 * p43_p41 * p43_p41);
    der(C3) =  - (default * k9 * C3 * C8_star);
    der(C8) =  - (default * k2 * L_RF * C8) - (default * k5 * L_RF_C8 * C8) - (default * k5 * L_RF_FL * C8) - (default * k5 * L_RF_FS * C8) - (default * k10 * C8 * C3_star);
    der(C8_star) = (default * k8 * p43_p41 * p43_p41) + (default * k9 * C3 * C8_star) - (default * k9 * C3 * C8_star) - (default * k11 * C8_star);
    der(C3_star) = (default * k9 * C3 * C8_star) + (default * k10 * C8 * C3_star) - (default * k10 * C8 * C3_star) - (default * k12 * C3_star);
    der(p43_FLIP) = (default * k6 * L_RF_C8 * FL) + (default * k5 * L_RF_FL * C8) - (default * k13 * p43_FLIP * IKK);
    der(NF_kB_IkB) =  - (default * k14 * NF_kB_IkB * p43_FLIP_IKK_star);
    der(NF_kB_IkB_P) = (default * k14 * NF_kB_IkB * p43_FLIP_IKK_star) - (default * k15 * NF_kB_IkB_P);
    der(p43_FLIP_IKK_star) = (default * k13 * p43_FLIP * IKK) + (default * k14 * NF_kB_IkB * p43_FLIP_IKK_star) - (default * k14 * NF_kB_IkB * p43_FLIP_IKK_star) - (default * k16 * p43_FLIP_IKK_star);
    der(NF_kB_star) = (default * k15 * NF_kB_IkB_P) - (default * k17 * NF_kB_star);
    der(RF) =  - (default * k1 * L * RF);
    der(FL) =  - (default * k3 * L_RF * FL) - (default * k6 * L_RF_C8 * FL) - (default * k6 * L_RF_FL * FL) - (default * k6 * L_RF_FS * FL);
    der(FS) =  - (default * k4 * L_RF * FS) - (default * k7 * L_RF_C8 * FS) - (default * k7 * L_RF_FL * FS) - (default * k7 * L_RF_FS * FS);
    der(IKK) =  - (default * k13 * p43_FLIP * IKK);
    der(L_RF_C8_FS) = (default * k7 * L_RF_C8 * FS) + (default * k5 * L_RF_FS * C8) ;
    der(L_RF_FL_FL) = (default * k6 * L_RF_FL * FL) ;
    der(L_RF_FL_FS) = (default * k7 * L_RF_FL * FS) + (default * k6 * L_RF_FS * FL) ;
    der(L_RF_FS_FS) = (default * k7 * L_RF_FS * FS) ;




end BIOMD243;
