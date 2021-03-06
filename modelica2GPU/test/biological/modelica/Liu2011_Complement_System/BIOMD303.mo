
model BIOMD303 "Liu2011_Complement_System"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function function_1
        	input Real k;
	input Real E;
	input Real S;
	input Real Km;
        output Real y;
    algorithm
        y :=  k * E * S / (Km + S);
    end function_1;


    parameter Real ka01_1 = 0.0275999;
    parameter Real ka01_2 = 0.0109;
    parameter Real ka02_1 = 0.00074;
    parameter Real ka02_2 = 0.0011;
    parameter Real ka03_1 = 2.0;
    parameter Real ka04_1 = 10.5;
    parameter Real kc01_1 = 0.64564661669102;
    parameter Real kc01_2 = 0.194551104058408;
    parameter Real kc02 = 0.000591152775857994;
    parameter Real kc03_1 = 0.414004459949002;
    parameter Real kc03_2 = 0.99647572245388;
    parameter Real kc04_1 = 0.977836567576895;
    parameter Real ka03_2 = 500.0;
    parameter Real ka04_2 = 2500.0;
    parameter Real kd02_2 = 0.1;
    parameter Real kd02_1 = 0.0368010796682635;
    parameter Real kd03_1 = 66.3776807395383;
    parameter Real kd03_2 = 829.115813389061;
    parameter Real kb01_1 = 0.091011109910329;
    parameter Real kb01_2 = 0.0508205528375529;
    parameter Real kb02_1 = 0.0368010796682635;
    parameter Real kb02_2 = 0.1;
    parameter Real kb03_1 = 66.3776807395383;
    parameter Real kb03_2 = 829.115813389061;
    parameter Real kb04_1 = 1.1;
    parameter Real kb04_2 = 2000.0;
    parameter Real kc04_2 = 0.199162432258527;
    parameter Real kd01_1 = 7.07e-05;
    parameter Real kd01_2 = 7.23e-05;
    parameter Real kd04_1 = 1.1;
    parameter Real kd04_2 = 2000.0;
    parameter Real ke01_1 = 7.07e-05;
    parameter Real ke01_2 = 0.0001;
    parameter Real ke02_1 = 0.00074;
    parameter Real ke02_2 = 0.0011;
    parameter Real ke03_1 = 2.0;
    parameter Real ke03_2 = 500.0;
    parameter Real ke04_1 = 10.5;
    parameter Real ke04_2 = 2500.0;
    parameter Real kf01_1 = 0.969998277173144;
    parameter Real kf01_2 = 0.069020578737621;
    parameter Real kf02_1 = 0.969998277173144;
    parameter Real kf02_2 = 0.069020578737621;
    parameter Real kf03 = 0.0613537204215846;
    parameter Real kf04_2 = 0.983691204042155;
    parameter Real kf04_1 = 0.613416050428938;
    parameter Real kf05 = 0.980777558937884;
    parameter Real kf06_1 = 0.613416050428938;
    parameter Real kf06_2 = 0.983691204042155;
    parameter Real kf07_1 = 0.613416050428938;
    parameter Real kf07_2 = 0.983691204042155;
    parameter Real kd05_1 = 0.00074;
    parameter Real kd05_2 = 0.0011;
    parameter Real kd06_1 = 2.0;
    parameter Real kd06_2 = 500.0;
    parameter Real kd07_1 = 10.5;
    parameter Real kd07_2 = 2500.0;
    parameter Real ke05_1 = 0.0368010796682635;
    parameter Real ke05_2 = 0.1;
    parameter Real ke06_1 = 66.3776807395383;
    parameter Real ke06_2 = 829.115813389061;
    parameter Real ke07_1 = 1.1;
    parameter Real ke07_2 = 2000.0;
    parameter Real kd08_1 = 0.0368010796682635;
    parameter Real kd08_2 = 0.1;
    parameter Real kd09_1 = 0.00074;
    parameter Real kd09_2 = 0.0011;
    parameter Real kd10_1 = 71.1705760475931;
    parameter Real kd10_2 = 3796.22684377655;
    parameter Real kd11_1 = 38.9625903487667;
    parameter Real kd11_2 = 5972.30640657865;
    parameter Real kg01_1 = 0.091011109910329;
    parameter Real kg01_2 = 0.0508205528375529;
    parameter Real kg02_1 = 0.0368010796682635;
    parameter Real kg02_2 = 0.1;
    parameter Real kg03_1 = 66.3776807395383;
    parameter Real kg03_2 = 829.115813389061;
    parameter Real kg04_1 = 1.1;
    parameter Real kg04_2 = 2000.0;
    parameter Real kt01 = 0.000342266;
    parameter Real kt02 = 0.492901;
    parameter Real kt03 = 0.0470911;
    parameter Real kt04_1 = 0.0;
    parameter Real kt04_2 = 0.0;
    parameter Real k1_4_27 = 0.000342266;
    parameter Real k1_4_28 = 0.492901;
    parameter Real k1_4_29 = 0.0470911;
    parameter Real k1_4_33 = 0.0;
    parameter Real k2_33 = 0.0;
    parameter Real compartment = 1.0;

    Real mC3(start=0.0);

    Real CRP;
    Real PC;
    Real PC_CRP;
    Real C4;
    Real C4a;
    Real C4b;
    Real C2;
    Real C1;
    Real PC_CRP_C1;
    Real C2a;
    Real C2b;
    Real C4b_C2a;
    Real C3;
    Real C3a;
    Real C3b;
    Real dC3b;
    Real MASP;
    Real dC4b_C2a;
    Real GlcNac;
    Real GlcNac_LF;
    Real LF;
    Real GlcNac_LF_MASP;
    Real PC_CRP_LF;
    Real PC_CRP_LF_MASP;
    Real GlcNac_LF_CRP;
    Real GlcNac_LF_CRP_C1;
    Real C4BP;
    Real C4BP_PC_CRP;
    Real C4BP_GlcNac_LF_CRP;
    Real iC4b_C2a;
    Real C4BP_C4b;
    Real C4b_C2a_C4BP;
    Real dC4b_C2a_C4BP;
    Real PC_CRP_LF_C1;
    Real C4BP_PC_CRP_LF;
    Real GlcNac_LF_CRP_MASP;
    Real PC_CRP_LF_C1_MASP;
    Real GlcNac_LF_C1_MASP;
    Real GlcNac_HF;
    Real HF;
    Real GlcNac_HF_MASP;
    Real X;

