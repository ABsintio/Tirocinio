within BIOMD194;
model TM "Ibrahim2008_Cdc20_Sequestring_Template_Model" annotation(Documentation(info="<annotation>
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
        Reacs.elmt_beta_T = Params.elmt_beta_T;
        Reacs.elmt_Cdc20_CMad2 = elmt_Cytoplasm.elmt_Cdc20_CMad2;
        Reacs.elmt_OMad2 = elmt_Cytoplasm.elmt_OMad2;
        Reacs.elmt_Mad1_CMad2_OMad2 = elmt_Cytoplasm.elmt_Mad1_CMad2_OMad2;
        Reacs.elmt_gamma_T = Params.elmt_gamma_T;
        Reacs.elmt_Cdc20 = elmt_Cytoplasm.elmt_Cdc20;
        Reacs.elmt_alpha_T = Params.elmt_alpha_T;
        Reacs.elmt_u = Params.elmt_u;
        Reacs.elmt_eta_T = Params.elmt_eta_T;
        Reacs.elmt_Mad1_CMad2 = elmt_Cytoplasm.elmt_Mad1_CMad2;
        elmt_Cytoplasm.elmt_product9 = Reacs.elmt_product9;
        elmt_Cytoplasm.elmt_R7 = Reacs.elmt_R7;
        elmt_Cytoplasm.elmt_R8 = Reacs.elmt_R8;
        elmt_Cytoplasm.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_Cytoplasm.elmt_product8 = Reacs.elmt_product8;
        elmt_Cytoplasm.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cytoplasm.elmt_R6 = Reacs.elmt_R6;
        elmt_Cytoplasm.elmt_product6 = Reacs.elmt_product6;
        elmt_Cytoplasm.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_Cytoplasm.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_Cytoplasm.elmt_product5 = Reacs.elmt_product5;
        elmt_Cytoplasm.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Cytoplasm.elmt_product2 = Reacs.elmt_product2;
        elmt_mt_attachment.elmt_const_val_0 = Params.elmt_const_val_0;

        Params.assign_elmt_u = elmt_mt_attachment.value_elmt_u;
end TM;
