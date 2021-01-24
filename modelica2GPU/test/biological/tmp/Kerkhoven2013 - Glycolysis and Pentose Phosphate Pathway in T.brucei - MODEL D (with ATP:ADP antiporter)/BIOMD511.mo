
model BIOMD511 "Kerkhoven2013 - Glycolysis and Pentose Phosphate Pathway in T.brucei - MODEL D (with ATP:ADP antiporter)"

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


    function vAK
        	input Real ADP;
	input Real AMP;
	input Real ATP;
	input Real k1;
	input Real k2;
        output Real y;
    algorithm
        y :=  k1 * ADP^2 - AMP * ATP * k2;
    end vAK;


    function v2sub2prod
        	input Real Vfmax;
	input Real Keq;
	input Real S1;
	input Real Ks1;
	input Real S2;
	input Real Ks2;
	input Real P1;
	input Real Kp1;
	input Real P2;
	input Real Kp2;
        output Real y;
    algorithm
        y :=  Vfmax * S1 * S2 * (1 - P1 * P2 / (Keq * S1 * S2)) / (Ks1 * Ks2 * (1 + S1 / Ks1 + P1 / Kp1) * (1 + S2 / Ks2 + P2 / Kp2));
    end v2sub2prod;


    function v1sub
        	input Real Vfmax;
	input Real S;
	input Real Ks;
        output Real y;
    algorithm
        y :=  Vfmax * S / (Ks * (1 + S / Ks));
    end v1sub;


    function v2sub2prod_compinhib
        	input Real Vfmax;
	input Real Keq;
	input Real S1;
	input Real Ks1;
	input Real S2;
	input Real Ks2;
	input Real P1;
	input Real Kp1;
	input Real P2;
	input Real Kp2;
	input Real I1;
	input Real Ki1;
	input Real I2;
	input Real Ki2;
        output Real y;
    algorithm
        y :=  Vfmax * S1 * S2 * (1 - P1 * P2 / (Keq * S1 * S2)) / (Ks1 * Ks2 * (1 + S1 / Ks1 + P1 / Kp1) * (1 + S2 / Ks2 + P2 / Kp2 + I1 / Ki1 + I2 / Ki2));
    end v2sub2prod_compinhib;


    function mass_action_rev
        	input Real k1;
	input Real S;
	input Real k2;
	input Real P;
        output Real y;
    algorithm
        y :=  k1 * S - k2 * P;
    end mass_action_rev;


    function v1sub1prod
        	input Real Vfmax;
	input Real Keq;
	input Real S;
	input Real Ks;
	input Real P;
	input Real Kp;
        output Real y;
    algorithm
        y :=  Vfmax * S * (1 - P / (Keq * S)) / (Ks * (1 + S / Ks + P / Kp));
    end v1sub1prod;


    function mass_action_irrev
        	input Real k;
	input Real S;
        output Real y;
    algorithm
        y :=  k * S;
    end mass_action_irrev;


    parameter Real TPI_g_Vmax_0 = 999.3;
    parameter Real TPI_g_Keq_0 = 0.046;
    parameter Real TPI_g_KmDHAP_0 = 1.2;
    parameter Real TPI_g_KmGA3P_0 = 0.25;
    parameter Real PYK_c_Vmax_1 = 1020.0;
    parameter Real PYK_c_KmPEP_1 = 0.34;
    parameter Real PYK_c_KiATP_1 = 0.57;
    parameter Real PYK_c_KiADP_1 = 0.64;
    parameter Real PYK_c_n_1 = 2.5;
    parameter Real PYK_c_KmADP_1 = 0.114;
    parameter Real PYK_c_Keq_1 = 10800.0;
    parameter Real PYK_c_KmPyr_1 = 50.0;
    parameter Real PYK_c_KmATP_1 = 15.0;
    parameter Real PFK_g_Vmax_2 = 1708.0;
    parameter Real PFK_g_Ki1_2 = 15.8;
    parameter Real PFK_g_KmFru6P_2 = 0.999;
    parameter Real PFK_g_KmATP_2 = 0.0648;
    parameter Real PFK_g_Keq_2 = 1035.0;
    parameter Real PFK_g_KsATP_2 = 0.0393;
    parameter Real PFK_g_KmADP_2 = 1.0;
    parameter Real PFK_g_Ki2_2 = 10.7;
    parameter Real G6PDH_g_Vmax_3 = 8.4;
    parameter Real G6PDH_g_Keq_3 = 5.02;
    parameter Real G6PDH_g_KmGlc6P_3 = 0.058;
    parameter Real G6PDH_g_KmNADP_3 = 0.0094;
    parameter Real G6PDH_g_Km6PGL_3 = 0.04;
    parameter Real G6PDH_g_KmNADPH_3 = 0.0001;
    parameter Real PGAM_c_Vmax_4 = 225.0;
    parameter Real PGAM_c_Keq_4 = 0.17;
    parameter Real PGAM_c_Km3PGA_4 = 0.15;
    parameter Real PGAM_c_Km2PGA_4 = 0.16;
    parameter Real PyrT_c_Vmax_5 = 230.0;
    parameter Real PyrT_c_KmPyr_5 = 1.96;
    parameter Real G6PDH_c_Vmax_6 = 8.4;
    parameter Real G6PDH_c_Keq_6 = 5.02;
    parameter Real G6PDH_c_KmGlc6P_6 = 0.058;
    parameter Real G6PDH_c_KmNADP_6 = 0.0094;
    parameter Real G6PDH_c_Km6PGL_6 = 0.04;
    parameter Real G6PDH_c_KmNADPH_6 = 0.0001;
    parameter Real ENO_c_Vmax_7 = 598.0;
    parameter Real ENO_c_Keq_7 = 4.17;
    parameter Real ENO_c_Km2PGA_7 = 0.054;
    parameter Real ENO_c_KmPEP_7 = 0.24;
    parameter Real HXK_g_Vmax_8 = 1774.68;
    parameter Real HXK_g_Keq_8 = 759.0;
    parameter Real HXK_g_KmGlc_8 = 0.1;
    parameter Real HXK_g_KmATP_8 = 0.116;
    parameter Real HXK_g_KmGlc6P_8 = 2.7;
    parameter Real HXK_g_KmADP_8 = 0.126;
    parameter Real _3PGAT_g_k_9 = 250.0;
    parameter Real NADPHu_c_k_10 = 2.0;
    parameter Real HXK_c_Vmax_11 = 154.32;
    parameter Real HXK_c_Keq_11 = 759.0;
    parameter Real HXK_c_KmGlc_11 = 0.1;
    parameter Real HXK_c_KmATP_11 = 0.116;
    parameter Real HXK_c_KmGlc6P_11 = 2.7;
    parameter Real HXK_c_KmADP_11 = 0.126;
    parameter Real NADPHu_g_k_12 = 2.0;
    parameter Real AK_c_k1_13 = 480.0;
    parameter Real AK_c_k2_13 = 1000.0;
    parameter Real G6PP_c_Vmax_14 = 28.0;
    parameter Real G6PP_c_Keq_14 = 263.0;
    parameter Real G6PP_c_KmGlc6P_14 = 5.6;
    parameter Real G6PP_c_KmGlc_14 = 5.6;
    parameter Real _6PGDH_g_Vmax_15 = 10.6;
    parameter Real _6PGDH_g_Keq_15 = 47.0;
    parameter Real _6PGDH_g_Km6PG_15 = 0.0035;
    parameter Real _6PGDH_g_KmNADP_15 = 0.001;
    parameter Real _6PGDH_g_KmRul5P_15 = 0.03;
    parameter Real _6PGDH_g_KmNADPH_15 = 0.0006;
    parameter Real PGI_g_Vmax_16 = 1305.0;
    parameter Real PGI_g_KmGlc6P_16 = 0.4;
    parameter Real PGI_g_Keq_16 = 0.457;
    parameter Real PGI_g_KmFru6P_16 = 0.12;
    parameter Real PGI_g_Ki6PG_16 = 0.14;
    parameter Real AK_g_k1_17 = 480.0;
    parameter Real AK_g_k2_17 = 1000.0;
    parameter Real TOX_c_k_18 = 2.0;
    parameter Real GDA_g_k_19 = 600.0;
    parameter Real ATPT_g_Vmax_20 = 1.5;
    parameter Real ATPT_g_Keq_20 = 1.0;
    parameter Real ATPT_g_KmADP_20 = 0.02;
    parameter Real ATPT_g_KmATP_20 = 0.02;
    parameter Real PGL_c_Vmax_21 = 28.0;
    parameter Real PGL_c_Keq_21 = 20000.0;
    parameter Real PGL_c_Km6PGL_21 = 0.05;
    parameter Real PGL_c_Km6PG_21 = 0.05;
    parameter Real PGL_c_k_21 = 0.055;
    parameter Real _6PGDH_c_Vmax_22 = 10.6;
    parameter Real _6PGDH_c_Keq_22 = 47.0;
    parameter Real _6PGDH_c_Km6PG_22 = 0.0035;
    parameter Real _6PGDH_c_KmNADP_22 = 0.001;
    parameter Real _6PGDH_c_KmRul5P_22 = 0.03;
    parameter Real _6PGDH_c_KmNADPH_22 = 0.0006;
    parameter Real PPI_c_Vmax_23 = 72.0;
    parameter Real PPI_c_Keq_23 = 5.6;
    parameter Real PPI_c_KmRul5P_23 = 1.4;
    parameter Real PPI_c_KmRib5P_23 = 4.0;
    parameter Real PPI_g_Vmax_24 = 72.0;
    parameter Real PPI_g_Keq_24 = 5.6;
    parameter Real PPI_g_KmRul5P_24 = 1.4;
    parameter Real PPI_g_KmRib5P_24 = 4.0;
    parameter Real GlcT_g_k1_25 = 250000.0;
    parameter Real GlcT_g_k2_25 = 250000.0;
    parameter Real GlcT_c_Vmax_26 = 111.7;
    parameter Real GlcT_c_KmGlc_26 = 1.0;
    parameter Real GlcT_c_alpha_26 = 0.75;
    parameter Real PGL_g_Vmax_27 = 5.0;
    parameter Real PGL_g_Keq_27 = 20000.0;
    parameter Real PGL_g_Km6PGL_27 = 0.05;
    parameter Real PGL_g_Km6PG_27 = 0.05;
    parameter Real PGL_g_k_27 = 0.055;
    parameter Real TR_c_Vmax_28 = 252.0;
    parameter Real TR_c_Keq_28 = 434.0;
    parameter Real TR_c_KmTS2_28 = 0.0069;
    parameter Real TR_c_KmNADPH_28 = 0.00077;
    parameter Real TR_c_KmTSH2_28 = 0.0018;
    parameter Real TR_c_KmNADP_28 = 0.081;
    parameter Real PGK_g_Vmax_29 = 2862.0;
    parameter Real PGK_g_Keq_29 = 3377.0;
    parameter Real PGK_g_Km13BPGA_29 = 0.003;
    parameter Real PGK_g_KmADP_29 = 0.1;
    parameter Real PGK_g_Km3PGA_29 = 1.62;
    parameter Real PGK_g_KmATP_29 = 0.29;
    parameter Real G3PDH_g_Vmax_30 = 465.0;
    parameter Real G3PDH_g_Keq_30 = 17085.0;
    parameter Real G3PDH_g_KmDHAP_30 = 0.1;
    parameter Real G3PDH_g_KmNADH_30 = 0.01;
    parameter Real G3PDH_g_KmGly3P_30 = 2.0;
    parameter Real G3PDH_g_KmNAD_30 = 0.4;
    parameter Real ATPu_c_k_31 = 50.0;
    parameter Real GK_g_Vmax_32 = 200.0;
    parameter Real GK_g_Keq_32 = 0.000837;
    parameter Real GK_g_KmGly3P_32 = 3.83;
    parameter Real GK_g_KmADP_32 = 0.56;
    parameter Real GK_g_KmGly_32 = 0.44;
    parameter Real GK_g_KmATP_32 = 0.24;
    parameter Real ALD_g_Vmax_33 = 560.0;
    parameter Real ALD_g_KmFru16BP_33 = 0.009;
    parameter Real ALD_g_KiATP_33 = 0.68;
    parameter Real ALD_g_KiADP_33 = 1.51;
    parameter Real ALD_g_KiAMP_33 = 3.65;
    parameter Real ALD_g_Keq_33 = 0.084;
    parameter Real ALD_g_KmGA3P_33 = 0.067;
    parameter Real ALD_g_KmDHAP_33 = 0.015;
    parameter Real ALD_g_KiGA3P_33 = 0.098;
    parameter Real GAPDH_g_Vmax_34 = 720.9;
    parameter Real GAPDH_g_Keq_34 = 0.066;
    parameter Real GAPDH_g_KmGA3P_34 = 0.15;
    parameter Real GAPDH_g_KmNAD_34 = 0.45;
    parameter Real GAPDH_g_Km13BPGA_34 = 0.1;
    parameter Real GAPDH_g_KmNADH_34 = 0.02;
    parameter Real GPO_c_Vmax_35 = 368.0;
    parameter Real GPO_c_KmGly3P_35 = 1.7;
    parameter Real cytosol = 1.0;
    parameter Real glycosome = 1.0;
    parameter Real default = 1.0;



    Real _2PGA_c;
    Real ATP_c;
    Real DHAP_c;
    Real ATP_g;
    Real DHAP_g;
    Real ADP_g;
    Real Glc6P_g;
    Real ADP_c;
    Real _3PGA_c;
    Real Fru6P_g;
    Real Pi_g;
    Real O2_c;
    Real NADP_c;
    Real NADP_g;
    Real _6PG_g;
    Real CO2_c;
    Real Rul5P_c;
    Real _6PG_c;
    Real Rul5P_g;
    Real Glc6P_c;
    Real Rib5P_c;
    Real _13BPGA_g;
    Real Glc_c;
    Real Rib5P_g;
    Real Glc_g;
    Real Glc_e;
    Real NADPH_g;
    Real NADPH_c;
    Real Pyr_c;
    Real Pyr_e;
    Real NAD_g;
    Real Fru16BP_g;
    Real GA3P_g;
    Real Gly_e;
    Real TSH2_c;
    Real CO2_g;
    Real Gly3P_c;
    Real Gly3P_g;
    Real _6PGL_c;
    Real TS2_c;
    Real _6PGL_g;
    Real PEP_c;
    Real AMP_g;
    Real _3PGA_g;
    Real AMP_c;
    Real NADH_g;

