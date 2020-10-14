within BIOMD291;
model Nikolaev2005_AlbuminBilirubinAdsorption "Nikolaev2005_AlbuminBilirubinAdsorption" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        elmt_compartment.elmt_n = Params.elmt_n;
        elmt_compartment.elmt_K_AlB = Params.elmt_K_AlB;
        elmt_compartment.elmt_K_AlB2 = Params.elmt_K_AlB2;
        elmt_compartment.elmt_k8 = Params.elmt_k8;
        elmt_compartment.elmt_k9 = Params.elmt_k9;
        elmt_compartment.elmt_k6 = Params.elmt_k6;
        elmt_compartment.elmt_k7 = Params.elmt_k7;
        elmt_compartment.elmt_k4 = Params.elmt_k4;
        elmt_compartment.elmt_k5 = Params.elmt_k5;
        elmt_compartment.elmt_k10 = Params.elmt_k10;
        elmt_compartment.elmt_k3 = Params.elmt_k3;

end Nikolaev2005_AlbuminBilirubinAdsorption;
