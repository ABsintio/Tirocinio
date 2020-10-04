within BIOMD232;
model Nazaret2009_TCA_RC_ATP "Nazaret2009_TCA_RC_ATP" annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
    </rdf:RDF>
  </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_mitochondrion elmt_mitochondrion;
    Class_elmt_cytoplasm elmt_cytoplasm;

    equation
        Params.elmt_NAD = elmt_mitochondrion.elmt_NAD;
        Params.elmt_ATP = elmt_mitochondrion.elmt_ATP;
        Params.elmt_iP = elmt_mitochondrion.elmt_iP;
        Reacs.elmt_NAD = elmt_mitochondrion.elmt_NAD;
        Reacs.elmt_Jresp = Params.elmt_Jresp;
        Reacs.elmt_ATP = elmt_mitochondrion.elmt_ATP;
        Reacs.elmt_AcCoA = elmt_mitochondrion.elmt_AcCoA;
        Reacs.elmt_JATP = Params.elmt_JATP;
        Reacs.elmt_Jleak = Params.elmt_Jleak;
        Reacs.elmt_At = Params.elmt_At;
        Reacs.elmt_mitochondrion = elmt_mitochondrion.elmt_mitochondrion;
        Reacs.elmt_OAA = elmt_mitochondrion.elmt_OAA;
        Reacs.elmt_KG = elmt_mitochondrion.elmt_KG;
        Reacs.elmt_JANT = Params.elmt_JANT;
        Reacs.elmt_Cit = elmt_mitochondrion.elmt_Cit;
        Reacs.elmt_Pyr = elmt_mitochondrion.elmt_Pyr;
        elmt_mitochondrion.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_mitochondrion.elmt_v7 = Reacs.elmt_v7;
        elmt_mitochondrion.elmt_product34 = Reacs.elmt_product34;
        elmt_mitochondrion.elmt_v8 = Reacs.elmt_v8;
        elmt_mitochondrion.elmt_v5 = Reacs.elmt_v5;
        elmt_mitochondrion.elmt_product10 = Reacs.elmt_product10;
        elmt_mitochondrion.elmt_v6 = Reacs.elmt_v6;
        elmt_mitochondrion.elmt_vANT = Reacs.elmt_vANT;
        elmt_mitochondrion.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_mitochondrion.elmt_vresp = Reacs.elmt_vresp;
        elmt_mitochondrion.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_mitochondrion.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_mitochondrion.elmt_v3 = Reacs.elmt_v3;
        elmt_mitochondrion.elmt_v4 = Reacs.elmt_v4;
        elmt_mitochondrion.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_mitochondrion.elmt_v1 = Reacs.elmt_v1;
        elmt_mitochondrion.elmt_v2 = Reacs.elmt_v2;
        elmt_mitochondrion.elmt_product28 = Reacs.elmt_product28;
        elmt_mitochondrion.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_mitochondrion.elmt_Nt = Params.elmt_Nt;
        elmt_mitochondrion.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_mitochondrion.elmt_product7 = Reacs.elmt_product7;
        elmt_mitochondrion.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_mitochondrion.elmt_product22 = Reacs.elmt_product22;
        elmt_mitochondrion.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_mitochondrion.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_mitochondrion.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_mitochondrion.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_mitochondrion.elmt_product0 = Reacs.elmt_product0;
        elmt_mitochondrion.elmt_product3 = Reacs.elmt_product3;
        elmt_mitochondrion.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_mitochondrion.elmt_vATP = Reacs.elmt_vATP;
        elmt_mitochondrion.elmt_At = Params.elmt_At;
        elmt_mitochondrion.elmt_product16 = Reacs.elmt_product16;
        elmt_mitochondrion.elmt_product15 = Reacs.elmt_product15;
        elmt_mitochondrion.elmt_product19 = Reacs.elmt_product19;

end Nazaret2009_TCA_RC_ATP;
