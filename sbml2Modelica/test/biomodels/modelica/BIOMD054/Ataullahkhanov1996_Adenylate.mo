within BIOMD054;
model Ataullahkhanov1996_Adenylate "Ataullahkhanov1996_Adenylate" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Params.elmt_E = elmt_cell.elmt_E;
        Params.elmt_A = elmt_cell.elmt_A;
        Reacs.elmt_P = Params.elmt_P;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_M = Params.elmt_M;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_k = Params.elmt_k;
        Reacs.elmt_I = elmt_cell.elmt_I;
        Reacs.elmt_J = Params.elmt_J;
        Reacs.elmt_W = Params.elmt_W;
        Reacs.elmt_U = Params.elmt_U;
        Reacs.elmt_W2 = Params.elmt_W2;
        Reacs.elmt_W3 = Params.elmt_W3;
        Reacs.elmt_T = Params.elmt_T;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_U6_plus_U7_minus_U8 = Reacs.elmt_U6_plus_U7_minus_U8;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_U2 = Reacs.elmt_U2;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_U3 = Reacs.elmt_U3;
        elmt_cell.elmt_U1 = Reacs.elmt_U1;
        elmt_cell.elmt_U6_plus_3U7 = Reacs.elmt_U6_plus_3U7;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;

end Ataullahkhanov1996_Adenylate;
