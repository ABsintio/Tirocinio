within BIOMD004;
model BIOMD0000000004 "Goldbeter1991 - Min Mit Oscil, Expl Inact" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Params.elmt_M = elmt_cell.elmt_M;
        Params.elmt_C = elmt_cell.elmt_C;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_M = elmt_cell.elmt_M;
        Reacs.elmt_XI = elmt_cell.elmt_XI;
        Reacs.elmt_V3 = Params.elmt_V3;
        Reacs.elmt_X = elmt_cell.elmt_X;
        Reacs.elmt_V1 = Params.elmt_V1;
        Reacs.elmt_MI = elmt_cell.elmt_MI;
        Reacs.elmt_C = elmt_cell.elmt_C;
        elmt_cell.elmt_reaction7 = Reacs.elmt_reaction7;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_reaction6 = Reacs.elmt_reaction6;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_reaction3 = Reacs.elmt_reaction3;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_reaction2 = Reacs.elmt_reaction2;
        elmt_cell.elmt_reaction5 = Reacs.elmt_reaction5;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_reaction4 = Reacs.elmt_reaction4;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_reaction1 = Reacs.elmt_reaction1;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;

end BIOMD0000000004;
