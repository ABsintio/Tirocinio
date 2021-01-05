
model BIOMD428 "Achcar2012 - Glycolysis in bloodstream form T. brucei"

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


    function mass_action_rev
        	input Real k1;
	input Real S;
	input Real k2;
	input Real P;
        output Real y;
    algorithm
        y :=  k1 * S - k2 * P;
    end mass_action_rev;


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


    function v1sub
        	input Real Vfmax;
	input Real S;
	input Real Ks;
        output Real y;
    algorithm
        y :=  Vfmax * S / (Ks * (1 + S / Ks));
    end v1sub;


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
        y :=  Vfmax * S1 * S2 * (1 - P1 * P2 / (Keq * S1 * S2)) / (Ks1 * Ks2 * (1 + S2 / Ks2 + P2 / Kp2) * (1 + S1 / Ks1 + P1 / Kp1));
    end v2sub2prod;


    parameter Real GlyT_g_k_0 = 9000.0;
    parameter Real PYK_c_Vmax_1 = 1020.0;
    parameter Real PYK_c_KmPEP_1 = 0.34;
    parameter Real PYK_c_KiATP_1 = 0.57;
    parameter Real PYK_c_KiADP_1 = 0.64;
    parameter Real PYK_c_n_1 = 2.5;
    parameter Real PYK_c_KmADP_1 = 0.114;
    parameter Real GlyT_c_Vmax_2 = 85.0;
    parameter Real GlyT_c_KmGly_2 = 0.17;
    parameter Real GlyT_c_k_2 = 9.0;
    parameter Real GlcT_g_k_3 = 250000.0;
    parameter Real PyrT_c_Vmax_4 = 200.0;
    parameter Real PyrT_c_KmPyr_4 = 1.96;
    parameter Real GlcT_c_Vmax_5 = 108.9;
    parameter Real GlcT_c_KmGlc_5 = 1.0;
    parameter Real GlcT_c_alpha_5 = 0.75;
    parameter Real PFK_g_Vmax_6 = 1708.0;
    parameter Real PFK_g_Ki1_6 = 15.8;
    parameter Real PFK_g_KmFru6P_6 = 0.82;
    parameter Real PFK_g_KmATP_6 = 0.026;
    parameter Real PFK_g_Ki2_6 = 10.7;
    parameter Real ENO_c_Vmax_7 = 598.0;
    parameter Real ENO_c_Keq_7 = 6.7;
    parameter Real ENO_c_Km2PGA_7 = 0.054;
    parameter Real ENO_c_KmPEP_7 = 0.24;
    parameter Real HXK_g_Vmax_8 = 1929.0;
    parameter Real HXK_g_KmGlc_8 = 0.1;
    parameter Real HXK_g_KmATP_8 = 0.116;
    parameter Real HXK_g_KmADP_8 = 0.126;
    parameter Real HXK_g_KmGlc6P_8 = 12.0;
    parameter Real _3PGAT_g_k_9 = 250.0;
    parameter Real PGK_g_Vmax_10 = 2862.0;
    parameter Real PGK_g_Keq_10 = 3332.0;
    parameter Real PGK_g_Km13BPGA_10 = 0.003;
    parameter Real PGK_g_KmADP_10 = 0.1;
    parameter Real PGK_g_Km3PGA_10 = 1.62;
    parameter Real PGK_g_KmATP_10 = 0.29;
    parameter Real PGAM_c_Vmax_11 = 225.0;
    parameter Real PGAM_c_Keq_11 = 0.185;
    parameter Real PGAM_c_Km3PGA_11 = 0.15;
    parameter Real PGAM_c_Km2PGA_11 = 0.16;
    parameter Real G3PDH_g_Vmax_12 = 465.0;
    parameter Real G3PDH_g_Keq_12 = 2857.0;
    parameter Real G3PDH_g_KmDHAP_12 = 0.1;
    parameter Real G3PDH_g_KmNADH_12 = 0.01;
    parameter Real G3PDH_g_KmGly3P_12 = 2.0;
    parameter Real G3PDH_g_KmNAD_12 = 0.4;
    parameter Real ATPu_c_k_13 = 50.0;
    parameter Real GK_g_Vmax_14 = 200.0;
    parameter Real GK_g_Keq_14 = 0.0008;
    parameter Real GK_g_KmGly3P_14 = 3.83;
    parameter Real GK_g_KmADP_14 = 0.56;
    parameter Real GK_g_KmGly_14 = 0.44;
    parameter Real GK_g_KmATP_14 = 0.24;
    parameter Real ALD_g_Vmax_15 = 560.0;
    parameter Real ALD_g_KmFru16BP_15 = 0.009;
    parameter Real ALD_g_KiATP_15 = 0.68;
    parameter Real ALD_g_KiADP_15 = 1.51;
    parameter Real ALD_g_KiAMP_15 = 3.65;
    parameter Real ALD_g_Keq_15 = 0.093;
    parameter Real ALD_g_KmGA3P_15 = 0.067;
    parameter Real ALD_g_KmDHAP_15 = 0.015;
    parameter Real ALD_g_KiGA3P_15 = 0.098;
    parameter Real AK_c_k1_16 = 442.0;
    parameter Real AK_c_k2_16 = 1000.0;
    parameter Real PGI_g_Vmax_17 = 1305.0;
    parameter Real PGI_g_Keq_17 = 0.3;
    parameter Real PGI_g_KmGlc6P_17 = 0.4;
    parameter Real PGI_g_KmFru6P_17 = 0.12;
    parameter Real GAPDH_g_Vmax_18 = 720.9;
    parameter Real GAPDH_g_Keq_18 = 0.044;
    parameter Real GAPDH_g_KmGA3P_18 = 0.15;
    parameter Real GAPDH_g_KmNAD_18 = 0.45;
    parameter Real GAPDH_g_Km13BPGA_18 = 0.1;
    parameter Real GAPDH_g_KmNADH_18 = 0.02;
    parameter Real AK_g_k1_19 = 442.0;
    parameter Real AK_g_k2_19 = 1000.0;
    parameter Real GDA_g_k_20 = 600.0;
    parameter Real GPO_c_Vmax_21 = 368.0;
    parameter Real GPO_c_KmGly3P_21 = 1.7;
    parameter Real TPI_g_Vmax_22 = 999.3;
    parameter Real TPI_g_Keq_22 = 0.045;
    parameter Real TPI_g_KmDHAP_22 = 1.2;
    parameter Real TPI_g_KmGA3P_22 = 0.25;
    parameter Real cytosol = 1.0;
    parameter Real glycosome = 1.0;
    parameter Real default = 1.0;



    Real _2PGA_c;
    Real ATP_g;
    Real ATP_c;
    Real Pyr_c;
    Real DHAP_c;
    Real Pyr_e;
    Real Gly3P_c;
    Real DHAP_g;
    Real NAD_g;
    Real Glc6P_g;
    Real Fru16BP_g;
    Real ADP_c;
    Real _3PGA_c;
    Real Gly_g;
    Real Fru6P_g;
    Real Gly_e;
    Real _3PGA_g;
    Real Gly_c;
    Real Pi_g;
    Real AMP_c;
    Real O2_c;
    Real GA3P_g;
    Real Gly3P_g;
    Real ADP_g;
    Real PEP_c;
    Real AMP_g;
    Real _13BPGA_g;
    Real Glc_c;
    Real Glc_e;
    Real Glc_g;
    Real NADH_g;

