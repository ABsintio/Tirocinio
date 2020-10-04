within BIOMD182;
class Reactions

    input Real elmt_cAMP_cyto;
    input Real elmt_c3_R2C2_cyto;
    input Real elmt_Vmax_PKA_P_PDE;
    input Real elmt_Vmax_PPase_mek;
    input Real elmt_Vmax_PKA_P_PTP;
    input Real elmt_PDE4_cyto;
    input Real elmt_iso_BAR_G_cyto_mem;
    input Real elmt_AC_active_cyto_mem;
    input Real elmt_PTP_cyto;
    input Real elmt_B_Raf_cyto;
    input Real elmt_Vmax_PPase_MAPK;
    input Real elmt_KMOLE;
    input Real elmt_MEK_active_cyto;
    input Real elmt_Vmax_MEK_activates_MAPK;
    input Real elmt_BAR_G_cyto_mem;
    input Real elmt_Vmax_PTP_PKA;
    input Real elmt_PTP_PKA_cyto;
    input Real elmt_PKA_cyto;
    input Real elmt_Vmax_AC_active_AC_active;
    input Real elmt_iso_BAR_cyto_mem;
    input Real elmt_MAPK_active_cyto;
    input Real elmt_Vmax_highKM_PDE;
    input Real elmt_bg_cyto;
    input Real elmt_Vmax_PTP;
    input Real elmt_Vmax_GRK_bg_GRK_bg;
    input Real elmt_cyto_mem;
    input Real elmt_Vmax_pde4_p_pde4_p;
    input Real elmt_GRK_bg_cyto;
    input Real elmt_Vmax_AC_basal_AC_basal;
    input Real elmt_ATP_cyto;
    input Real elmt_G_a_s_cyto;
    input Real elmt_MEK_cyto;
    input Real elmt_Vmax_pp2a_4_pp2a_4;
    input Real elmt_MAPK_cyto;
    input Real elmt_PDE4_P_cyto;
    input Real elmt_Vmax_PDE4_PDE4;
    input Real elmt_iso_extra;
    input Real elmt_Vmax_grk_GRK;
    input Real elmt_c_R2C2_cyto;
    input Real elmt_c2_R2C2_cyto;
    input Real elmt_Vmax_pp_ptp;
    input Real elmt_BAR_cyto_mem;
    input Real elmt_R2C2_cyto;
    input Real elmt_cyto;
    input Real elmt_B_Raf_active_cyto;
    input Real elmt_GRK_cyto;
    input Real elmt_Vmax_PPase_Raf;
    input Real elmt_Vmax_PKA_activates_Raf;
    input Real elmt_Vmax_Raf_activates_MEK;
    input Real elmt_G_GDP_cyto;
    input Real elmt_G_protein_cyto;
    input Real elmt_AC_cyto_mem;

    Real elmt_PTP_PKA(unit = "") "PTP_PKA";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PTP_PKA_elmt_Km(unit "m-3.0.") = 9.0 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_pde4_p(unit = "") "pde4_p";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_pde4_p_elmt_Km_pde4_p(unit "m-3.0.") = 1.3 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_pp2a_4(unit = "") "pp2a_4";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_pp2a_4_elmt_Km_pp2a_4(unit "m-3.0.") = 8.0 "";
    Real elmt_reactant63 "";
    Real elmt_product64 "";
    Real elmt_G_binds_BAR(unit = "") "G_binds_BAR";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto_mem\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_G_binds_BAR_elmt_Kr_G_binds_BAR(unit "s-1.0") = 0.1 "";
    parameter Real elmt_G_binds_BAR_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_G_binds_BAR_elmt_Kf_G_binds_BAR(unit "m3.0.mol-1.0.s-1.0") = 0.3 "";
    Real elmt_product71 "";
    Real elmt_reactant70 "";
    Real elmt_reactant69 "";
    Real elmt_GRK(unit = "") "GRK";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto_mem\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GRK_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_GRK_elmt_Km_grk(unit "m-2.0") = 15.0 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_PDE4(unit = "") "PDE4";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PDE4_elmt_Km_PDE4(unit "m-3.0.") = 1.3 "";
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_PKA_activates_Raf(unit = "") "PKA_activates_Raf";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PKA_activates_Raf_elmt_Km(unit "m-3.0.") = 0.5 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_Raf_activates_MEK(unit = "") "Raf_activates_MEK";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Raf_activates_MEK_elmt_Km(unit "m-3.0.") = 0.15909 "";
    Real elmt_product50 "";
    Real elmt_reactant49 "";
    Real elmt_highKM_PDE(unit = "") "highKM_PDE";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_highKM_PDE_elmt_Km(unit "m-3.0.") = 15.0 "";
    Real elmt_product34 "";
    Real elmt_reactant33 "";
    Real elmt_PKA_P_PDE(unit = "") "PKA_P_PDE";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PKA_P_PDE_elmt_Km(unit "m-3.0.") = 0.5 "";
    Real elmt_reactant47 "";
    Real elmt_product48 "";
    Real elmt_GRK_bg(unit = "") "GRK_bg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto_mem\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GRK_bg_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_GRK_bg_elmt_Km_GRK_bg(unit "m-2.0") = 4.0 "";
    Real elmt_product68 "";
    Real elmt_reactant67 "";
    Real elmt_PPase_mek(unit = "") "PPase_mek";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PPase_mek_elmt_Km(unit "m-3.0.") = 15.7 "";
    Real elmt_reactant72 "";
    Real elmt_product73 "";
    Real elmt_B1(unit = "") "B1";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_B1_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 0.0059 "";
    parameter Real elmt_B1_elmt_Kr(unit "s-1.0") = 2.8E-4 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_reactant43 "";
    Real elmt_B2(unit = "") "B2";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_B2_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 0.0059 "";
    parameter Real elmt_B2_elmt_Kr(unit "s-1.0") = 2.8E-4 "";
    Real elmt_reactant53 "";
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_trimer(unit = "") "trimer";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_trimer_elmt_Kf_trimer(unit "m3.0.mol-1.0.s-1.0") = 6.0 "";
    parameter Real elmt_trimer_elmt_Kr_trimer(unit "s-1.0") = 0.0 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_reactant24 "";
    Real elmt_activate_Gs(unit = "") "activate_Gs";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto_mem\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_activate_Gs_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_activate_Gs_elmt_Kf_activate_Gs(unit "s-1.0") = 0.025 "";
    parameter Real elmt_activate_Gs_elmt_Kr_activate_Gs(unit "m6.0.mol-2.0.s-1.0") = 0.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_PTP(unit = "") "PTP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PTP_elmt_Km(unit "m-3.0.") = 0.46 "";
    Real elmt_product57 "";
    Real elmt_reactant56 "";
    Real elmt_GTPase(unit = "") "GTPase";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_GTPase_elmt_Kr_GTPase(unit "s-1.0") = 0.0 "";
    parameter Real elmt_GTPase_elmt_Kf_GTPase(unit "s-1.0") = 0.06667 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_PKA_P_PTP(unit = "") "PKA_P_PTP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PKA_P_PTP_elmt_Km(unit "m-3.0.") = 0.1 "";
    Real elmt_product36 "";
    Real elmt_reactant35 "";
    Real elmt_iso_binds_BAR_g(unit = "") "iso_binds_BAR_g";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto_mem\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_iso_binds_BAR_g_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_iso_binds_BAR_g_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1.0 "";
    parameter Real elmt_iso_binds_BAR_g_elmt_Kr(unit "s-1.0") = 0.062 "";
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_reactant59 "";
    Real elmt_AC_active(unit = "") "AC_active";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto_mem\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_AC_active_elmt_Km_AC_active(unit "m-3.0.") = 32.0 "";
    parameter Real elmt_AC_active_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_MEK_activates_MAPK(unit = "") "MEK_activates_MAPK";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_MEK_activates_MAPK_elmt_Km(unit "m-3.0.") = 0.046296 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_bg_binds_GRK(unit = "") "bg_binds_GRK";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_bg_binds_GRK_elmt_Kr_bg_binds_GRK(unit "s-1.0") = 0.25 "";
    parameter Real elmt_bg_binds_GRK_elmt_Kf_bg_binds_GRK(unit "m3.0.mol-1.0.s-1.0") = 1.0 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reactant13 "";
    Real elmt_G_binds_iso_BAR(unit = "") "G_binds_iso_BAR";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto_mem\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_G_binds_iso_BAR_elmt_Kr_G_binds_iso_BAR(unit "s-1.0") = 0.1 "";
    parameter Real elmt_G_binds_iso_BAR_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_G_binds_iso_BAR_elmt_Kf_G_binds_iso_BAR(unit "m3.0.mol-1.0.s-1.0") = 10.0 "";
    Real elmt_reactant27 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_A2(unit = "") "A2";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_A2_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 8.35 "";
    parameter Real elmt_A2_elmt_Kr(unit "s-1.0") = 0.0167 "";
    Real elmt_reactant30 "";
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_A1(unit = "") "A1";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_A1_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 8.35 "";
    parameter Real elmt_A1_elmt_Kr(unit "s-1.0") = 0.0167 "";
    Real elmt_reactant74 "";
    Real elmt_reactant75 "";
    Real elmt_product76 "";
    Real elmt_PPase_Raf(unit = "") "PPase_Raf";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PPase_Raf_elmt_Km(unit "m-3.0.") = 15.7 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_PPase_MAPK(unit = "") "PPase_MAPK";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PPase_MAPK_elmt_Km(unit "m-3.0.") = 0.77 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_pp_ptp(unit = "") "pp_ptp";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
                                </annotation>"));
    parameter Real elmt_pp_ptp_elmt_Km(unit "m-3.0.") = 6.0 "";
    Real elmt_product66 "";
    Real elmt_reactant65 "";
    Real elmt_AC_activation(unit = "") "AC_activation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto_mem\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_AC_activation_elmt_Kf_AC_activation(unit "m3.0.mol-1.0.s-1.0") = 500.0 "";
    parameter Real elmt_AC_activation_elmt_Kr_AC_activation(unit "s-1.0") = 1.0 "";
    parameter Real elmt_AC_activation_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_reactant37 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_iso_binds_BAR(unit = "") "iso_binds_BAR";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto_mem\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_iso_binds_BAR_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_iso_binds_BAR_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1.0 "";
    parameter Real elmt_iso_binds_BAR_elmt_Kr(unit "s-1.0") = 0.2 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_AC_basal(unit = "") "AC_basal";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
            <SimpleReaction Structure=\"cyto_mem\"/>
            <ReactionRate Name=\"J\"/>
          </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_AC_basal_elmt_Km_AC_basal(unit "m-3.0.") = 1030.0 "";
    parameter Real elmt_AC_basal_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";


    initial equation
        elmt_product73 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_product71 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product34 = 1.0;
        elmt_product32 = 1.0;
        elmt_product76 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product26 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product68 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product44 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product36 = 1.0;
        elmt_product39 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_product55 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product48 = 1.0;
        elmt_product46 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_product7 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product66 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product64 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_product15 = 1.0;
        elmt_product57 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_PTP_PKA = (elmt_Vmax_PTP_PKA * 0.00166112956810631 * elmt_MAPK_active_cyto * (1.0 / (elmt_PTP_PKA_elmt_Km + (0.00166112956810631 * elmt_MAPK_active_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_pde4_p = (elmt_Vmax_pde4_p_pde4_p * 0.00166112956810631 * elmt_cAMP_cyto * (1.0 / (elmt_pde4_p_elmt_Km_pde4_p + (0.00166112956810631 * elmt_cAMP_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_pp2a_4 = (elmt_Vmax_pp2a_4_pp2a_4 * 0.00166112956810631 * elmt_PDE4_P_cyto * (1.0 / (elmt_pp2a_4_elmt_Km_pp2a_4 + (0.00166112956810631 * elmt_PDE4_P_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_G_binds_BAR = (((elmt_G_binds_BAR_elmt_Kf_G_binds_BAR * elmt_BAR_cyto_mem * 0.00166112956810631 * elmt_G_protein_cyto) + (- (elmt_G_binds_BAR_elmt_Kr_G_binds_BAR * elmt_BAR_G_cyto_mem))) * elmt_cyto_mem);
        elmt_GRK = (elmt_Vmax_grk_GRK * elmt_iso_BAR_cyto_mem * (1.0 / (elmt_GRK_elmt_Km_grk + elmt_iso_BAR_cyto_mem)) * elmt_cyto_mem);
        elmt_PDE4 = (elmt_Vmax_PDE4_PDE4 * 0.00166112956810631 * elmt_cAMP_cyto * (1.0 / (elmt_PDE4_elmt_Km_PDE4 + (0.00166112956810631 * elmt_cAMP_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PKA_activates_Raf = (elmt_Vmax_PKA_activates_Raf * 0.00166112956810631 * elmt_B_Raf_cyto * (1.0 / (elmt_PKA_activates_Raf_elmt_Km + (0.00166112956810631 * elmt_B_Raf_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_Raf_activates_MEK = (elmt_Vmax_Raf_activates_MEK * 0.00166112956810631 * elmt_MEK_cyto * (1.0 / (elmt_Raf_activates_MEK_elmt_Km + (0.00166112956810631 * elmt_MEK_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_highKM_PDE = (elmt_Vmax_highKM_PDE * 0.00166112956810631 * elmt_cAMP_cyto * (1.0 / (elmt_highKM_PDE_elmt_Km + (0.00166112956810631 * elmt_cAMP_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PKA_P_PDE = (elmt_Vmax_PKA_P_PDE * 0.00166112956810631 * elmt_PDE4_cyto * (1.0 / (elmt_PKA_P_PDE_elmt_Km + (0.00166112956810631 * elmt_PDE4_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_GRK_bg = (elmt_Vmax_GRK_bg_GRK_bg * elmt_iso_BAR_cyto_mem * (1.0 / (elmt_GRK_bg_elmt_Km_GRK_bg + elmt_iso_BAR_cyto_mem)) * elmt_cyto_mem);
        elmt_PPase_mek = (elmt_Vmax_PPase_mek * 0.00166112956810631 * elmt_MEK_active_cyto * (1.0 / (elmt_PPase_mek_elmt_Km + (0.00166112956810631 * elmt_MEK_active_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_B1 = (((elmt_B1_elmt_Kf * 0.00166112956810631 * elmt_R2C2_cyto * 0.00166112956810631 * elmt_cAMP_cyto) + (- (elmt_B1_elmt_Kr * 0.00166112956810631 * elmt_c_R2C2_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_B2 = (((elmt_B2_elmt_Kf * 0.00166112956810631 * elmt_c_R2C2_cyto * 0.00166112956810631 * elmt_cAMP_cyto) + (- (elmt_B2_elmt_Kr * 0.00166112956810631 * elmt_c2_R2C2_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_trimer = (((elmt_trimer_elmt_Kf_trimer * 0.00166112956810631 * elmt_bg_cyto * 0.00166112956810631 * elmt_G_GDP_cyto) + (- (elmt_trimer_elmt_Kr_trimer * 0.00166112956810631 * elmt_G_protein_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_activate_Gs = (((elmt_activate_Gs_elmt_Kf_activate_Gs * elmt_iso_BAR_G_cyto_mem) - (elmt_activate_Gs_elmt_Kr_activate_Gs * elmt_iso_BAR_cyto_mem * 0.00166112956810631 * elmt_bg_cyto * 0.00166112956810631 * elmt_G_a_s_cyto)) * elmt_cyto_mem);
        elmt_PTP = (elmt_Vmax_PTP * 0.00166112956810631 * elmt_MAPK_active_cyto * (1.0 / (elmt_PTP_elmt_Km + (0.00166112956810631 * elmt_MAPK_active_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_GTPase = (((elmt_GTPase_elmt_Kf_GTPase * 0.00166112956810631 * elmt_G_a_s_cyto) + (- (elmt_GTPase_elmt_Kr_GTPase * 0.00166112956810631 * elmt_G_GDP_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PKA_P_PTP = (elmt_Vmax_PKA_P_PTP * 0.00166112956810631 * elmt_PTP_cyto * (1.0 / (elmt_PKA_P_PTP_elmt_Km + (0.00166112956810631 * elmt_PTP_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_iso_binds_BAR_g = (((elmt_iso_binds_BAR_g_elmt_Kf * 0.00166112956810631 * elmt_iso_extra * elmt_BAR_G_cyto_mem) + (- (elmt_iso_binds_BAR_g_elmt_Kr * elmt_iso_BAR_G_cyto_mem))) * elmt_cyto_mem);
        elmt_AC_active = (elmt_Vmax_AC_active_AC_active * 0.00166112956810631 * elmt_ATP_cyto * (1.0 / (elmt_AC_active_elmt_Km_AC_active + (0.00166112956810631 * elmt_ATP_cyto))) * elmt_cyto_mem);
        elmt_MEK_activates_MAPK = (elmt_Vmax_MEK_activates_MAPK * 0.00166112956810631 * elmt_MAPK_cyto * (1.0 / (elmt_MEK_activates_MAPK_elmt_Km + (0.00166112956810631 * elmt_MAPK_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_bg_binds_GRK = (((elmt_bg_binds_GRK_elmt_Kf_bg_binds_GRK * 0.00166112956810631 * elmt_GRK_cyto * 0.00166112956810631 * elmt_bg_cyto) + (- (elmt_bg_binds_GRK_elmt_Kr_bg_binds_GRK * 0.00166112956810631 * elmt_GRK_bg_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_G_binds_iso_BAR = (((elmt_G_binds_iso_BAR_elmt_Kf_G_binds_iso_BAR * elmt_iso_BAR_cyto_mem * 0.00166112956810631 * elmt_G_protein_cyto) + (- (elmt_G_binds_iso_BAR_elmt_Kr_G_binds_iso_BAR * elmt_iso_BAR_G_cyto_mem))) * elmt_cyto_mem);
        elmt_A2 = (((elmt_A2_elmt_Kf * 0.00166112956810631 * elmt_c3_R2C2_cyto * 0.00166112956810631 * elmt_cAMP_cyto) + (- (elmt_A2_elmt_Kr * 0.00166112956810631 * elmt_PKA_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_A1 = (((elmt_A1_elmt_Kf * 0.00166112956810631 * elmt_c2_R2C2_cyto * 0.00166112956810631 * elmt_cAMP_cyto) + (- (elmt_A1_elmt_Kr * 0.00166112956810631 * elmt_c3_R2C2_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PPase_Raf = (elmt_Vmax_PPase_Raf * 0.00166112956810631 * elmt_B_Raf_active_cyto * (1.0 / (elmt_PPase_Raf_elmt_Km + (0.00166112956810631 * elmt_B_Raf_active_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PPase_MAPK = (elmt_Vmax_PPase_MAPK * 0.00166112956810631 * elmt_MAPK_active_cyto * (1.0 / (elmt_PPase_MAPK_elmt_Km + (0.00166112956810631 * elmt_MAPK_active_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_pp_ptp = (elmt_Vmax_pp_ptp * 0.00166112956810631 * elmt_PTP_PKA_cyto * (1.0 / (elmt_pp_ptp_elmt_Km + (0.00166112956810631 * elmt_PTP_PKA_cyto))) * elmt_cyto * 1.0 * (1.0 / elmt_KMOLE));
        elmt_AC_activation = (((elmt_AC_activation_elmt_Kf_AC_activation * 0.00166112956810631 * elmt_G_a_s_cyto * elmt_AC_cyto_mem) + (- (elmt_AC_activation_elmt_Kr_AC_activation * elmt_AC_active_cyto_mem))) * elmt_cyto_mem);
        elmt_iso_binds_BAR = (((elmt_iso_binds_BAR_elmt_Kf * elmt_BAR_cyto_mem * 0.00166112956810631 * elmt_iso_extra) + (- (elmt_iso_binds_BAR_elmt_Kr * elmt_iso_BAR_cyto_mem))) * elmt_cyto_mem);
        elmt_AC_basal = (elmt_Vmax_AC_basal_AC_basal * 0.00166112956810631 * elmt_ATP_cyto * (1.0 / (elmt_AC_basal_elmt_Km_AC_basal + (0.00166112956810631 * elmt_ATP_cyto))) * elmt_cyto_mem);
        der(elmt_product73) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_product71) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product34) = 0;
        der(elmt_product32) = 0;
        der(elmt_product76) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product68) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product44) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product36) = 0;
        der(elmt_product39) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_product55) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product48) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_product7) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product64) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product15) = 0;
        der(elmt_product57) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