initial equation
    CRP = 2.0;
    PC = 0.0327796;
    PC_CRP = 0.0;
    C4 = 770.0;
    C4a = 0.0;
    C4b = 0.0;
    C2 = 310.0;
    C1 = 2470.0;
    PC_CRP_C1 = 0.0;
    C2a = 0.0;
    C2b = 0.0;
    C4b_C2a = 0.0;
    C3 = 4650.0;
    C3a = 0.0;
    C3b = 0.0;
    dC3b = 0.0;
    MASP = 6.8;
    dC4b_C2a = 0.0;
    GlcNac = 0.0;
    GlcNac_LF = 0.0;
    LF = 20.0;
    GlcNac_LF_MASP = 0.0;
    PC_CRP_LF = 0.0;
    PC_CRP_LF_MASP = 0.0;
    GlcNac_LF_CRP = 0.0;
    GlcNac_LF_CRP_C1 = 0.0;
    C4BP = 260.0;
    C4BP_PC_CRP = 0.0;
    C4BP_GlcNac_LF_CRP = 0.0;
    iC4b_C2a = 0.0;
    C4BP_C4b = 0.0;
    C4b_C2a_C4BP = 0.0;
    dC4b_C2a_C4BP = 0.0;
    PC_CRP_LF_C1 = 0.0;
    C4BP_PC_CRP_LF = 0.0;
    GlcNac_LF_CRP_MASP = 0.0;
    PC_CRP_LF_C1_MASP = 0.0;
    GlcNac_LF_C1_MASP = 0.0;
    GlcNac_HF = 0.0;
    HF = 0.0;
    GlcNac_HF_MASP = 0.0;
    X = 0.0005;

