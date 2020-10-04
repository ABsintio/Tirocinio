within BIOMD278;
model BIOMD0000000278 "Lemaire2004 - Role of RANK/RANKL/OPG pathway in bone remodelling process" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Compartment elmt_Compartment;

    equation
        Params.elmt_C = elmt_Compartment.elmt_C;
        Params.elmt_R = elmt_Compartment.elmt_R;
        Params.elmt_B = elmt_Compartment.elmt_B;
        elmt_Compartment.elmt_D_R = Params.elmt_D_R;
        elmt_Compartment.elmt_D_B = Params.elmt_D_B;
        elmt_Compartment.elmt_D_C = Params.elmt_D_C;
        elmt_Compartment.elmt_D_A = Params.elmt_D_A;
        elmt_Compartment.elmt_Phi_C = Params.elmt_Phi_C;
        elmt_Compartment.elmt_k_B = Params.elmt_k_B;
        elmt_Compartment.elmt_Phi_L = Params.elmt_Phi_L;

end BIOMD0000000278;
