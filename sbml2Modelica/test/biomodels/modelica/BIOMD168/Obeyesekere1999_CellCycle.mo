within BIOMD168;
model Obeyesekere1999_CellCycle "Obeyesekere1999_CellCycle" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell_1 elmt_cell_1;

    equation
        Params.elmt_R_1 = elmt_cell_1.elmt_R_1;
        Params.elmt_RS_1 = elmt_cell_1.elmt_RS_1;
        Reacs.elmt_E_1 = elmt_cell_1.elmt_E_1;
        Reacs.elmt_pS_1 = Params.elmt_pS_1;
        Reacs.elmt_dD_1 = Params.elmt_dD_1;
        Reacs.elmt_D_1 = elmt_cell_1.elmt_D_1;
        Reacs.elmt_dE_1 = Params.elmt_dE_1;
        Reacs.elmt_af_1 = Params.elmt_af_1;
        Reacs.elmt_pX_1 = Params.elmt_pX_1;
        Reacs.elmt_qE_1 = Params.elmt_qE_1;
        Reacs.elmt_E2F_1 = elmt_cell_1.elmt_E2F_1;
        Reacs.elmt_qD_1 = Params.elmt_qD_1;
        Reacs.elmt_R_1 = elmt_cell_1.elmt_R_1;
        Reacs.elmt_dX_1 = Params.elmt_dX_1;
        Reacs.elmt_RP_1 = elmt_cell_1.elmt_RP_1;
        Reacs.elmt_aE_1 = Params.elmt_aE_1;
        Reacs.elmt_aD_1 = Params.elmt_aD_1;
        Reacs.elmt_RS_1 = elmt_cell_1.elmt_RS_1;
        Reacs.elmt_X_1 = elmt_cell_1.elmt_X_1;
        Reacs.elmt_f_1 = Params.elmt_f_1;
        Reacs.elmt_k_1 = Params.elmt_k_1;
        Reacs.elmt_qX_1 = Params.elmt_qX_1;
        Reacs.elmt_g_1 = Params.elmt_g_1;
        Reacs.elmt_pD_1 = Params.elmt_pD_1;
        Reacs.elmt_GF_1 = Params.elmt_GF_1;
        Reacs.elmt_aX_1 = Params.elmt_aX_1;
        Reacs.elmt_pE_1 = Params.elmt_pE_1;
        elmt_cell_1.elmt_product9 = Reacs.elmt_product9;
        elmt_cell_1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell_1.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell_1.elmt_product6 = Reacs.elmt_product6;
        elmt_cell_1.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell_1.elmt_theta_1 = Params.elmt_theta_1;
        elmt_cell_1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell_1.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell_1.elmt_product0 = Reacs.elmt_product0;
        elmt_cell_1.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell_1.elmt_product4 = Reacs.elmt_product4;
        elmt_cell_1.elmt_cycleprogression_1 = Reacs.elmt_cycleprogression_1;
        elmt_cell_1.elmt_cyclin_1 = Reacs.elmt_cyclin_1;
        elmt_cell_1.elmt_product2 = Reacs.elmt_product2;
        elmt_cell_1.elmt_pRBE2Fcomplexassociation_1 = Reacs.elmt_pRBE2Fcomplexassociation_1;
        elmt_cell_1.elmt_cycECDK2degradation_1 = Reacs.elmt_cycECDK2degradation_1;
        elmt_cell_1.elmt__1 = Reacs.elmt__1;
        elmt_cell_1.elmt_cyclebreak_1 = Reacs.elmt_cyclebreak_1;
        elmt_cell_1.elmt_cyclinCDK4degradation_1 = Reacs.elmt_cyclinCDK4degradation_1;
        elmt_cell_1.elmt_pRBpdephosphorylation_1 = Reacs.elmt_pRBpdephosphorylation_1;
        elmt_cell_1.elmt_RT_1 = Params.elmt_RT_1;
        elmt_cell_1.elmt__7 = Reacs.elmt__7;
        elmt_cell_1.elmt_pRBE2FcomplexdeassociationviacycDCDK4_1 = Reacs.elmt_pRBE2FcomplexdeassociationviacycDCDK4_1;

end Obeyesekere1999_CellCycle;
