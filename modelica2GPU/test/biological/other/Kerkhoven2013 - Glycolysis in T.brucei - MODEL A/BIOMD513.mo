
model BIOMD513 "Kerkhoven2013 - Glycolysis in T.brucei - MODEL A"

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
    parameter Real GlcT_g_k1_3 = 250000.0;
    parameter Real GlcT_g_k2_3 = 250000.0;
    parameter Real PGAM_c_Vmax_4 = 225.0;
    parameter Real PGAM_c_Keq_4 = 0.17;
    parameter Real PGAM_c_Km3PGA_4 = 0.15;
    parameter Real PGAM_c_Km2PGA_4 = 0.16;
    parameter Real PyrT_c_Vmax_5 = 230.0;
    parameter Real PyrT_c_KmPyr_5 = 1.96;
    parameter Real GlcT_c_Vmax_6 = 111.7;
    parameter Real GlcT_c_KmGlc_6 = 1.0;
    parameter Real GlcT_c_alpha_6 = 0.75;
    parameter Real ALD_g_Vmax_7 = 560.0;
    parameter Real ALD_g_KmFru16BP_7 = 0.009;
    parameter Real ALD_g_KiATP_7 = 0.68;
    parameter Real ALD_g_KiADP_7 = 1.51;
    parameter Real ALD_g_KiAMP_7 = 3.65;
    parameter Real ALD_g_Keq_7 = 0.084;
    parameter Real ALD_g_KmGA3P_7 = 0.067;
    parameter Real ALD_g_KmDHAP_7 = 0.015;
    parameter Real ALD_g_KiGA3P_7 = 0.098;
    parameter Real ENO_c_Vmax_8 = 598.0;
    parameter Real ENO_c_Keq_8 = 4.17;
    parameter Real ENO_c_Km2PGA_8 = 0.054;
    parameter Real ENO_c_KmPEP_8 = 0.24;
    parameter Real HXK_g_Vmax_9 = 1774.68;
    parameter Real HXK_g_Keq_9 = 759.0;
    parameter Real HXK_g_KmGlc_9 = 0.1;
    parameter Real HXK_g_KmATP_9 = 0.116;
    parameter Real HXK_g_KmGlc6P_9 = 12.0;
    parameter Real HXK_g_KmADP_9 = 0.126;
    parameter Real _3PGAT_g_k_10 = 250.0;
    parameter Real PGK_g_Vmax_11 = 2862.0;
    parameter Real PGK_g_Keq_11 = 3377.0;
    parameter Real PGK_g_Km13BPGA_11 = 0.003;
    parameter Real PGK_g_KmADP_11 = 0.1;
    parameter Real PGK_g_Km3PGA_11 = 1.62;
    parameter Real PGK_g_KmATP_11 = 0.29;
    parameter Real G3PDH_g_Vmax_12 = 465.0;
    parameter Real G3PDH_g_Keq_12 = 17085.0;
    parameter Real G3PDH_g_KmDHAP_12 = 0.1;
    parameter Real G3PDH_g_KmNADH_12 = 0.01;
    parameter Real G3PDH_g_KmGly3P_12 = 2.0;
    parameter Real G3PDH_g_KmNAD_12 = 0.4;
    parameter Real GPO_c_Vmax_13 = 368.0;
    parameter Real GPO_c_KmGly3P_13 = 1.7;
    parameter Real ATPu_c_k_14 = 50.0;
    parameter Real GK_g_Vmax_15 = 200.0;
    parameter Real GK_g_Keq_15 = 0.000837;
    parameter Real GK_g_KmGly3P_15 = 3.83;
    parameter Real GK_g_KmADP_15 = 0.56;
    parameter Real GK_g_KmGly_15 = 0.44;
    parameter Real GK_g_KmATP_15 = 0.24;
    parameter Real AK_c_k1_16 = 480.0;
    parameter Real AK_c_k2_16 = 1000.0;
    parameter Real PGI_g_Vmax_17 = 1305.0;
    parameter Real PGI_g_KmGlc6P_17 = 0.4;
    parameter Real PGI_g_Keq_17 = 0.457;
    parameter Real PGI_g_KmFru6P_17 = 0.12;
    parameter Real _6PG_g_17 = 0.0841958;
    parameter Real PGI_g_Ki6PG_17 = 0.14;
    parameter Real GAPDH_g_Vmax_18 = 720.9;
    parameter Real GAPDH_g_Keq_18 = 0.066;
    parameter Real GAPDH_g_KmGA3P_18 = 0.15;
    parameter Real GAPDH_g_KmNAD_18 = 0.45;
    parameter Real GAPDH_g_Km13BPGA_18 = 0.1;
    parameter Real GAPDH_g_KmNADH_18 = 0.02;
    parameter Real AK_g_k1_19 = 480.0;
    parameter Real AK_g_k2_19 = 1000.0;
    parameter Real GDA_g_k_20 = 600.0;
    parameter Real cytosol = 1.0;
    parameter Real glycosome = 1.0;
    parameter Real default = 1.0;



    Real _2PGA_c;
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
    Real Gly_e;
    Real ATP_c;
    Real _13BPGA_g;
    Real Glc_c;
    Real Glc_e;
    Real Glc_g;
    Real Pyr_c;
    Real Pyr_e;
    Real NAD_g;
    Real Fru16BP_g;
    Real GA3P_g;
    Real CO2_c;
    Real CO2_g;
    Real Gly3P_c;
    Real Gly3P_g;
    Real PEP_c;
    Real AMP_g;
    Real _3PGA_g;
    Real AMP_c;
    Real NADH_g;

