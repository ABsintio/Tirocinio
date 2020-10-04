within BIOMD165;
class Class_elmt_cell

    input Real elmt_product73;
    input Real elmt_reactant40;
    input Real elmt_product72;
    input Real elmt_reactant42;
    input Real elmt_product77;
    input Real elmt_bind_b1AR_Gs;
    input Real elmt_product76;
    input Real elmt_product75;
    input Real elmt_reactant48;
    input Real elmt_reactant49;
    input Real elmt_cAMP_synthesis_GsAC;
    input Real elmt_product70;
    input Real elmt_reactant43;
    input Real elmt_reactant45;
    input Real elmt_add_propranolol;
    input Real elmt_product69;
    input Real elmt_reactant51;
    input Real elmt_reactant52;
    input Real elmt_reactant58;
    input Real elmt_reactant57;
    input Real elmt_cAMP_degradation;
    input Real elmt_add_Ligand;
    input Real elmt_product79;
    input Real elmt_reactant20;
    input Real elmt_product11;
    input Real elmt_product10;
    input Real elmt_reactant26;
    input Real elmt_reactant28;
    input Real elmt_reactant21;
    input Real elmt_reactant23;
    input Real elmt_reactant24;
    input Real elmt_reactant18;
    input Real elmt_LRG_activation;
    input Real elmt_product9;
    input Real elmt_product7;
    input Real elmt_reactant31;
    input Real elmt_product22;
    input Real elmt_bind_Gs_AC;
    input Real elmt_bind_PKAC_AKAR;
    input Real elmt_product1;
    input Real elmt_reactant37;
    input Real elmt_reactant39;
    input Real elmt_product5;
    input Real elmt_reactant32;
    input Real elmt_product4;
    input Real elmt_cAMP_synthesis_FskAC;
    input Real elmt_reactant34;
    input Real elmt_reactant35;
    input Real elmt_bind_L_b1ARGs;
    input Real elmt_reactant29;
    input Real elmt_cAMP_photolysis;
    input Real elmt_bind_PDEcAMP;
    input Real elmt_product16;
    input Real elmt_AKARp_dephosph;
    input Real elmt_product14;
    input Real elmt_product19;
    input Real elmt_product30;
    input Real elmt_desens_bark;
    input Real elmt_inhib_PKAC;
    input Real elmt_bind_RC_cAMP;
    input Real elmt_product33;
    input Real elmt_resens_bark;
    input Real elmt_bind_A2R_PKAC;
    input Real elmt_product27;
    input Real elmt_product25;
    input Real elmt_product41;
    input Real elmt_product44;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_reactant12;
    input Real elmt_reactant13;
    input Real elmt_bind_b1AR_propranolol;
    input Real elmt_product38;
    input Real elmt_product36;
    input Real elmt_RG_activation;
    input Real elmt_reactant62;
    input Real elmt_product50;
    input Real elmt_reactant63;
    input Real elmt_product56;
    input Real elmt_product55;
    input Real elmt_reactant60;
    input Real elmt_product53;
    input Real elmt_bind_cAMP_ARC;
    input Real elmt_bind_L_b1AR;
    input Real elmt_reactant65;
    input Real elmt_reactant66;
    input Real elmt_reactant68;
    input Real elmt_Gs_reassociation;
    input Real elmt_product47;
    input Real elmt_bind_FskAC;
    input Real elmt_product46;
    input Real elmt_desens_pka;
    input Real elmt_reactant2;
    input Real elmt_reactant74;
    input Real elmt_product61;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_product67;
    input Real elmt_reactant8;
    input Real elmt_product64;
    input Real elmt_reactant71;
    input Real elmt_AKAR_phosph;
    input Real elmt_reactant78;
    input Real elmt_bind_Lb1AR_Gs;
    input Real elmt_inhibit_PDE;
    input Real elmt_Gs_gtp_hydrolysis;
    input Real elmt_bind_AKARp_PP;
    input Real elmt_product59;

    Real elmt_cell(unit = "m3.0") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Propranolol_cell_conc(unit = "");
    Real elmt_Propranolol_cell_amount(unit = "");
    Real elmt_Propranolol_cell(unit = "") "Propranolol";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"Propranolol\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_PKAC_PKI_cell_conc(unit = "");
    Real elmt_PKAC_PKI_cell_amount(unit = "");
    Real elmt_PKAC_PKI_cell(unit = "") "PKAC_PKI";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PKAC_PKI\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_GsAC_cell_conc(unit = "");
    Real elmt_GsAC_cell_amount(unit = "");
    Real elmt_GsAC_cell(unit = "") "GsAC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"GsAC\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_b1AR_Gs_cell_conc(unit = "");
    Real elmt_b1AR_Gs_cell_amount(unit = "");
    Real elmt_b1AR_Gs_cell(unit = "") "b1AR_Gs";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"b1AR_Gs\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_L_b1AR_cell_conc(unit = "");
    Real elmt_L_b1AR_cell_amount(unit = "");
    Real elmt_L_b1AR_cell(unit = "") "L_b1AR";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"L_b1AR\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PKAC_cell_conc(unit = "");
    Real elmt_PKAC_cell_amount(unit = "");
    Real elmt_PKAC_cell(unit = "") "PKAC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PKAC\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_Gsa_gdp_cell_conc(unit = "");
    Real elmt_Gsa_gdp_cell_amount(unit = "");
    Real elmt_Gsa_gdp_cell(unit = "") "Gsa_gdp";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"Gsa_gdp\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_light_spot_cell_conc(unit = "");
    Real elmt_light_spot_cell_amount(unit = "");
    Real elmt_light_spot_cell(unit = "") "light_spot";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"light_spot\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_b1ARinhib_cell_conc(unit = "");
    Real elmt_b1ARinhib_cell_amount(unit = "");
    Real elmt_b1ARinhib_cell(unit = "") "b1ARinhib";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"b1ARinhib\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_cAMP_cell_conc(unit = "");
    Real elmt_cAMP_cell_amount(unit = "");
    Real elmt_cAMP_cell(unit = "") "cAMP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"cAMP\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_AKARp_cell_conc(unit = "");
    Real elmt_AKARp_cell_amount(unit = "");
    Real elmt_AKARp_cell(unit = "") "AKARp";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"AKARp\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_b1AR_p_cell_conc(unit = "");
    Real elmt_b1AR_p_cell_amount(unit = "");
    Real elmt_b1AR_p_cell(unit = "") "b1AR_p";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"b1AR_p\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PDEcAMP_cell_conc(unit = "");
    Real elmt_PDEcAMP_cell_amount(unit = "");
    Real elmt_PDEcAMP_cell(unit = "") "PDEcAMP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PDEcAMP\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_PKI_cell_conc(unit = "");
    Real elmt_PKI_cell_amount(unit = "");
    Real elmt_PKI_cell(unit = "") "PKI";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PKI\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_PP_cell_conc(unit = "");
    Real elmt_PP_cell_amount(unit = "");
    Real elmt_PP_cell(unit = "") "PP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PP\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_DMNB_cAMP_cell_conc(unit = "");
    Real elmt_DMNB_cAMP_cell_amount(unit = "");
    Real elmt_DMNB_cAMP_cell(unit = "") "DMNB_cAMP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"DMNB_cAMP\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RC_cell_conc(unit = "");
    Real elmt_RC_cell_amount(unit = "");
    Real elmt_RC_cell(unit = "") "RC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"RC\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_Fsk_cell_conc(unit = "");
    Real elmt_Fsk_cell_amount(unit = "");
    Real elmt_Fsk_cell(unit = "") "Fsk";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"Fsk\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_PKAC_AKAR_cell_conc(unit = "");
    Real elmt_PKAC_AKAR_cell_amount(unit = "");
    Real elmt_PKAC_AKAR_cell(unit = "") "PKAC_AKAR";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PKAC_AKAR\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PP_AKARp_cell_conc(unit = "");
    Real elmt_PP_AKARp_cell_amount(unit = "");
    Real elmt_PP_AKARp_cell(unit = "") "PP_AKARp";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PP_AKARp\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_ATP_cell_conc(unit = "");
    Real elmt_ATP_cell_amount(unit = "");
    Real elmt_ATP_cell(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"ATP\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Gsbg_cell_conc(unit = "");
    Real elmt_Gsbg_cell_amount(unit = "");
    Real elmt_Gsbg_cell(unit = "") "Gsbg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"Gsbg\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_b1AR_S464_cell_conc(unit = "");
    Real elmt_b1AR_S464_cell_amount(unit = "");
    Real elmt_b1AR_S464_cell(unit = "") "b1AR_S464";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"b1AR_S464\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_AKAR_cell_conc(unit = "");
    Real elmt_AKAR_cell_amount(unit = "");
    Real elmt_AKAR_cell(unit = "") "AKAR";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"AKAR\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_PDE_IBMX_cell_conc(unit = "");
    Real elmt_PDE_IBMX_cell_amount(unit = "");
    Real elmt_PDE_IBMX_cell(unit = "") "PDE_IBMX";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PDE_IBMX\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_L_b1AR_Gs_cell_conc(unit = "");
    Real elmt_L_b1AR_Gs_cell_amount(unit = "");
    Real elmt_L_b1AR_Gs_cell(unit = "") "L_b1AR_Gs";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"L_b1AR_Gs\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_A2RC_cell_conc(unit = "");
    Real elmt_A2RC_cell_amount(unit = "");
    Real elmt_A2RC_cell(unit = "") "A2RC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"A2RC\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_L_cell_conc(unit = "");
    Real elmt_L_cell_amount(unit = "");
    Real elmt_L_cell(unit = "") "L";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"L\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_Gs_cell_conc(unit = "");
    Real elmt_Gs_cell_amount(unit = "");
    Real elmt_Gs_cell(unit = "") "Gs";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"Gs\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_b1AR_cell_conc(unit = "");
    Real elmt_b1AR_cell_amount(unit = "");
    Real elmt_b1AR_cell(unit = "") "b1AR";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"b1AR\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_AC_cell_conc(unit = "");
    Real elmt_AC_cell_amount(unit = "");
    Real elmt_AC_cell(unit = "") "AC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"AC\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ARC_cell_conc(unit = "");
    Real elmt_ARC_cell_amount(unit = "");
    Real elmt_ARC_cell(unit = "") "ARC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"ARC\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_A2R_cell_conc(unit = "");
    Real elmt_A2R_cell_amount(unit = "");
    Real elmt_A2R_cell(unit = "") "A2R";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"A2R\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_PDE_cell_conc(unit = "");
    Real elmt_PDE_cell_amount(unit = "");
    Real elmt_PDE_cell(unit = "") "PDE";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PDE\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IBMX_cell_conc(unit = "");
    Real elmt_IBMX_cell_amount(unit = "");
    Real elmt_IBMX_cell(unit = "") "IBMX";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"IBMX\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_Gsa_gtp_cell_conc(unit = "");
    Real elmt_Gsa_gtp_cell_amount(unit = "");
    Real elmt_Gsa_gtp_cell(unit = "") "Gsa_gtp";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"Gsa_gtp\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_FskAC_cell_conc(unit = "");
    Real elmt_FskAC_cell_amount(unit = "");
    Real elmt_FskAC_cell(unit = "") "FskAC";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"FskAC\"/>
      </VCellInfo>
            </annotation>"));

    initial equation
        elmt_cell = 0.25;
        elmt_Propranolol_cell_conc = 0.0;
        elmt_PKAC_PKI_cell_conc = 0.0;
        elmt_GsAC_cell_conc = 0.0;
        elmt_b1AR_Gs_cell_conc = 0.0;
        elmt_L_b1AR_cell_conc = 0.0;
        elmt_PKAC_cell_conc = 0.0;
        elmt_Gsa_gdp_cell_conc = 0.0;
        elmt_light_spot_cell_conc = 0.0;
        elmt_b1ARinhib_cell_conc = 0.0;
        elmt_cAMP_cell_conc = 0.0;
        elmt_AKARp_cell_conc = 0.0;
        elmt_b1AR_p_cell_conc = 0.0;
        elmt_PDEcAMP_cell_conc = 0.0;
        elmt_PKI_cell_conc = 0.18;
        elmt_PP_cell_conc = 0.67;
        elmt_DMNB_cAMP_cell_conc = 3.01;
        elmt_RC_cell_conc = 1.18;
        elmt_Fsk_cell_conc = 0.0;
        elmt_PKAC_AKAR_cell_conc = 0.0;
        elmt_PP_AKARp_cell_conc = 0.0;
        elmt_ATP_cell_conc = 5000.0;
        elmt_Gsbg_cell_conc = 0.0;
        elmt_b1AR_S464_cell_conc = 0.0;
        elmt_AKAR_cell_conc = 10.0;
        elmt_PDE_IBMX_cell_conc = 0.0;
        elmt_L_b1AR_Gs_cell_conc = 0.0;
        elmt_A2RC_cell_conc = 0.0;
        elmt_L_cell_conc = 0.0;
        elmt_Gs_cell_conc = 3.83;
        elmt_b1AR_cell_conc = 0.0132;
        elmt_AC_cell_conc = 0.0497;
        elmt_ARC_cell_conc = 0.0;
        elmt_A2R_cell_conc = 0.0;
        elmt_PDE_cell_conc = 0.014;
        elmt_IBMX_cell_conc = 0.0;
        elmt_Gsa_gtp_cell_conc = 0.0;
        elmt_FskAC_cell_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_Propranolol_cell = elmt_Propranolol_cell_conc;
        elmt_PKAC_PKI_cell = elmt_PKAC_PKI_cell_conc;
        elmt_GsAC_cell = elmt_GsAC_cell_conc;
        elmt_b1AR_Gs_cell = elmt_b1AR_Gs_cell_conc;
        elmt_L_b1AR_cell = elmt_L_b1AR_cell_conc;
        elmt_PKAC_cell = elmt_PKAC_cell_conc;
        elmt_Gsa_gdp_cell = elmt_Gsa_gdp_cell_conc;
        elmt_light_spot_cell = elmt_light_spot_cell_conc;
        elmt_b1ARinhib_cell = elmt_b1ARinhib_cell_conc;
        elmt_cAMP_cell = elmt_cAMP_cell_conc;
        elmt_AKARp_cell = elmt_AKARp_cell_conc;
        elmt_b1AR_p_cell = elmt_b1AR_p_cell_conc;
        elmt_PDEcAMP_cell = elmt_PDEcAMP_cell_conc;
        elmt_PKI_cell = elmt_PKI_cell_conc;
        elmt_PP_cell = elmt_PP_cell_conc;
        elmt_DMNB_cAMP_cell = elmt_DMNB_cAMP_cell_conc;
        elmt_RC_cell = elmt_RC_cell_conc;
        elmt_Fsk_cell = elmt_Fsk_cell_conc;
        elmt_PKAC_AKAR_cell = elmt_PKAC_AKAR_cell_conc;
        elmt_PP_AKARp_cell = elmt_PP_AKARp_cell_conc;
        elmt_ATP_cell = elmt_ATP_cell_conc;
        elmt_Gsbg_cell = elmt_Gsbg_cell_conc;
        elmt_b1AR_S464_cell = elmt_b1AR_S464_cell_conc;
        elmt_AKAR_cell = elmt_AKAR_cell_conc;
        elmt_PDE_IBMX_cell = elmt_PDE_IBMX_cell_conc;
        elmt_L_b1AR_Gs_cell = elmt_L_b1AR_Gs_cell_conc;
        elmt_A2RC_cell = elmt_A2RC_cell_conc;
        elmt_L_cell = elmt_L_cell_conc;
        elmt_Gs_cell = elmt_Gs_cell_conc;
        elmt_b1AR_cell = elmt_b1AR_cell_conc;
        elmt_AC_cell = elmt_AC_cell_conc;
        elmt_ARC_cell = elmt_ARC_cell_conc;
        elmt_A2R_cell = elmt_A2R_cell_conc;
        elmt_PDE_cell = elmt_PDE_cell_conc;
        elmt_IBMX_cell = elmt_IBMX_cell_conc;
        elmt_Gsa_gtp_cell = elmt_Gsa_gtp_cell_conc;
        elmt_FskAC_cell = elmt_FskAC_cell_conc;
        der(elmt_light_spot_cell_amount) = 0;
        der(elmt_ATP_cell_amount) = 0;
        der(elmt_Propranolol_cell_amount) = ((elmt_add_propranolol * elmt_product5) + (- (elmt_bind_b1AR_propranolol * elmt_reactant2)));
        der(elmt_PKAC_PKI_cell_amount) = (elmt_inhib_PKAC * elmt_product50);
        der(elmt_GsAC_cell_amount) = (elmt_bind_Gs_AC * elmt_product59);
        der(elmt_b1AR_Gs_cell_amount) = ((elmt_bind_b1AR_Gs * elmt_product22) + (- (elmt_bind_L_b1ARGs * elmt_reactant39)) + (- (elmt_RG_activation * elmt_reactant74)));
        der(elmt_L_b1AR_cell_amount) = ((- (elmt_desens_bark * elmt_reactant15)) + (elmt_bind_L_b1AR * elmt_product44) + (elmt_resens_bark * elmt_product61) + (elmt_LRG_activation * elmt_product11) + (- (elmt_bind_Lb1AR_Gs * elmt_reactant13)));
        der(elmt_PKAC_cell_amount) = ((- (elmt_inhib_PKAC * elmt_reactant48)) + (elmt_bind_A2R_PKAC * elmt_product47) + (- (elmt_bind_PKAC_AKAR * elmt_reactant63)) + (elmt_AKAR_phosph * elmt_product73));
        der(elmt_Gsa_gdp_cell_amount) = ((- (elmt_Gs_reassociation * elmt_reactant29)) + (elmt_Gs_gtp_hydrolysis * elmt_product27));
        der(elmt_b1ARinhib_cell_amount) = (elmt_bind_b1AR_propranolol * elmt_product4);
        der(elmt_cAMP_cell_amount) = ((- (elmt_bind_RC_cAMP * elmt_reactant52)) + (- (elmt_bind_cAMP_ARC * elmt_reactant18)) + (elmt_cAMP_synthesis_GsAC * elmt_product1) + (elmt_cAMP_synthesis_FskAC * elmt_product55) + (elmt_cAMP_photolysis * elmt_product7) + (- (elmt_bind_PDEcAMP * elmt_reactant24)));
        der(elmt_AKARp_cell_amount) = ((elmt_AKAR_phosph * elmt_product72) + (- (elmt_bind_AKARp_PP * elmt_reactant35)));
        der(elmt_b1AR_p_cell_amount) = (elmt_desens_pka * elmt_product38);
        der(elmt_PDEcAMP_cell_amount) = ((- (elmt_cAMP_degradation * elmt_reactant78)) + (elmt_bind_PDEcAMP * elmt_product25));
        der(elmt_PKI_cell_amount) = (- (elmt_inhib_PKAC * elmt_reactant49));
        der(elmt_PP_cell_amount) = ((- (elmt_bind_AKARp_PP * elmt_reactant34)) + (elmt_AKARp_dephosph * elmt_product69));
        der(elmt_DMNB_cAMP_cell_amount) = (- (elmt_cAMP_photolysis * elmt_reactant6));
        der(elmt_RC_cell_amount) = (- (elmt_bind_RC_cAMP * elmt_reactant51));
        der(elmt_Fsk_cell_amount) = (- (elmt_bind_FskAC * elmt_reactant32));
        der(elmt_PKAC_AKAR_cell_amount) = ((elmt_bind_PKAC_AKAR * elmt_product64) + (- (elmt_AKAR_phosph * elmt_reactant71)));
        der(elmt_PP_AKARp_cell_amount) = ((elmt_bind_AKARp_PP * elmt_product36) + (- (elmt_AKARp_dephosph * elmt_reactant68)));
        der(elmt_Gsbg_cell_amount) = ((- (elmt_Gs_reassociation * elmt_reactant28)) + (elmt_LRG_activation * elmt_product10) + (elmt_RG_activation * elmt_product76));
        der(elmt_b1AR_S464_cell_amount) = ((elmt_desens_bark * elmt_product16) + (- (elmt_resens_bark * elmt_reactant60)));
        der(elmt_AKAR_cell_amount) = ((- (elmt_bind_PKAC_AKAR * elmt_reactant62)) + (elmt_AKARp_dephosph * elmt_product70));
        der(elmt_PDE_IBMX_cell_amount) = (elmt_inhibit_PDE * elmt_product67);
        der(elmt_L_b1AR_Gs_cell_amount) = ((- (elmt_LRG_activation * elmt_reactant8)) + (elmt_bind_Lb1AR_Gs * elmt_product14) + (elmt_bind_L_b1ARGs * elmt_product41));
        der(elmt_A2RC_cell_amount) = ((elmt_bind_cAMP_ARC * elmt_product19) + (- (elmt_bind_A2R_PKAC * elmt_reactant45)));
        der(elmt_L_cell_amount) = ((- (elmt_bind_L_b1AR * elmt_reactant42)) + (- (elmt_bind_L_b1ARGs * elmt_reactant40)) + (elmt_add_Ligand * elmt_product56));
        der(elmt_Gs_cell_amount) = ((- (elmt_bind_b1AR_Gs * elmt_reactant21)) + (elmt_Gs_reassociation * elmt_product30) + (- (elmt_bind_Lb1AR_Gs * elmt_reactant12)));
        der(elmt_b1AR_cell_amount) = ((- (elmt_bind_b1AR_Gs * elmt_reactant20)) + (- (elmt_bind_L_b1AR * elmt_reactant43)) + (- (elmt_desens_pka * elmt_reactant37)) + (- (elmt_bind_b1AR_propranolol * elmt_reactant3)) + (elmt_RG_activation * elmt_product77));
        der(elmt_AC_cell_amount) = ((- (elmt_bind_FskAC * elmt_reactant31)) + (- (elmt_bind_Gs_AC * elmt_reactant58)));
        der(elmt_ARC_cell_amount) = ((elmt_bind_RC_cAMP * elmt_product53) + (- (elmt_bind_cAMP_ARC * elmt_reactant17)));
        der(elmt_A2R_cell_amount) = (elmt_bind_A2R_PKAC * elmt_product46);
        der(elmt_PDE_cell_amount) = ((- (elmt_inhibit_PDE * elmt_reactant65)) + (elmt_cAMP_degradation * elmt_product79) + (- (elmt_bind_PDEcAMP * elmt_reactant23)));
        der(elmt_IBMX_cell_amount) = (- (elmt_inhibit_PDE * elmt_reactant66));
        der(elmt_Gsa_gtp_cell_amount) = ((elmt_LRG_activation * elmt_product9) + (- (elmt_bind_Gs_AC * elmt_reactant57)) + (- (elmt_Gs_gtp_hydrolysis * elmt_reactant26)) + (elmt_RG_activation * elmt_product75));
        der(elmt_FskAC_cell_amount) = (elmt_bind_FskAC * elmt_product33);

    algorithm
        elmt_Propranolol_cell_conc := elmt_Propranolol_cell_amount / elmt_cell;
        elmt_PKAC_PKI_cell_conc := elmt_PKAC_PKI_cell_amount / elmt_cell;
        elmt_GsAC_cell_conc := elmt_GsAC_cell_amount / elmt_cell;
        elmt_b1AR_Gs_cell_conc := elmt_b1AR_Gs_cell_amount / elmt_cell;
        elmt_L_b1AR_cell_conc := elmt_L_b1AR_cell_amount / elmt_cell;
        elmt_PKAC_cell_conc := elmt_PKAC_cell_amount / elmt_cell;
        elmt_Gsa_gdp_cell_conc := elmt_Gsa_gdp_cell_amount / elmt_cell;
        elmt_light_spot_cell_conc := elmt_light_spot_cell_amount / elmt_cell;
        elmt_b1ARinhib_cell_conc := elmt_b1ARinhib_cell_amount / elmt_cell;
        elmt_cAMP_cell_conc := elmt_cAMP_cell_amount / elmt_cell;
        elmt_AKARp_cell_conc := elmt_AKARp_cell_amount / elmt_cell;
        elmt_b1AR_p_cell_conc := elmt_b1AR_p_cell_amount / elmt_cell;
        elmt_PDEcAMP_cell_conc := elmt_PDEcAMP_cell_amount / elmt_cell;
        elmt_PKI_cell_conc := elmt_PKI_cell_amount / elmt_cell;
        elmt_PP_cell_conc := elmt_PP_cell_amount / elmt_cell;
        elmt_DMNB_cAMP_cell_conc := elmt_DMNB_cAMP_cell_amount / elmt_cell;
        elmt_RC_cell_conc := elmt_RC_cell_amount / elmt_cell;
        elmt_Fsk_cell_conc := elmt_Fsk_cell_amount / elmt_cell;
        elmt_PKAC_AKAR_cell_conc := elmt_PKAC_AKAR_cell_amount / elmt_cell;
        elmt_PP_AKARp_cell_conc := elmt_PP_AKARp_cell_amount / elmt_cell;
        elmt_ATP_cell_conc := elmt_ATP_cell_amount / elmt_cell;
        elmt_Gsbg_cell_conc := elmt_Gsbg_cell_amount / elmt_cell;
        elmt_b1AR_S464_cell_conc := elmt_b1AR_S464_cell_amount / elmt_cell;
        elmt_AKAR_cell_conc := elmt_AKAR_cell_amount / elmt_cell;
        elmt_PDE_IBMX_cell_conc := elmt_PDE_IBMX_cell_amount / elmt_cell;
        elmt_L_b1AR_Gs_cell_conc := elmt_L_b1AR_Gs_cell_amount / elmt_cell;
        elmt_A2RC_cell_conc := elmt_A2RC_cell_amount / elmt_cell;
        elmt_L_cell_conc := elmt_L_cell_amount / elmt_cell;
        elmt_Gs_cell_conc := elmt_Gs_cell_amount / elmt_cell;
        elmt_b1AR_cell_conc := elmt_b1AR_cell_amount / elmt_cell;
        elmt_AC_cell_conc := elmt_AC_cell_amount / elmt_cell;
        elmt_ARC_cell_conc := elmt_ARC_cell_amount / elmt_cell;
        elmt_A2R_cell_conc := elmt_A2R_cell_amount / elmt_cell;
        elmt_PDE_cell_conc := elmt_PDE_cell_amount / elmt_cell;
        elmt_IBMX_cell_conc := elmt_IBMX_cell_amount / elmt_cell;
        elmt_Gsa_gtp_cell_conc := elmt_Gsa_gtp_cell_amount / elmt_cell;
        elmt_FskAC_cell_conc := elmt_FskAC_cell_amount / elmt_cell;
end Class_elmt_cell;
