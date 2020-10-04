within BIOMD343;
model model01 "Brannmark2010_InsulinSignalling_Mifamodel" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_0000001 elmt_compartment_0000001;

    equation
        elmt_compartment_0000001.elmt_kyanna = Params.elmt_kyanna;
        elmt_compartment_0000001.elmt_km3 = Params.elmt_km3;
        elmt_compartment_0000001.elmt_k1f = Params.elmt_k1f;
        elmt_compartment_0000001.elmt_k1e = Params.elmt_k1e;
        elmt_compartment_0000001.elmt_k1d = Params.elmt_k1d;
        elmt_compartment_0000001.elmt_k1c = Params.elmt_k1c;
        elmt_compartment_0000001.elmt_k1b = Params.elmt_k1b;
        elmt_compartment_0000001.elmt_k1a = Params.elmt_k1a;
        elmt_compartment_0000001.elmt_k3 = Params.elmt_k3;
        elmt_compartment_0000001.elmt_k1abasic = Params.elmt_k1abasic;
        elmt_compartment_0000001.elmt_ky2 = Params.elmt_ky2;
        elmt_compartment_0000001.elmt_k1g = Params.elmt_k1g;
        elmt_compartment_0000001.elmt_km2 = Params.elmt_km2;
        elmt_compartment_0000001.elmt_ins = Params.elmt_ins;
        elmt_compartment_0000001.elmt_kyDosR = Params.elmt_kyDosR;
        elmt_compartment_0000001.elmt_k1r = Params.elmt_k1r;
        elmt_compartment_0000001.elmt_k22 = Params.elmt_k22;
        elmt_compartment_0000001.elmt_k21 = Params.elmt_k21;

end model01;
