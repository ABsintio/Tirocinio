within BIOMD331;
model Larsen2004_CalciumSpiking_EnzymeBinding "Larsen2004_CalciumSpiking_EnzymeBinding" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_mit elmt_mit;
    Class_elmt_cytoplasm elmt_cytoplasm;
    Class_elmt_ER elmt_ER;

    equation
        elmt_cytoplasm.elmt_p = Params.elmt_p;
        elmt_cytoplasm.elmt_Ca_mit = elmt_mit.elmt_Ca_mit;
        elmt_cytoplasm.elmt_K19 = Params.elmt_K19;
        elmt_cytoplasm.elmt_K17 = Params.elmt_K17;
        elmt_cytoplasm.elmt_K9 = Params.elmt_K9;
        elmt_cytoplasm.elmt_K6 = Params.elmt_K6;
        elmt_cytoplasm.elmt_K4 = Params.elmt_K4;
        elmt_cytoplasm.elmt_k_enz = Params.elmt_k_enz;
        elmt_cytoplasm.elmt_Ca_ER = elmt_ER.elmt_Ca_ER;
        elmt_cytoplasm.elmt_k16 = Params.elmt_k16;
        elmt_cytoplasm.elmt_k14 = Params.elmt_k14;
        elmt_cytoplasm.elmt_k13 = Params.elmt_k13;
        elmt_cytoplasm.elmt_k12 = Params.elmt_k12;
        elmt_cytoplasm.elmt_k10 = Params.elmt_k10;
        elmt_cytoplasm.elmt_K21 = Params.elmt_K21;
        elmt_cytoplasm.elmt_k1 = Params.elmt_k1;
        elmt_cytoplasm.elmt_KM = Params.elmt_KM;
        elmt_cytoplasm.elmt_k18 = Params.elmt_k18;
        elmt_cytoplasm.elmt_k8 = Params.elmt_k8;
        elmt_cytoplasm.elmt_k7 = Params.elmt_k7;
        elmt_cytoplasm.elmt_k_rem = Params.elmt_k_rem;
        elmt_cytoplasm.elmt_k5 = Params.elmt_k5;
        elmt_cytoplasm.elmt_k2 = Params.elmt_k2;
        elmt_cytoplasm.elmt_k3 = Params.elmt_k3;
        elmt_cytoplasm.elmt_k_inact = Params.elmt_k_inact;
        elmt_cytoplasm.elmt_k_act = Params.elmt_k_act;
        elmt_cytoplasm.elmt_K15 = Params.elmt_K15;
        elmt_cytoplasm.elmt_K11 = Params.elmt_K11;
        elmt_cytoplasm.elmt_k20 = Params.elmt_k20;
        elmt_mit.elmt_Ca_cyt = elmt_cytoplasm.elmt_Ca_cyt;
        elmt_mit.elmt_K19 = Params.elmt_K19;
        elmt_mit.elmt_k18 = Params.elmt_k18;
        elmt_mit.elmt_k20 = Params.elmt_k20;
        elmt_mit.elmt_K21 = Params.elmt_K21;
        elmt_ER.elmt_PLC = elmt_cytoplasm.elmt_PLC;
        elmt_ER.elmt_Ca_cyt = elmt_cytoplasm.elmt_Ca_cyt;
        elmt_ER.elmt_K17 = Params.elmt_K17;
        elmt_ER.elmt_k16 = Params.elmt_k16;
        elmt_ER.elmt_K11 = Params.elmt_K11;
        elmt_ER.elmt_k10 = Params.elmt_k10;

end Larsen2004_CalciumSpiking_EnzymeBinding;
