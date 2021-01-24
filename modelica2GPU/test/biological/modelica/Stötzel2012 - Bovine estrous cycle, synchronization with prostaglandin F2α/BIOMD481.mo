
model BIOMD481 "Stötzel2012 - Bovine estrous cycle, synchronization with prostaglandin F2α"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;


    function function_1
        	input Real GnRH_Pit;
	input Real LH_Pit;
	input Real default;
	input Real par35;
	input Real par36;
	input Real par37;
        output Real y;
    algorithm
        y :=  (par37 + par35 * (GnRH_Pit * default)^5 / ((GnRH_Pit * default)^5 + par36^5)) * LH_Pit * default / default;
    end function_1;


    function function_2
        	input Real E2;
	input Real FSH_Pit;
	input Real GnRH_Pit;
	input Real P4;
	input Real default;
	input Real par23;
	input Real par24;
	input Real par25;
	input Real par26;
	input Real par27;
	input Real par28;
	input Real par30;
        output Real y;
    algorithm
        y :=  (par30 + par23 * (P4 * default)^2 / ((P4 * default)^2 + par24^2) + par25 * par26^2 / ((E2 * default)^2 + par26^2) + par27 * GnRH_Pit * default / (par28 + GnRH_Pit * default)) * FSH_Pit * default / default;
    end function_2;


    function function_3
        	input Real E2;
	input Real GnRH_Hyp;
	input Real P4;
	input Real default;
	input Real par3;
	input Real par4;
	input Real par5;
	input Real par6;
	input Real par7;
        output Real y;
    algorithm
        y :=  (par3 * (par5^2 / (par5^2 + (P4 * default)^2) + par4^2 / (par4^2 + (E2 * default)^2) - (par5^2 / (par5^2 + (P4 * default)^2)) * par4^2 / (par4^2 + (E2 * default)^2)) + par6 * par7^2 / ((P4 * default)^2 + par7^2)) * GnRH_Hyp * default / default;
    end function_3;


    function function_4
        	input Real CL;
	input Real Foll;
	input Real LH_Bld;
	input Real default;
	input Real par47;
	input Real par48;
	input Real par62;
	input Real par63;
	input Real par64;
        output Real y;
    algorithm
        y :=  ((par62 * par47 * (LH_Bld * default)^2 / ((LH_Bld * default)^2 + par48^2)) * Foll * default + par63 * (CL * default)^2 / ((CL * default)^2 + par64^2)) / default;
    end function_4;


    function function_5
        	input Real GnRH_Hyp;
	input Real default;
	input Real par1;
	input Real par2;
        output Real y;
    algorithm
        y :=  par2 * (1 - GnRH_Hyp * default / par1) / default;
    end function_5;


    function function_6
        	input Real Foll;
	input Real default;
	input Real par76;
        output Real y;
    algorithm
        y :=  par76 * (Foll * default)^2 / default;
    end function_6;


    function function_7
        	input Real CL;
	input Real default;
	input Real par71;
        output Real y;
    algorithm
        y :=  par71 * (CL * default)^2 / default;
    end function_7;


    function function_8
        	input Real Foll;
	input Real default;
	input Real par81;
        output Real y;
    algorithm
        y :=  par81 * (Foll * default)^2 / default;
    end function_8;


    function function_9
        	input Real CL;
	input Real E2;
	input Real default;
	input Real par91;
	input Real par92;
        output Real y;
    algorithm
        y :=  (par91 * (E2 * default)^2 / ((E2 * default)^2 + par92^2)) * (CL * default)^2 / default;
    end function_9;


    function function_10
        	input Real P4;
	input Real default;
	input Real par86;
	input Real par87;
        output Real y;
    algorithm
        y :=  par86 * (P4 * default)^5 / ((P4 * default)^5 + par87^5) / default;
    end function_10;


    function function_11
        	input Real Enz;
	input Real OT;
	input Real default;
	input Real par56;
	input Real par57;
	input Real par58;
        output Real y;
    algorithm
        y :=  (par56 * Enz^5 / (Enz^5 + par57^5)) * (OT * default)^2 / ((OT * default)^2 + par58^2) / default;
    end function_11;


    function function_12
        	input Real GnRH_Pit;
	input Real default;
	input Real par10;
        output Real y;
    algorithm
        y :=  par10 * GnRH_Pit * default / default;
    end function_12;


    function function_13
        	input Real LH_Bld;
	input Real default;
	input Real par38;
        output Real y;
    algorithm
        y :=  par38 * LH_Bld * default / default;
    end function_13;


    function function_14
        	input Real FSH_Bld;
	input Real default;
	input Real par29;
        output Real y;
    algorithm
        y :=  par29 * FSH_Bld * default / default;
    end function_14;


    function function_15
        	input Real P4;
	input Real default;
	input Real par72;
        output Real y;
    algorithm
        y :=  par72 * P4 * default / default;
    end function_15;


    function function_16
        	input Real E2;
	input Real default;
	input Real par77;
        output Real y;
    algorithm
        y :=  par77 * E2 * default / default;
    end function_16;


    function function_17
        	input Real Inh;
	input Real default;
	input Real par82;
        output Real y;
    algorithm
        y :=  par82 * Inh * default / default;
    end function_17;


    function function_18
        	input Real OT;
	input Real default;
	input Real par94;
        output Real y;
    algorithm
        y :=  par94 * OT * default / default;
    end function_18;


    function function_19
        	input Real Enz;
	input Real default;
	input Real par89;
        output Real y;
    algorithm
        y :=  par89 * Enz / default;
    end function_19;


    function function_20
        	input Real PGF;
	input Real default;
	input Real par59;
        output Real y;
    algorithm
        y :=  par59 * PGF * default / default;
    end function_20;


    function function_21
        	input Real IOF;
	input Real default;
	input Real par98;
        output Real y;
    algorithm
        y :=  par98 * IOF * default / default;
    end function_21;


    function function_22
        	input Real Foll;
	input Real LH_Bld;
	input Real P4;
	input Real default;
	input Real par45;
	input Real par46;
	input Real par47;
	input Real par48;
        output Real y;
    algorithm
        y :=  (par45 * (P4 * default)^5 / ((P4 * default)^5 + par46^5) + par47 * (LH_Bld * default)^2 / ((LH_Bld * default)^2 + par48^2)) * Foll * default / default;
    end function_22;


    function function_23
        	input Real CL;
	input Real IOF;
	input Real default;
	input Real par65;
	input Real par66;
        output Real y;
    algorithm
        y :=  (par65 * (IOF * default)^5 / ((IOF * default)^5 + par66^5)) * CL * default / default;
    end function_23;


    function function_24
        	input Real E2;
	input Real P4;
	input Real default;
	input Real par31;
	input Real par32;
	input Real par33;
	input Real par34;
        output Real y;
    algorithm
        y :=  (par31 * (E2 * default)^2 / ((E2 * default)^2 + par32^2) + par33 * par34^2 / (par34^2 + (P4 * default)^2)) / default;
    end function_24;


    function function_25
        	input Real Inh;
	input Real default;
	input Real par21;
	input Real par22;
        output Real y;
    algorithm
        y :=  par21 * par22^5 / (par22^5 + (Inh * default)^5) / default;
    end function_25;


    function function_26
        	input Real E2;
	input Real GnRH_Hyp;
	input Real P4;
	input Real default;
	input Real par3;
	input Real par4;
	input Real par5;
	input Real par6;
	input Real par7;
	input Real par8;
	input Real par9;
        output Real y;
    algorithm
        y :=  (par8 * (E2 * default)^5 / ((E2 * default)^5 + par9^5)) * (par3 * (par5^2 / (par5^2 + (P4 * default)^2) + par4^2 / (par4^2 + (E2 * default)^2) - (par5^2 / (par5^2 + (P4 * default)^2)) * par4^2 / (par4^2 + (E2 * default)^2)) + par6 * par7^2 / ((P4 * default)^2 + par7^2)) * GnRH_Hyp * default / default;
    end function_26;


    function function_27
        	input Real FSH_Bld;
	input Real Foll;
	input Real default;
	input Real par41;
	input Real par42;
	input Real par43;
        output Real y;
    algorithm
        y :=  par41 * (FSH_Bld * default)^2 / ((par42 * par43^2 / (par43^2 + (Foll * default)^2))^2 + (FSH_Bld * default)^2) / default;
    end function_27;


    function function_28
        	input Real CL;
	input Real PGF;
	input Real default;
	input Real par95;
	input Real par96;
	input Real par97;
        output Real y;
    algorithm
        y :=  (par95 * (PGF * default)^5 / ((PGF * default)^5 + par96^5)) * (CL * default)^10 / ((CL * default)^10 + par97^10) / default;
    end function_28;
    
    
    function gt
        input Real x;
        input Real y;
        output Boolean z;
        algorithm
            z := (x > y);
    end gt;


    parameter Real par2 = 2.75;
    parameter Real par1 = 16.0;
    parameter Real par3 = 2.05;
    parameter Real par4 = 0.0972;
    parameter Real par5 = 0.35;
    parameter Real par6 = 1.91;
    parameter Real par7 = 0.252;
    parameter Real par8 = 0.99;
    parameter Real par9 = 0.648;
    parameter Real par10 = 1.63;
    parameter Real par21 = 4.21;
    parameter Real par22 = 0.118;
    parameter Real par23 = 0.293;
    parameter Real par24 = 0.152;
    parameter Real par25 = 0.396;
    parameter Real par26 = 0.312;
    parameter Real par27 = 1.23;
    parameter Real par28 = 0.0708;
    parameter Real par29 = 2.73;
    parameter Real par30 = 0.948;
    parameter Real par31 = 0.376;
    parameter Real par32 = 0.243;
    parameter Real par33 = 2.71;
    parameter Real par34 = 0.0269;
    parameter Real par35 = 2.22;
    parameter Real par36 = 0.69;
    parameter Real par37 = 0.0141;
    parameter Real par38 = 12.0;
    parameter Real par41 = 0.562;
    parameter Real par42 = 0.57;
    parameter Real par43 = 0.22;
    parameter Real par45 = 1.1;
    parameter Real par46 = 0.126;
    parameter Real par47 = 3.49;
    parameter Real par48 = 0.171;
    parameter Real par56 = 53.91;
    parameter Real par57 = 1.43;
    parameter Real par58 = 1.087;
    parameter Real par59 = 1.23;
    parameter Real par62 = 0.2;
    parameter Real par63 = 0.0353;
    parameter Real par64 = 0.1;
    parameter Real par65 = 41.39;
    parameter Real par66 = 1.32;
    parameter Real par71 = 2.25;
    parameter Real par72 = 1.41;
    parameter Real par76 = 2.19;
    parameter Real par77 = 1.23;
    parameter Real par81 = 1.41;
    parameter Real par82 = 0.475;
    parameter Real par86 = 3.58;
    parameter Real par87 = 0.77;
    parameter Real par89 = 2.98;
    parameter Real par91 = 1.59;
    parameter Real par92 = 0.143;
    parameter Real par94 = 0.644;
    parameter Real par95 = 39.68;
    parameter Real par96 = 1.22;
    parameter Real par97 = 0.6;
    parameter Real par98 = 0.298;
    parameter Real parameter_1 = 3.7;
    parameter Real parameter_2 = 100.0;
    parameter Real parameter_3 = 5.5;
    parameter Real parameter_5 = 0.0;
    parameter Real parameter_7 = 0.0;
    parameter Real ModelValue_60 = parameter_1;
    parameter Real ModelValue_61 = parameter_2;
    parameter Real default = 1.0;

    Real parameter_4(start=150.0);
    Real parameter_6(start=0.000362064120302475);

    Real GnRH_Pit;
    Real LH_Pit;
    Real LH_Bld;
    Real GnRH_Hyp;
    Real FSH_Pit;
    Real FSH_Bld;
    Real Foll;
    Real CL;
    Real E2;
    Real P4;
    Real Inh;
    Real OT;
    Real Enz;
    Real PGF;
    Real IOF;
    Real src_GnRH;
    Real src_E2;
    Real src_P4;
    Real src_Inh;
    Real src_OT;
    Real src_Enz;
    Real src_PGF;
    Real src_LH;
    Real src_FSH;
    Real snk_GnRH_Hyp;
    Real src_GnRH_Pit;
    Real src_Foll;
    Real src_IOF;
    Real src_CL;
    Real snk_Inh;
    Real snk_P4;
    Real snk_E2;
    Real snk_GnRH_Pit;
    Real snk_LH;
    Real snk_FSH;
    Real snk_IOF;
    Real snk_CL;
    Real snk_Enz;
    Real snk_OT;
    Real snk_PGF;
    Real snk_Foll;
    Real species_1;

