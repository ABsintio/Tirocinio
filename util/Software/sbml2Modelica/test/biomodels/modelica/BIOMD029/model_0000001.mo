within BIOMD029;
model model_0000001 "Markevich2004_MAPK_phosphoRandomMM" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_kcat6 = Params.elmt_kcat6;
        Reacs.elmt_kcat7 = Params.elmt_kcat7;
        Reacs.elmt_Km7 = Params.elmt_Km7;
        Reacs.elmt_M = elmt_cell.elmt_M;
        Reacs.elmt_kcat4 = Params.elmt_kcat4;
        Reacs.elmt_MpY = elmt_cell.elmt_MpY;
        Reacs.elmt_Km8 = Params.elmt_Km8;
        Reacs.elmt_kcat5 = Params.elmt_kcat5;
        Reacs.elmt_MKP3 = elmt_cell.elmt_MKP3;
        Reacs.elmt_Km5 = Params.elmt_Km5;
        Reacs.elmt_MEK = elmt_cell.elmt_MEK;
        Reacs.elmt_Km6 = Params.elmt_Km6;
        Reacs.elmt_MpT = elmt_cell.elmt_MpT;
        Reacs.elmt_Km3 = Params.elmt_Km3;
        Reacs.elmt_Km4 = Params.elmt_Km4;
        Reacs.elmt_kcat2 = Params.elmt_kcat2;
        Reacs.elmt_kcat3 = Params.elmt_kcat3;
        Reacs.elmt_kcat1 = Params.elmt_kcat1;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_Km1 = Params.elmt_Km1;
        Reacs.elmt_Km2 = Params.elmt_Km2;
        Reacs.elmt_Mpp = elmt_cell.elmt_Mpp;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_v7 = Reacs.elmt_v7;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_v5 = Reacs.elmt_v5;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_v6 = Reacs.elmt_v6;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_v3 = Reacs.elmt_v3;
        elmt_cell.elmt_v4 = Reacs.elmt_v4;
        elmt_cell.elmt_v1 = Reacs.elmt_v1;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_v2 = Reacs.elmt_v2;

end model_0000001;
