within BIOMD363;
model Model_1 "Lee2010_ThrombinActivation_OneForm_minimal" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_M = elmt_compartment.elmt_M;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_P2 = elmt_compartment.elmt_P2;
        Reacs.elmt_II = elmt_compartment.elmt_II;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_r3 = Reacs.elmt_r3;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_r4 = Reacs.elmt_r4;
        elmt_compartment.elmt_r1 = Reacs.elmt_r1;
        elmt_compartment.elmt_r2 = Reacs.elmt_r2;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;

end Model_1;
