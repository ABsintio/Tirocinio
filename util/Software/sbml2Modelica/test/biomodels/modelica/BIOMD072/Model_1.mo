within BIOMD072;
model Model_1 "Yi2003_GproteinCycle" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_L = elmt_cell.elmt_L;
        Reacs.elmt_Gd = elmt_cell.elmt_Gd;
        Reacs.elmt_G = elmt_cell.elmt_G;
        Reacs.elmt_RL = elmt_cell.elmt_RL;
        Reacs.elmt_Ga = elmt_cell.elmt_Ga;
        Reacs.elmt_Gbg = elmt_cell.elmt_Gbg;
        Reacs.elmt_R = elmt_cell.elmt_R;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_cell.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_cell.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_cell.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_cell.elmt_reaction_0 = Reacs.elmt_reaction_0;
        elmt_cell.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_cell.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;

end Model_1;
