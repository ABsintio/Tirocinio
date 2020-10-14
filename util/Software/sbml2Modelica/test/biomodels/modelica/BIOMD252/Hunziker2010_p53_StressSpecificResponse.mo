within BIOMD252;
model Hunziker2010_p53_StressSpecificResponse "Hunziker2010_p53_StressSpecificResponse" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;

    equation
        elmt_compartment_1.elmt_beta = Params.elmt_beta;
        elmt_compartment_1.elmt_k_f = Params.elmt_k_f;
        elmt_compartment_1.elmt_gamma = Params.elmt_gamma;
        elmt_compartment_1.elmt_k_t = Params.elmt_k_t;
        elmt_compartment_1.elmt_k_tl = Params.elmt_k_tl;
        elmt_compartment_1.elmt_k_b = Params.elmt_k_b;
        elmt_compartment_1.elmt_S = Params.elmt_S;
        elmt_compartment_1.elmt_alpha = Params.elmt_alpha;
        elmt_compartment_1.elmt_delta = Params.elmt_delta;

end Hunziker2010_p53_StressSpecificResponse;