initial equation
    GnRH_Pit = 0.219992404098564;
    LH_Pit = 2.25000957482152;
    LH_Bld = 0.00633682772990623;
    GnRH_Hyp = 0.740638780629751;
    FSH_Pit = 0.00579108659591004;
    FSH_Bld = 0.0168604631992291;
    Foll = 0.0286570978235457;
    CL = 0.314393628471893;
    E2 = 0.163690728507925;
    P4 = 0.120192549532403;
    Inh = 0.493710210684922;
    OT = 0.111730059223483;
    Enz = 5.83626691122778e-05;
    PGF = 0.000362064120302475;
    IOF = 0.133415086647186;
    src_GnRH = 0.0;
    src_E2 = 0.0;
    src_P4 = 0.0;
    src_Inh = 0.0;
    src_OT = 0.0;
    src_Enz = 0.0;
    src_PGF = 0.0;
    src_LH = 0.0;
    src_FSH = 0.0;
    snk_GnRH_Hyp = 0.0;
    src_GnRH_Pit = 0.0;
    src_Foll = 0.0;
    src_IOF = 0.0;
    src_CL = 0.0;
    snk_Inh = 0.0;
    snk_P4 = 0.0;
    snk_E2 = 0.0;
    snk_GnRH_Pit = 0.0;
    snk_LH = 0.0;
    snk_FSH = 0.0;
    snk_IOF = 0.0;
    snk_CL = 0.0;
    snk_Enz = 0.0;
    snk_OT = 0.0;
    snk_PGF = 0.0;
    snk_Foll = 0.0;
    species_1 = 0.0;

