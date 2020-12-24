
model BIOMD269 "Liu2010_Hormonal_Crosstalk_Arabidopsis"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;


    function function_1
        	input Real k3;
	input Real k3a;
	input Real X;
	input Real Auxin;
        output Real y;
    algorithm
        y :=  (k3 + k3a * X) * Auxin;
    end function_1;


    function function_2
        	input Real k1a;
	input Real X;
	input Real k1;
        output Real y;
    algorithm
        y :=  k1a / (1 + X / k1);
    end function_2;


    function function_3
        	input Real k2;
	input Real k2a;
	input Real ET;
	input Real CK;
	input Real k2b;
	input Real PLSp;
	input Real k2c;
        output Real y;
    algorithm
        y :=  k2 + k2a * (ET / (1 + CK / k2b)) * (PLSp / (k2c + PLSp));
    end function_3;


    function function_4
        	input Real k4;
	input Real Auxin;
	input Real Ra;
        output Real y;
    algorithm
        y :=  k4 * Auxin * Ra;
    end function_4;


    function function_6
        	input Real k6;
	input Real Ra_star;
	input Real ET;
	input Real k6a;
        output Real y;
    algorithm
        y :=  k6 * Ra_star / (1 + ET / k6a);
    end function_6;


    function function_7
        	input Real k7;
	input Real PLSm;
        output Real y;
    algorithm
        y :=  k7 * PLSm;
    end function_7;


    function function_8
        	input Real k8;
	input Real PLSm;
        output Real y;
    algorithm
        y :=  k8 * PLSm;
    end function_8;


    function function_9
        	input Real k9;
	input Real PLSp;
        output Real y;
    algorithm
        y :=  k9 * PLSp;
    end function_9;


    function function_10
        	input Real k10;
	input Real PLSp;
	input Real k10a;
	input Real Re;
        output Real y;
    algorithm
        y :=  (k10 + k10a * PLSp) * Re;
    end function_10;


    function function_12
        	input Real Re_star;
	input Real ET;
	input Real k11;
        output Real y;
    algorithm
        y :=  k11 * Re_star * ET;
    end function_12;


    function function_13
        	input Real Auxin;
	input Real CK;
	input Real k12;
	input Real k12a;
        output Real y;
    algorithm
        y :=  k12 + k12a * Auxin * CK;
    end function_13;


    function function_15
        	input Real ET;
	input Real k13;
        output Real y;
    algorithm
        y :=  k13 * ET;
    end function_15;


    function function_16
        	input Real Re_star;
	input Real k14;
	input Real CTR1;
        output Real y;
    algorithm
        y :=  k14 * Re_star * CTR1;
    end function_16;


    function function_17
        	input Real CTR1_star;
	input Real k15;
        output Real y;
    algorithm
        y :=  k15 * CTR1_star;
    end function_17;


    function function_20
        	input Real Auxin;
	input Real k18a;
	input Real k18;
        output Real y;
    algorithm
        y :=  k18a / (1 + Auxin / k18);
    end function_20;


    function function_18
        	input Real CTR1_star;
	input Real k16;
	input Real k16a;
        output Real y;
    algorithm
        y :=  k16 - k16a * CTR1_star;
    end function_18;


    function function_19
        	input Real X;
	input Real k17;
        output Real y;
    algorithm
        y :=  k17 * X;
    end function_19;


    function function_21
        	input Real CK;
	input Real k19;
        output Real y;
    algorithm
        y :=  k19 * CK;
    end function_21;


    parameter Real k1a = 1.0;
    parameter Real k1 = 1.0;
    parameter Real k2 = 0.2;
    parameter Real k2a = 2.8;
    parameter Real k2b = 1.0;
    parameter Real k2c = 0.01;
    parameter Real k3 = 2.0;
    parameter Real k3a = 0.45;
    parameter Real k4 = 1.0;
    parameter Real k5 = 1.0;
    parameter Real k6 = 0.3;
    parameter Real k6a = 0.2;
    parameter Real k7 = 1.0;
    parameter Real k8 = 1.0;
    parameter Real k9 = 1.0;
    parameter Real k10 = 0.0003;
    parameter Real k10a = 0.5;
    parameter Real k11 = 5.0;
    parameter Real k12 = 0.1;
    parameter Real k12a = 0.1;
    parameter Real k13 = 1.0;
    parameter Real k14 = 3.0;
    parameter Real k15 = 0.085;
    parameter Real k16 = 0.3;
    parameter Real k16a = 1.0;
    parameter Real k17 = 0.1;
    parameter Real k18a = 1.0;
    parameter Real k18 = 0.1;
    parameter Real k19 = 1.0;
    parameter Real k_ethylene = 0.5;
    parameter Real k_auxin = 70.0;
    parameter Real k_cytokinin = 10.0;
    parameter Real compartment_1 = 1.0;
    parameter Real extra = 1.0;



    Real Auxin;
    Real X;
    Real PLSp;
    Real Ra;
    Real Ra_star;
    Real RaT;
    Real CK;
    Real ET;
    Real PLSm;
    Real Re;
    Real ReT;
    Real Re_star;
    Real CTR1;
    Real CTR1T;
    Real CTR1_star;
    Real IAA;
    Real ACC;
    Real CK_ex;

initial equation
    Auxin = 0.1;
    X = 0.1;
    PLSp = 0.1;
    Ra_star = 1.0;
    RaT = 1.0;
    CK = 0.1;
    ET = 0.1;
    PLSm = 0.1;
    ReT = 0.3;
    Re_star = 0.3;
    CTR1T = 0.3;
    CTR1_star = 0.3;
    IAA = 0.0;
    ACC = 0.0;
    CK_ex = 0.0;

equation
    Ra = RaT - Ra_star;
    Re = ReT - Re_star;
    CTR1 = CTR1T - CTR1_star;
    der(Auxin) = (compartment_1 * function_2(k1a, X, k1)) + (compartment_1 * function_3(k2, k2a, ET, CK, k2b, PLSp, k2c)) + (compartment_1 * k_auxin * IAA) - (compartment_1 * function_1(k3, k3a, X, Auxin));
    der(X) = (compartment_1 * function_18(CTR1_star, k16, k16a)) - (compartment_1 * function_19(X, k17));
    der(PLSp) = (compartment_1 * function_8(k8, PLSm)) - (compartment_1 * function_9(k9, PLSp));
    der(Ra_star) = (compartment_1 * function_4(k4, Auxin, Ra)) - (compartment_1 * k5 * Ra_star);
    der(RaT) = 0.0;
    der(CK) = (compartment_1 * function_20(Auxin, k18a, k18)) + (compartment_1 * k_cytokinin * CK_ex) - (compartment_1 * function_21(CK, k19));
    der(ET) = (compartment_1 * function_13(Auxin, CK, k12, k12a)) + (compartment_1 * k_ethylene * ACC) - (compartment_1 * function_15(ET, k13));
    der(PLSm) = (compartment_1 * function_6(k6, Ra_star, ET, k6a)) - (compartment_1 * function_7(k7, PLSm));
    der(ReT) = 0.0;
    der(Re_star) = (compartment_1 * function_10(k10, PLSp, k10a, Re)) - (compartment_1 * function_12(Re_star, ET, k11));
    der(CTR1T) = 0.0;
    der(CTR1_star) = (compartment_1 * function_16(Re_star, k14, CTR1)) - (compartment_1 * function_17(CTR1_star, k15));
    der(IAA) = 0.0;
    der(ACC) = 0.0;
    der(CK_ex) = 0.0;




end BIOMD269;
