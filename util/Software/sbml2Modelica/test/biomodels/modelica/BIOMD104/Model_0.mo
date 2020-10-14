within BIOMD104;
model Model_0 "Klipp2002_MetabolicOptimization_linearPathway(n=2)" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_0 elmt_compartment_0;
    Class_elmt_event_0000002 elmt_event_0000002;

    equation
        Reacs.elmt_species_2 = elmt_compartment_0.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_0.elmt_species_3;
        Reacs.elmt_species_0 = elmt_compartment_0.elmt_species_0;
        Reacs.elmt_species_1 = elmt_compartment_0.elmt_species_1;
        Reacs.elmt_compartment_0 = elmt_compartment_0.elmt_compartment_0;
        elmt_compartment_0.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment_0.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_0.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_0.elmt_reaction_0 = Reacs.elmt_reaction_0;
        elmt_compartment_0.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_0.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_0.elmt_event_0000002 = elmt_event_0000002.trigger;

        elmt_compartment_0.assign_elmt_species_2 = elmt_event_0000002.value_elmt_species_2;
end Model_0;
