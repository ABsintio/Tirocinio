within BIOMD112;
model Clarke2006_Smad_signalling "Clarke2006_Smad_signalling" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_nucleus elmt_nucleus;
    Class_elmt_cytoplasm elmt_cytoplasm;

    equation
        Params.elmt_smad4_cyt = elmt_cytoplasm.elmt_smad4_cyt;
        Params.elmt_smad4_nuc = elmt_nucleus.elmt_smad4_nuc;
        Params.elmt_R_smad_P_nuc = elmt_nucleus.elmt_R_smad_P_nuc;
        Params.elmt_R_smad_P_smad4_nuc = elmt_nucleus.elmt_R_smad_P_smad4_nuc;
        Params.elmt_R_smad_P_cyt = elmt_cytoplasm.elmt_R_smad_P_cyt;
        Params.elmt_R_smad_P_smad4_cyt = elmt_cytoplasm.elmt_R_smad_P_smad4_cyt;
        Params.elmt_R_smad_cyt = elmt_cytoplasm.elmt_R_smad_cyt;
        Params.elmt_R_smad_nuc = elmt_nucleus.elmt_R_smad_nuc;
        Reacs.elmt_smad4_cyt = elmt_cytoplasm.elmt_smad4_cyt;
        Reacs.elmt_receptor = elmt_cytoplasm.elmt_receptor;
        Reacs.elmt_smad4_nuc = elmt_nucleus.elmt_smad4_nuc;
        Reacs.elmt_R_smad_P_nuc = elmt_nucleus.elmt_R_smad_P_nuc;
        Reacs.elmt_R_smad_P_smad4_nuc = elmt_nucleus.elmt_R_smad_P_smad4_nuc;
        Reacs.elmt_R_smad_P_cyt = elmt_cytoplasm.elmt_R_smad_P_cyt;
        Reacs.elmt_R_smad_P_smad4_cyt = elmt_cytoplasm.elmt_R_smad_P_smad4_cyt;
        Reacs.elmt_R_smad_cyt = elmt_cytoplasm.elmt_R_smad_cyt;
        Reacs.elmt_R_smad_nuc = elmt_nucleus.elmt_R_smad_nuc;
        elmt_cytoplasm.elmt_product8 = Reacs.elmt_product8;
        elmt_cytoplasm.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cytoplasm.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cytoplasm.elmt_product1 = Reacs.elmt_product1;
        elmt_cytoplasm.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_cytoplasm.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_cytoplasm.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_cytoplasm.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_cytoplasm.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cytoplasm.elmt_product5 = Reacs.elmt_product5;
        elmt_cytoplasm.elmt_reaction_0 = Reacs.elmt_reaction_0;
        elmt_cytoplasm.elmt_product3 = Reacs.elmt_product3;
        elmt_cytoplasm.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cytoplasm.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_cytoplasm.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_nucleus.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_nucleus.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_nucleus.elmt_product12 = Reacs.elmt_product12;
        elmt_nucleus.elmt_product10 = Reacs.elmt_product10;
        elmt_nucleus.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_nucleus.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_nucleus.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_nucleus.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_nucleus.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_nucleus.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_nucleus.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_nucleus.elmt_product16 = Reacs.elmt_product16;
        elmt_nucleus.elmt_product15 = Reacs.elmt_product15;
        elmt_nucleus.elmt_product13 = Reacs.elmt_product13;

end Clarke2006_Smad_signalling;
