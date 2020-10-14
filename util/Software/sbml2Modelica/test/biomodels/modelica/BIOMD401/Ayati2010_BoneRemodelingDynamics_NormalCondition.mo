within BIOMD401;
model Ayati2010_BoneRemodelingDynamics_NormalCondition "Ayati2010_BoneRemodelingDynamics_NormalCondition" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Compartment elmt_Compartment;

    equation
        Params.elmt_C = elmt_Compartment.elmt_C;
        Params.elmt_B = elmt_Compartment.elmt_B;
        elmt_Compartment.elmt_g12 = Params.elmt_g12;
        elmt_Compartment.elmt_k1 = Params.elmt_k1;
        elmt_Compartment.elmt_g11 = Params.elmt_g11;
        elmt_Compartment.elmt_g22 = Params.elmt_g22;
        elmt_Compartment.elmt_g21 = Params.elmt_g21;
        elmt_Compartment.elmt_alpha1 = Params.elmt_alpha1;
        elmt_Compartment.elmt_alpha2 = Params.elmt_alpha2;
        elmt_Compartment.elmt_beta1 = Params.elmt_beta1;
        elmt_Compartment.elmt_y2 = Params.elmt_y2;
        elmt_Compartment.elmt_beta2 = Params.elmt_beta2;
        elmt_Compartment.elmt_k2 = Params.elmt_k2;
        elmt_Compartment.elmt_y1 = Params.elmt_y1;

end Ayati2010_BoneRemodelingDynamics_NormalCondition;
