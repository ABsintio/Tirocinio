within BIOMD193;
model KDM "Ibrahim2008_MCC_assembly_model_KDM" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cytoplasm elmt_Cytoplasm;
    Class_elmt_mt_attachment elmt_mt_attachment;

    equation
        Params.elmt_mt_attachment = elmt_mt_attachment.trigger;
        Reacs.elmt_Cytoplasm = elmt_Cytoplasm.elmt_Cytoplasm;
        Reacs.elmt_Bub3_BubR1_Cdc20 = elmt_Cytoplasm.elmt_Bub3_BubR1_Cdc20;
        Reacs.elmt_Bub3_BubR1 = elmt_Cytoplasm.elmt_Bub3_BubR1;
        Reacs.elmt_OMad2 = elmt_Cytoplasm.elmt_OMad2;
        Reacs.elmt_Cdc20_CMad2 = elmt_Cytoplasm.elmt_Cdc20_CMad2;
        Reacs.elmt_k1f = Params.elmt_k1f;
        Reacs.elmt_Cdc20 = elmt_Cytoplasm.elmt_Cdc20;
        Reacs.elmt_k2f = Params.elmt_k2f;
        Reacs.elmt_k3f = Params.elmt_k3f;
        Reacs.elmt_k4f = Params.elmt_k4f;
        Reacs.elmt_k5f = Params.elmt_k5f;
        Reacs.elmt_kf6 = Params.elmt_kf6;
        Reacs.elmt_k5r = Params.elmt_k5r;
        Reacs.elmt_Mad1_CMad2_OMad2 = elmt_Cytoplasm.elmt_Mad1_CMad2_OMad2;
        Reacs.elmt_u = Params.elmt_u;
        Reacs.elmt_MCC = elmt_Cytoplasm.elmt_MCC;
        Reacs.elmt_k1r = Params.elmt_k1r;
        Reacs.elmt_Mad1_CMad2 = elmt_Cytoplasm.elmt_Mad1_CMad2;
        Reacs.elmt_k4r = Params.elmt_k4r;
        elmt_Cytoplasm.elmt_product12 = Reacs.elmt_product12;
        elmt_Cytoplasm.elmt_product9 = Reacs.elmt_product9;
        elmt_Cytoplasm.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_Cytoplasm.elmt_product8 = Reacs.elmt_product8;
        elmt_Cytoplasm.elmt_R5 = Reacs.elmt_R5;
        elmt_Cytoplasm.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cytoplasm.elmt_R6 = Reacs.elmt_R6;
        elmt_Cytoplasm.elmt_product6 = Reacs.elmt_product6;
        elmt_Cytoplasm.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_Cytoplasm.elmt_R3 = Reacs.elmt_R3;
        elmt_Cytoplasm.elmt_R4 = Reacs.elmt_R4;
        elmt_Cytoplasm.elmt_R1 = Reacs.elmt_R1;
        elmt_Cytoplasm.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_Cytoplasm.elmt_R2 = Reacs.elmt_R2;
        elmt_Cytoplasm.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_Cytoplasm.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_Cytoplasm.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_Cytoplasm.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_Cytoplasm.elmt_product5 = Reacs.elmt_product5;
        elmt_Cytoplasm.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_Cytoplasm.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Cytoplasm.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_Cytoplasm.elmt_product2 = Reacs.elmt_product2;
        elmt_Cytoplasm.elmt_product15 = Reacs.elmt_product15;
        elmt_Cytoplasm.elmt_product18 = Reacs.elmt_product18;
        elmt_mt_attachment.elmt_const_val_0 = Params.elmt_const_val_0;

        Params.assign_elmt_u = elmt_mt_attachment.value_elmt_u;
end KDM;
