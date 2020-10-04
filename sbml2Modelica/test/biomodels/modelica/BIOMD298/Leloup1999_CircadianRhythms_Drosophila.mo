within BIOMD298;
model Leloup1999_CircadianRhythms_Drosophila "Leloup1999_CircadianRhythms_Drosophila" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Compartment elmt_Compartment;

    equation
        Params.elmt_P1 = elmt_Compartment.elmt_P1;
        Params.elmt_P2 = elmt_Compartment.elmt_P2;
        Params.elmt_P0 = elmt_Compartment.elmt_P0;
        Params.elmt_CN = elmt_Compartment.elmt_CN;
        Params.elmt_C = elmt_Compartment.elmt_C;
        elmt_Compartment.elmt_KdP = Params.elmt_KdP;
        elmt_Compartment.elmt_V2T = Params.elmt_V2T;
        elmt_Compartment.elmt_vsT = Params.elmt_vsT;
        elmt_Compartment.elmt_V4T = Params.elmt_V4T;
        elmt_Compartment.elmt_n = Params.elmt_n;
        elmt_Compartment.elmt_KIT = Params.elmt_KIT;
        elmt_Compartment.elmt_V2P = Params.elmt_V2P;
        elmt_Compartment.elmt_vsP = Params.elmt_vsP;
        elmt_Compartment.elmt_V4P = Params.elmt_V4P;
        elmt_Compartment.elmt_KIP = Params.elmt_KIP;
        elmt_Compartment.elmt_vmT = Params.elmt_vmT;
        elmt_Compartment.elmt_KdT = Params.elmt_KdT;
        elmt_Compartment.elmt_vmP = Params.elmt_vmP;
        elmt_Compartment.elmt_K3P = Params.elmt_K3P;
        elmt_Compartment.elmt_KmP = Params.elmt_KmP;
        elmt_Compartment.elmt_K1T = Params.elmt_K1T;
        elmt_Compartment.elmt_K3T = Params.elmt_K3T;
        elmt_Compartment.elmt_kdC = Params.elmt_kdC;
        elmt_Compartment.elmt_K1P = Params.elmt_K1P;
        elmt_Compartment.elmt_V3T = Params.elmt_V3T;
        elmt_Compartment.elmt_k1 = Params.elmt_k1;
        elmt_Compartment.elmt_V1P = Params.elmt_V1P;
        elmt_Compartment.elmt_kdN = Params.elmt_kdN;
        elmt_Compartment.elmt_V3P = Params.elmt_V3P;
        elmt_Compartment.elmt_KmT = Params.elmt_KmT;
        elmt_Compartment.elmt_k4 = Params.elmt_k4;
        elmt_Compartment.elmt_k2 = Params.elmt_k2;
        elmt_Compartment.elmt_k3 = Params.elmt_k3;
        elmt_Compartment.elmt_V1T = Params.elmt_V1T;
        elmt_Compartment.elmt_K4P = Params.elmt_K4P;
        elmt_Compartment.elmt_ksP = Params.elmt_ksP;
        elmt_Compartment.elmt_vdT = Params.elmt_vdT;
        elmt_Compartment.elmt_vdP = Params.elmt_vdP;
        elmt_Compartment.elmt_K2T = Params.elmt_K2T;
        elmt_Compartment.elmt_kd = Params.elmt_kd;
        elmt_Compartment.elmt_K4T = Params.elmt_K4T;
        elmt_Compartment.elmt_ksT = Params.elmt_ksT;
        elmt_Compartment.elmt_K2P = Params.elmt_K2P;

end Leloup1999_CircadianRhythms_Drosophila;