initial equation
    _2PGA_c = 0.1;
    ATP_c = 0.3417;
    DHAP_c = 2.23132912;
    ATP_g = 0.2405;
    DHAP_g = 8.483130623;
    ADP_g = 1.519;
    Glc6P_g = 0.5;
    ADP_c = 1.3165;
    _3PGA_c = 0.1;
    Fru6P_g = 0.5;
    Pi_g = 0.0;
    O2_c = 1.0;
    NADP_c = 0.1;
    NADP_g = 0.1;
    _6PG_g = 0.0841958;
    CO2_c = 0.0;
    Rul5P_c = 0.41282;
    _6PG_c = 0.0841958;
    Rul5P_g = 0.41282;
    Glc6P_c = 0.5;
    Rib5P_c = 0.01;
    _13BPGA_g = 0.5;
    Glc_c = 0.1;
    Rib5P_g = 0.01;
    Glc_g = 0.1;
    Glc_e = 5.0;
    NADPH_g = 3.9;
    NADPH_c = 3.9;
    Pyr_c = 10.0;
    Pyr_e = 0.0;
    NAD_g = 2.0;
    Fru16BP_g = 10.0;
    GA3P_g = 2.5;
    Gly_e = 0.0;
    TSH2_c = 0.01;
    CO2_g = 0.0;
    Gly3P_c = 2.76867088;
    Gly3P_g = 10.51686938;
    _6PGL_c = 0.0795278;
    TS2_c = 0.37;
    _6PGL_g = 0.0795278;
    PEP_c = 1.0;
    AMP_g = 4.2405;
    _3PGA_g = 0.1;
    AMP_c = 2.2418;
    NADH_g = 2.0;

