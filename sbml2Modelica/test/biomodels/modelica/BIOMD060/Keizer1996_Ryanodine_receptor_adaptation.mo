within BIOMD060;
model Keizer1996_Ryanodine_receptor_adaptation "Keizer1996_Ryanodine_receptor_adaptation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_Po2 = elmt_compartment.elmt_Po2;
        Params.elmt_Po1 = elmt_compartment.elmt_Po1;
        Reacs.elmt_Po2 = elmt_compartment.elmt_Po2;
        Reacs.elmt_Po1 = elmt_compartment.elmt_Po1;
        Reacs.elmt_Pc2 = elmt_compartment.elmt_Pc2;
        Reacs.elmt_Pc1 = elmt_compartment.elmt_Pc1;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_Closed_state_1 = Reacs.elmt_Closed_state_1;
        elmt_compartment.elmt_Open_state_2 = Reacs.elmt_Open_state_2;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_Closed_State_2 = Reacs.elmt_Closed_State_2;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;

end Keizer1996_Ryanodine_receptor_adaptation;
