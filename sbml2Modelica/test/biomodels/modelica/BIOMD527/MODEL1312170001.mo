within BIOMD527;
model MODEL1312170001 "Kaiser2014 - Salmonella persistence after ciprofloxacin treatment" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_LN elmt_LN;

    equation
        elmt_LN.elmt_r5 = Params.elmt_r5;
        elmt_LN.elmt_r3 = Params.elmt_r3;
        elmt_LN.elmt_t5 = Params.elmt_t5;
        elmt_LN.elmt_t10 = Params.elmt_t10;
        elmt_LN.elmt_r1 = Params.elmt_r1;
        elmt_LN.elmt_t3 = Params.elmt_t3;
        elmt_LN.elmt_r10 = Params.elmt_r10;
        elmt_LN.elmt_c1 = Params.elmt_c1;
        elmt_LN.elmt_c5 = Params.elmt_c5;
        elmt_LN.elmt_c10 = Params.elmt_c10;
        elmt_LN.elmt_c3 = Params.elmt_c3;
        elmt_LN.elmt_t1 = Params.elmt_t1;
        elmt_LN.elmt_mu5 = Params.elmt_mu5;
        elmt_LN.elmt_mu3 = Params.elmt_mu3;
        elmt_LN.elmt_mu10 = Params.elmt_mu10;
        elmt_LN.elmt_mu1 = Params.elmt_mu1;

end MODEL1312170001;
