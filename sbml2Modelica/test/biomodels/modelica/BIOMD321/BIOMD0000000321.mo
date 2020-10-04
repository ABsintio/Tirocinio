within BIOMD321;
model BIOMD0000000321 "Grange2001 - L Dopa PK model" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_gut elmt_gut;
    Class_elmt_Vdopa elmt_Vdopa;
    Class_elmt_V_3_OMD elmt_V_3_OMD;

    equation
        Reacs.elmt_CL_OMD = Params.elmt_CL_OMD;
        Reacs.elmt_CL_rest = Params.elmt_CL_rest;
        Reacs.elmt_CL_AADC = Params.elmt_CL_AADC;
        Reacs.elmt_C_dopa = elmt_Vdopa.elmt_C_dopa;
        Reacs.elmt_CL_COMT = Params.elmt_CL_COMT;
        Reacs.elmt_A_dopa = elmt_gut.elmt_A_dopa;
        Reacs.elmt_C_OMD = elmt_V_3_OMD.elmt_C_OMD;
        Reacs.elmt_ka_b = Params.elmt_ka_b;
        Reacs.elmt_F_b = Params.elmt_F_b;
        elmt_V_3_OMD.elmt_COMT_clearance = Reacs.elmt_COMT_clearance;
        elmt_V_3_OMD.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_V_3_OMD.elmt_product5 = Reacs.elmt_product5;
        elmt_V_3_OMD.elmt__3_OMD_clearance = Reacs.elmt__3_OMD_clearance;
        elmt_gut.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_gut.elmt_L_Dopa_per_kg_rat = Params.elmt_L_Dopa_per_kg_rat;
        elmt_gut.elmt_l_dopa_absorption = Reacs.elmt_l_dopa_absorption;
        elmt_gut.elmt_rat_body_mass = Params.elmt_rat_body_mass;
        elmt_gut.elmt_l_dopa_blood_hepa_clearance = Reacs.elmt_l_dopa_blood_hepa_clearance;
        elmt_gut.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Vdopa.elmt_l_dopa_absorption = Reacs.elmt_l_dopa_absorption;
        elmt_Vdopa.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Vdopa.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_Vdopa.elmt_rest_clearance = Reacs.elmt_rest_clearance;
        elmt_Vdopa.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Vdopa.elmt_COMT_clearance = Reacs.elmt_COMT_clearance;
        elmt_Vdopa.elmt_product1 = Reacs.elmt_product1;
        elmt_Vdopa.elmt_AADC_clearance = Reacs.elmt_AADC_clearance;

end BIOMD0000000321;
