within BIOMD320;
model BIOMD0000000320 "Grange2001 - PK interaction of L-dopa and benserazide" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_V1_M elmt_V1_M;
    Class_elmt_V2_M elmt_V2_M;
    Class_elmt_gut elmt_gut;
    Class_elmt_Vdopa elmt_Vdopa;
    Class_elmt_V1_B elmt_V1_B;
    Class_elmt_V_3_OMD elmt_V_3_OMD;
    Class_elmt_V2_B elmt_V2_B;

    equation
        Params.elmt_C1_M = elmt_V1_M.elmt_C1_M;
        Reacs.elmt_CL_OMD = Params.elmt_CL_OMD;
        Reacs.elmt_CL_COMT = Params.elmt_CL_COMT;
        Reacs.elmt_A_dopa = elmt_gut.elmt_A_dopa;
        Reacs.elmt_ka_B = Params.elmt_ka_B;
        Reacs.elmt_fm = Params.elmt_fm;
        Reacs.elmt_ka_c = Params.elmt_ka_c;
        Reacs.elmt_CL_B = Params.elmt_CL_B;
        Reacs.elmt_C1_B = elmt_V1_B.elmt_C1_B;
        Reacs.elmt_C2_B = elmt_V2_B.elmt_C2_B;
        Reacs.elmt_ka_M = Params.elmt_ka_M;
        Reacs.elmt_CL_rest = Params.elmt_CL_rest;
        Reacs.elmt_A_B = elmt_gut.elmt_A_B;
        Reacs.elmt_CL_dM = Params.elmt_CL_dM;
        Reacs.elmt_CL_AADC = Params.elmt_CL_AADC;
        Reacs.elmt_CL_dB = Params.elmt_CL_dB;
        Reacs.elmt_A_M = elmt_gut.elmt_A_M;
        Reacs.elmt_C_dopa = elmt_Vdopa.elmt_C_dopa;
        Reacs.elmt_CL_M = Params.elmt_CL_M;
        Reacs.elmt_C2_M = elmt_V2_M.elmt_C2_M;
        Reacs.elmt_C_OMD = elmt_V_3_OMD.elmt_C_OMD;
        Reacs.elmt_F_B = Params.elmt_F_B;
        Reacs.elmt_F_c = Params.elmt_F_c;
        Reacs.elmt_C1_M = elmt_V1_M.elmt_C1_M;
        elmt_V2_B.elmt_bens_distribution = Reacs.elmt_bens_distribution;
        elmt_V2_B.elmt_product18 = Reacs.elmt_product18;
        elmt_V2_M.elmt_product20 = Reacs.elmt_product20;
        elmt_V2_M.elmt_ro_distribution = Reacs.elmt_ro_distribution;
        elmt_Vdopa.elmt_l_dopa_absorption = Reacs.elmt_l_dopa_absorption;
        elmt_Vdopa.elmt_rest_clearance = Reacs.elmt_rest_clearance;
        elmt_Vdopa.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Vdopa.elmt_COMT_clearance = Reacs.elmt_COMT_clearance;
        elmt_Vdopa.elmt_product1 = Reacs.elmt_product1;
        elmt_Vdopa.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_Vdopa.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_Vdopa.elmt_AADC_clearance = Reacs.elmt_AADC_clearance;
        elmt_gut.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_gut.elmt_A_bens_tot = Params.elmt_A_bens_tot;
        elmt_gut.elmt_rat_body_mass = Params.elmt_rat_body_mass;
        elmt_gut.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_gut.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_gut.elmt_benserazide_absorption = Reacs.elmt_benserazide_absorption;
        elmt_gut.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_gut.elmt_benserazide_gut_clearance = Reacs.elmt_benserazide_gut_clearance;
        elmt_gut.elmt_l_dopa_blood_hepa_clearance = Reacs.elmt_l_dopa_blood_hepa_clearance;
        elmt_gut.elmt_ro_04_5127_absorption = Reacs.elmt_ro_04_5127_absorption;
        elmt_gut.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_gut.elmt_L_Dopa_per_kg_rat = Params.elmt_L_Dopa_per_kg_rat;
        elmt_gut.elmt_l_dopa_absorption = Reacs.elmt_l_dopa_absorption;
        elmt_gut.elmt_B_M_frac = Params.elmt_B_M_frac;
        elmt_V1_M.elmt_bens_metabolism = Reacs.elmt_bens_metabolism;
        elmt_V1_M.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_V1_M.elmt_product15 = Reacs.elmt_product15;
        elmt_V1_M.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_V1_M.elmt_ro_distribution = Reacs.elmt_ro_distribution;
        elmt_V1_M.elmt_product4 = Reacs.elmt_product4;
        elmt_V1_M.elmt_ro_04_5127_absorption = Reacs.elmt_ro_04_5127_absorption;
        elmt_V1_M.elmt_ro_clearance = Reacs.elmt_ro_clearance;
        elmt_V1_B.elmt_bens_metabolism = Reacs.elmt_bens_metabolism;
        elmt_V1_B.elmt_product6 = Reacs.elmt_product6;
        elmt_V1_B.elmt_bens_distribution = Reacs.elmt_bens_distribution;
        elmt_V1_B.elmt_benserazide_absorption = Reacs.elmt_benserazide_absorption;
        elmt_V1_B.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_V1_B.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_V1_B.elmt_bens_clearance = Reacs.elmt_bens_clearance;
        elmt_V1_B.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_V_3_OMD.elmt_COMT_clearance = Reacs.elmt_COMT_clearance;
        elmt_V_3_OMD.elmt_product10 = Reacs.elmt_product10;
        elmt_V_3_OMD.elmt__3_OMD_clearance = Reacs.elmt__3_OMD_clearance;
        elmt_V_3_OMD.elmt_reactant12 = Reacs.elmt_reactant12;

end BIOMD0000000320;
