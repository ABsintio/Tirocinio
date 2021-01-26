
model BIOMD580 "Sonntag2012 - mTOR model - IRS dependent regulation of AMPK by insulin"

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


    function function_4_IR_beta_phosphorylation_by_Insulin
        	input Real IR_beta;
	input Real IR_beta_phosphorylation_by_Insulin;
	input Real Insulin;
        output Real y;
    algorithm
        y :=  IR_beta_phosphorylation_by_Insulin * IR_beta * Insulin;
    end function_4_IR_beta_phosphorylation_by_Insulin;


    function function_4_IRS1_phosphorylation_by_IR_beta_pY1146
        	input Real IRS1;
	input Real IRS1_phosphorylation_by_IR_beta_pY1146;
	input Real IR_beta_pY1146;
        output Real y;
    algorithm
        y :=  IRS1_phosphorylation_by_IR_beta_pY1146 * IRS1 * IR_beta_pY1146;
    end function_4_IRS1_phosphorylation_by_IR_beta_pY1146;


    function function_4_IRS1_p_phosphorylation_by_p70S6K_pT389
        	input Real IRS1_p;
	input Real IRS1_p_phosphorylation_by_p70S6K_pT389;
	input Real p70S6K_pT389;
        output Real y;
    algorithm
        y :=  IRS1_p_phosphorylation_by_p70S6K_pT389 * IRS1_p * p70S6K_pT389;
    end function_4_IRS1_p_phosphorylation_by_p70S6K_pT389;


    function function_4_AMPK_T172_phosphorylation
        	input Real AMPK;
	input Real AMPK_T172_phosphorylation;
	input Real IRS1_p;
        output Real y;
    algorithm
        y :=  AMPK_T172_phosphorylation * AMPK * IRS1_p;
    end function_4_AMPK_T172_phosphorylation;


    function function_4_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p
        	input Real Akt_S473;
	input Real Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p;
	input Real IRS1_p;
	input Real mTORC2_pS2481;
        output Real y;
    algorithm
        y :=  Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p * Akt_S473 * mTORC2_pS2481 * IRS1_p;
    end function_4_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p;


    function function_4_Akt_T308_phosphorylation_by_IRS1_p
        	input Real Akt_T308;
	input Real Akt_T308_phosphorylation_by_IRS1_p;
	input Real IRS1_p;
        output Real y;
    algorithm
        y :=  Akt_T308_phosphorylation_by_IRS1_p * Akt_T308 * IRS1_p;
    end function_4_Akt_T308_phosphorylation_by_IRS1_p;


    function function_4_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387
        	input Real TSC1_TSC2_pS1387;
	input Real mTORC1_pS2448;
	input Real mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387;
        output Real y;
    algorithm
        y :=  mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387 * mTORC1_pS2448 * TSC1_TSC2_pS1387;
    end function_4_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387;


    function function_4_mTORC1_S2448_activation_by_Amino_Acids
        	input Real Amino_Acids;
	input Real mTORC1;
	input Real mTORC1_S2448_activation_by_Amino_Acids;
        output Real y;
    algorithm
        y :=  mTORC1_S2448_activation_by_Amino_Acids * mTORC1 * Amino_Acids;
    end function_4_mTORC1_S2448_activation_by_Amino_Acids;


    function function_4_mTORC2_S2481_phosphorylation_by_PI3K_variant_p
        	input Real PI3K_variant_p;
	input Real mTORC2;
	input Real mTORC2_S2481_phosphorylation_by_PI3K_variant_p;
        output Real y;
    algorithm
        y :=  mTORC2_S2481_phosphorylation_by_PI3K_variant_p * mTORC2 * PI3K_variant_p;
    end function_4_mTORC2_S2481_phosphorylation_by_PI3K_variant_p;


    function function_4_p70S6K_T389_phosphorylation_by_mTORC1_pS2448
        	input Real mTORC1_pS2448;
	input Real p70S6K;
	input Real p70S6K_T389_phosphorylation_by_mTORC1_pS2448;
        output Real y;
    algorithm
        y :=  p70S6K_T389_phosphorylation_by_mTORC1_pS2448 * p70S6K * mTORC1_pS2448;
    end function_4_p70S6K_T389_phosphorylation_by_mTORC1_pS2448;


    function function_4_PRAS40_S183_phosphorylation_by_mTORC1_pS2448
        	input Real PRAS40_S183;
	input Real PRAS40_S183_phosphorylation_by_mTORC1_pS2448;
	input Real mTORC1_pS2448;
        output Real y;
    algorithm
        y :=  PRAS40_S183_phosphorylation_by_mTORC1_pS2448 * PRAS40_S183 * mTORC1_pS2448;
    end function_4_PRAS40_S183_phosphorylation_by_mTORC1_pS2448;


    function function_4_PRAS40_T246_phosphorylation_by_Akt_pT308
        	input Real Akt_pT308;
	input Real PRAS40_T246;
	input Real PRAS40_T246_phosphorylation_by_Akt_pT308;
        output Real y;
    algorithm
        y :=  PRAS40_T246_phosphorylation_by_Akt_pT308 * PRAS40_T246 * Akt_pT308;
    end function_4_PRAS40_T246_phosphorylation_by_Akt_pT308;


    function function_4_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172
        	input Real AMPK_pT172;
	input Real TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172;
	input Real TSC1_TSC2_pT1462;
        output Real y;
    algorithm
        y :=  TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172 * TSC1_TSC2_pT1462 * AMPK_pT172;
    end function_4_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172;


    function function_4_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308
        	input Real Akt_pT308;
	input Real TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308;
	input Real TSC1_TSC2_pS1387;
        output Real y;
    algorithm
        y :=  TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308 * TSC1_TSC2_pS1387 * Akt_pT308;
    end function_4_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308;


    function function_4_PI3K_variant_phosphorylation_by_IR_beta_pY1146
        	input Real IR_beta_pY1146;
	input Real PI3K_variant;
	input Real PI3K_variant_phosphorylation_by_IR_beta_pY1146;
        output Real y;
    algorithm
        y :=  PI3K_variant_phosphorylation_by_IR_beta_pY1146 * PI3K_variant * IR_beta_pY1146;
    end function_4_PI3K_variant_phosphorylation_by_IR_beta_pY1146;


    parameter Real IR_beta_phosphorylation_by_Insulin = 0.124273166818913;
    parameter Real IR_beta_pY1146_dephosphorylation = 0.396235078561935;
    parameter Real IR_beta_ready = 0.0532769862975496;
    parameter Real IRS1_phosphorylation_by_IR_beta_pY1146 = 0.00491598674814158;
    parameter Real IRS1_p_phosphorylation_by_p70S6K_pT389 = 1682.74838380846;
    parameter Real IRS1_pS636_dephosphorylation = 0.0130499987407289;
    parameter Real AMPK_T172_phosphorylation = 9.79765849087796;
    parameter Real AMPK_pT172_dephosphorylation = 0.0107214736590526;
    parameter Real Akt_pT308_dephosphorylation = 0.00335544587646129;
    parameter Real Akt_pS473_dephosphorylation = 0.00640215551178824;
    parameter Real Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p = 13.1441708920036;
    parameter Real Akt_T308_phosphorylation_by_IRS1_p = 6.91810637938108;
    parameter Real mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387 = 0.0106651971237991;
    parameter Real mTORC1_S2448_activation_by_Amino_Acids = 0.00438915524637669;
    parameter Real mTORC2_pS2481_dephosphorylation = 0.0183734532316308;
    parameter Real mTORC2_S2481_phosphorylation_by_PI3K_variant_p = 0.37535264623552;
    parameter Real p70S6K_pT389_dephosphorylation = 0.0113511588360422;
    parameter Real p70S6K_T389_phosphorylation_by_mTORC1_pS2448 = 0.00184042775983938;
    parameter Real PRAS40_pS183_dephosphorylation = 2.33014390064544;
    parameter Real PRAS40_pT246_dephosphorylation = 1.60512543108081;
    parameter Real PRAS40_S183_phosphorylation_by_mTORC1_pS2448 = 0.187621138099883;
    parameter Real PRAS40_T246_phosphorylation_by_Akt_pT308 = 0.137729484208433;
    parameter Real TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172 = 0.036558856656738;
    parameter Real TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308 = 0.0177561800881718;
    parameter Real PI3K_variant_p_dephosphorylation = 10.0;
    parameter Real PI3K_variant_phosphorylation_by_IR_beta_pY1146 = 0.01;
    parameter Real scale_IR_beta_pY1146_obs = 1.0;
    parameter Real scale_IRS1_pS636_obs = 1.0;
    parameter Real scale_AMPK_pT172_obs = 1.0;
    parameter Real scale_Akt_pT308_obs = 1.0;
    parameter Real scale_Akt_pS473_obs = 1.0;
    parameter Real scale_TSC1_TSC2_pS1387_obs = 1.0;
    parameter Real scale_mTOR_pS2448_obs = 1.0;
    parameter Real scale_mTOR_pS2481_obs = 1.0;
    parameter Real scale_p70S6K_pT389_obs = 1.0;
    parameter Real scale_PRAS40_pT246_obs = 1.0;
    parameter Real scale_PRAS40_pS183_obs = 1.0;
    parameter Real Cell = 1.0;



    Real IR_beta;
    Real IR_beta_pY1146;
    Real IR_beta_refractory;
    Real IRS1;
    Real IRS1_p;
    Real IRS1_pS636;
    Real AMPK;
    Real AMPK_pT172;
    Real Akt_T308;
    Real Akt_pT308;
    Real Akt_S473;
    Real Akt_pS473;
    Real mTORC1;
    Real mTORC1_pS2448;
    Real mTORC2;
    Real mTORC2_pS2481;
    Real p70S6K;
    Real p70S6K_pT389;
    Real PRAS40_T246;
    Real PRAS40_pT246;
    Real PRAS40_S183;
    Real PRAS40_pS183;
    Real TSC1_TSC2_pT1462;
    Real TSC1_TSC2_pS1387;
    Real PI3K_variant;
    Real PI3K_variant_p;
    Real Insulin;
    Real Amino_Acids;
    Real IR_beta_pY1146_obs;
    Real IRS1_pS636_obs;
    Real AMPK_pT172_obs;
    Real Akt_pT308_obs;
    Real Akt_pS473_obs;
    Real TSC1_TSC2_pS1387_obs;
    Real mTOR_pS2448_obs;
    Real mTOR_pS2481_obs;
    Real p70S6K_pT389_obs;
    Real PRAS40_pT246_obs;
    Real PRAS40_pS183_obs;

