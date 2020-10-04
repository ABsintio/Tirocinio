within BIOMD428;
class Reactions

    input Real elmt_PEP_c;
    input Real elmt__3PGA_c;
    input Real elmt_Fru16BP_g;
    input Real elmt_AMP_g;
    input Real elmt_Gly_c;
    input Real elmt__3PGA_g;
    input Real elmt_Gly_g;
    input Real elmt_AMP_c;
    input Real elmt_Gly_e;
    input Real elmt_ATP_c;
    input Real elmt_Gly3P_c;
    input Real elmt_Glc6P_g;
    input Real elmt_ATP_g;
    input Real elmt_Gly3P_g;
    input Real elmt_DHAP_c;
    input Real elmt_ADP_c;
    input Real elmt_Pyr_c;
    input Real elmt_DHAP_g;
    input Real elmt_ADP_g;
    input Real elmt_NADH_g;
    input Real elmt__13BPGA_g;
    input Real elmt_Glc_e;
    input Real elmt_Glc_c;
    input Real elmt_Fru6P_g;
    input Real elmt_GA3P_g;
    input Real elmt_Glc_g;
    input Real elmt__2PGA_c;
    input Real elmt_NAD_g;

    Real elmt_ENO_c(unit = "") "ENO_c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ENO_c_elmt_ENO_c_Km2PGA(unit "") = 0.054 "";
    parameter Real elmt_ENO_c_elmt_ENO_c_KmPEP(unit "") = 0.24 "";
    parameter Real elmt_ENO_c_elmt_ENO_c_Keq(unit "") = 6.7 "";
    parameter Real elmt_ENO_c_elmt_ENO_c_Vmax(unit "") = 598.0 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_PGAM_c(unit = "") "PGAM_c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PGAM_c_elmt_PGAM_c_Km2PGA(unit "") = 0.16 "";
    parameter Real elmt_PGAM_c_elmt_PGAM_c_Km3PGA(unit "") = 0.15 "";
    parameter Real elmt_PGAM_c_elmt_PGAM_c_Vmax(unit "") = 225.0 "";
    parameter Real elmt_PGAM_c_elmt_PGAM_c_Keq(unit "") = 0.185 "";
    Real elmt_reactant30 "";
    Real elmt_product31 "";
    Real elmt_GAPDH_g(unit = "") "GAPDH_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GAPDH_g_elmt_GAPDH_g_Vmax(unit "") = 720.9 "";
    parameter Real elmt_GAPDH_g_elmt_GAPDH_g_KmNAD(unit "") = 0.45 "";
    parameter Real elmt_GAPDH_g_elmt_GAPDH_g_KmNADH(unit "") = 0.02 "";
    parameter Real elmt_GAPDH_g_elmt_GAPDH_g_Keq(unit "") = 0.044 "";
    parameter Real elmt_GAPDH_g_elmt_GAPDH_g_Km13BPGA(unit "") = 0.1 "";
    parameter Real elmt_GAPDH_g_elmt_GAPDH_g_KmGA3P(unit "") = 0.15 "";
    Real elmt_reactant50 "";
    Real elmt_reactant51 "";
    Real elmt_reactant52 "";
    Real elmt_product54 "";
    Real elmt_product53 "";
    Real elmt_TPI_g(unit = "") "TPI_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_TPI_g_elmt_TPI_g_KmGA3P(unit "") = 0.25 "";
    parameter Real elmt_TPI_g_elmt_TPI_g_Keq(unit "") = 0.045 "";
    parameter Real elmt_TPI_g_elmt_TPI_g_KmDHAP(unit "") = 1.2 "";
    parameter Real elmt_TPI_g_elmt_TPI_g_Vmax(unit "") = 999.3 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_GK_g(unit = "") "GK_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GK_g_elmt_GK_g_KmGly(unit "") = 0.44 "";
    parameter Real elmt_GK_g_elmt_GK_g_Vmax(unit "") = 200.0 "";
    parameter Real elmt_GK_g_elmt_GK_g_KmGly3P(unit "") = 3.83 "";
    parameter Real elmt_GK_g_elmt_GK_g_KmADP(unit "") = 0.56 "";
    parameter Real elmt_GK_g_elmt_GK_g_KmATP(unit "") = 0.24 "";
    parameter Real elmt_GK_g_elmt_GK_g_Keq(unit "") = 8.0E-4 "";
    Real elmt_product41 "";
    Real elmt_product40 "";
    Real elmt_reactant38 "";
    Real elmt_reactant39 "";
    Real elmt_GDA_g(unit = "") "GDA_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GDA_g_elmt_GDA_g_k(unit "") = 600.0 "";
    Real elmt_product61 "";
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_reactant59 "";
    Real elmt_GPO_c(unit = "") "GPO_c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GPO_c_elmt_GPO_c_KmGly3P(unit "") = 1.7 "";
    parameter Real elmt_GPO_c_elmt_GPO_c_Vmax(unit "") = 368.0 "";
    Real elmt_product63 "";
    Real elmt_reactant62 "";
    Real elmt_PYK_c(unit = "") "PYK_c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PYK_c_elmt_PYK_c_KmPEP(unit "") = 0.34 "";
    parameter Real elmt_PYK_c_elmt_PYK_c_Vmax(unit "") = 1020.0 "";
    parameter Real elmt_PYK_c_elmt_PYK_c_n(unit "") = 2.5 "";
    parameter Real elmt_PYK_c_elmt_PYK_c_KmADP(unit "") = 0.114 "";
    parameter Real elmt_PYK_c_elmt_PYK_c_KiATP(unit "") = 0.57 "";
    parameter Real elmt_PYK_c_elmt_PYK_c_KiADP(unit "") = 0.64 "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_G3PDH_g(unit = "") "G3PDH_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_G3PDH_g_elmt_G3PDH_g_Vmax(unit "") = 465.0 "";
    parameter Real elmt_G3PDH_g_elmt_G3PDH_g_KmGly3P(unit "") = 2.0 "";
    parameter Real elmt_G3PDH_g_elmt_G3PDH_g_Keq(unit "") = 2857.0 "";
    parameter Real elmt_G3PDH_g_elmt_G3PDH_g_KmDHAP(unit "") = 0.1 "";
    parameter Real elmt_G3PDH_g_elmt_G3PDH_g_KmNADH(unit "") = 0.01 "";
    parameter Real elmt_G3PDH_g_elmt_G3PDH_g_KmNAD(unit "") = 0.4 "";
    Real elmt_product34 "";
    Real elmt_product35 "";
    Real elmt_reactant32 "";
    Real elmt_reactant33 "";
    Real elmt_AK_c(unit = "") "AK_c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_AK_c_elmt_AK_c_k1(unit "") = 442.0 "";
    parameter Real elmt_AK_c_elmt_AK_c_k2(unit "") = 1000.0 "";
    Real elmt_product47 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_ATPu_c(unit = "") "ATPu_c";
    parameter Real elmt_ATPu_c_elmt_ATPu_c_k(unit "") = 50.0 "";
    Real elmt_reactant36 "";
    Real elmt_product37 "";
    Real elmt_ALD_g(unit = "") "ALD_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ALD_g_elmt_ALD_g_KmDHAP(unit "") = 0.015 "";
    parameter Real elmt_ALD_g_elmt_ALD_g_KiATP(unit "") = 0.68 "";
    parameter Real elmt_ALD_g_elmt_ALD_g_KiADP(unit "") = 1.51 "";
    parameter Real elmt_ALD_g_elmt_ALD_g_KmFru16BP(unit "") = 0.009 "";
    parameter Real elmt_ALD_g_elmt_ALD_g_KiAMP(unit "") = 3.65 "";
    parameter Real elmt_ALD_g_elmt_ALD_g_KiGA3P(unit "") = 0.098 "";
    parameter Real elmt_ALD_g_elmt_ALD_g_Keq(unit "") = 0.093 "";
    parameter Real elmt_ALD_g_elmt_ALD_g_Vmax(unit "") = 560.0 "";
    parameter Real elmt_ALD_g_elmt_ALD_g_KmGA3P(unit "") = 0.067 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_product43 "";
    Real elmt_GlyT_c(unit = "") "GlyT_c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GlyT_c_elmt_GlyT_c_KmGly(unit "") = 0.17 "";
    parameter Real elmt_GlyT_c_elmt_GlyT_c_Vmax(unit "") = 85.0 "";
    parameter Real elmt_GlyT_c_elmt_GlyT_c_k(unit "") = 9.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_GlcT_c(unit = "") "GlcT_c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GlcT_c_elmt_GlcT_c_KmGlc(unit "") = 1.0 "";
    parameter Real elmt_GlcT_c_elmt_GlcT_c_alpha(unit "") = 0.75 "";
    parameter Real elmt_GlcT_c_elmt_GlcT_c_Vmax(unit "") = 108.9 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_AK_g(unit = "") "AK_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_AK_g_elmt_AK_g_k1(unit "") = 442.0 "";
    parameter Real elmt_AK_g_elmt_AK_g_k2(unit "") = 1000.0 "";
    Real elmt_product56 "";
    Real elmt_product57 "";
    Real elmt_reactant55 "";
    Real elmt_PyrT_c(unit = "") "PyrT_c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PyrT_c_elmt_PyrT_c_Vmax(unit "") = 200.0 "";
    parameter Real elmt_PyrT_c_elmt_PyrT_c_KmPyr(unit "") = 1.96 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_GlcT_g(unit = "") "GlcT_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GlcT_g_elmt_GlcT_g_k(unit "") = 250000.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_HXK_g(unit = "") "HXK_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_HXK_g_elmt_HXK_g_KmATP(unit "") = 0.116 "";
    parameter Real elmt_HXK_g_elmt_HXK_g_KmADP(unit "") = 0.126 "";
    parameter Real elmt_HXK_g_elmt_HXK_g_KmGlc(unit "") = 0.1 "";
    parameter Real elmt_HXK_g_elmt_HXK_g_KmGlc6P(unit "") = 12.0 "";
    parameter Real elmt_HXK_g_elmt_HXK_g_Vmax(unit "") = 1929.0 "";
    Real elmt_reactant20 "";
    Real elmt_product23 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_PGI_g(unit = "") "PGI_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PGI_g_elmt_PGI_g_KmGlc6P(unit "") = 0.4 "";
    parameter Real elmt_PGI_g_elmt_PGI_g_KmFru6P(unit "") = 0.12 "";
    parameter Real elmt_PGI_g_elmt_PGI_g_Vmax(unit "") = 1305.0 "";
    parameter Real elmt_PGI_g_elmt_PGI_g_Keq(unit "") = 0.3 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_PGK_g(unit = "") "PGK_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PGK_g_elmt_PGK_g_Vmax(unit "") = 2862.0 "";
    parameter Real elmt_PGK_g_elmt_PGK_g_Km13BPGA(unit "") = 0.003 "";
    parameter Real elmt_PGK_g_elmt_PGK_g_Keq(unit "") = 3332.0 "";
    parameter Real elmt_PGK_g_elmt_PGK_g_KmADP(unit "") = 0.1 "";
    parameter Real elmt_PGK_g_elmt_PGK_g_KmATP(unit "") = 0.29 "";
    parameter Real elmt_PGK_g_elmt_PGK_g_Km3PGA(unit "") = 1.62 "";
    Real elmt_reactant26 "";
    Real elmt_reactant27 "";
    Real elmt_product29 "";
    Real elmt_product28 "";
    Real elmt_PFK_g(unit = "") "PFK_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PFK_g_elmt_PFK_g_Vmax(unit "") = 1708.0 "";
    parameter Real elmt_PFK_g_elmt_PFK_g_KmFru6P(unit "") = 0.82 "";
    parameter Real elmt_PFK_g_elmt_PFK_g_Ki2(unit "") = 10.7 "";
    parameter Real elmt_PFK_g_elmt_PFK_g_Ki1(unit "") = 15.8 "";
    parameter Real elmt_PFK_g_elmt_PFK_g_KmATP(unit "") = 0.026 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_GlyT_g(unit = "") "GlyT_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GlyT_g_elmt_GlyT_g_k(unit "") = 9000.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt__3PGAT_g(unit = "") "_3PGAT_g";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt__3PGAT_g_elmt__3PGAT_g_k(unit "") = 250.0 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";


    initial equation
        elmt_reactant42 = 1.0;
        elmt_product34 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant45 = 2.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product44 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant55 = 2.0;
        elmt_reactant12 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product56 = 1.0;
        elmt_product11 = 1.0;
        elmt_product54 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_product46 = 1.0;
        elmt_product63 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product61 = 1.0;
        elmt_product7 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_product22 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product16 = 1.0;
        elmt_product13 = 1.0;
        elmt_product57 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_ENO_c = (((elmt_ENO_c_elmt_ENO_c_Vmax * elmt__2PGA_c * (1.0 - (elmt_PEP_c / (elmt_ENO_c_elmt_ENO_c_Keq * elmt__2PGA_c)))) / (elmt_ENO_c_elmt_ENO_c_Km2PGA * (1.0 + (elmt__2PGA_c / elmt_ENO_c_elmt_ENO_c_Km2PGA) + (elmt_PEP_c / elmt_ENO_c_elmt_ENO_c_KmPEP)))));
        elmt_PGAM_c = (((elmt_PGAM_c_elmt_PGAM_c_Vmax * elmt__3PGA_c * (1.0 - (elmt__2PGA_c / (elmt_PGAM_c_elmt_PGAM_c_Keq * elmt__3PGA_c)))) / (elmt_PGAM_c_elmt_PGAM_c_Km3PGA * (1.0 + (elmt__3PGA_c / elmt_PGAM_c_elmt_PGAM_c_Km3PGA) + (elmt__2PGA_c / elmt_PGAM_c_elmt_PGAM_c_Km2PGA)))));
        elmt_GAPDH_g = (((elmt_GAPDH_g_elmt_GAPDH_g_Vmax * elmt_GA3P_g * elmt_NAD_g * (1.0 - ((elmt__13BPGA_g * elmt_NADH_g) / (elmt_GAPDH_g_elmt_GAPDH_g_Keq * elmt_GA3P_g * elmt_NAD_g)))) / (elmt_GAPDH_g_elmt_GAPDH_g_KmGA3P * elmt_GAPDH_g_elmt_GAPDH_g_KmNAD * (1.0 + (elmt_NAD_g / elmt_GAPDH_g_elmt_GAPDH_g_KmNAD) + (elmt_NADH_g / elmt_GAPDH_g_elmt_GAPDH_g_KmNADH)) * (1.0 + (elmt_GA3P_g / elmt_GAPDH_g_elmt_GAPDH_g_KmGA3P) + (elmt__13BPGA_g / elmt_GAPDH_g_elmt_GAPDH_g_Km13BPGA)))));
        elmt_TPI_g = (((elmt_TPI_g_elmt_TPI_g_Vmax * elmt_DHAP_g * (1.0 - (elmt_GA3P_g / (elmt_TPI_g_elmt_TPI_g_Keq * elmt_DHAP_g)))) / (elmt_TPI_g_elmt_TPI_g_KmDHAP * (1.0 + (elmt_DHAP_g / elmt_TPI_g_elmt_TPI_g_KmDHAP) + (elmt_GA3P_g / elmt_TPI_g_elmt_TPI_g_KmGA3P)))));
        elmt_GK_g = (((elmt_GK_g_elmt_GK_g_Vmax * elmt_Gly3P_g * elmt_ADP_g * (1.0 - ((elmt_Gly_g * elmt_ATP_g) / (elmt_GK_g_elmt_GK_g_Keq * elmt_Gly3P_g * elmt_ADP_g)))) / (elmt_GK_g_elmt_GK_g_KmGly3P * elmt_GK_g_elmt_GK_g_KmADP * (1.0 + (elmt_ADP_g / elmt_GK_g_elmt_GK_g_KmADP) + (elmt_ATP_g / elmt_GK_g_elmt_GK_g_KmATP)) * (1.0 + (elmt_Gly3P_g / elmt_GK_g_elmt_GK_g_KmGly3P) + (elmt_Gly_g / elmt_GK_g_elmt_GK_g_KmGly)))));
        elmt_GDA_g = ((elmt_Gly3P_g * elmt_DHAP_c * elmt_GDA_g_elmt_GDA_g_k) - (elmt_Gly3P_c * elmt_DHAP_g * elmt_GDA_g_elmt_GDA_g_k));
        elmt_GPO_c = (((elmt_GPO_c_elmt_GPO_c_Vmax * elmt_Gly3P_c) / (elmt_GPO_c_elmt_GPO_c_KmGly3P * (1.0 + (elmt_Gly3P_c / elmt_GPO_c_elmt_GPO_c_KmGly3P)))));
        elmt_PYK_c = ((elmt_ADP_c * elmt_PYK_c_elmt_PYK_c_Vmax * Functions.pow((elmt_PEP_c / (elmt_PYK_c_elmt_PYK_c_KmPEP * (1.0 + (elmt_ADP_c / elmt_PYK_c_elmt_PYK_c_KiADP) + (elmt_ATP_c / elmt_PYK_c_elmt_PYK_c_KiATP)))), elmt_PYK_c_elmt_PYK_c_n)) / (elmt_PYK_c_elmt_PYK_c_KmADP * (1.0 + (elmt_ADP_c / elmt_PYK_c_elmt_PYK_c_KmADP)) * (1.0 + Functions.pow((elmt_PEP_c / (elmt_PYK_c_elmt_PYK_c_KmPEP * (1.0 + (elmt_ADP_c / elmt_PYK_c_elmt_PYK_c_KiADP) + (elmt_ATP_c / elmt_PYK_c_elmt_PYK_c_KiATP)))), elmt_PYK_c_elmt_PYK_c_n))));
        elmt_G3PDH_g = (((elmt_G3PDH_g_elmt_G3PDH_g_Vmax * elmt_DHAP_g * elmt_NADH_g * (1.0 - ((elmt_Gly3P_g * elmt_NAD_g) / (elmt_G3PDH_g_elmt_G3PDH_g_Keq * elmt_DHAP_g * elmt_NADH_g)))) / (elmt_G3PDH_g_elmt_G3PDH_g_KmDHAP * elmt_G3PDH_g_elmt_G3PDH_g_KmNADH * (1.0 + (elmt_NADH_g / elmt_G3PDH_g_elmt_G3PDH_g_KmNADH) + (elmt_NAD_g / elmt_G3PDH_g_elmt_G3PDH_g_KmNAD)) * (1.0 + (elmt_DHAP_g / elmt_G3PDH_g_elmt_G3PDH_g_KmDHAP) + (elmt_Gly3P_g / elmt_G3PDH_g_elmt_G3PDH_g_KmGly3P)))));
        elmt_AK_c = (((elmt_AK_c_elmt_AK_c_k1 * Functions.pow(elmt_ADP_c, 2.0)) - (elmt_AMP_c * elmt_ATP_c * elmt_AK_c_elmt_AK_c_k2)));
        elmt_ATPu_c = ((elmt_ATP_c * elmt_ATPu_c_elmt_ATPu_c_k) / elmt_ADP_c);
        elmt_ALD_g = ((elmt_Fru16BP_g * elmt_ALD_g_elmt_ALD_g_Vmax * (1.0 - ((elmt_GA3P_g * elmt_DHAP_g) / (elmt_Fru16BP_g * elmt_ALD_g_elmt_ALD_g_Keq)))) / (elmt_ALD_g_elmt_ALD_g_KmFru16BP * (1.0 + (elmt_ATP_g / elmt_ALD_g_elmt_ALD_g_KiATP) + (elmt_ADP_g / elmt_ALD_g_elmt_ALD_g_KiADP) + (elmt_AMP_g / elmt_ALD_g_elmt_ALD_g_KiAMP)) * (1.0 + (elmt_GA3P_g / elmt_ALD_g_elmt_ALD_g_KmGA3P) + (elmt_DHAP_g / elmt_ALD_g_elmt_ALD_g_KmDHAP) + (elmt_Fru16BP_g / (elmt_ALD_g_elmt_ALD_g_KmFru16BP * (1.0 + (elmt_ATP_g / elmt_ALD_g_elmt_ALD_g_KiATP) + (elmt_ADP_g / elmt_ALD_g_elmt_ALD_g_KiADP) + (elmt_AMP_g / elmt_ALD_g_elmt_ALD_g_KiAMP)))) + ((elmt_GA3P_g * elmt_DHAP_g) / (elmt_ALD_g_elmt_ALD_g_KmGA3P * elmt_ALD_g_elmt_ALD_g_KmDHAP)) + ((elmt_Fru16BP_g * elmt_GA3P_g) / (elmt_ALD_g_elmt_ALD_g_KmFru16BP * elmt_ALD_g_elmt_ALD_g_KiGA3P * (1.0 + (elmt_ATP_g / elmt_ALD_g_elmt_ALD_g_KiATP) + (elmt_ADP_g / elmt_ALD_g_elmt_ALD_g_KiADP) + (elmt_AMP_g / elmt_ALD_g_elmt_ALD_g_KiAMP)))))));
        elmt_GlyT_c = ((elmt_GlyT_c_elmt_GlyT_c_k * (elmt_Gly_c - elmt_Gly_e)) + ((elmt_GlyT_c_elmt_GlyT_c_Vmax * (elmt_Gly_c - elmt_Gly_e)) / (elmt_GlyT_c_elmt_GlyT_c_KmGly * (1.0 + (elmt_Gly_c / elmt_GlyT_c_elmt_GlyT_c_KmGly)) * (1.0 + (elmt_Gly_e / elmt_GlyT_c_elmt_GlyT_c_KmGly)))));
        elmt_GlcT_c = ((elmt_GlcT_c_elmt_GlcT_c_Vmax * (elmt_Glc_e - elmt_Glc_c)) / (elmt_Glc_e + elmt_Glc_c + elmt_GlcT_c_elmt_GlcT_c_KmGlc + ((elmt_Glc_e * elmt_Glc_c * elmt_GlcT_c_elmt_GlcT_c_alpha) / elmt_GlcT_c_elmt_GlcT_c_KmGlc)));
        elmt_AK_g = (((elmt_AK_g_elmt_AK_g_k1 * Functions.pow(elmt_ADP_g, 2.0)) - (elmt_AMP_g * elmt_ATP_g * elmt_AK_g_elmt_AK_g_k2)));
        elmt_PyrT_c = (((elmt_PyrT_c_elmt_PyrT_c_Vmax * elmt_Pyr_c) / (elmt_PyrT_c_elmt_PyrT_c_KmPyr * (1.0 + (elmt_Pyr_c / elmt_PyrT_c_elmt_PyrT_c_KmPyr)))));
        elmt_GlcT_g = (((elmt_GlcT_g_elmt_GlcT_g_k * elmt_Glc_c) - (elmt_GlcT_g_elmt_GlcT_g_k * elmt_Glc_g)));
        elmt_HXK_g = ((elmt_ATP_g * elmt_Glc_g * elmt_HXK_g_elmt_HXK_g_Vmax) / (elmt_HXK_g_elmt_HXK_g_KmGlc * elmt_HXK_g_elmt_HXK_g_KmATP * (1.0 + (elmt_Glc_g / elmt_HXK_g_elmt_HXK_g_KmGlc) + (elmt_Glc6P_g / elmt_HXK_g_elmt_HXK_g_KmGlc6P)) * (1.0 + (elmt_ATP_g / elmt_HXK_g_elmt_HXK_g_KmATP) + (elmt_ADP_g / elmt_HXK_g_elmt_HXK_g_KmADP))));
        elmt_PGI_g = (((elmt_PGI_g_elmt_PGI_g_Vmax * elmt_Glc6P_g * (1.0 - (elmt_Fru6P_g / (elmt_PGI_g_elmt_PGI_g_Keq * elmt_Glc6P_g)))) / (elmt_PGI_g_elmt_PGI_g_KmGlc6P * (1.0 + (elmt_Glc6P_g / elmt_PGI_g_elmt_PGI_g_KmGlc6P) + (elmt_Fru6P_g / elmt_PGI_g_elmt_PGI_g_KmFru6P)))));
        elmt_PGK_g = (((elmt_PGK_g_elmt_PGK_g_Vmax * elmt__13BPGA_g * elmt_ADP_g * (1.0 - ((elmt__3PGA_g * elmt_ATP_g) / (elmt_PGK_g_elmt_PGK_g_Keq * elmt__13BPGA_g * elmt_ADP_g)))) / (elmt_PGK_g_elmt_PGK_g_Km13BPGA * elmt_PGK_g_elmt_PGK_g_KmADP * (1.0 + (elmt_ADP_g / elmt_PGK_g_elmt_PGK_g_KmADP) + (elmt_ATP_g / elmt_PGK_g_elmt_PGK_g_KmATP)) * (1.0 + (elmt__13BPGA_g / elmt_PGK_g_elmt_PGK_g_Km13BPGA) + (elmt__3PGA_g / elmt_PGK_g_elmt_PGK_g_Km3PGA)))));
        elmt_PFK_g = ((elmt_ATP_g * elmt_Fru6P_g * elmt_PFK_g_elmt_PFK_g_Vmax * elmt_PFK_g_elmt_PFK_g_Ki1) / (elmt_PFK_g_elmt_PFK_g_KmFru6P * elmt_PFK_g_elmt_PFK_g_KmATP * (1.0 + (elmt_ATP_g / elmt_PFK_g_elmt_PFK_g_KmATP)) * (elmt_Fru16BP_g + elmt_PFK_g_elmt_PFK_g_Ki1) * (1.0 + (elmt_Fru6P_g / elmt_PFK_g_elmt_PFK_g_KmFru6P) + (elmt_Fru16BP_g / elmt_PFK_g_elmt_PFK_g_Ki2))));
        elmt_GlyT_g = (((elmt_GlyT_g_elmt_GlyT_g_k * elmt_Gly_g) - (elmt_GlyT_g_elmt_GlyT_g_k * elmt_Gly_c)));
        elmt__3PGAT_g = (((elmt__3PGAT_g_elmt__3PGAT_g_k * elmt__3PGA_g) - (elmt__3PGAT_g_elmt__3PGAT_g_k * elmt__3PGA_c)));
        der(elmt_reactant42) = 0;
        der(elmt_product34) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product44) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product56) = 0;
        der(elmt_product11) = 0;
        der(elmt_product54) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_product46) = 0;
        der(elmt_product63) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product61) = 0;
        der(elmt_product7) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product22) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product16) = 0;
        der(elmt_product13) = 0;
        der(elmt_product57) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
