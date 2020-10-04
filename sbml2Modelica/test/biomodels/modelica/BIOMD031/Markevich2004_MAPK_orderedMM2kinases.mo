within BIOMD031;
model Markevich2004_MAPK_orderedMM2kinases "Markevich2004_MAPK_orderedMM2kinases" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_uVol elmt_uVol;

    equation
        Reacs.elmt_Mp = elmt_uVol.elmt_Mp;
        Reacs.elmt_M = elmt_uVol.elmt_M;
        Reacs.elmt_MKP3 = elmt_uVol.elmt_MKP3;
        Reacs.elmt_Km5 = Params.elmt_Km5;
        Reacs.elmt_uVol = elmt_uVol.elmt_uVol;
        Reacs.elmt_Km3 = Params.elmt_Km3;
        Reacs.elmt_Km4 = Params.elmt_Km4;
        Reacs.elmt_MAPKK1 = elmt_uVol.elmt_MAPKK1;
        Reacs.elmt_MAPKK2 = elmt_uVol.elmt_MAPKK2;
        Reacs.elmt_k4cat = Params.elmt_k4cat;
        Reacs.elmt_Km1 = Params.elmt_Km1;
        Reacs.elmt_k3cat = Params.elmt_k3cat;
        Reacs.elmt_Km2 = Params.elmt_Km2;
        Reacs.elmt_Mpp = elmt_uVol.elmt_Mpp;
        Reacs.elmt_k1cat = Params.elmt_k1cat;
        Reacs.elmt_k2cat = Params.elmt_k2cat;
        elmt_uVol.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_uVol.elmt_product7 = Reacs.elmt_product7;
        elmt_uVol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_uVol.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_uVol.elmt_product1 = Reacs.elmt_product1;
        elmt_uVol.elmt_v3 = Reacs.elmt_v3;
        elmt_uVol.elmt_v4 = Reacs.elmt_v4;
        elmt_uVol.elmt_v1 = Reacs.elmt_v1;
        elmt_uVol.elmt_v2 = Reacs.elmt_v2;
        elmt_uVol.elmt_product5 = Reacs.elmt_product5;
        elmt_uVol.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_uVol.elmt_product3 = Reacs.elmt_product3;

end Markevich2004_MAPK_orderedMM2kinases;
