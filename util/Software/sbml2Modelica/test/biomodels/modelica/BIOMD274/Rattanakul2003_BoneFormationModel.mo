within BIOMD274;
model Rattanakul2003_BoneFormationModel "Rattanakul2003_BoneFormationModel" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Compartment elmt_Compartment;

    equation
        elmt_Compartment.elmt_k1 = Params.elmt_k1;
        elmt_Compartment.elmt_k2 = Params.elmt_k2;
        elmt_Compartment.elmt_k3 = Params.elmt_k3;
        elmt_Compartment.elmt_a4 = Params.elmt_a4;
        elmt_Compartment.elmt_a5 = Params.elmt_a5;
        elmt_Compartment.elmt_a2 = Params.elmt_a2;
        elmt_Compartment.elmt_b3 = Params.elmt_b3;
        elmt_Compartment.elmt_a3 = Params.elmt_a3;
        elmt_Compartment.elmt_b1 = Params.elmt_b1;
        elmt_Compartment.elmt_b2 = Params.elmt_b2;
        elmt_Compartment.elmt_a1 = Params.elmt_a1;
        elmt_Compartment.elmt_epsilon = Params.elmt_epsilon;
        elmt_Compartment.elmt_delta = Params.elmt_delta;

end Rattanakul2003_BoneFormationModel;