equation
    mC3 = dC3b;
    der(CRP) =  - (compartment * (ka01_1 * PC * CRP - ka01_2 * PC_CRP)) - (compartment * (ke01_1 * GlcNac_LF * CRP - ke01_2 * GlcNac_LF_CRP));
    der(PC) =  - (compartment * (ka01_1 * PC * CRP - ka01_2 * PC_CRP));
    der(PC_CRP) = (compartment * (ka01_1 * PC * CRP - ka01_2 * PC_CRP)) - (compartment * (ka02_1 * PC_CRP * C1 - ka02_2 * PC_CRP_C1)) - (compartment * (kd01_1 * PC_CRP * LF - kd01_2 * PC_CRP_LF)) - (compartment * (kf01_1 * C4BP * PC_CRP - kf01_2 * C4BP_PC_CRP));
    der(C4) =  - (compartment * function_1(ka03_1, PC_CRP_C1, C4, ka03_2)) - (compartment * function_1(kd03_1, PC_CRP_LF_MASP, C4, kd03_2)) - (compartment * function_1(kb03_1, GlcNac_LF_MASP, C4, kb03_2)) - (compartment * function_1(ke03_1, GlcNac_LF_CRP_C1, C4, ke03_2)) - (compartment * function_1(kd06_1, PC_CRP_LF_C1, C4, kd06_2)) - (compartment * function_1(ke06_1, GlcNac_LF_CRP_MASP, C4, ke06_2)) - (compartment * function_1(kd10_1, PC_CRP_LF_C1_MASP, C4, kd10_2)) - (compartment * function_1(kg03_1, GlcNac_HF_MASP, C4, kg03_2));
    der(C4a) = (compartment * function_1(ka03_1, PC_CRP_C1, C4, ka03_2)) + (compartment * function_1(kd03_1, PC_CRP_LF_MASP, C4, kd03_2)) + (compartment * function_1(kb03_1, GlcNac_LF_MASP, C4, kb03_2)) + (compartment * function_1(ke03_1, GlcNac_LF_CRP_C1, C4, ke03_2)) + (compartment * function_1(kd06_1, PC_CRP_LF_C1, C4, kd06_2)) + (compartment * function_1(ke06_1, GlcNac_LF_CRP_MASP, C4, ke06_2)) + (compartment * function_1(kd10_1, PC_CRP_LF_C1_MASP, C4, kd10_2)) + (compartment * function_1(kg03_1, GlcNac_HF_MASP, C4, kg03_2)) ;
    der(C4b) = (compartment * function_1(ka03_1, PC_CRP_C1, C4, ka03_2)) + (compartment * function_1(kd03_1, PC_CRP_LF_MASP, C4, kd03_2)) + (compartment * function_1(kb03_1, GlcNac_LF_MASP, C4, kb03_2)) + (compartment * function_1(ke03_1, GlcNac_LF_CRP_C1, C4, ke03_2)) + (compartment * kf05 * C4b_C2a * C4BP) + (compartment * function_1(kd06_1, PC_CRP_LF_C1, C4, kd06_2)) + (compartment * function_1(ke06_1, GlcNac_LF_CRP_MASP, C4, ke06_2)) + (compartment * function_1(kd10_1, PC_CRP_LF_C1_MASP, C4, kd10_2)) + (compartment * function_1(kg03_1, GlcNac_HF_MASP, C4, kg03_2)) - (compartment * (kc01_1 * C4b * C2a - kc01_2 * C4b_C2a)) - (compartment * (kf04_1 * C4BP * C4b - kf04_2 * C4BP_C4b));
    der(C2) =  - (compartment * function_1(ka04_1, PC_CRP_C1, C2, ka04_2)) - (compartment * function_1(kd04_1, PC_CRP_LF_MASP, C2, kd04_2)) - (compartment * function_1(kb04_1, GlcNac_LF_MASP, C2, kb04_2)) - (compartment * function_1(ke04_1, GlcNac_LF_CRP_C1, C2, ke04_2)) - (compartment * function_1(kd07_1, PC_CRP_LF_C1, C2, kd07_2)) - (compartment * function_1(ke07_1, GlcNac_LF_CRP_MASP, C2, ke07_2)) - (compartment * function_1(kd11_1, PC_CRP_LF_C1_MASP, C2, kd11_2)) - (compartment * function_1(kg04_1, GlcNac_HF_MASP, C2, kg04_2));
    der(C1) =  - (compartment * (ka02_1 * PC_CRP * C1 - ka02_2 * PC_CRP_C1)) - (compartment * (ke02_1 * GlcNac_LF_CRP * C1 - ke02_2 * GlcNac_LF_CRP_C1)) - (compartment * (kd05_1 * PC_CRP_LF * C1 - kd05_2 * PC_CRP_LF_C1)) - (compartment * (kd09_1 * PC_CRP_LF_MASP * C1 - kd09_2 * PC_CRP_LF_C1_MASP));
    der(PC_CRP_C1) = (compartment * (ka02_1 * PC_CRP * C1 - ka02_2 * PC_CRP_C1)) ;
    der(C2a) = (compartment * function_1(ka04_1, PC_CRP_C1, C2, ka04_2)) + (compartment * function_1(kd04_1, PC_CRP_LF_MASP, C2, kd04_2)) + (compartment * function_1(kb04_1, GlcNac_LF_MASP, C2, kb04_2)) + (compartment * function_1(ke04_1, GlcNac_LF_CRP_C1, C2, ke04_2)) + (compartment * kf05 * C4b_C2a * C4BP) + (compartment * function_1(kd07_1, PC_CRP_LF_C1, C2, kd07_2)) + (compartment * function_1(ke07_1, GlcNac_LF_CRP_MASP, C2, ke07_2)) + (compartment * function_1(kd11_1, PC_CRP_LF_C1_MASP, C2, kd11_2)) + (compartment * function_1(kg04_1, GlcNac_HF_MASP, C2, kg04_2)) - (compartment * (kc01_1 * C4b * C2a - kc01_2 * C4b_C2a));
    der(C2b) = (compartment * function_1(ka04_1, PC_CRP_C1, C2, ka04_2)) + (compartment * function_1(kd04_1, PC_CRP_LF_MASP, C2, kd04_2)) + (compartment * function_1(kb04_1, GlcNac_LF_MASP, C2, kb04_2)) + (compartment * function_1(ke04_1, GlcNac_LF_CRP_C1, C2, ke04_2)) + (compartment * function_1(kd07_1, PC_CRP_LF_C1, C2, kd07_2)) + (compartment * function_1(ke07_1, GlcNac_LF_CRP_MASP, C2, ke07_2)) + (compartment * function_1(kd11_1, PC_CRP_LF_C1_MASP, C2, kd11_2)) + (compartment * function_1(kg04_1, GlcNac_HF_MASP, C2, kg04_2)) ;
    der(C4b_C2a) = (compartment * (kc01_1 * C4b * C2a - kc01_2 * C4b_C2a)) + (compartment * kc02 * C4b_C2a * C3) - (compartment * kc02 * C4b_C2a * C3) - (compartment * (kc04_1 * C4b_C2a - kc04_2 * dC4b_C2a)) - (compartment * kf03 * C4b_C2a * C4BP) - (compartment * kf05 * C4b_C2a * C4BP) - (compartment * (kf06_1 * C4b_C2a * C4BP - kf06_2 * C4b_C2a_C4BP)) - (compartment * k1_4_29 * C4b_C2a);
    der(C3) =  - (compartment * kc02 * C4b_C2a * C3);
    der(C3a) = (compartment * kc02 * C4b_C2a * C3) ;
    der(C3b) = (compartment * kc02 * C4b_C2a * C3) - (compartment * (kc03_1 * C3b - kc03_2 * dC3b)) - (compartment * k1_4_28 * C3b);
    der(dC3b) = (compartment * (kc03_1 * C3b - kc03_2 * dC3b)) ;
    der(MASP) =  - (compartment * (kd02_1 * PC_CRP_LF * MASP - kd02_2 * PC_CRP_LF_MASP)) - (compartment * (kb02_1 * GlcNac_LF * MASP - kb02_2 * GlcNac_LF_MASP)) - (compartment * (ke05_1 * GlcNac_LF_CRP * MASP - ke05_2 * GlcNac_LF_CRP_MASP)) - (compartment * (kd08_1 * PC_CRP_LF_C1 * MASP - kd08_2 * PC_CRP_LF_C1_MASP)) - (compartment * (kg02_1 * GlcNac_HF * MASP - kg02_2 * GlcNac_HF_MASP));
    der(dC4b_C2a) = (compartment * (kc04_1 * C4b_C2a - kc04_2 * dC4b_C2a)) - (compartment * (kf07_1 * dC4b_C2a * C4BP - kf07_2 * dC4b_C2a_C4BP));
    der(GlcNac) =  - (compartment * (kb01_1 * GlcNac * LF - kb01_2 * GlcNac_LF));
    der(GlcNac_LF) = (compartment * (kb01_1 * GlcNac * LF - kb01_2 * GlcNac_LF)) - (compartment * (kb02_1 * GlcNac_LF * MASP - kb02_2 * GlcNac_LF_MASP)) - (compartment * (ke01_1 * GlcNac_LF * CRP - ke01_2 * GlcNac_LF_CRP));
    der(LF) =  - (compartment * (kd01_1 * PC_CRP * LF - kd01_2 * PC_CRP_LF)) - (compartment * (kb01_1 * GlcNac * LF - kb01_2 * GlcNac_LF));
    der(GlcNac_LF_MASP) = (compartment * (kb02_1 * GlcNac_LF * MASP - kb02_2 * GlcNac_LF_MASP)) ;
    der(PC_CRP_LF) = (compartment * (kd01_1 * PC_CRP * LF - kd01_2 * PC_CRP_LF)) - (compartment * (kd02_1 * PC_CRP_LF * MASP - kd02_2 * PC_CRP_LF_MASP)) - (compartment * (kd05_1 * PC_CRP_LF * C1 - kd05_2 * PC_CRP_LF_C1)) - (compartment * (k1_4_33 * C4BP * PC_CRP_LF - k2_33 * C4BP_PC_CRP_LF));
    der(PC_CRP_LF_MASP) = (compartment * (kd02_1 * PC_CRP_LF * MASP - kd02_2 * PC_CRP_LF_MASP)) - (compartment * (kd09_1 * PC_CRP_LF_MASP * C1 - kd09_2 * PC_CRP_LF_C1_MASP));
    der(GlcNac_LF_CRP) = (compartment * (ke01_1 * GlcNac_LF * CRP - ke01_2 * GlcNac_LF_CRP)) - (compartment * (ke02_1 * GlcNac_LF_CRP * C1 - ke02_2 * GlcNac_LF_CRP_C1)) - (compartment * (kf02_1 * C4BP * GlcNac_LF_CRP - kf02_2 * C4BP_GlcNac_LF_CRP)) - (compartment * (ke05_1 * GlcNac_LF_CRP * MASP - ke05_2 * GlcNac_LF_CRP_MASP));
    der(GlcNac_LF_CRP_C1) = (compartment * (ke02_1 * GlcNac_LF_CRP * C1 - ke02_2 * GlcNac_LF_CRP_C1)) ;
    der(C4BP) = (compartment * kf03 * C4b_C2a * C4BP) + (compartment * kf05 * C4b_C2a * C4BP) - (compartment * (kf01_1 * C4BP * PC_CRP - kf01_2 * C4BP_PC_CRP)) - (compartment * (kf02_1 * C4BP * GlcNac_LF_CRP - kf02_2 * C4BP_GlcNac_LF_CRP)) - (compartment * kf03 * C4b_C2a * C4BP) - (compartment * (kf04_1 * C4BP * C4b - kf04_2 * C4BP_C4b)) - (compartment * kf05 * C4b_C2a * C4BP) - (compartment * (kf06_1 * C4b_C2a * C4BP - kf06_2 * C4b_C2a_C4BP)) - (compartment * (kf07_1 * dC4b_C2a * C4BP - kf07_2 * dC4b_C2a_C4BP)) - (compartment * k1_4_27 * C4BP) - (compartment * (k1_4_33 * C4BP * PC_CRP_LF - k2_33 * C4BP_PC_CRP_LF));
    der(C4BP_PC_CRP) = (compartment * (kf01_1 * C4BP * PC_CRP - kf01_2 * C4BP_PC_CRP)) ;
    der(C4BP_GlcNac_LF_CRP) = (compartment * (kf02_1 * C4BP * GlcNac_LF_CRP - kf02_2 * C4BP_GlcNac_LF_CRP)) ;
    der(iC4b_C2a) = (compartment * kf03 * C4b_C2a * C4BP) ;
    der(C4BP_C4b) = (compartment * (kf04_1 * C4BP * C4b - kf04_2 * C4BP_C4b)) ;
    der(C4b_C2a_C4BP) = (compartment * (kf06_1 * C4b_C2a * C4BP - kf06_2 * C4b_C2a_C4BP)) ;
    der(dC4b_C2a_C4BP) = (compartment * (kf07_1 * dC4b_C2a * C4BP - kf07_2 * dC4b_C2a_C4BP)) ;
    der(PC_CRP_LF_C1) = (compartment * (kd05_1 * PC_CRP_LF * C1 - kd05_2 * PC_CRP_LF_C1)) - (compartment * (kd08_1 * PC_CRP_LF_C1 * MASP - kd08_2 * PC_CRP_LF_C1_MASP));
    der(C4BP_PC_CRP_LF) = (compartment * (k1_4_33 * C4BP * PC_CRP_LF - k2_33 * C4BP_PC_CRP_LF)) ;
    der(GlcNac_LF_CRP_MASP) = (compartment * (ke05_1 * GlcNac_LF_CRP * MASP - ke05_2 * GlcNac_LF_CRP_MASP)) ;
    der(PC_CRP_LF_C1_MASP) = (compartment * (kd08_1 * PC_CRP_LF_C1 * MASP - kd08_2 * PC_CRP_LF_C1_MASP)) + (compartment * (kd09_1 * PC_CRP_LF_MASP * C1 - kd09_2 * PC_CRP_LF_C1_MASP)) ;
    der(GlcNac_LF_C1_MASP) = 0.0;
    der(GlcNac_HF) = (compartment * (kg01_1 * X * HF - kg01_2 * GlcNac_HF)) - (compartment * (kg02_1 * GlcNac_HF * MASP - kg02_2 * GlcNac_HF_MASP));
    der(HF) =  - (compartment * (kg01_1 * X * HF - kg01_2 * GlcNac_HF));
    der(GlcNac_HF_MASP) = (compartment * (kg02_1 * GlcNac_HF * MASP - kg02_2 * GlcNac_HF_MASP)) ;
    der(X) =  - (compartment * (kg01_1 * X * HF - kg01_2 * GlcNac_HF));




end BIOMD303;
