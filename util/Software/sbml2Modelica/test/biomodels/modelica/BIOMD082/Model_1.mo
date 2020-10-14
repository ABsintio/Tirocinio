within BIOMD082;
model Model_1 "Thomsen1988_AdenylateCyclase_Inhibition" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_GTP = elmt_cell.elmt_GTP;
        Reacs.elmt_GDP = elmt_cell.elmt_GDP;
        Reacs.elmt_G_GTP = elmt_cell.elmt_G_GTP;
        Reacs.elmt_G_GDP = elmt_cell.elmt_G_GDP;
        Reacs.elmt_DR = elmt_cell.elmt_DR;
        Reacs.elmt_agonist = elmt_cell.elmt_agonist;
        Reacs.elmt_DRG = elmt_cell.elmt_DRG;
        Reacs.elmt_DRG_GTP = elmt_cell.elmt_DRG_GTP;
        Reacs.elmt_DRG_GDP = elmt_cell.elmt_DRG_GDP;
        Reacs.elmt_Recptor = elmt_cell.elmt_Recptor;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_cell.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_cell.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_Forming = Reacs.elmt_Forming;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_cell.elmt_product16 = Reacs.elmt_product16;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;

end Model_1;
