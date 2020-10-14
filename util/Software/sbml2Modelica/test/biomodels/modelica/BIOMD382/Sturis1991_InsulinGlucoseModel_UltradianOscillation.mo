within BIOMD382;
model Sturis1991_InsulinGlucoseModel_UltradianOscillation "Sturis1991_InsulinGlucoseModel_UltradianOscillation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment1 elmt_compartment1;

    equation
        Params.elmt_y = elmt_compartment1.elmt_y;
        Params.elmt_z = elmt_compartment1.elmt_z;
        Params.elmt_h3 = elmt_compartment1.elmt_h3;
        elmt_compartment1.elmt_I = Params.elmt_I;
        elmt_compartment1.elmt_t3 = Params.elmt_t3;
        elmt_compartment1.elmt_f5 = Params.elmt_f5;
        elmt_compartment1.elmt_f3 = Params.elmt_f3;
        elmt_compartment1.elmt_t1 = Params.elmt_t1;
        elmt_compartment1.elmt_f4 = Params.elmt_f4;
        elmt_compartment1.elmt_t2 = Params.elmt_t2;
        elmt_compartment1.elmt_E = Params.elmt_E;
        elmt_compartment1.elmt_f1 = Params.elmt_f1;
        elmt_compartment1.elmt_v1 = Params.elmt_v1;
        elmt_compartment1.elmt_f2 = Params.elmt_f2;
        elmt_compartment1.elmt_v2 = Params.elmt_v2;

end Sturis1991_InsulinGlucoseModel_UltradianOscillation;