equation
    parameter_4 = piecewise(time - parameter_5, gt(time, parameter_5), 0);
    parameter_6 = PGF + species_1;
    der(species_1) = ModelValue_60 * ModelValue_61 * ModelValue_61 * parameter_4 * exp(-ModelValue_61 * parameter_4) - parameter_3 * species_1;
    der(GnRH_Pit) = (default * function_26(E2, GnRH_Hyp, P4, default, par3, par4, par5, par6, par7, par8, par9)) - (default * function_12(GnRH_Pit, default, par10));
    der(LH_Pit) = (default * function_24(E2, P4, default, par31, par32, par33, par34)) - (default * function_1(GnRH_Pit, LH_Pit, default, par35, par36, par37));
    der(LH_Bld) = (default * function_1(GnRH_Pit, LH_Pit, default, par35, par36, par37)) - (default * function_13(LH_Bld, default, par38));
    der(GnRH_Hyp) = (default * function_5(GnRH_Hyp, default, par1, par2)) - (default * function_3(E2, GnRH_Hyp, P4, default, par3, par4, par5, par6, par7));
    der(FSH_Pit) = (default * function_25(Inh, default, par21, par22)) - (default * function_2(E2, FSH_Pit, GnRH_Pit, P4, default, par23, par24, par25, par26, par27, par28, par30));
    der(FSH_Bld) = (default * function_2(E2, FSH_Pit, GnRH_Pit, P4, default, par23, par24, par25, par26, par27, par28, par30)) - (default * function_14(FSH_Bld, default, par29));
    der(Foll) = (default * function_27(FSH_Bld, Foll, default, par41, par42, par43)) - (default * function_22(Foll, LH_Bld, P4, default, par45, par46, par47, par48));
    der(CL) = (default * function_4(CL, Foll, LH_Bld, default, par47, par48, par62, par63, par64)) - (default * function_23(CL, IOF, default, par65, par66));
    der(E2) = (default * function_6(Foll, default, par76)) - (default * function_16(E2, default, par77));
    der(P4) = (default * function_7(CL, default, par71)) - (default * function_15(P4, default, par72));
    der(Inh) = (default * function_8(Foll, default, par81)) - (default * function_17(Inh, default, par82));
    der(OT) = (default * function_9(CL, E2, default, par91, par92)) - (default * function_18(OT, default, par94));
    der(Enz) = (default * function_10(P4, default, par86, par87)) - (default * function_19(Enz, default, par89));
    der(PGF) = (default * function_11(Enz, OT, default, par56, par57, par58)) - (default * function_20(PGF, default, par59));
    der(IOF) = (default * function_28(CL, PGF, default, par95, par96, par97)) - (default * function_21(IOF, default, par98));
    der(src_GnRH) = 0.0;
    der(src_E2) = 0.0;
    der(src_P4) = 0.0;
    der(src_Inh) = 0.0;
    der(src_OT) = 0.0;
    der(src_Enz) = 0.0;
    der(src_PGF) = 0.0;
    der(src_LH) = 0.0;
    der(src_FSH) = 0.0;
    der(snk_GnRH_Hyp) = 0.0;
    der(src_GnRH_Pit) = 0.0;
    der(src_Foll) = 0.0;
    der(src_IOF) = 0.0;
    der(src_CL) = 0.0;
    der(snk_Inh) = 0.0;
    der(snk_P4) = 0.0;
    der(snk_E2) = 0.0;
    der(snk_GnRH_Pit) = 0.0;
    der(snk_LH) = 0.0;
    der(snk_FSH) = 0.0;
    der(snk_IOF) = 0.0;
    der(snk_CL) = 0.0;
    der(snk_Enz) = 0.0;
    der(snk_OT) = 0.0;
    der(snk_PGF) = 0.0;
    der(snk_Foll) = 0.0;




end BIOMD481;