initial equation
    _2PGA_c = 0.1;
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
    Gly_e = 0.0;
    ATP_c = 0.3417;
    _13BPGA_g = 0.5;
    Glc_c = 0.1;
    Glc_e = 5.0;
    Glc_g = 0.1;
    Pyr_c = 10.0;
    Pyr_e = 0.0;
    NAD_g = 2.0;
    Fru16BP_g = 10.0;
    GA3P_g = 2.5;
    CO2_c = 0.0;
    CO2_g = 0.0;
    Gly3P_c = 2.76867088;
    Gly3P_g = 10.51686938;
    PEP_c = 1.0;
    AMP_g = 4.2405;
    _3PGA_g = 0.1;
    AMP_c = 2.2418;
    NADH_g = 2.0;

equation

    der(_2PGA_c) = (v1sub1prod(PGAM_c_Vmax_4, PGAM_c_Keq_4, _3PGA_c, PGAM_c_Km3PGA_4, _2PGA_c, PGAM_c_Km2PGA_4)) - (v1sub1prod(ENO_c_Vmax_8, ENO_c_Keq_8, _2PGA_c, ENO_c_Km2PGA_8, PEP_c, ENO_c_KmPEP_8));
    der(DHAP_c) = (v1sub(GPO_c_Vmax_13, Gly3P_c, GPO_c_KmGly3P_13)) - (Gly3P_g * GDA_g_k_20 * DHAP_c - Gly3P_c * GDA_g_k_20 * DHAP_g);
    der(ATP_g) = (v2sub2prod(PGK_g_Vmax_11, PGK_g_Keq_11, _13BPGA_g, PGK_g_Km13BPGA_11, ADP_g, PGK_g_KmADP_11, _3PGA_g, PGK_g_Km3PGA_11, ATP_g, PGK_g_KmATP_11)) + (v2sub2prod(GK_g_Vmax_15, GK_g_Keq_15, Gly3P_g, GK_g_KmGly_153P_15, ADP_g, GK_g_KmADP_15, Gly_e, GK_g_KmGly_15, ATP_g, GK_g_KmATP_15)) + (vAK(ADP_g, AMP_g, ATP_g, AK_g_k1_19, AK_g_k2_19)) - (PFK_g_Vmax_2 * PFK_g_Ki1_2 * Fru6P_g * ATP_g * (1 - Fru16BP_g * ADP_g / (PFK_g_Keq_2 * Fru6P_g * ATP_g)) / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2 * (Fru16BP_g + PFK_g_Ki1_2) * (PFK_g_KsATP_2 / PFK_g_KmATP_2 + Fru6P_g / PFK_g_KmFru6P_2 + ATP_g / PFK_g_KmATP_2 + ADP_g / PFK_g_KmADP_2 + Fru16BP_g * ADP_g / (PFK_g_KmADP_2 * PFK_g_Ki2_2) + Fru6P_g * ATP_g / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2)))) - (v2sub2prod(HXK_g_Vmax_9, HXK_g_Keq_9, Glc_g, HXK_g_KmGlc_9, ATP_g, HXK_g_KmATP_9, Glc6P_g, HXK_g_KmGlc_96P, ADP_g, HXK_g_KmADP_9));
    der(DHAP_g) = (ALD_g_Vmax_7 * Fru16BP_g * (1 - GA3P_g * DHAP_g / (Fru16BP_g * ALD_g_Keq_7)) / (ALD_g_KmFru16BP_7 * (1 + ATP_g / ALD_g_KiATP_7 + ADP_g / ALD_g_KiADP_7 + AMP_g / ALD_g_KiAMP_7) * (1 + GA3P_g / ALD_g_KmGA3P_7 + DHAP_g / ALD_g_KmDHAP_7 + Fru16BP_g / (ALD_g_KmFru16BP_7 * (1 + ATP_g / ALD_g_KiATP_7 + ADP_g / ALD_g_KiADP_7 + AMP_g / ALD_g_KiAMP_7)) + GA3P_g * DHAP_g / (ALD_g_KmGA3P_7 * ALD_g_KmDHAP_7) + Fru16BP_g * GA3P_g / (ALD_g_KmFru16BP_7 * ALD_g_KiGA3P_7 * (1 + ATP_g / ALD_g_KiATP_7 + ADP_g / ALD_g_KiADP_7 + AMP_g / ALD_g_KiAMP_7))))) + (Gly3P_g * GDA_g_k_20 * DHAP_c - Gly3P_c * GDA_g_k_20 * DHAP_g) - (v1sub1prod(TPI_g_Vmax_0, TPI_g_Keq_0, DHAP_g, TPI_g_KmDHAP_0, GA3P_g, TPI_g_KmGA3P_0)) - (v2sub2prod(G3PDH_g_Vmax_12, G3PDH_g_Keq_12, DHAP_g, G3PDH_g_KmDHAP_12, NADH_g, G3PDH_g_KmNAD_12H_12, Gly3P_g, G3PDH_g_KmGly3P_12, NAD_g, G3PDH_g_KmNAD_12));
    der(ADP_g) = (PFK_g_Vmax_2 * PFK_g_Ki1_2 * Fru6P_g * ATP_g * (1 - Fru16BP_g * ADP_g / (PFK_g_Keq_2 * Fru6P_g * ATP_g)) / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2 * (Fru16BP_g + PFK_g_Ki1_2) * (PFK_g_KsATP_2 / PFK_g_KmATP_2 + Fru6P_g / PFK_g_KmFru6P_2 + ATP_g / PFK_g_KmATP_2 + ADP_g / PFK_g_KmADP_2 + Fru16BP_g * ADP_g / (PFK_g_KmADP_2 * PFK_g_Ki2_2) + Fru6P_g * ATP_g / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2)))) + (v2sub2prod(HXK_g_Vmax_9, HXK_g_Keq_9, Glc_g, HXK_g_KmGlc_9, ATP_g, HXK_g_KmATP_9, Glc6P_g, HXK_g_KmGlc_96P, ADP_g, HXK_g_KmADP_9)) - (v2sub2prod(PGK_g_Vmax_11, PGK_g_Keq_11, _13BPGA_g, PGK_g_Km13BPGA_11, ADP_g, PGK_g_KmADP_11, _3PGA_g, PGK_g_Km3PGA_11, ATP_g, PGK_g_KmATP_11)) - (v2sub2prod(GK_g_Vmax_15, GK_g_Keq_15, Gly3P_g, GK_g_KmGly_153P_15, ADP_g, GK_g_KmADP_15, Gly_e, GK_g_KmGly_15, ATP_g, GK_g_KmATP_15)) - (2.0 * vAK(ADP_g, AMP_g, ATP_g, AK_g_k1_19, AK_g_k2_19));
    der(Glc6P_g) = (v2sub2prod(HXK_g_Vmax_9, HXK_g_Keq_9, Glc_g, HXK_g_KmGlc_9, ATP_g, HXK_g_KmATP_9, Glc6P_g, HXK_g_KmGlc_96P, ADP_g, HXK_g_KmADP_9)) - (PGI_g_Vmax_17 * Glc6P_g * (1 - Fru6P_g / (PGI_g_Keq_17 * Glc6P_g)) / (PGI_g_KmGlc6P_17 * (1 + Glc6P_g / PGI_g_KmGlc6P_17 + Fru6P_g / PGI_g_KmFru6P_17 + _6PG_g_17 / PGI_g_Ki6PG_17)));
    der(ADP_c) = (ATPu_c_k_14 * ATP_c / ADP_c) - (PYK_c_Vmax_1 * ADP_c * (1 - Pyr_c * ATP_c / (PYK_c_Keq_1 * PEP_c * ADP_c)) * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) + Pyr_c / PYK_c_KmPyr_1) * (1 + ADP_c / PYK_c_KmADP_1 + ATP_c / PYK_c_KmATP_1))) - (2.0 * vAK(ADP_c, AMP_c, ATP_c, AK_c_k1_16, AK_c_k2_16));
    der(_3PGA_c) = (mass_action_rev(_3PGAT_g_k_10, _3PGA_g, _3PGAT_g_k_10, _3PGA_c)) - (v1sub1prod(PGAM_c_Vmax_4, PGAM_c_Keq_4, _3PGA_c, PGAM_c_Km3PGA_4, _2PGA_c, PGAM_c_Km2PGA_4));
    der(Fru6P_g) = (PGI_g_Vmax_17 * Glc6P_g * (1 - Fru6P_g / (PGI_g_Keq_17 * Glc6P_g)) / (PGI_g_KmGlc6P_17 * (1 + Glc6P_g / PGI_g_KmGlc6P_17 + Fru6P_g / PGI_g_KmFru6P_17 + _6PG_g_17 / PGI_g_Ki6PG_17))) - (PFK_g_Vmax_2 * PFK_g_Ki1_2 * Fru6P_g * ATP_g * (1 - Fru16BP_g * ADP_g / (PFK_g_Keq_2 * Fru6P_g * ATP_g)) / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2 * (Fru16BP_g + PFK_g_Ki1_2) * (PFK_g_KsATP_2 / PFK_g_KmATP_2 + Fru6P_g / PFK_g_KmFru6P_2 + ATP_g / PFK_g_KmATP_2 + ADP_g / PFK_g_KmADP_2 + Fru16BP_g * ADP_g / (PFK_g_KmADP_2 * PFK_g_Ki2_2) + Fru6P_g * ATP_g / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2))));
    der(Pi_g) = 0.0;
    der(O2_c) = 0.0;
    der(Gly_e) = 0.0;
    der(ATP_c) = (PYK_c_Vmax_1 * ADP_c * (1 - Pyr_c * ATP_c / (PYK_c_Keq_1 * PEP_c * ADP_c)) * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) + Pyr_c / PYK_c_KmPyr_1) * (1 + ADP_c / PYK_c_KmADP_1 + ATP_c / PYK_c_KmATP_1))) + (vAK(ADP_c, AMP_c, ATP_c, AK_c_k1_16, AK_c_k2_16)) - (ATPu_c_k_14 * ATP_c / ADP_c);
    der(_13BPGA_g) = (v2sub2prod(GAPDH_g_Vmax_18, GAPDH_g_Keq_18, GA3P_g, GAPDH_g_KmGA3P_18, NAD_g, GAPDH_g_KmNAD_18, _13BPGA_g, GAPDH_g_Km13BPGA_18, NADH_g, GAPDH_g_KmNAD_18H)) - (v2sub2prod(PGK_g_Vmax_11, PGK_g_Keq_11, _13BPGA_g, PGK_g_Km13BPGA_11, ADP_g, PGK_g_KmADP_11, _3PGA_g, PGK_g_Km3PGA_11, ATP_g, PGK_g_KmATP_11));
    der(Glc_c) = (GlcT_c_Vmax_6 * (Glc_e - Glc_c) / (GlcT_c_KmGlc_6 + Glc_e + Glc_c + GlcT_c_alpha_6 * Glc_e * Glc_c / GlcT_c_KmGlc_6)) - (mass_action_rev(GlcT_g_k1_3, Glc_c, GlcT_g_k2_3, Glc_g));
    der(Glc_e) = 0.0;
    der(Glc_g) = (mass_action_rev(GlcT_g_k1_3, Glc_c, GlcT_g_k2_3, Glc_g)) - (v2sub2prod(HXK_g_Vmax_9, HXK_g_Keq_9, Glc_g, HXK_g_KmGlc_9, ATP_g, HXK_g_KmATP_9, Glc6P_g, HXK_g_KmGlc_96P, ADP_g, HXK_g_KmADP_9));
    der(Pyr_c) = (PYK_c_Vmax_1 * ADP_c * (1 - Pyr_c * ATP_c / (PYK_c_Keq_1 * PEP_c * ADP_c)) * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) + Pyr_c / PYK_c_KmPyr_1) * (1 + ADP_c / PYK_c_KmADP_1 + ATP_c / PYK_c_KmATP_1))) - (v1sub(PyrT_c_Vmax_5, Pyr_c, PyrT_c_KmPyr_5));
    der(Pyr_e) = 0.0;
    der(NAD_g) = (v2sub2prod(G3PDH_g_Vmax_12, G3PDH_g_Keq_12, DHAP_g, G3PDH_g_KmDHAP_12, NADH_g, G3PDH_g_KmNAD_12H_12, Gly3P_g, G3PDH_g_KmGly3P_12, NAD_g, G3PDH_g_KmNAD_12)) - (v2sub2prod(GAPDH_g_Vmax_18, GAPDH_g_Keq_18, GA3P_g, GAPDH_g_KmGA3P_18, NAD_g, GAPDH_g_KmNAD_18, _13BPGA_g, GAPDH_g_Km13BPGA_18, NADH_g, GAPDH_g_KmNAD_18H));
    der(Fru16BP_g) = (PFK_g_Vmax_2 * PFK_g_Ki1_2 * Fru6P_g * ATP_g * (1 - Fru16BP_g * ADP_g / (PFK_g_Keq_2 * Fru6P_g * ATP_g)) / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2 * (Fru16BP_g + PFK_g_Ki1_2) * (PFK_g_KsATP_2 / PFK_g_KmATP_2 + Fru6P_g / PFK_g_KmFru6P_2 + ATP_g / PFK_g_KmATP_2 + ADP_g / PFK_g_KmADP_2 + Fru16BP_g * ADP_g / (PFK_g_KmADP_2 * PFK_g_Ki2_2) + Fru6P_g * ATP_g / (PFK_g_KmFru6P_2 * PFK_g_KmATP_2)))) - (ALD_g_Vmax_7 * Fru16BP_g * (1 - GA3P_g * DHAP_g / (Fru16BP_g * ALD_g_Keq_7)) / (ALD_g_KmFru16BP_7 * (1 + ATP_g / ALD_g_KiATP_7 + ADP_g / ALD_g_KiADP_7 + AMP_g / ALD_g_KiAMP_7) * (1 + GA3P_g / ALD_g_KmGA3P_7 + DHAP_g / ALD_g_KmDHAP_7 + Fru16BP_g / (ALD_g_KmFru16BP_7 * (1 + ATP_g / ALD_g_KiATP_7 + ADP_g / ALD_g_KiADP_7 + AMP_g / ALD_g_KiAMP_7)) + GA3P_g * DHAP_g / (ALD_g_KmGA3P_7 * ALD_g_KmDHAP_7) + Fru16BP_g * GA3P_g / (ALD_g_KmFru16BP_7 * ALD_g_KiGA3P_7 * (1 + ATP_g / ALD_g_KiATP_7 + ADP_g / ALD_g_KiADP_7 + AMP_g / ALD_g_KiAMP_7)))));
    der(GA3P_g) = (v1sub1prod(TPI_g_Vmax_0, TPI_g_Keq_0, DHAP_g, TPI_g_KmDHAP_0, GA3P_g, TPI_g_KmGA3P_0)) + (ALD_g_Vmax_7 * Fru16BP_g * (1 - GA3P_g * DHAP_g / (Fru16BP_g * ALD_g_Keq_7)) / (ALD_g_KmFru16BP_7 * (1 + ATP_g / ALD_g_KiATP_7 + ADP_g / ALD_g_KiADP_7 + AMP_g / ALD_g_KiAMP_7) * (1 + GA3P_g / ALD_g_KmGA3P_7 + DHAP_g / ALD_g_KmDHAP_7 + Fru16BP_g / (ALD_g_KmFru16BP_7 * (1 + ATP_g / ALD_g_KiATP_7 + ADP_g / ALD_g_KiADP_7 + AMP_g / ALD_g_KiAMP_7)) + GA3P_g * DHAP_g / (ALD_g_KmGA3P_7 * ALD_g_KmDHAP_7) + Fru16BP_g * GA3P_g / (ALD_g_KmFru16BP_7 * ALD_g_KiGA3P_7 * (1 + ATP_g / ALD_g_KiATP_7 + ADP_g / ALD_g_KiADP_7 + AMP_g / ALD_g_KiAMP_7))))) - (v2sub2prod(GAPDH_g_Vmax_18, GAPDH_g_Keq_18, GA3P_g, GAPDH_g_KmGA3P_18, NAD_g, GAPDH_g_KmNAD_18, _13BPGA_g, GAPDH_g_Km13BPGA_18, NADH_g, GAPDH_g_KmNAD_18H));
    der(CO2_c) = 0.0;
    der(CO2_g) = 0.0;
    der(Gly3P_c) = (Gly3P_g * GDA_g_k_20 * DHAP_c - Gly3P_c * GDA_g_k_20 * DHAP_g) - (v1sub(GPO_c_Vmax_13, Gly3P_c, GPO_c_KmGly3P_13));
    der(Gly3P_g) = (v2sub2prod(G3PDH_g_Vmax_12, G3PDH_g_Keq_12, DHAP_g, G3PDH_g_KmDHAP_12, NADH_g, G3PDH_g_KmNAD_12H_12, Gly3P_g, G3PDH_g_KmGly3P_12, NAD_g, G3PDH_g_KmNAD_12)) - (v2sub2prod(GK_g_Vmax_15, GK_g_Keq_15, Gly3P_g, GK_g_KmGly_153P_15, ADP_g, GK_g_KmADP_15, Gly_e, GK_g_KmGly_15, ATP_g, GK_g_KmATP_15)) - (Gly3P_g * GDA_g_k_20 * DHAP_c - Gly3P_c * GDA_g_k_20 * DHAP_g);
    der(PEP_c) = (v1sub1prod(ENO_c_Vmax_8, ENO_c_Keq_8, _2PGA_c, ENO_c_Km2PGA_8, PEP_c, ENO_c_KmPEP_8)) - (PYK_c_Vmax_1 * ADP_c * (1 - Pyr_c * ATP_c / (PYK_c_Keq_1 * PEP_c * ADP_c)) * pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) / (PYK_c_KmADP_1 * (1 + pow(PEP_c / (PYK_c_KmPEP_1 * (1 + ADP_c / PYK_c_KiADP_1 + ATP_c / PYK_c_KiATP_1)), PYK_c_n_1) + Pyr_c / PYK_c_KmPyr_1) * (1 + ADP_c / PYK_c_KmADP_1 + ATP_c / PYK_c_KmATP_1)));
    der(AMP_g) = (vAK(ADP_g, AMP_g, ATP_g, AK_g_k1_19, AK_g_k2_19)) ;
    der(_3PGA_g) = (v2sub2prod(PGK_g_Vmax_11, PGK_g_Keq_11, _13BPGA_g, PGK_g_Km13BPGA_11, ADP_g, PGK_g_KmADP_11, _3PGA_g, PGK_g_Km3PGA_11, ATP_g, PGK_g_KmATP_11)) - (mass_action_rev(_3PGAT_g_k_10, _3PGA_g, _3PGAT_g_k_10, _3PGA_c));
    der(AMP_c) = (vAK(ADP_c, AMP_c, ATP_c, AK_c_k1_16, AK_c_k2_16)) ;
    der(NADH_g) = (v2sub2prod(GAPDH_g_Vmax_18, GAPDH_g_Keq_18, GA3P_g, GAPDH_g_KmGA3P_18, NAD_g, GAPDH_g_KmNAD_18, _13BPGA_g, GAPDH_g_Km13BPGA_18, NADH_g, GAPDH_g_KmNAD_18H)) - (v2sub2prod(G3PDH_g_Vmax_12, G3PDH_g_Keq_12, DHAP_g, G3PDH_g_KmDHAP_12, NADH_g, G3PDH_g_KmNAD_12H_12, Gly3P_g, G3PDH_g_KmGly3P_12, NAD_g, G3PDH_g_KmNAD_12));




end BIOMD513;
