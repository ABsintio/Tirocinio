within BIOMD354;
model Abell2011_CalciumSignaling_WithoutAdaptation "Abell2011_CalciumSignaling_WithoutAdaptation" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_mitochondria elmt_mitochondria;
    Class_elmt_ER_store elmt_ER_store;
    Class_elmt_cytosol elmt_cytosol;
    Class_elmt_outside elmt_outside;

    equation
        Reacs.elmt_g = elmt_cytosol.elmt_g;
        Reacs.elmt_mwd21d3f76_d133_4053_8e44_02a538657e0a = Params.elmt_mwd21d3f76_d133_4053_8e44_02a538657e0a;
        Reacs.elmt_kSTIM = Params.elmt_kSTIM;
        Reacs.elmt_kIP3R = Params.elmt_kIP3R;
        Reacs.elmt_mwc714c217_c8fd_4024_912c_681cd6931f59 = Params.elmt_mwc714c217_c8fd_4024_912c_681cd6931f59;
        Reacs.elmt_CaM = elmt_mitochondria.elmt_CaM;
        Reacs.elmt_mw886be93a_22c7_4966_a1fa_113afd832ae3 = Params.elmt_mw886be93a_22c7_4966_a1fa_113afd832ae3;
        Reacs.elmt_CaI = elmt_cytosol.elmt_CaI;
        Reacs.elmt_R = Params.elmt_R;
        Reacs.elmt_mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33 = Params.elmt_mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33;
        Reacs.elmt_mwf998b218_be11_4aa4_81ae_41141861fb42 = Params.elmt_mwf998b218_be11_4aa4_81ae_41141861fb42;
        Reacs.elmt_CaS = elmt_ER_store.elmt_CaS;
        Reacs.elmt_mw3a93c3a6_623a_44fe_84e9_a47823defd1f = Params.elmt_mw3a93c3a6_623a_44fe_84e9_a47823defd1f;
        Reacs.elmt_L = Params.elmt_L;
        Reacs.elmt_mw78dd80b8_e003_4c62_81d1_547d001767af = Params.elmt_mw78dd80b8_e003_4c62_81d1_547d001767af;
        Reacs.elmt_E = Params.elmt_E;
        Reacs.elmt_F = Params.elmt_F;
        Reacs.elmt_mw004dcb62_da5f_41c7_a7bd_033574894f48 = Params.elmt_mw004dcb62_da5f_41c7_a7bd_033574894f48;
        Reacs.elmt_mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d = Params.elmt_mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d;
        Reacs.elmt_D = Params.elmt_D;
        Reacs.elmt_A = Params.elmt_A;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_B = Params.elmt_B;
        Reacs.elmt_PMleak = Params.elmt_PMleak;
        Reacs.elmt_IP3 = elmt_cytosol.elmt_IP3;
        elmt_cytosol.elmt_JChannel = Reacs.elmt_JChannel;
        elmt_cytosol.elmt_JPump = Reacs.elmt_JPump;
        elmt_cytosol.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cytosol.elmt_product8 = Reacs.elmt_product8;
        elmt_cytosol.elmt_product6 = Reacs.elmt_product6;
        elmt_cytosol.elmt_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7 = Reacs.elmt_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7;
        elmt_cytosol.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cytosol.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cytosol.elmt_mw530793e3_76b2_4483_be11_e94364306712 = Reacs.elmt_mw530793e3_76b2_4483_be11_e94364306712;
        elmt_cytosol.elmt_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4 = Reacs.elmt_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4;
        elmt_cytosol.elmt_kPLC = Reacs.elmt_kPLC;
        elmt_cytosol.elmt_product0 = Reacs.elmt_product0;
        elmt_cytosol.elmt_kPhosphatase = Reacs.elmt_kPhosphatase;
        elmt_cytosol.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cytosol.elmt_product4 = Reacs.elmt_product4;
        elmt_cytosol.elmt_mw69f19152_7258_45b0_bf9e_b196f19d7e03 = Reacs.elmt_mw69f19152_7258_45b0_bf9e_b196f19d7e03;
        elmt_cytosol.elmt_inhibition_parameter2 = Reacs.elmt_inhibition_parameter2;
        elmt_cytosol.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cytosol.elmt_inhibition_parameter1 = Reacs.elmt_inhibition_parameter1;
        elmt_cytosol.elmt_product13 = Reacs.elmt_product13;
        elmt_mitochondria.elmt_ERtoMito = Reacs.elmt_ERtoMito;
        elmt_mitochondria.elmt_product11 = Reacs.elmt_product11;
        elmt_mitochondria.elmt_mw69f19152_7258_45b0_bf9e_b196f19d7e03 = Reacs.elmt_mw69f19152_7258_45b0_bf9e_b196f19d7e03;
        elmt_mitochondria.elmt_product15 = Reacs.elmt_product15;
        elmt_mitochondria.elmt_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4 = Reacs.elmt_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4;
        elmt_mitochondria.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_ER_store.elmt_JChannel = Reacs.elmt_JChannel;
        elmt_ER_store.elmt_JPump = Reacs.elmt_JPump;
        elmt_ER_store.elmt_ERtoMito = Reacs.elmt_ERtoMito;
        elmt_ER_store.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_ER_store.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_ER_store.elmt_product2 = Reacs.elmt_product2;

end Abell2011_CalciumSignaling_WithoutAdaptation;