initial equation
    IR_beta = 16.5607;
    IR_beta_pY1146 = 0.0;
    IR_beta_refractory = 0.0;
    IRS1 = 18.9345;
    IRS1_p = 0.0;
    IRS1_pS636 = 0.0;
    AMPK = 20.5064;
    AMPK_pT172 = 0.0;
    Akt_T308 = 21.4109;
    Akt_pT308 = 0.0;
    Akt_S473 = 12.2517;
    Akt_pS473 = 0.0;
    mTORC1 = 25.14;
    mTORC1_pS2448 = 0.0;
    mTORC2 = 18.7959;
    mTORC2_pS2481 = 0.0;
    p70S6K = 14.301;
    p70S6K_pT389 = 0.0;
    PRAS40_T246 = 13.5613;
    PRAS40_pT246 = 0.0;
    PRAS40_S183 = 17.55;
    PRAS40_pS183 = 0.0;
    TSC1_TSC2_pT1462 = 14.9175;
    TSC1_TSC2_pS1387 = 0.0;
    PI3K_variant = 18.9345;
    PI3K_variant_p = 0.0;

equation
    Amino_Acids = piecewise(0, lt(time, -1), piecewise(0, lt(time, 0), 10));
    Akt_pT308_obs = scale_Akt_pT308_obs * Akt_pT308;
    TSC1_TSC2_pS1387_obs = scale_TSC1_TSC2_pS1387_obs * TSC1_TSC2_pS1387;
    PRAS40_pS183_obs = scale_PRAS40_pS183_obs * PRAS40_pS183;
    IR_beta_pY1146_obs = scale_IR_beta_pY1146_obs * IR_beta_pY1146;
    Insulin = piecewise(0, lt(time, -1), piecewise(0, lt(time, 0), 10));
    IRS1_pS636_obs = scale_IRS1_pS636_obs * IRS1_pS636;
    Akt_pS473_obs = scale_Akt_pS473_obs * Akt_pS473;
    AMPK_pT172_obs = scale_AMPK_pT172_obs * AMPK_pT172;
    mTOR_pS2448_obs = scale_mTOR_pS2448_obs * mTORC1_pS2448;
    p70S6K_pT389_obs = scale_p70S6K_pT389_obs * p70S6K_pT389;
    mTOR_pS2481_obs = scale_mTOR_pS2481_obs * mTORC2_pS2481;
    PRAS40_pT246_obs = scale_PRAS40_pT246_obs * PRAS40_pT246;
    der(IR_beta) = (Cell * IR_beta_ready * IR_beta_refractory) - (Cell * function_4_IR_beta_phosphorylation_by_Insulin(IR_beta, IR_beta_phosphorylation_by_Insulin, Insulin));
    der(IR_beta_pY1146) = (Cell * function_4_IR_beta_phosphorylation_by_Insulin(IR_beta, IR_beta_phosphorylation_by_Insulin, Insulin)) - (Cell * IR_beta_pY1146_dephosphorylation * IR_beta_pY1146);
    der(IR_beta_refractory) = (Cell * IR_beta_pY1146_dephosphorylation * IR_beta_pY1146) - (Cell * IR_beta_ready * IR_beta_refractory);
    der(IRS1) = (Cell * IRS1_pS636_dephosphorylation * IRS1_pS636) - (Cell * function_4_IRS1_phosphorylation_by_IR_beta_pY1146(IRS1, IRS1_phosphorylation_by_IR_beta_pY1146, IR_beta_pY1146));
    der(IRS1_p) = (Cell * function_4_IRS1_phosphorylation_by_IR_beta_pY1146(IRS1, IRS1_phosphorylation_by_IR_beta_pY1146, IR_beta_pY1146)) - (Cell * function_4_IRS1_p_phosphorylation_by_p70S6K_pT389(IRS1_p, IRS1_p_phosphorylation_by_p70S6K_pT389, p70S6K_pT389));
    der(IRS1_pS636) = (Cell * function_4_IRS1_p_phosphorylation_by_p70S6K_pT389(IRS1_p, IRS1_p_phosphorylation_by_p70S6K_pT389, p70S6K_pT389)) - (Cell * IRS1_pS636_dephosphorylation * IRS1_pS636);
    der(AMPK) = (Cell * AMPK_pT172_dephosphorylation * AMPK_pT172) - (Cell * function_4_AMPK_T172_phosphorylation(AMPK, AMPK_T172_phosphorylation, IRS1_p));
    der(AMPK_pT172) = (Cell * function_4_AMPK_T172_phosphorylation(AMPK, AMPK_T172_phosphorylation, IRS1_p)) - (Cell * AMPK_pT172_dephosphorylation * AMPK_pT172);
    der(Akt_T308) = (Cell * Akt_pT308_dephosphorylation * Akt_pT308) - (Cell * function_4_Akt_T308_phosphorylation_by_IRS1_p(Akt_T308, Akt_T308_phosphorylation_by_IRS1_p, IRS1_p));
    der(Akt_pT308) = (Cell * function_4_Akt_T308_phosphorylation_by_IRS1_p(Akt_T308, Akt_T308_phosphorylation_by_IRS1_p, IRS1_p)) - (Cell * Akt_pT308_dephosphorylation * Akt_pT308);
    der(Akt_S473) = (Cell * Akt_pS473_dephosphorylation * Akt_pS473) - (Cell * function_4_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p(Akt_S473, Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p, IRS1_p, mTORC2_pS2481));
    der(Akt_pS473) = (Cell * function_4_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p(Akt_S473, Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p, IRS1_p, mTORC2_pS2481)) - (Cell * Akt_pS473_dephosphorylation * Akt_pS473);
    der(mTORC1) = (Cell * function_4_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387(TSC1_TSC2_pS1387, mTORC1_pS2448, mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387)) - (Cell * function_4_mTORC1_S2448_activation_by_Amino_Acids(Amino_Acids, mTORC1, mTORC1_S2448_activation_by_Amino_Acids));
    der(mTORC1_pS2448) = (Cell * function_4_mTORC1_S2448_activation_by_Amino_Acids(Amino_Acids, mTORC1, mTORC1_S2448_activation_by_Amino_Acids)) - (Cell * function_4_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387(TSC1_TSC2_pS1387, mTORC1_pS2448, mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387));
    der(mTORC2) = (Cell * mTORC2_pS2481_dephosphorylation * mTORC2_pS2481) - (Cell * function_4_mTORC2_S2481_phosphorylation_by_PI3K_variant_p(PI3K_variant_p, mTORC2, mTORC2_S2481_phosphorylation_by_PI3K_variant_p));
    der(mTORC2_pS2481) = (Cell * function_4_mTORC2_S2481_phosphorylation_by_PI3K_variant_p(PI3K_variant_p, mTORC2, mTORC2_S2481_phosphorylation_by_PI3K_variant_p)) - (Cell * mTORC2_pS2481_dephosphorylation * mTORC2_pS2481);
    der(p70S6K) = (Cell * p70S6K_pT389_dephosphorylation * p70S6K_pT389) - (Cell * function_4_p70S6K_T389_phosphorylation_by_mTORC1_pS2448(mTORC1_pS2448, p70S6K, p70S6K_T389_phosphorylation_by_mTORC1_pS2448));
    der(p70S6K_pT389) = (Cell * function_4_p70S6K_T389_phosphorylation_by_mTORC1_pS2448(mTORC1_pS2448, p70S6K, p70S6K_T389_phosphorylation_by_mTORC1_pS2448)) - (Cell * p70S6K_pT389_dephosphorylation * p70S6K_pT389);
    der(PRAS40_T246) = (Cell * PRAS40_pT246_dephosphorylation * PRAS40_pT246) - (Cell * function_4_PRAS40_T246_phosphorylation_by_Akt_pT308(Akt_pT308, PRAS40_T246, PRAS40_T246_phosphorylation_by_Akt_pT308));
    der(PRAS40_pT246) = (Cell * function_4_PRAS40_T246_phosphorylation_by_Akt_pT308(Akt_pT308, PRAS40_T246, PRAS40_T246_phosphorylation_by_Akt_pT308)) - (Cell * PRAS40_pT246_dephosphorylation * PRAS40_pT246);
    der(PRAS40_S183) = (Cell * PRAS40_pS183_dephosphorylation * PRAS40_pS183) - (Cell * function_4_PRAS40_S183_phosphorylation_by_mTORC1_pS2448(PRAS40_S183, PRAS40_S183_phosphorylation_by_mTORC1_pS2448, mTORC1_pS2448));
    der(PRAS40_pS183) = (Cell * function_4_PRAS40_S183_phosphorylation_by_mTORC1_pS2448(PRAS40_S183, PRAS40_S183_phosphorylation_by_mTORC1_pS2448, mTORC1_pS2448)) - (Cell * PRAS40_pS183_dephosphorylation * PRAS40_pS183);
    der(TSC1_TSC2_pT1462) = (Cell * function_4_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308(Akt_pT308, TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308, TSC1_TSC2_pS1387)) - (Cell * function_4_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172(AMPK_pT172, TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172, TSC1_TSC2_pT1462));
    der(TSC1_TSC2_pS1387) = (Cell * function_4_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172(AMPK_pT172, TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172, TSC1_TSC2_pT1462)) - (Cell * function_4_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308(Akt_pT308, TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308, TSC1_TSC2_pS1387));
    der(PI3K_variant) = (Cell * PI3K_variant_p_dephosphorylation * PI3K_variant_p) - (Cell * function_4_PI3K_variant_phosphorylation_by_IR_beta_pY1146(IR_beta_pY1146, PI3K_variant, PI3K_variant_phosphorylation_by_IR_beta_pY1146));
    der(PI3K_variant_p) = (Cell * function_4_PI3K_variant_phosphorylation_by_IR_beta_pY1146(IR_beta_pY1146, PI3K_variant, PI3K_variant_phosphorylation_by_IR_beta_pY1146)) - (Cell * PI3K_variant_p_dephosphorylation * PI3K_variant_p);




end BIOMD580;
