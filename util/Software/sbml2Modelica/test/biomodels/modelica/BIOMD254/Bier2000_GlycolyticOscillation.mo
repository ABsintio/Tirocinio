within BIOMD254;
model Bier2000_GlycolyticOscillation "Bier2000_GlycolyticOscillation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_T1 = elmt_compartment.elmt_T1;
        Params.elmt_T2 = elmt_compartment.elmt_T2;
        elmt_compartment.elmt_kp = Params.elmt_kp;
        elmt_compartment.elmt_k1 = Params.elmt_k1;
        elmt_compartment.elmt_V_in = Params.elmt_V_in;
        elmt_compartment.elmt_km = Params.elmt_km;
        elmt_compartment.elmt_epsilon = Params.elmt_epsilon;

end Bier2000_GlycolyticOscillation;
