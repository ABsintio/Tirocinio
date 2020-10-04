within BIOMD116;
model Model_0 "McClean2007_CrossTalk" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_0 elmt_compartment_0;

    equation
        Reacs.elmt_parameter_11 = Params.elmt_parameter_11;
        Reacs.elmt_parameter_10 = Params.elmt_parameter_10;
        Reacs.elmt_parameter_9 = Params.elmt_parameter_9;
        Reacs.elmt_parameter_8 = Params.elmt_parameter_8;
        Reacs.elmt_parameter_7 = Params.elmt_parameter_7;
        Reacs.elmt_parameter_19 = Params.elmt_parameter_19;
        Reacs.elmt_parameter_18 = Params.elmt_parameter_18;
        Reacs.elmt_species_4 = elmt_compartment_0.elmt_species_4;
        Reacs.elmt_parameter_17 = Params.elmt_parameter_17;
        Reacs.elmt_species_5 = elmt_compartment_0.elmt_species_5;
        Reacs.elmt_parameter_16 = Params.elmt_parameter_16;
        Reacs.elmt_parameter_15 = Params.elmt_parameter_15;
        Reacs.elmt_parameter_14 = Params.elmt_parameter_14;
        Reacs.elmt_parameter_13 = Params.elmt_parameter_13;
        Reacs.elmt_parameter_12 = Params.elmt_parameter_12;
        Reacs.elmt_parameter_6 = Params.elmt_parameter_6;
        Reacs.elmt_compartment_0 = elmt_compartment_0.elmt_compartment_0;
        Reacs.elmt_parameter_5 = Params.elmt_parameter_5;
        Reacs.elmt_parameter_4 = Params.elmt_parameter_4;
        Reacs.elmt_parameter_3 = Params.elmt_parameter_3;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        Reacs.elmt_parameter_0 = Params.elmt_parameter_0;
        Reacs.elmt_species_2 = elmt_compartment_0.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_0.elmt_species_3;
        Reacs.elmt_species_0 = elmt_compartment_0.elmt_species_0;
        Reacs.elmt_species_1 = elmt_compartment_0.elmt_species_1;
        elmt_compartment_0.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_0.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment_0.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_0.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment_0.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_0.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_0.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_0.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_0.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_0.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_0.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment_0.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_0.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_0.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_0.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment_0.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment_0.elmt_reaction_0 = Reacs.elmt_reaction_0;
        elmt_compartment_0.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_0.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_0.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_0.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_0.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_0.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_0.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_0.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_0.elmt_product13 = Reacs.elmt_product13;

end Model_0;
