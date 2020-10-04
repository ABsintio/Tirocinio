within BIOMD005;
model BIOMD0000000005 "Tyson1991 - Cell Cycle 6 var" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_M = elmt_cell.elmt_M;
        Reacs.elmt_CT = elmt_cell.elmt_CT;
        Reacs.elmt_Y = elmt_cell.elmt_Y;
        Reacs.elmt_C2 = elmt_cell.elmt_C2;
        Reacs.elmt_pM = elmt_cell.elmt_pM;
        Reacs.elmt_CP = elmt_cell.elmt_CP;
        Reacs.elmt_YP = elmt_cell.elmt_YP;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_Reaction9 = Reacs.elmt_Reaction9;
        elmt_cell.elmt_Reaction8 = Reacs.elmt_Reaction8;
        elmt_cell.elmt_Reaction7 = Reacs.elmt_Reaction7;
        elmt_cell.elmt_Reaction6 = Reacs.elmt_Reaction6;
        elmt_cell.elmt_Reaction5 = Reacs.elmt_Reaction5;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_Reaction4 = Reacs.elmt_Reaction4;
        elmt_cell.elmt_Reaction3 = Reacs.elmt_Reaction3;
        elmt_cell.elmt_Reaction2 = Reacs.elmt_Reaction2;
        elmt_cell.elmt_Reaction1 = Reacs.elmt_Reaction1;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_product19 = Reacs.elmt_product19;

end BIOMD0000000005;