equation

    der(_2PGA_c) = (v1sub1prod(PGAM_c_Vmax_4, PGAM_c_Keq_4, _3PGA_c, PGAM_c_Km3PGA_4, _2PGA_c, PGAM_c_Km2PGA_4)) - (v1sub1prod(ENO_c_Vmax_7, ENO_c_Keq_7, _2PGA_c, ENO_c_Km2PGA_7, PEP_c, ENO_c_KmPEP_7));
    der(ATP_c) = (PYK_c_Vmax_1 * ADP_c * (1 - Pyr_c * ATP_c / (PYK_c_Keq_1 * PEP_c * ADP_c)) * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) + Pyr_c / PYK_c_KmPyr_1) * (1 + ADP_c / PYK_c_KmADP_1 + ATP_c / PYK_c_KmATP_1))) + (vAK(ADP_c, AMP_c, ATP_c, AK_c_k1_13, AK_c_k2_13)) - (v2sub2prod(HXK_c_Vmax_11, HXK_c_Keq_11, Glc_c, HXK_c_KmGlc_11, ATP_c, HXK_c_KmATP_11, Glc6P_c, HXK_c_KmGlc_116P, ADP_c, HXK_c_KmADP_11)) - (v2sub2prod(ATPT_g_Vmax_20, ATPT_g_Keq_20, ADP_g, ATPT_g_KmADP_20, ATP_c, ATPT_g_KmATP_20, ADP_c, ATPT_g_KmADP_20, ATP_g, ATPT_g_KmATP_20)) - (ATPu_c_k_31 * ATP_c / ADP_c);
    der(DHAP_c) = (v1sub(GPO_c_Vmax_35, Gly3P_c, GPO_c_KmGly3P_35)) - (Gly3P_g * GDA_g_k_19 * DHAP_c - Gly3P_c * GDA_g_k_19 * DHAP_g);
    der(ATP_g) = (vAK(ADP_g, AMP_g, ATP_g, AK_g_k1_17, AK_g_k2_17)) + (v2sub2prod(ATPT_g_Vmax_20, ATPT_g_Keq_20, ADP_g, ATPT_g_KmADP_20, ATP_c, ATPT_g_KmATP_20, ADP_c, ATPT_g_KmADP_20, ATP_g, ATPT_g_KmATP_20)) + (v2sub2prod(PGK_g_Vmax_29, PGK_g_Keq_29, _13BPGA_g, PGK_g_Km13BPGA_29, ADP_g, PGK_g_KmADP_29, _3PGA_g, PGK_g_Km3PGA_29, ATP_g, PGK_g_KmATP_29)) + (v2sub2prod(GK_g_Vmax_32, GK_g_Keq_32, Gly3P_g, GK_g_KmGly_323P_32, ADP_g, GK_g_KmADP_32, Gly_e, GK_g_KmGly_32, ATP_g, GK_g_KmATP_32)) - (PFK_g_Vmax_2 * PFK_g_Ki1_2 * Fru6P_g * ATP_g * (1 - Fru16BP_g * ADP_g / (PFK_g_Keq_2 * Fru6P_g * ATP_g)) / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2 * (Fru16BP_g + PFK_g_Ki1_2) * (PFK_g_KsATP_2 / PFK_g_KmATP_2 + Fru6P_g / PFK_g_KmFru6P_2 + ATP_g / PFK_g_KmATP_2 + ADP_g / PFK_g_KmADP_2 + Fru16BP_g * ADP_g / (PFK_g_KmADP_2 * PFK_g_Ki2_2) + Fru6P_g * ATP_g / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2)))) - (v2sub2prod(HXK_g_Vmax_8, HXK_g_Keq_8, Glc_g, HXK_g_KmGlc_8, ATP_g, HXK_g_KmATP_8, Glc6P_g, HXK_g_KmGlc_86P, ADP_g, HXK_g_KmADP_8));
    der(DHAP_g) = (Gly3P_g * GDA_g_k_19 * DHAP_c - Gly3P_c * GDA_g_k_19 * DHAP_g) + (ALD_g_Vmax_33 * Fru16BP_g * (1 - GA3P_g * DHAP_g / (Fru16BP_g * ALD_g_Keq_33)) / (ALD_g_KmFru16BP_33 * (1 + ATP_g / ALD_g_KiATP_33 + ADP_g / ALD_g_KiADP_33 + AMP_g / ALD_g_KiAMP_33) * (1 + GA3P_g / ALD_g_KmGA3P_33 + DHAP_g / ALD_g_KmDHAP_33 + Fru16BP_g / (ALD_g_KmFru16BP_33 * (1 + ATP_g / ALD_g_KiATP_33 + ADP_g / ALD_g_KiADP_33 + AMP_g / ALD_g_KiAMP_33)) + GA3P_g * DHAP_g / (ALD_g_KmGA3P_33 * ALD_g_KmDHAP_33) + Fru16BP_g * GA3P_g / (ALD_g_KmFru16BP_33 * ALD_g_KiGA3P_33 * (1 + ATP_g / ALD_g_KiATP_33 + ADP_g / ALD_g_KiADP_33 + AMP_g / ALD_g_KiAMP_33))))) - (v1sub1prod(TPI_g_Vmax_0, TPI_g_Keq_0, DHAP_g, TPI_g_KmDHAP_0, GA3P_g, TPI_g_KmGA3P_0)) - (v2sub2prod(G3PDH_g_Vmax_30, G3PDH_g_Keq_30, DHAP_g, G3PDH_g_KmDHAP_30, NADH_g, G3PDH_g_KmNAD_30H_30, Gly3P_g, G3PDH_g_KmGly3P_30, NAD_g, G3PDH_g_KmNAD_30));
    der(ADP_g) = (PFK_g_Vmax_2 * PFK_g_Ki1_2 * Fru6P_g * ATP_g * (1 - Fru16BP_g * ADP_g / (PFK_g_Keq_2 * Fru6P_g * ATP_g)) / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2 * (Fru16BP_g + PFK_g_Ki1_2) * (PFK_g_KsATP_2 / PFK_g_KmATP_2 + Fru6P_g / PFK_g_KmFru6P_2 + ATP_g / PFK_g_KmATP_2 + ADP_g / PFK_g_KmADP_2 + Fru16BP_g * ADP_g / (PFK_g_KmADP_2 * PFK_g_Ki2_2) + Fru6P_g * ATP_g / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2)))) + (v2sub2prod(HXK_g_Vmax_8, HXK_g_Keq_8, Glc_g, HXK_g_KmGlc_8, ATP_g, HXK_g_KmATP_8, Glc6P_g, HXK_g_KmGlc_86P, ADP_g, HXK_g_KmADP_8)) - (2.0 * vAK(ADP_g, AMP_g, ATP_g, AK_g_k1_17, AK_g_k2_17)) - (v2sub2prod(ATPT_g_Vmax_20, ATPT_g_Keq_20, ADP_g, ATPT_g_KmADP_20, ATP_c, ATPT_g_KmATP_20, ADP_c, ATPT_g_KmADP_20, ATP_g, ATPT_g_KmATP_20)) - (v2sub2prod(PGK_g_Vmax_29, PGK_g_Keq_29, _13BPGA_g, PGK_g_Km13BPGA_29, ADP_g, PGK_g_KmADP_29, _3PGA_g, PGK_g_Km3PGA_29, ATP_g, PGK_g_KmATP_29)) - (v2sub2prod(GK_g_Vmax_32, GK_g_Keq_32, Gly3P_g, GK_g_KmGly_323P_32, ADP_g, GK_g_KmADP_32, Gly_e, GK_g_KmGly_32, ATP_g, GK_g_KmATP_32));
    der(Glc6P_g) = (v2sub2prod(HXK_g_Vmax_8, HXK_g_Keq_8, Glc_g, HXK_g_KmGlc_8, ATP_g, HXK_g_KmATP_8, Glc6P_g, HXK_g_KmGlc_86P, ADP_g, HXK_g_KmADP_8)) - (v2sub2prod(G6PDH_g_Vmax_3, G6PDH_g_Keq_3, Glc6P_g, G6PDH_g_KmGlc6P_3, NADP_g, G6PDH_g_KmNADP_3, _6PGL_g, G6PDH_g_Km6PGL_3, NADPH_g, G6PDH_g_KmNADP_3H)) - (PGI_g_Vmax_16 * Glc6P_g * (1 - Fru6P_g / (PGI_g_Keq_16 * Glc6P_g)) / (PGI_g_KmGlc6P_16 * (1 + Glc6P_g / PGI_g_KmGlc6P_16 + Fru6P_g / PGI_g_KmFru6P_16 + _6PG_g / PGI_g_Ki6PG_16)));
    der(ADP_c) = (v2sub2prod(HXK_c_Vmax_11, HXK_c_Keq_11, Glc_c, HXK_c_KmGlc_11, ATP_c, HXK_c_KmATP_11, Glc6P_c, HXK_c_KmGlc_116P, ADP_c, HXK_c_KmADP_11)) + (v2sub2prod(ATPT_g_Vmax_20, ATPT_g_Keq_20, ADP_g, ATPT_g_KmADP_20, ATP_c, ATPT_g_KmATP_20, ADP_c, ATPT_g_KmADP_20, ATP_g, ATPT_g_KmATP_20)) + (ATPu_c_k_31 * ATP_c / ADP_c) - (PYK_c_Vmax_1 * ADP_c * (1 - Pyr_c * ATP_c / (PYK_c_Keq_1 * PEP_c * ADP_c)) * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) + Pyr_c / PYK_c_KmPyr_1) * (1 + ADP_c / PYK_c_KmADP_1 + ATP_c / PYK_c_KmATP_1))) - (2.0 * vAK(ADP_c, AMP_c, ATP_c, AK_c_k1_13, AK_c_k2_13));
    der(_3PGA_c) = (mass_action_rev(_3PGAT_g_k_9, _3PGA_g, _3PGAT_g_k_9, _3PGA_c)) - (v1sub1prod(PGAM_c_Vmax_4, PGAM_c_Keq_4, _3PGA_c, PGAM_c_Km3PGA_4, _2PGA_c, PGAM_c_Km2PGA_4));
    der(Fru6P_g) = (PGI_g_Vmax_16 * Glc6P_g * (1 - Fru6P_g / (PGI_g_Keq_16 * Glc6P_g)) / (PGI_g_KmGlc6P_16 * (1 + Glc6P_g / PGI_g_KmGlc6P_16 + Fru6P_g / PGI_g_KmFru6P_16 + _6PG_g / PGI_g_Ki6PG_16))) - (PFK_g_Vmax_2 * PFK_g_Ki1_2 * Fru6P_g * ATP_g * (1 - Fru16BP_g * ADP_g / (PFK_g_Keq_2 * Fru6P_g * ATP_g)) / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2 * (Fru16BP_g + PFK_g_Ki1_2) * (PFK_g_KsATP_2 / PFK_g_KmATP_2 + Fru6P_g / PFK_g_KmFru6P_2 + ATP_g / PFK_g_KmATP_2 + ADP_g / PFK_g_KmADP_2 + Fru16BP_g * ADP_g / (PFK_g_KmADP_2 * PFK_g_Ki2_2) + Fru6P_g * ATP_g / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2))));
    der(Pi_g) = 0.0;
    der(O2_c) = 0.0;
    der(NADP_c) = (mass_action_irrev(NADPHu_c_k_10, NADPH_c)) + (v2sub2prod(TR_c_Vmax_28, TR_c_Keq_28, TS2_c, TR_c_KmTS2_28, NADPH_c, TR_c_KmNADP_28H_28, TSH2_c, TR_c_KmTSH2_28, NADP_c, TR_c_KmNADP_28)) - (v2sub2prod(G6PDH_c_Vmax_6, G6PDH_c_Keq_6, Glc6P_c, G6PDH_c_KmGlc6P_6, NADP_c, G6PDH_c_KmNADP_6, _6PGL_c, G6PDH_c_Km6PGL_6, NADPH_c, G6PDH_c_KmNADP_6H)) - (v2sub2prod(_6PGDH_c_Vmax_22, _6PGDH_c_Keq_22, _6PG_c, _6PGDH_c_Km6PG_22, NADP_c, _6PGDH_c_KmNADP_22, Rul5P_c, _6PGDH_c_KmRul5P_22, NADPH_c, _6PGDH_c_KmNADP_22H));
    der(NADP_g) = (mass_action_irrev(NADPHu_g_k_12, NADPH_g)) - (v2sub2prod(G6PDH_g_Vmax_3, G6PDH_g_Keq_3, Glc6P_g, G6PDH_g_KmGlc6P_3, NADP_g, G6PDH_g_KmNADP_3, _6PGL_g, G6PDH_g_Km6PGL_3, NADPH_g, G6PDH_g_KmNADP_3H)) - (v2sub2prod(_6PGDH_g_Vmax_15, _6PGDH_g_Keq_15, _6PG_g, _6PGDH_g_Km6PG_15, NADP_g, _6PGDH_g_KmNADP_15, Rul5P_g, _6PGDH_g_KmRul5P_15, NADPH_g, _6PGDH_g_KmNADP_15H));
    der(_6PG_g) = (glycosome * PGL_g_k_27 * (_6PGL_g - _6PG_g / PGL_g_Keq_27) + v1sub1prod(PGL_g_Vmax_27, PGL_g_Keq_27, _6PGL_g, PGL_g_Km6PG_27L_27, _6PG_g, PGL_g_Km6PG_27)) - (v2sub2prod(_6PGDH_g_Vmax_15, _6PGDH_g_Keq_15, _6PG_g, _6PGDH_g_Km6PG_15, NADP_g, _6PGDH_g_KmNADP_15, Rul5P_g, _6PGDH_g_KmRul5P_15, NADPH_g, _6PGDH_g_KmNADP_15H));
    der(CO2_c) = 0.0;
    der(Rul5P_c) = (v2sub2prod(_6PGDH_c_Vmax_22, _6PGDH_c_Keq_22, _6PG_c, _6PGDH_c_Km6PG_22, NADP_c, _6PGDH_c_KmNADP_22, Rul5P_c, _6PGDH_c_KmRul5P_22, NADPH_c, _6PGDH_c_KmNADP_22H)) - (v1sub1prod(PPI_c_Vmax_23, PPI_c_Keq_23, Rul5P_c, PPI_c_KmRul5P_23, Rib5P_c, PPI_c_KmRib5P_23));
    der(_6PG_c) = (PGL_c_k_21 * cytosol * (_6PGL_c - _6PG_c / PGL_c_Keq_21) + v1sub1prod(PGL_c_Vmax_21, PGL_c_Keq_21, _6PGL_c, PGL_c_Km6PG_21L_21, _6PG_c, PGL_c_Km6PG_21)) - (v2sub2prod(_6PGDH_c_Vmax_22, _6PGDH_c_Keq_22, _6PG_c, _6PGDH_c_Km6PG_22, NADP_c, _6PGDH_c_KmNADP_22, Rul5P_c, _6PGDH_c_KmRul5P_22, NADPH_c, _6PGDH_c_KmNADP_22H));
    der(Rul5P_g) = (v2sub2prod(_6PGDH_g_Vmax_15, _6PGDH_g_Keq_15, _6PG_g, _6PGDH_g_Km6PG_15, NADP_g, _6PGDH_g_KmNADP_15, Rul5P_g, _6PGDH_g_KmRul5P_15, NADPH_g, _6PGDH_g_KmNADP_15H)) - (v1sub1prod(PPI_g_Vmax_24, PPI_g_Keq_24, Rul5P_g, PPI_g_KmRul5P_24, Rib5P_g, PPI_g_KmRib5P_24));
    der(Glc6P_c) = (v2sub2prod(HXK_c_Vmax_11, HXK_c_Keq_11, Glc_c, HXK_c_KmGlc_11, ATP_c, HXK_c_KmATP_11, Glc6P_c, HXK_c_KmGlc_116P, ADP_c, HXK_c_KmADP_11)) - (v2sub2prod(G6PDH_c_Vmax_6, G6PDH_c_Keq_6, Glc6P_c, G6PDH_c_KmGlc6P_6, NADP_c, G6PDH_c_KmNADP_6, _6PGL_c, G6PDH_c_Km6PGL_6, NADPH_c, G6PDH_c_KmNADP_6H)) - (v1sub1prod(G6PP_c_Vmax_14, G6PP_c_Keq_14, Glc6P_c, G6PP_c_KmGlc_146P_14, Glc_c, G6PP_c_KmGlc_14));
    der(Rib5P_c) = 0.0;
    der(_13BPGA_g) = (v2sub2prod(GAPDH_g_Vmax_34, GAPDH_g_Keq_34, GA3P_g, GAPDH_g_KmGA3P_34, NAD_g, GAPDH_g_KmNAD_34, _13BPGA_g, GAPDH_g_Km13BPGA_34, NADH_g, GAPDH_g_KmNAD_34H)) - (v2sub2prod(PGK_g_Vmax_29, PGK_g_Keq_29, _13BPGA_g, PGK_g_Km13BPGA_29, ADP_g, PGK_g_KmADP_29, _3PGA_g, PGK_g_Km3PGA_29, ATP_g, PGK_g_KmATP_29));
    der(Glc_c) = (v1sub1prod(G6PP_c_Vmax_14, G6PP_c_Keq_14, Glc6P_c, G6PP_c_KmGlc_146P_14, Glc_c, G6PP_c_KmGlc_14)) + (GlcT_c_Vmax_26 * (Glc_e - Glc_c) / (GlcT_c_KmGlc_26 + Glc_e + Glc_c + GlcT_c_alpha_26 * Glc_e * Glc_c / GlcT_c_KmGlc_26)) - (v2sub2prod(HXK_c_Vmax_11, HXK_c_Keq_11, Glc_c, HXK_c_KmGlc_11, ATP_c, HXK_c_KmATP_11, Glc6P_c, HXK_c_KmGlc_116P, ADP_c, HXK_c_KmADP_11)) - (mass_action_rev(GlcT_g_k1_25, Glc_c, GlcT_g_k2_25, Glc_g));
    der(Rib5P_g) = 0.0;
    der(Glc_g) = (mass_action_rev(GlcT_g_k1_25, Glc_c, GlcT_g_k2_25, Glc_g)) - (v2sub2prod(HXK_g_Vmax_8, HXK_g_Keq_8, Glc_g, HXK_g_KmGlc_8, ATP_g, HXK_g_KmATP_8, Glc6P_g, HXK_g_KmGlc_86P, ADP_g, HXK_g_KmADP_8));
    der(Glc_e) = 0.0;
    der(NADPH_g) = (v2sub2prod(G6PDH_g_Vmax_3, G6PDH_g_Keq_3, Glc6P_g, G6PDH_g_KmGlc6P_3, NADP_g, G6PDH_g_KmNADP_3, _6PGL_g, G6PDH_g_Km6PGL_3, NADPH_g, G6PDH_g_KmNADP_3H)) + (v2sub2prod(_6PGDH_g_Vmax_15, _6PGDH_g_Keq_15, _6PG_g, _6PGDH_g_Km6PG_15, NADP_g, _6PGDH_g_KmNADP_15, Rul5P_g, _6PGDH_g_KmRul5P_15, NADPH_g, _6PGDH_g_KmNADP_15H)) - (mass_action_irrev(NADPHu_g_k_12, NADPH_g));
    der(NADPH_c) = (v2sub2prod(G6PDH_c_Vmax_6, G6PDH_c_Keq_6, Glc6P_c, G6PDH_c_KmGlc6P_6, NADP_c, G6PDH_c_KmNADP_6, _6PGL_c, G6PDH_c_Km6PGL_6, NADPH_c, G6PDH_c_KmNADP_6H)) + (v2sub2prod(_6PGDH_c_Vmax_22, _6PGDH_c_Keq_22, _6PG_c, _6PGDH_c_Km6PG_22, NADP_c, _6PGDH_c_KmNADP_22, Rul5P_c, _6PGDH_c_KmRul5P_22, NADPH_c, _6PGDH_c_KmNADP_22H)) - (mass_action_irrev(NADPHu_c_k_10, NADPH_c)) - (v2sub2prod(TR_c_Vmax_28, TR_c_Keq_28, TS2_c, TR_c_KmTS2_28, NADPH_c, TR_c_KmNADP_28H_28, TSH2_c, TR_c_KmTSH2_28, NADP_c, TR_c_KmNADP_28));
    der(Pyr_c) = (PYK_c_Vmax_1 * ADP_c * (1 - Pyr_c * ATP_c / (PYK_c_Keq_1 * PEP_c * ADP_c)) * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) + Pyr_c / PYK_c_KmPyr_1) * (1 + ADP_c / PYK_c_KmADP_1 + ATP_c / PYK_c_KmATP_1))) - (v1sub(PyrT_c_Vmax_5, Pyr_c, PyrT_c_KmPyr_5));
    der(Pyr_e) = 0.0;
    der(NAD_g) = (v2sub2prod(G3PDH_g_Vmax_30, G3PDH_g_Keq_30, DHAP_g, G3PDH_g_KmDHAP_30, NADH_g, G3PDH_g_KmNAD_30H_30, Gly3P_g, G3PDH_g_KmGly3P_30, NAD_g, G3PDH_g_KmNAD_30)) - (v2sub2prod(GAPDH_g_Vmax_34, GAPDH_g_Keq_34, GA3P_g, GAPDH_g_KmGA3P_34, NAD_g, GAPDH_g_KmNAD_34, _13BPGA_g, GAPDH_g_Km13BPGA_34, NADH_g, GAPDH_g_KmNAD_34H));
    der(Fru16BP_g) = (PFK_g_Vmax_2 * PFK_g_Ki1_2 * Fru6P_g * ATP_g * (1 - Fru16BP_g * ADP_g / (PFK_g_Keq_2 * Fru6P_g * ATP_g)) / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2 * (Fru16BP_g + PFK_g_Ki1_2) * (PFK_g_KsATP_2 / PFK_g_KmATP_2 + Fru6P_g / PFK_g_KmFru6P_2 + ATP_g / PFK_g_KmATP_2 + ADP_g / PFK_g_KmADP_2 + Fru16BP_g * ADP_g / (PFK_g_KmADP_2 * PFK_g_Ki2_2) + Fru6P_g * ATP_g / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2)))) - (ALD_g_Vmax_33 * Fru16BP_g * (1 - GA3P_g * DHAP_g / (Fru16BP_g * ALD_g_Keq_33)) / (ALD_g_KmFru16BP_33 * (1 + ATP_g / ALD_g_KiATP_33 + ADP_g / ALD_g_KiADP_33 + AMP_g / ALD_g_KiAMP_33) * (1 + GA3P_g / ALD_g_KmGA3P_33 + DHAP_g / ALD_g_KmDHAP_33 + Fru16BP_g / (ALD_g_KmFru16BP_33 * (1 + ATP_g / ALD_g_KiATP_33 + ADP_g / ALD_g_KiADP_33 + AMP_g / ALD_g_KiAMP_33)) + GA3P_g * DHAP_g / (ALD_g_KmGA3P_33 * ALD_g_KmDHAP_33) + Fru16BP_g * GA3P_g / (ALD_g_KmFru16BP_33 * ALD_g_KiGA3P_33 * (1 + ATP_g / ALD_g_KiATP_33 + ADP_g / ALD_g_KiADP_33 + AMP_g / ALD_g_KiAMP_33)))));
    der(GA3P_g) = (v1sub1prod(TPI_g_Vmax_0, TPI_g_Keq_0, DHAP_g, TPI_g_KmDHAP_0, GA3P_g, TPI_g_KmGA3P_0)) + (ALD_g_Vmax_33 * Fru16BP_g * (1 - GA3P_g * DHAP_g / (Fru16BP_g * ALD_g_Keq_33)) / (ALD_g_KmFru16BP_33 * (1 + ATP_g / ALD_g_KiATP_33 + ADP_g / ALD_g_KiADP_33 + AMP_g / ALD_g_KiAMP_33) * (1 + GA3P_g / ALD_g_KmGA3P_33 + DHAP_g / ALD_g_KmDHAP_33 + Fru16BP_g / (ALD_g_KmFru16BP_33 * (1 + ATP_g / ALD_g_KiATP_33 + ADP_g / ALD_g_KiADP_33 + AMP_g / ALD_g_KiAMP_33)) + GA3P_g * DHAP_g / (ALD_g_KmGA3P_33 * ALD_g_KmDHAP_33) + Fru16BP_g * GA3P_g / (ALD_g_KmFru16BP_33 * ALD_g_KiGA3P_33 * (1 + ATP_g / ALD_g_KiATP_33 + ADP_g / ALD_g_KiADP_33 + AMP_g / ALD_g_KiAMP_33))))) - (v2sub2prod(GAPDH_g_Vmax_34, GAPDH_g_Keq_34, GA3P_g, GAPDH_g_KmGA3P_34, NAD_g, GAPDH_g_KmNAD_34, _13BPGA_g, GAPDH_g_Km13BPGA_34, NADH_g, GAPDH_g_KmNAD_34H));
    der(Gly_e) = 0.0;
    der(TSH2_c) = (v2sub2prod(TR_c_Vmax_28, TR_c_Keq_28, TS2_c, TR_c_KmTS2_28, NADPH_c, TR_c_KmNADP_28H_28, TSH2_c, TR_c_KmTSH2_28, NADP_c, TR_c_KmNADP_28)) - (mass_action_irrev(TOX_c_k_18, TSH2_c));
    der(CO2_g) = 0.0;
    der(Gly3P_c) = (Gly3P_g * GDA_g_k_19 * DHAP_c - Gly3P_c * GDA_g_k_19 * DHAP_g) - (v1sub(GPO_c_Vmax_35, Gly3P_c, GPO_c_KmGly3P_35));
    der(Gly3P_g) = (v2sub2prod(G3PDH_g_Vmax_30, G3PDH_g_Keq_30, DHAP_g, G3PDH_g_KmDHAP_30, NADH_g, G3PDH_g_KmNAD_30H_30, Gly3P_g, G3PDH_g_KmGly3P_30, NAD_g, G3PDH_g_KmNAD_30)) - (Gly3P_g * GDA_g_k_19 * DHAP_c - Gly3P_c * GDA_g_k_19 * DHAP_g) - (v2sub2prod(GK_g_Vmax_32, GK_g_Keq_32, Gly3P_g, GK_g_KmGly_323P_32, ADP_g, GK_g_KmADP_32, Gly_e, GK_g_KmGly_32, ATP_g, GK_g_KmATP_32));
    der(_6PGL_c) = (v2sub2prod(G6PDH_c_Vmax_6, G6PDH_c_Keq_6, Glc6P_c, G6PDH_c_KmGlc6P_6, NADP_c, G6PDH_c_KmNADP_6, _6PGL_c, G6PDH_c_Km6PGL_6, NADPH_c, G6PDH_c_KmNADP_6H)) - (PGL_c_k_21 * cytosol * (_6PGL_c - _6PG_c / PGL_c_Keq_21) + v1sub1prod(PGL_c_Vmax_21, PGL_c_Keq_21, _6PGL_c, PGL_c_Km6PG_21L_21, _6PG_c, PGL_c_Km6PG_21));
    der(TS2_c) = (mass_action_irrev(TOX_c_k_18, TSH2_c)) - (v2sub2prod(TR_c_Vmax_28, TR_c_Keq_28, TS2_c, TR_c_KmTS2_28, NADPH_c, TR_c_KmNADP_28H_28, TSH2_c, TR_c_KmTSH2_28, NADP_c, TR_c_KmNADP_28));
    der(_6PGL_g) = (v2sub2prod(G6PDH_g_Vmax_3, G6PDH_g_Keq_3, Glc6P_g, G6PDH_g_KmGlc6P_3, NADP_g, G6PDH_g_KmNADP_3, _6PGL_g, G6PDH_g_Km6PGL_3, NADPH_g, G6PDH_g_KmNADP_3H)) - (glycosome * PGL_g_k_27 * (_6PGL_g - _6PG_g / PGL_g_Keq_27) + v1sub1prod(PGL_g_Vmax_27, PGL_g_Keq_27, _6PGL_g, PGL_g_Km6PG_27L_27, _6PG_g, PGL_g_Km6PG_27));
    der(PEP_c) = (v1sub1prod(ENO_c_Vmax_7, ENO_c_Keq_7, _2PGA_c, ENO_c_Km2PGA_7, PEP_c, ENO_c_KmPEP_7)) - (PYK_c_Vmax_1 * ADP_c * (1 - Pyr_c * ATP_c / (PYK_c_Keq_1 * PEP_c * ADP_c)) * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) + Pyr_c / PYK_c_KmPyr_1) * (1 + ADP_c / PYK_c_KmADP_1 + ATP_c / PYK_c_KmATP_1)));
    der(AMP_g) = (vAK(ADP_g, AMP_g, ATP_g, AK_g_k1_17, AK_g_k2_17)) ;
    der(_3PGA_g) = (v2sub2prod(PGK_g_Vmax_29, PGK_g_Keq_29, _13BPGA_g, PGK_g_Km13BPGA_29, ADP_g, PGK_g_KmADP_29, _3PGA_g, PGK_g_Km3PGA_29, ATP_g, PGK_g_KmATP_29)) - (mass_action_rev(_3PGAT_g_k_9, _3PGA_g, _3PGAT_g_k_9, _3PGA_c));
    der(AMP_c) = (vAK(ADP_c, AMP_c, ATP_c, AK_c_k1_13, AK_c_k2_13)) ;
    der(NADH_g) = (v2sub2prod(GAPDH_g_Vmax_34, GAPDH_g_Keq_34, GA3P_g, GAPDH_g_KmGA3P_34, NAD_g, GAPDH_g_KmNAD_34, _13BPGA_g, GAPDH_g_Km13BPGA_34, NADH_g, GAPDH_g_KmNAD_34H)) - (v2sub2prod(G3PDH_g_Vmax_30, G3PDH_g_Keq_30, DHAP_g, G3PDH_g_KmDHAP_30, NADH_g, G3PDH_g_KmNAD_30H_30, Gly3P_g, G3PDH_g_KmGly3P_30, NAD_g, G3PDH_g_KmNAD_30));




end BIOMD511;
