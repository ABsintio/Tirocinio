within BIOMD284;
model hofmeyer "Hofmeyer1986_SeqFb_Proc_AA_Synthesis" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_Y = elmt_cell.elmt_Y;
        Reacs.elmt_Z = elmt_cell.elmt_Z;
        Reacs.elmt_X = elmt_cell.elmt_X;
        Reacs.elmt_E = elmt_cell.elmt_E;
        Reacs.elmt_F = elmt_cell.elmt_F;
        Reacs.elmt_C = elmt_cell.elmt_C;
        Reacs.elmt_D = elmt_cell.elmt_D;
        Reacs.elmt_A = elmt_cell.elmt_A;
        Reacs.elmt_B = elmt_cell.elmt_B;
        elmt_cell.elmt_R7 = Reacs.elmt_R7;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_R8 = Reacs.elmt_R8;
        elmt_cell.elmt_R5 = Reacs.elmt_R5;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_R6 = Reacs.elmt_R6;
        elmt_cell.elmt_R3 = Reacs.elmt_R3;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_R4 = Reacs.elmt_R4;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_R1 = Reacs.elmt_R1;
        elmt_cell.elmt_R2 = Reacs.elmt_R2;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;

end hofmeyer;
