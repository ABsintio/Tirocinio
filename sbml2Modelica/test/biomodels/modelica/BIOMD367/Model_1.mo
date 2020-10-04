within BIOMD367;
model Model_1 "Muller2008_treshold_minimal" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;

    equation
        Params.elmt_y = elmt_compartment_1.elmt_y;
        elmt_compartment_1.elmt_zeta = Params.elmt_zeta;
        elmt_compartment_1.elmt_mu_z = Params.elmt_mu_z;
        elmt_compartment_1.elmt_mu_x = Params.elmt_mu_x;
        elmt_compartment_1.elmt_r = Params.elmt_r;
        elmt_compartment_1.elmt_b = Params.elmt_b;

end Model_1;