initial equation
    _2PGA_c = 0.1;
    ATP_g = 0.2405;
    ATP_c = 0.3417;
    Pyr_c = 10.0;
    DHAP_c = 2.23132912;
    Pyr_e = 0.0;
    Gly3P_c = 2.76867088;
    DHAP_g = 8.483130623;
    NAD_g = 2.0;
    Glc6P_g = 0.5;
    Fru16BP_g = 10.0;
    ADP_c = 1.3165;
    _3PGA_c = 0.1;
    Gly_g = 1.0;
    Fru6P_g = 0.5;
    Gly_e = 0.0;
    _3PGA_g = 0.1;
    Gly_c = 1.0;
    Pi_g = 0.0;
    AMP_c = 2.2418;
    O2_c = 1.0;
    GA3P_g = 2.5;
    Gly3P_g = 10.51686938;
    ADP_g = 1.519;
    PEP_c = 1.0;
    AMP_g = 4.2405;
    _13BPGA_g = 0.5;
    Glc_c = 0.01;
    Glc_e = 5.0;
    Glc_g = 0.01;
    NADH_g = 2.0;

equation

    der(_2PGA_c) = (v1sub1prod(PGAM_c_Vmax_11, PGAM_c_Keq_11, _3PGA_c, PGAM_c_Km3PGA_11, _2PGA_c, PGAM_c_Km2PGA_11)) - (v1sub1prod(ENO_c_Vmax_7, ENO_c_Keq_7, _2PGA_c, ENO_c_Km2PGA_7, PEP_c, ENO_c_KmPEP_7));
    der(ATP_g) = (v2sub2prod(PGK_g_Vmax_10, PGK_g_Keq_10, _13BPGA_g, PGK_g_Km13BPGA_10, ADP_g, PGK_g_KmADP_10, _3PGA_g, PGK_g_Km3PGA_10, ATP_g, PGK_g_KmATP_10)) + (v2sub2prod(GK_g_Vmax_14, GK_g_Keq_14, Gly3P_g, GK_g_KmGly_143P_14, ADP_g, GK_g_KmADP_14, Gly_g, GK_g_KmGly_14, ATP_g, GK_g_KmATP_14)) + (vAK(ADP_g, AMP_g, ATP_g, AK_g_k1_19, AK_g_k2_19)) - (ATP_g * Fru6P_g * PFK_g_Vmax_6 * PFK_g_Ki1_6 / (PFK_g_KmFru6P_6 * PFK_g_KmATP_6 * (1 + ATP_g / PFK_g_KmATP_6) * (Fru16BP_g + PFK_g_Ki1_6) * (1 + Fru6P_g / PFK_g_KmFru6P_6 + Fru16BP_g / PFK_g_Ki2_6))) - (ATP_g * Glc_g * HXK_g_Vmax_8 / (HXK_g_KmGlc_8 * HXK_g_KmATP_8 * (1 + Glc_g / HXK_g_KmGlc_8 + Glc6P_g / HXK_g_KmGlc_86P) * (1 + ATP_g / HXK_g_KmATP_8 + ADP_g / HXK_g_KmADP_8)));
    der(ATP_c) = (ADP_c * PYK_c_Vmax_1 * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + ADP_c / PYK_c_KmADP_1) * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1)))) + (vAK(ADP_c, AMP_c, ATP_c, AK_c_k1_16, AK_c_k2_16)) - (ATP_c * ATPu_c_k_13 / ADP_c);
    der(Pyr_c) = (ADP_c * PYK_c_Vmax_1 * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + ADP_c / PYK_c_KmADP_1) * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1)))) - (v1sub(PyrT_c_Vmax_4, Pyr_c, PyrT_c_KmPyr_4));
    der(DHAP_c) = (v1sub(GPO_c_Vmax_21, Gly3P_c, GPO_c_KmGly3P_21)) - (Gly3P_g * DHAP_c * GDA_g_k_20 - Gly3P_c * DHAP_g * GDA_g_k_20);
    der(Pyr_e) = 0.0;
    der(Gly3P_c) = (Gly3P_g * DHAP_c * GDA_g_k_20 - Gly3P_c * DHAP_g * GDA_g_k_20) - (v1sub(GPO_c_Vmax_21, Gly3P_c, GPO_c_KmGly3P_21));
    der(DHAP_g) = (Fru16BP_g * ALD_g_Vmax_15 * (1 - GA3P_g * DHAP_g / (Fru16BP_g * ALD_g_Keq_15)) / (ALD_g_KmFru16BP_15 * (1 + ATP_g / ALD_g_KiATP_15 + ADP_g / ALD_g_KiADP_15 + AMP_g / ALD_g_KiAMP_15) * (1 + GA3P_g / ALD_g_KmGA3P_15 + DHAP_g / ALD_g_KmDHAP_15 + Fru16BP_g / (ALD_g_KmFru16BP_15 * (1 + ATP_g / ALD_g_KiATP_15 + ADP_g / ALD_g_KiADP_15 + AMP_g / ALD_g_KiAMP_15)) + GA3P_g * DHAP_g / (ALD_g_KmGA3P_15 * ALD_g_KmDHAP_15) + Fru16BP_g * GA3P_g / (ALD_g_KmFru16BP_15 * ALD_g_KiGA3P_15 * (1 + ATP_g / ALD_g_KiATP_15 + ADP_g / ALD_g_KiADP_15 + AMP_g / ALD_g_KiAMP_15))))) + (Gly3P_g * DHAP_c * GDA_g_k_20 - Gly3P_c * DHAP_g * GDA_g_k_20) - (v2sub2prod(G3PDH_g_Vmax_12, G3PDH_g_Keq_12, DHAP_g, G3PDH_g_KmDHAP_12, NADH_g, G3PDH_g_KmNAD_12H_12, Gly3P_g, G3PDH_g_KmGly3P_12, NAD_g, G3PDH_g_KmNAD_12)) - (v1sub1prod(TPI_g_Vmax_22, TPI_g_Keq_22, DHAP_g, TPI_g_KmDHAP_22, GA3P_g, TPI_g_KmGA3P_22));
    der(NAD_g) = (v2sub2prod(G3PDH_g_Vmax_12, G3PDH_g_Keq_12, DHAP_g, G3PDH_g_KmDHAP_12, NADH_g, G3PDH_g_KmNAD_12H_12, Gly3P_g, G3PDH_g_KmGly3P_12, NAD_g, G3PDH_g_KmNAD_12)) - (v2sub2prod(GAPDH_g_Vmax_18, GAPDH_g_Keq_18, GA3P_g, GAPDH_g_KmGA3P_18, NAD_g, GAPDH_g_KmNAD_18, _13BPGA_g, GAPDH_g_Km13BPGA_18, NADH_g, GAPDH_g_KmNAD_18H));
    der(Glc6P_g) = (ATP_g * Glc_g * HXK_g_Vmax_8 / (HXK_g_KmGlc_8 * HXK_g_KmATP_8 * (1 + Glc_g / HXK_g_KmGlc_8 + Glc6P_g / HXK_g_KmGlc_86P) * (1 + ATP_g / HXK_g_KmATP_8 + ADP_g / HXK_g_KmADP_8))) - (v1sub1prod(PGI_g_Vmax_17, PGI_g_Keq_17, Glc6P_g, PGI_g_KmGlc6P_17, Fru6P_g, PGI_g_KmFru6P_17));
    der(Fru16BP_g) = (ATP_g * Fru6P_g * PFK_g_Vmax_6 * PFK_g_Ki1_6 / (PFK_g_KmFru6P_6 * PFK_g_KmATP_6 * (1 + ATP_g / PFK_g_KmATP_6) * (Fru16BP_g + PFK_g_Ki1_6) * (1 + Fru6P_g / PFK_g_KmFru6P_6 + Fru16BP_g / PFK_g_Ki2_6))) - (Fru16BP_g * ALD_g_Vmax_15 * (1 - GA3P_g * DHAP_g / (Fru16BP_g * ALD_g_Keq_15)) / (ALD_g_KmFru16BP_15 * (1 + ATP_g / ALD_g_KiATP_15 + ADP_g / ALD_g_KiADP_15 + AMP_g / ALD_g_KiAMP_15) * (1 + GA3P_g / ALD_g_KmGA3P_15 + DHAP_g / ALD_g_KmDHAP_15 + Fru16BP_g / (ALD_g_KmFru16BP_15 * (1 + ATP_g / ALD_g_KiATP_15 + ADP_g / ALD_g_KiADP_15 + AMP_g / ALD_g_KiAMP_15)) + GA3P_g * DHAP_g / (ALD_g_KmGA3P_15 * ALD_g_KmDHAP_15) + Fru16BP_g * GA3P_g / (ALD_g_KmFru16BP_15 * ALD_g_KiGA3P_15 * (1 + ATP_g / ALD_g_KiATP_15 + ADP_g / ALD_g_KiADP_15 + AMP_g / ALD_g_KiAMP_15)))));
    der(ADP_c) = (ATP_c * ATPu_c_k_13 / ADP_c) - (ADP_c * PYK_c_Vmax_1 * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + ADP_c / PYK_c_KmADP_1) * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1)))) - (2.0 * vAK(ADP_c, AMP_c, ATP_c, AK_c_k1_16, AK_c_k2_16));
    der(_3PGA_c) = (mass_action_rev(_3PGAT_g_k_9, _3PGA_g, _3PGAT_g_k_9, _3PGA_c)) - (v1sub1prod(PGAM_c_Vmax_11, PGAM_c_Keq_11, _3PGA_c, PGAM_c_Km3PGA_11, _2PGA_c, PGAM_c_Km2PGA_11));
    der(Gly_g) = (v2sub2prod(GK_g_Vmax_14, GK_g_Keq_14, Gly3P_g, GK_g_KmGly_143P_14, ADP_g, GK_g_KmADP_14, Gly_g, GK_g_KmGly_14, ATP_g, GK_g_KmATP_14)) - (mass_action_rev(GlyT_g_k_0, Gly_g, GlyT_g_k_0, Gly_c));
    der(Fru6P_g) = (v1sub1prod(PGI_g_Vmax_17, PGI_g_Keq_17, Glc6P_g, PGI_g_KmGlc6P_17, Fru6P_g, PGI_g_KmFru6P_17)) - (ATP_g * Fru6P_g * PFK_g_Vmax_6 * PFK_g_Ki1_6 / (PFK_g_KmFru6P_6 * PFK_g_KmATP_6 * (1 + ATP_g / PFK_g_KmATP_6) * (Fru16BP_g + PFK_g_Ki1_6) * (1 + Fru6P_g / PFK_g_KmFru6P_6 + Fru16BP_g / PFK_g_Ki2_6)));
    der(Gly_e) = 0.0;
    der(_3PGA_g) = (v2sub2prod(PGK_g_Vmax_10, PGK_g_Keq_10, _13BPGA_g, PGK_g_Km13BPGA_10, ADP_g, PGK_g_KmADP_10, _3PGA_g, PGK_g_Km3PGA_10, ATP_g, PGK_g_KmATP_10)) - (mass_action_rev(_3PGAT_g_k_9, _3PGA_g, _3PGAT_g_k_9, _3PGA_c));
    der(Gly_c) = (mass_action_rev(GlyT_g_k_0, Gly_g, GlyT_g_k_0, Gly_c)) - (GlyT_c_k_2 * (Gly_c - Gly_e) + GlyT_c_Vmax_2 * (Gly_c - Gly_e) / (GlyT_c_KmGly_2 * (1 + Gly_c / GlyT_c_KmGly_2) * (1 + Gly_e / GlyT_c_KmGly_2)));
    der(Pi_g) = 0.0;
    der(AMP_c) = (vAK(ADP_c, AMP_c, ATP_c, AK_c_k1_16, AK_c_k2_16)) ;
    der(O2_c) = 0.0;
    der(GA3P_g) = (Fru16BP_g * ALD_g_Vmax_15 * (1 - GA3P_g * DHAP_g / (Fru16BP_g * ALD_g_Keq_15)) / (ALD_g_KmFru16BP_15 * (1 + ATP_g / ALD_g_KiATP_15 + ADP_g / ALD_g_KiADP_15 + AMP_g / ALD_g_KiAMP_15) * (1 + GA3P_g / ALD_g_KmGA3P_15 + DHAP_g / ALD_g_KmDHAP_15 + Fru16BP_g / (ALD_g_KmFru16BP_15 * (1 + ATP_g / ALD_g_KiATP_15 + ADP_g / ALD_g_KiADP_15 + AMP_g / ALD_g_KiAMP_15)) + GA3P_g * DHAP_g / (ALD_g_KmGA3P_15 * ALD_g_KmDHAP_15) + Fru16BP_g * GA3P_g / (ALD_g_KmFru16BP_15 * ALD_g_KiGA3P_15 * (1 + ATP_g / ALD_g_KiATP_15 + ADP_g / ALD_g_KiADP_15 + AMP_g / ALD_g_KiAMP_15))))) + (v1sub1prod(TPI_g_Vmax_22, TPI_g_Keq_22, DHAP_g, TPI_g_KmDHAP_22, GA3P_g, TPI_g_KmGA3P_22)) - (v2sub2prod(GAPDH_g_Vmax_18, GAPDH_g_Keq_18, GA3P_g, GAPDH_g_KmGA3P_18, NAD_g, GAPDH_g_KmNAD_18, _13BPGA_g, GAPDH_g_Km13BPGA_18, NADH_g, GAPDH_g_KmNAD_18H));
    der(Gly3P_g) = (v2sub2prod(G3PDH_g_Vmax_12, G3PDH_g_Keq_12, DHAP_g, G3PDH_g_KmDHAP_12, NADH_g, G3PDH_g_KmNAD_12H_12, Gly3P_g, G3PDH_g_KmGly3P_12, NAD_g, G3PDH_g_KmNAD_12)) - (v2sub2prod(GK_g_Vmax_14, GK_g_Keq_14, Gly3P_g, GK_g_KmGly_143P_14, ADP_g, GK_g_KmADP_14, Gly_g, GK_g_KmGly_14, ATP_g, GK_g_KmATP_14)) - (Gly3P_g * DHAP_c * GDA_g_k_20 - Gly3P_c * DHAP_g * GDA_g_k_20);
    der(ADP_g) = (ATP_g * Fru6P_g * PFK_g_Vmax_6 * PFK_g_Ki1_6 / (PFK_g_KmFru6P_6 * PFK_g_KmATP_6 * (1 + ATP_g / PFK_g_KmATP_6) * (Fru16BP_g + PFK_g_Ki1_6) * (1 + Fru6P_g / PFK_g_KmFru6P_6 + Fru16BP_g / PFK_g_Ki2_6))) + (ATP_g * Glc_g * HXK_g_Vmax_8 / (HXK_g_KmGlc_8 * HXK_g_KmATP_8 * (1 + Glc_g / HXK_g_KmGlc_8 + Glc6P_g / HXK_g_KmGlc_86P) * (1 + ATP_g / HXK_g_KmATP_8 + ADP_g / HXK_g_KmADP_8))) - (v2sub2prod(PGK_g_Vmax_10, PGK_g_Keq_10, _13BPGA_g, PGK_g_Km13BPGA_10, ADP_g, PGK_g_KmADP_10, _3PGA_g, PGK_g_Km3PGA_10, ATP_g, PGK_g_KmATP_10)) - (v2sub2prod(GK_g_Vmax_14, GK_g_Keq_14, Gly3P_g, GK_g_KmGly_143P_14, ADP_g, GK_g_KmADP_14, Gly_g, GK_g_KmGly_14, ATP_g, GK_g_KmATP_14)) - (2.0 * vAK(ADP_g, AMP_g, ATP_g, AK_g_k1_19, AK_g_k2_19));
    der(PEP_c) = (v1sub1prod(ENO_c_Vmax_7, ENO_c_Keq_7, _2PGA_c, ENO_c_Km2PGA_7, PEP_c, ENO_c_KmPEP_7)) - (ADP_c * PYK_c_Vmax_1 * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + ADP_c / PYK_c_KmADP_1) * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1))));
    der(AMP_g) = (vAK(ADP_g, AMP_g, ATP_g, AK_g_k1_19, AK_g_k2_19)) ;
    der(_13BPGA_g) = (v2sub2prod(GAPDH_g_Vmax_18, GAPDH_g_Keq_18, GA3P_g, GAPDH_g_KmGA3P_18, NAD_g, GAPDH_g_KmNAD_18, _13BPGA_g, GAPDH_g_Km13BPGA_18, NADH_g, GAPDH_g_KmNAD_18H)) - (v2sub2prod(PGK_g_Vmax_10, PGK_g_Keq_10, _13BPGA_g, PGK_g_Km13BPGA_10, ADP_g, PGK_g_KmADP_10, _3PGA_g, PGK_g_Km3PGA_10, ATP_g, PGK_g_KmATP_10));
    der(Glc_c) = (GlcT_c_Vmax_5 * (Glc_e - Glc_c) / (Glc_e + Glc_c + GlcT_c_KmGlc_5 + Glc_e * Glc_c * GlcT_c_alpha_5 / GlcT_c_KmGlc_5)) - (mass_action_rev(GlcT_g_k_3, Glc_c, GlcT_g_k_3, Glc_g));
    der(Glc_e) = 0.0;
    der(Glc_g) = (mass_action_rev(GlcT_g_k_3, Glc_c, GlcT_g_k_3, Glc_g)) - (ATP_g * Glc_g * HXK_g_Vmax_8 / (HXK_g_KmGlc_8 * HXK_g_KmATP_8 * (1 + Glc_g / HXK_g_KmGlc_8 + Glc6P_g / HXK_g_KmGlc_86P) * (1 + ATP_g / HXK_g_KmATP_8 + ADP_g / HXK_g_KmADP_8)));
    der(NADH_g) = (v2sub2prod(GAPDH_g_Vmax_18, GAPDH_g_Keq_18, GA3P_g, GAPDH_g_KmGA3P_18, NAD_g, GAPDH_g_KmNAD_18, _13BPGA_g, GAPDH_g_Km13BPGA_18, NADH_g, GAPDH_g_KmNAD_18H)) - (v2sub2prod(G3PDH_g_Vmax_12, G3PDH_g_Keq_12, DHAP_g, G3PDH_g_KmDHAP_12, NADH_g, G3PDH_g_KmNAD_12H_12, Gly3P_g, G3PDH_g_KmGly3P_12, NAD_g, G3PDH_g_KmNAD_12));




end BIOMD428;
