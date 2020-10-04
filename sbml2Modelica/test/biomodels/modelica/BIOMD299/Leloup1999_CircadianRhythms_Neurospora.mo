within BIOMD299;
model Leloup1999_CircadianRhythms_Neurospora "Leloup1999_CircadianRhythms_Neurospora" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cytoplasm elmt_Cytoplasm;
    Class_elmt_Nucleus elmt_Nucleus;

    equation
        Params.elmt_FC = elmt_Cytoplasm.elmt_FC;
        Params.elmt_FN = elmt_Nucleus.elmt_FN;
        elmt_Cytoplasm.elmt_k1 = Params.elmt_k1;
        elmt_Cytoplasm.elmt_M = elmt_Nucleus.elmt_M;
        elmt_Cytoplasm.elmt_vd = Params.elmt_vd;
        elmt_Cytoplasm.elmt_Kd = Params.elmt_Kd;
        elmt_Cytoplasm.elmt_k2 = Params.elmt_k2;
        elmt_Cytoplasm.elmt_ks = Params.elmt_ks;
        elmt_Cytoplasm.elmt_FN = elmt_Nucleus.elmt_FN;
        elmt_Nucleus.elmt_k1 = Params.elmt_k1;
        elmt_Nucleus.elmt_n = Params.elmt_n;
        elmt_Nucleus.elmt_Km = Params.elmt_Km;
        elmt_Nucleus.elmt_vs = Params.elmt_vs;
        elmt_Nucleus.elmt_FC = elmt_Cytoplasm.elmt_FC;
        elmt_Nucleus.elmt_KI = Params.elmt_KI;
        elmt_Nucleus.elmt_vm = Params.elmt_vm;
        elmt_Nucleus.elmt_k2 = Params.elmt_k2;

end Leloup1999_CircadianRhythms_Neurospora;
