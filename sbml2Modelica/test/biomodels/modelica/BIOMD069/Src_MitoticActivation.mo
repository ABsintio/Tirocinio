within BIOMD069;
model Src_MitoticActivation "Fuss2006_MitoticActivation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;

    equation
        Params.elmt_srco = elmt_default.elmt_srco;
        Params.elmt_srca = elmt_default.elmt_srca;
        Params.elmt_srcc = elmt_default.elmt_srcc;
        Params.elmt_PTP_pY789 = elmt_default.elmt_PTP_pY789;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_p3 = Params.elmt_p3;
        Reacs.elmt_kCSKoff = Params.elmt_kCSKoff;
        Reacs.elmt_p1 = Params.elmt_p1;
        Reacs.elmt_p2 = Params.elmt_p2;
        Reacs.elmt_srca = elmt_default.elmt_srca;
        Reacs.elmt_Cbp = elmt_default.elmt_Cbp;
        Reacs.elmt_CSK_cytoplasm = elmt_default.elmt_CSK_cytoplasm;
        Reacs.elmt_default = elmt_default.elmt_default;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_src_activity = Params.elmt_src_activity;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_kCbp = Params.elmt_kCbp;
        Reacs.elmt_srco = elmt_default.elmt_srco;
        Reacs.elmt_kPTP = Params.elmt_kPTP;
        Reacs.elmt_ptp_activity = Params.elmt_ptp_activity;
        Reacs.elmt_Cbp_P = elmt_default.elmt_Cbp_P;
        Reacs.elmt_srcc = elmt_default.elmt_srcc;
        Reacs.elmt_PTP = elmt_default.elmt_PTP;
        Reacs.elmt_srci = elmt_default.elmt_srci;
        Reacs.elmt_PTP_pY789 = elmt_default.elmt_PTP_pY789;
        Reacs.elmt_kCSKon = Params.elmt_kCSKon;
        Reacs.elmt_Cbp_P_CSK = elmt_default.elmt_Cbp_P_CSK;
        elmt_default.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_default.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_default.elmt_product7 = Reacs.elmt_product7;
        elmt_default.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_default.elmt_product12 = Reacs.elmt_product12;
        elmt_default.elmt_PTP_phosphorylation = Reacs.elmt_PTP_phosphorylation;
        elmt_default.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_default.elmt_product10 = Reacs.elmt_product10;
        elmt_default.elmt_product1 = Reacs.elmt_product1;
        elmt_default.elmt_product5 = Reacs.elmt_product5;
        elmt_default.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_default.elmt_product3 = Reacs.elmt_product3;
        elmt_default.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_default.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_default.elmt_CSK_translocation = Reacs.elmt_CSK_translocation;
        elmt_default.elmt_v3 = Reacs.elmt_v3;
        elmt_default.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_default.elmt_v4 = Reacs.elmt_v4;
        elmt_default.elmt_v1 = Reacs.elmt_v1;
        elmt_default.elmt_product14 = Reacs.elmt_product14;
        elmt_default.elmt_v2 = Reacs.elmt_v2;
        elmt_default.elmt_Cbp_phosphorylation = Reacs.elmt_Cbp_phosphorylation;

end Src_MitoticActivation;
