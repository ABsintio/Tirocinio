within BIOMD079;
model Model_0 "Goldbeter2006_weightCycling" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_body elmt_body;

    equation
        Reacs.elmt_P = elmt_body.elmt_P;
        Reacs.elmt_body = elmt_body.elmt_body;
        Reacs.elmt_Q = elmt_body.elmt_Q;
        Reacs.elmt_R = elmt_body.elmt_R;
        elmt_body.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_body.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_body.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_body.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_body.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_body.elmt_product0 = Reacs.elmt_product0;
        elmt_body.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_body.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_body.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_body.elmt_reaction_0 = Reacs.elmt_reaction_0;
        elmt_body.elmt_product4 = Reacs.elmt_product4;
        elmt_body.elmt_product2 = Reacs.elmt_product2;

end Model_0;
