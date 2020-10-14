within BIOMD026;
model Markevich2004_MAPK_orderedelementary "Markevich2004_MAPK_orderedElementary" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_uVol elmt_uVol;

    equation
        Reacs.elmt_Mp = elmt_uVol.elmt_Mp;
        Reacs.elmt_MKP3 = elmt_uVol.elmt_MKP3;
        Reacs.elmt_uVol = elmt_uVol.elmt_uVol;
        Reacs.elmt_Mp_MKP3_dep = elmt_uVol.elmt_Mp_MKP3_dep;
        Reacs.elmt_h5 = Params.elmt_h5;
        Reacs.elmt_h6 = Params.elmt_h6;
        Reacs.elmt_h3 = Params.elmt_h3;
        Reacs.elmt_h4 = Params.elmt_h4;
        Reacs.elmt_h1 = Params.elmt_h1;
        Reacs.elmt_h2 = Params.elmt_h2;
        Reacs.elmt_M_MKP3 = elmt_uVol.elmt_M_MKP3;
        Reacs.elmt_M_MAPKK = elmt_uVol.elmt_M_MAPKK;
        Reacs.elmt_Mpp = elmt_uVol.elmt_Mpp;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_M = elmt_uVol.elmt_M;
        Reacs.elmt_Mpp_MKP3 = elmt_uVol.elmt_Mpp_MKP3;
        Reacs.elmt_MAPKK = elmt_uVol.elmt_MAPKK;
        Reacs.elmt_k_3 = Params.elmt_k_3;
        Reacs.elmt_h_6 = Params.elmt_h_6;
        Reacs.elmt_Mp_MKP3 = elmt_uVol.elmt_Mp_MKP3;
        Reacs.elmt_k_1 = Params.elmt_k_1;
        Reacs.elmt_h_4 = Params.elmt_h_4;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_h_3 = Params.elmt_h_3;
        Reacs.elmt_Mp_MAPKK = elmt_uVol.elmt_Mp_MAPKK;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_h_1 = Params.elmt_h_1;
        Reacs.elmt_k3 = Params.elmt_k3;
        elmt_uVol.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_uVol.elmt_product11 = Reacs.elmt_product11;
        elmt_uVol.elmt_product10 = Reacs.elmt_product10;
        elmt_uVol.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_uVol.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_uVol.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_uVol.elmt_v1b = Reacs.elmt_v1b;
        elmt_uVol.elmt_v1a = Reacs.elmt_v1a;
        elmt_uVol.elmt_v3c = Reacs.elmt_v3c;
        elmt_uVol.elmt_v3b = Reacs.elmt_v3b;
        elmt_uVol.elmt_v3a = Reacs.elmt_v3a;
        elmt_uVol.elmt_product27 = Reacs.elmt_product27;
        elmt_uVol.elmt_product26 = Reacs.elmt_product26;
        elmt_uVol.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_uVol.elmt_product24 = Reacs.elmt_product24;
        elmt_uVol.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_uVol.elmt_product8 = Reacs.elmt_product8;
        elmt_uVol.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_uVol.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_uVol.elmt_product22 = Reacs.elmt_product22;
        elmt_uVol.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_uVol.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_uVol.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_uVol.elmt_product5 = Reacs.elmt_product5;
        elmt_uVol.elmt_product4 = Reacs.elmt_product4;
        elmt_uVol.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_uVol.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_uVol.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_uVol.elmt_product2 = Reacs.elmt_product2;
        elmt_uVol.elmt_v2b = Reacs.elmt_v2b;
        elmt_uVol.elmt_v4c = Reacs.elmt_v4c;
        elmt_uVol.elmt_v2a = Reacs.elmt_v2a;
        elmt_uVol.elmt_v4b = Reacs.elmt_v4b;
        elmt_uVol.elmt_v4a = Reacs.elmt_v4a;
        elmt_uVol.elmt_product16 = Reacs.elmt_product16;
        elmt_uVol.elmt_product14 = Reacs.elmt_product14;
        elmt_uVol.elmt_product19 = Reacs.elmt_product19;
        elmt_uVol.elmt_product18 = Reacs.elmt_product18;

end Markevich2004_MAPK_orderedelementary;
