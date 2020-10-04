within BIOMD165;
class Reactions

    input Real elmt_Propranolol_cell;
    input Real elmt_PKAC_PKI_cell;
    input Real elmt_GsAC_cell;
    input Real elmt_b1AR_Gs_cell;
    input Real elmt_L_b1AR_cell;
    input Real elmt_PKAC_cell;
    input Real elmt_Gsa_gdp_cell;
    input Real elmt_b1ARinhib_cell;
    input Real elmt_cell;
    input Real elmt_cAMP_cell;
    input Real elmt_AKARp_cell;
    input Real elmt_ar_for_add_Ligand;
    input Real elmt_b1AR_p_cell;
    input Real elmt_PDEcAMP_cell;
    input Real elmt_PKI_cell;
    input Real elmt_PP_cell;
    input Real elmt_DMNB_cAMP_cell;
    input Real elmt_RC_cell;
    input Real elmt_Fsk_cell;
    input Real elmt_Vmax_cAMP_synthesis_FskAC;
    input Real elmt_PKAC_AKAR_cell;
    input Real elmt_Kf_inhibit_PDE;
    input Real elmt_PP_AKARp_cell;
    input Real elmt_ATP_cell;
    input Real elmt_light_cAMP_photolysis;
    input Real elmt_Gsbg_cell;
    input Real elmt_b1AR_S464_cell;
    input Real elmt_AKAR_cell;
    input Real elmt_L_b1AR_Gs_cell;
    input Real elmt_PDE_IBMX_cell;
    input Real elmt_A2RC_cell;
    input Real elmt_Kr_inhibit_PDE;
    input Real elmt_Gs_cell;
    input Real elmt_L_cell;
    input Real elmt_b1AR_cell;
    input Real elmt_Vmax_cAMP_synthesis_GsAC;
    input Real elmt_AC_cell;
    input Real elmt_ARC_cell;
    input Real elmt_A2R_cell;
    input Real elmt_PDE_cell;
    input Real elmt_IBMX_cell;
    input Real elmt_ar_for_add_propranolol;
    input Real elmt_FskAC_cell;
    input Real elmt_Gsa_gtp_cell;

    Real elmt_desens_bark(unit = "") "desens_bark";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_desens_bark_elmt_k_barkp(unit "s-1.0") = 0.0011 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_inhib_PKAC(unit = "") "inhib_PKAC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_inhib_PKAC_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_inhib_PKAC_elmt_Kr(unit "s-1.0") = 0.2 "";
    Real elmt_product50 "";
    Real elmt_reactant48 "";
    Real elmt_reactant49 "";
    Real elmt_bind_RC_cAMP(unit = "") "bind_RC_cAMP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_bind_RC_cAMP_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_RC_cAMP_elmt_Kr(unit "s-1.0") = 9140.0 "";
    Real elmt_reactant51 "";
    Real elmt_reactant52 "";
    Real elmt_product53 "";
    Real elmt_bind_b1AR_Gs(unit = "") "bind_b1AR_Gs";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_bind_b1AR_Gs_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_b1AR_Gs_elmt_Kr(unit "s-1.0") = 33000.0 "";
    Real elmt_reactant20 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_bind_cAMP_ARC(unit = "") "bind_cAMP_ARC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_bind_cAMP_ARC_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_cAMP_ARC_elmt_Kr(unit "s-1.0") = 1640.0 "";
    Real elmt_reactant18 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_cAMP_synthesis_GsAC(unit = "") "cAMP_synthesis_GsAC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_cAMP_synthesis_GsAC_elmt_Km(unit "m-3.0.") = 315.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_bind_L_b1AR(unit = "") "bind_L_b1AR";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_bind_L_b1AR_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_L_b1AR_elmt_Kr(unit "s-1.0") = 285.0 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_reactant43 "";
    Real elmt_resens_bark(unit = "") "resens_bark";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_resens_bark_elmt_k_barkm(unit "s-1.0") = 0.0022 "";
    Real elmt_product61 "";
    Real elmt_reactant60 "";
    Real elmt_bind_A2R_PKAC(unit = "") "bind_A2R_PKAC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_bind_A2R_PKAC_elmt_Kf(unit "s-1.0") = 4375.0 "";
    parameter Real elmt_bind_A2R_PKAC_elmt_Kr(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    Real elmt_product47 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_add_propranolol(unit = "") "add_propranolol";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_product5 "";
    Real elmt_Gs_reassociation(unit = "") "Gs_reassociation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Gs_reassociation_elmt_k_reassoc(unit "m3.0.mol-1.0.s-1.0") = 1210.0 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reactant28 "";
    Real elmt_bind_FskAC(unit = "") "bind_FskAC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_bind_FskAC_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_FskAC_elmt_Kr(unit "s-1.0") = 860000.0 "";
    Real elmt_reactant31 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_desens_pka(unit = "") "desens_pka";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_desens_pka_elmt_kpkam(unit "s-1.0") = 0.0022 "";
    parameter Real elmt_desens_pka_elmt_kpkap(unit "m3.0.mol-1.0.s-1.0") = 0.0036 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_LRG_activation(unit = "") "LRG_activation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_LRG_activation_elmt_k_gact(unit "s-1.0") = 16.0 "";
    Real elmt_product9 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_bind_Gs_AC(unit = "") "bind_Gs_AC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_bind_Gs_AC_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_Gs_AC_elmt_Kr(unit "s-1.0") = 400.0 "";
    Real elmt_reactant58 "";
    Real elmt_product59 "";
    Real elmt_reactant57 "";
    Real elmt_bind_PKAC_AKAR(unit = "") "bind_PKAC_AKAR";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_bind_PKAC_AKAR_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_PKAC_AKAR_elmt_Kr(unit "s-1.0") = 21000.0 "";
    Real elmt_reactant62 "";
    Real elmt_reactant63 "";
    Real elmt_product64 "";
    Real elmt_AKAR_phosph(unit = "") "AKAR_phosph";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_AKAR_phosph_elmt_kpka_akar(unit "s-1.0") = 54.0 "";
    Real elmt_product73 "";
    Real elmt_product72 "";
    Real elmt_reactant71 "";
    Real elmt_cAMP_synthesis_FskAC(unit = "") "cAMP_synthesis_FskAC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_cAMP_synthesis_FskAC_elmt_Km(unit "m-3.0.") = 860.0 "";
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_bind_b1AR_propranolol(unit = "") "bind_b1AR_propranolol";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_bind_b1AR_propranolol_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_b1AR_propranolol_elmt_Kr(unit "s-1.0") = 8.0 "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_bind_Lb1AR_Gs(unit = "") "bind_Lb1AR_Gs";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_bind_Lb1AR_Gs_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_Lb1AR_Gs_elmt_Kr(unit "s-1.0") = 62.0 "";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_bind_L_b1ARGs(unit = "") "bind_L_b1ARGs";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_bind_L_b1ARGs_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_L_b1ARGs_elmt_Kd(unit "s-1.0") = 0.535714 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_reactant39 "";
    Real elmt_inhibit_PDE(unit = "") "inhibit_PDE";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_product67 "";
    Real elmt_reactant65 "";
    Real elmt_reactant66 "";
    Real elmt_cAMP_photolysis(unit = "") "cAMP_photolysis";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_cAMP_photolysis_elmt_kphot(unit "m3.0.mol-1.0.s-1.0") = 0.1 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_Gs_gtp_hydrolysis(unit = "") "Gs_gtp_hydrolysis";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Gs_gtp_hydrolysis_elmt_khyd(unit "s-1.0") = 0.8 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_bind_AKARp_PP(unit = "") "bind_AKARp_PP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_bind_AKARp_PP_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_AKARp_PP_elmt_Kr(unit "s-1.0") = 7000.0 "";
    Real elmt_product36 "";
    Real elmt_reactant34 "";
    Real elmt_reactant35 "";
    Real elmt_cAMP_degradation(unit = "") "cAMP_degradation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_cAMP_degradation_elmt_kpde(unit "s-1.0") = 5.0 "";
    Real elmt_product79 "";
    Real elmt_reactant78 "";
    Real elmt_bind_PDEcAMP(unit = "") "bind_PDEcAMP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_bind_PDEcAMP_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    parameter Real elmt_bind_PDEcAMP_elmt_Kr(unit "s-1.0") = 1300.0 "";
    Real elmt_product25 "";
    Real elmt_reactant23 "";
    Real elmt_reactant24 "";
    Real elmt_AKARp_dephosph(unit = "") "AKARp_dephosph";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_AKARp_dephosph_elmt_kcat_PP_AKARp(unit "s-1.0") = 8.5 "";
    Real elmt_product69 "";
    Real elmt_product70 "";
    Real elmt_reactant68 "";
    Real elmt_add_Ligand(unit = "") "add_Ligand";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_product56 "";
    Real elmt_RG_activation(unit = "") "RG_activation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cell\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RG_activation_elmt_k_gact(unit "s-1.0") = 16.0 "";
    Real elmt_reactant74 "";
    Real elmt_product77 "";
    Real elmt_product76 "";
    Real elmt_product75 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_product73 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_product72 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_product77 = 1.0;
        elmt_product76 = 1.0;
        elmt_product75 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product69 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product44 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_product79 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product56 = 1.0;
        elmt_product11 = 1.0;
        elmt_product55 = 1.0;
        elmt_product10 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product47 = 1.0;
        elmt_product46 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product61 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product67 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product64 = 1.0;
        elmt_reactant71 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product59 = 1.0;
        elmt_product14 = 1.0;
        elmt_product19 = 1.0;


    equation
        elmt_desens_bark = (elmt_desens_bark_elmt_k_barkp * (elmt_L_b1AR_cell + elmt_L_b1AR_Gs_cell) * elmt_cell);
        elmt_inhib_PKAC = (((elmt_inhib_PKAC_elmt_Kf * elmt_PKAC_cell * elmt_PKI_cell) + (- (elmt_inhib_PKAC_elmt_Kr * elmt_PKAC_PKI_cell))) * elmt_cell);
        elmt_bind_RC_cAMP = (((elmt_bind_RC_cAMP_elmt_Kf * elmt_RC_cell * elmt_cAMP_cell) + (- (elmt_bind_RC_cAMP_elmt_Kr * elmt_ARC_cell))) * elmt_cell);
        elmt_bind_b1AR_Gs = (((elmt_bind_b1AR_Gs_elmt_Kf * elmt_b1AR_cell * elmt_Gs_cell) + (- (elmt_bind_b1AR_Gs_elmt_Kr * elmt_b1AR_Gs_cell))) * elmt_cell);
        elmt_bind_cAMP_ARC = (((elmt_bind_cAMP_ARC_elmt_Kf * elmt_ARC_cell * elmt_cAMP_cell) + (- (elmt_bind_cAMP_ARC_elmt_Kr * elmt_A2RC_cell))) * elmt_cell);
        elmt_cAMP_synthesis_GsAC = (elmt_Vmax_cAMP_synthesis_GsAC * elmt_ATP_cell * (1.0 / (elmt_cAMP_synthesis_GsAC_elmt_Km + elmt_ATP_cell)) * elmt_cell);
        elmt_bind_L_b1AR = (((elmt_bind_L_b1AR_elmt_Kf * elmt_L_cell * elmt_b1AR_cell) + (- (elmt_bind_L_b1AR_elmt_Kr * elmt_L_b1AR_cell))) * elmt_cell);
        elmt_resens_bark = (elmt_resens_bark_elmt_k_barkm * elmt_b1AR_S464_cell * elmt_cell);
        elmt_bind_A2R_PKAC = (((elmt_bind_A2R_PKAC_elmt_Kf * elmt_A2RC_cell) + (- (elmt_bind_A2R_PKAC_elmt_Kr * elmt_A2R_cell * elmt_PKAC_cell))) * elmt_cell);
        elmt_add_propranolol = (elmt_ar_for_add_propranolol * elmt_cell);
        elmt_Gs_reassociation = (elmt_Gs_reassociation_elmt_k_reassoc * elmt_Gsa_gdp_cell * elmt_Gsbg_cell * elmt_cell);
        elmt_bind_FskAC = (((elmt_bind_FskAC_elmt_Kf * elmt_AC_cell * elmt_Fsk_cell) + (- (elmt_bind_FskAC_elmt_Kr * elmt_FskAC_cell))) * elmt_cell);
        elmt_desens_pka = (((elmt_desens_pka_elmt_kpkap * elmt_PKAC_cell * (elmt_L_b1AR_Gs_cell + elmt_b1AR_cell + elmt_L_b1AR_cell)) + (- (elmt_desens_pka_elmt_kpkam * elmt_b1AR_p_cell))) * elmt_cell);
        elmt_LRG_activation = (elmt_LRG_activation_elmt_k_gact * elmt_L_b1AR_Gs_cell * elmt_cell);
        elmt_bind_Gs_AC = (((elmt_bind_Gs_AC_elmt_Kf * elmt_Gsa_gtp_cell * elmt_AC_cell) + (- (elmt_bind_Gs_AC_elmt_Kr * elmt_GsAC_cell))) * elmt_cell);
        elmt_bind_PKAC_AKAR = (((elmt_bind_PKAC_AKAR_elmt_Kf * elmt_AKAR_cell * elmt_PKAC_cell) + (- (elmt_bind_PKAC_AKAR_elmt_Kr * elmt_PKAC_AKAR_cell))) * elmt_cell);
        elmt_AKAR_phosph = (elmt_AKAR_phosph_elmt_kpka_akar * elmt_PKAC_AKAR_cell * elmt_cell);
        elmt_cAMP_synthesis_FskAC = (elmt_Vmax_cAMP_synthesis_FskAC * elmt_ATP_cell * (1.0 / (elmt_cAMP_synthesis_FskAC_elmt_Km + elmt_ATP_cell)) * elmt_cell);
        elmt_bind_b1AR_propranolol = (((elmt_bind_b1AR_propranolol_elmt_Kf * elmt_Propranolol_cell * elmt_b1AR_cell) + (- (elmt_bind_b1AR_propranolol_elmt_Kr * elmt_b1ARinhib_cell))) * elmt_cell);
        elmt_bind_Lb1AR_Gs = (((elmt_bind_Lb1AR_Gs_elmt_Kf * elmt_Gs_cell * elmt_L_b1AR_cell) + (- (elmt_bind_Lb1AR_Gs_elmt_Kr * elmt_L_b1AR_Gs_cell))) * elmt_cell);
        elmt_bind_L_b1ARGs = (((elmt_bind_L_b1ARGs_elmt_Kf * elmt_b1AR_Gs_cell * elmt_L_cell) + (- (elmt_bind_L_b1ARGs_elmt_Kd * elmt_L_b1AR_Gs_cell))) * elmt_cell);
        elmt_inhibit_PDE = (((elmt_Kf_inhibit_PDE * elmt_PDE_cell * elmt_IBMX_cell) + (- (elmt_Kr_inhibit_PDE * elmt_PDE_IBMX_cell))) * elmt_cell);
        elmt_cAMP_photolysis = (elmt_cAMP_photolysis_elmt_kphot * elmt_light_cAMP_photolysis * elmt_DMNB_cAMP_cell * elmt_cell);
        elmt_Gs_gtp_hydrolysis = (elmt_Gs_gtp_hydrolysis_elmt_khyd * elmt_Gsa_gtp_cell * elmt_cell);
        elmt_bind_AKARp_PP = (((elmt_bind_AKARp_PP_elmt_Kf * elmt_PP_cell * elmt_AKARp_cell) + (- (elmt_bind_AKARp_PP_elmt_Kr * elmt_PP_AKARp_cell))) * elmt_cell);
        elmt_cAMP_degradation = (elmt_cAMP_degradation_elmt_kpde * elmt_PDEcAMP_cell * elmt_cell);
        elmt_bind_PDEcAMP = (((elmt_bind_PDEcAMP_elmt_Kf * elmt_PDE_cell * elmt_cAMP_cell) + (- (elmt_bind_PDEcAMP_elmt_Kr * elmt_PDEcAMP_cell))) * elmt_cell);
        elmt_AKARp_dephosph = (elmt_AKARp_dephosph_elmt_kcat_PP_AKARp * elmt_PP_AKARp_cell * elmt_cell);
        elmt_add_Ligand = (elmt_ar_for_add_Ligand * elmt_cell);
        elmt_RG_activation = (elmt_RG_activation_elmt_k_gact * elmt_b1AR_Gs_cell * elmt_cell);
        der(elmt_product30) = 0;
        der(elmt_product73) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_product72) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_product77) = 0;
        der(elmt_product76) = 0;
        der(elmt_product75) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product69) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product44) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_product79) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product56) = 0;
        der(elmt_product11) = 0;
        der(elmt_product55) = 0;
        der(elmt_product10) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product47) = 0;
        der(elmt_product46) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product61) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product67) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant71) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product59) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;

end Reactions;
