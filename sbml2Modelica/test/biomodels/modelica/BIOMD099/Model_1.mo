within BIOMD099;
model Model_1 "Laub1998_SpontaneousOscillations" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;
    Class_elmt_compartment_0 elmt_compartment_0;

    equation
        Reacs.elmt_parameter_11 = Params.elmt_parameter_11;
        Reacs.elmt_parameter_10 = Params.elmt_parameter_10;
        Reacs.elmt_parameter_9 = Params.elmt_parameter_9;
        Reacs.elmt_parameter_8 = Params.elmt_parameter_8;
        Reacs.elmt_parameter_7 = Params.elmt_parameter_7;
        Reacs.elmt_species_6 = elmt_compartment_1.elmt_species_6;
        Reacs.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Reacs.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Reacs.elmt_parameter_13 = Params.elmt_parameter_13;
        Reacs.elmt_parameter_12 = Params.elmt_parameter_12;
        Reacs.elmt_species_2 = elmt_compartment_1.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Reacs.elmt_species_0 = elmt_compartment_0.elmt_species_0;
        Reacs.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_parameter_6 = Params.elmt_parameter_6;
        Reacs.elmt_parameter_5 = Params.elmt_parameter_5;
        Reacs.elmt_compartment_0 = elmt_compartment_0.elmt_compartment_0;
        Reacs.elmt_parameter_4 = Params.elmt_parameter_4;
        Reacs.elmt_parameter_3 = Params.elmt_parameter_3;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        Reacs.elmt_parameter_0 = Params.elmt_parameter_0;
        elmt_compartment_1.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment_1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_1.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment_1.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment_1.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment_1.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment_1.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment_1.elmt_reaction_0 = Reacs.elmt_reaction_0;
        elmt_compartment_1.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_1.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment_1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_1.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_1.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment_1.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_0.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_0.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment_0.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_0.elmt_reaction_11 = Reacs.elmt_reaction_11;

end Model_1;
