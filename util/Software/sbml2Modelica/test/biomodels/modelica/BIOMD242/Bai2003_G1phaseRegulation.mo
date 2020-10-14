within BIOMD242;
model Bai2003_G1phaseRegulation "Bai2003_G1phaseRegulation" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Params.elmt_R_1 = elmt_cell.elmt_R_1;
        Params.elmt_RS_1 = elmt_cell.elmt_RS_1;
        Reacs.elmt_E_1 = elmt_cell.elmt_E_1;
        Reacs.elmt_pS_1 = Params.elmt_pS_1;
        Reacs.elmt_dD_1 = Params.elmt_dD_1;
        Reacs.elmt_D_1 = elmt_cell.elmt_D_1;
        Reacs.elmt_dE_1 = Params.elmt_dE_1;
        Reacs.elmt_dtheta_1 = Params.elmt_dtheta_1;
        Reacs.elmt_pX_1 = Params.elmt_pX_1;
        Reacs.elmt_k1_1 = Params.elmt_k1_1;
        Reacs.elmt_k2_1 = Params.elmt_k2_1;
        Reacs.elmt_k3_1 = Params.elmt_k3_1;
        Reacs.elmt_qE_1 = Params.elmt_qE_1;
        Reacs.elmt_qD_1 = Params.elmt_qD_1;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_R_1 = elmt_cell.elmt_R_1;
        Reacs.elmt_dX_1 = Params.elmt_dX_1;
        Reacs.elmt_aF_1 = Params.elmt_aF_1;
        Reacs.elmt_aE_1 = Params.elmt_aE_1;
        Reacs.elmt_aD_1 = Params.elmt_aD_1;
        Reacs.elmt_RT_1 = Params.elmt_RT_1;
        Reacs.elmt_RS_1 = elmt_cell.elmt_RS_1;
        Reacs.elmt_X_1 = elmt_cell.elmt_X_1;
        Reacs.elmt_f_1 = Params.elmt_f_1;
        Reacs.elmt_theta_1 = elmt_cell.elmt_theta_1;
        Reacs.elmt_qX_1 = Params.elmt_qX_1;
        Reacs.elmt_fC_1_1 = Params.elmt_fC_1_1;
        Reacs.elmt_g_1 = Params.elmt_g_1;
        Reacs.elmt_pD_1 = Params.elmt_pD_1;
        Reacs.elmt_atheta_1 = Params.elmt_atheta_1;
        Reacs.elmt_qtheta_1 = Params.elmt_qtheta_1;
        Reacs.elmt_GF_1 = Params.elmt_GF_1;
        Reacs.elmt_aX_1 = Params.elmt_aX_1;
        Reacs.elmt_pE_1 = Params.elmt_pE_1;
        elmt_cell.elmt_cyclinD_1 = Reacs.elmt_cyclinD_1;
        elmt_cell.elmt_pRBsynthesis_1 = Reacs.elmt_pRBsynthesis_1;
        elmt_cell.elmt_product12 = Reacs.elmt_product12;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt__2 = Reacs.elmt__2;
        elmt_cell.elmt_E2Fdegradationviacellcycleprogression_1 = Reacs.elmt_E2Fdegradationviacellcycleprogression_1;
        elmt_cell.elmt__1 = Reacs.elmt__1;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_cellcycleprogression_1 = Reacs.elmt_cellcycleprogression_1;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_pRBdeplation_1 = Reacs.elmt_pRBdeplation_1;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_null3_1 = Reacs.elmt_null3_1;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_null2_1 = Reacs.elmt_null2_1;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cell.elmt_cellcycleprogressionslow_1 = Reacs.elmt_cellcycleprogressionslow_1;
        elmt_cell.elmt_cyclinEdegradation_1 = Reacs.elmt_cyclinEdegradation_1;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_cell.elmt_cyclinEsynthesis_1 = Reacs.elmt_cyclinEsynthesis_1;

end Bai2003_G1phaseRegulation;
