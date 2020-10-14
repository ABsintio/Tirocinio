within BIOMD253;
model Teusink1998_Glycolysis_TurboDesign "Teusink1998_Glycolysis_TurboDesign" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Params.elmt_ATP = elmt_cell.elmt_ATP;
        Params.elmt_HMP = elmt_cell.elmt_HMP;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_Fru16P2 = elmt_cell.elmt_Fru16P2;
        Reacs.elmt_lambda1 = Params.elmt_lambda1;
        Reacs.elmt_L = Params.elmt_L;
        Reacs.elmt_lambda2 = Params.elmt_lambda2;
        Reacs.elmt_ATP = elmt_cell.elmt_ATP;
        Reacs.elmt_gR = Params.elmt_gR;
        Reacs.elmt_ADP = elmt_cell.elmt_ADP;
        Reacs.elmt_Glc = elmt_cell.elmt_Glc;
        Reacs.elmt_Tre6P = elmt_cell.elmt_Tre6P;
        Reacs.elmt_T = Params.elmt_T;
        Reacs.elmt_R = Params.elmt_R;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_PFK = Reacs.elmt_PFK;
        elmt_cell.elmt_HK = Reacs.elmt_HK;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_ATPase = Reacs.elmt_ATPase;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_lower = Reacs.elmt_lower;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;

end Teusink1998_Glycolysis_TurboDesign;
