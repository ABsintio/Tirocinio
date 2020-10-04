within BIOMD282;
model chance "Chance1952_Catalase_Mechanism" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_p = elmt_cell.elmt_p;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_k4_prime = Params.elmt_k4_prime;
        Reacs.elmt_x = elmt_cell.elmt_x;
        Reacs.elmt_e = elmt_cell.elmt_e;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_a = elmt_cell.elmt_a;
        Reacs.elmt_k2 = Params.elmt_k2;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_r3 = Reacs.elmt_r3;
        elmt_cell.elmt_r1 = Reacs.elmt_r1;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_r2 = Reacs.elmt_r2;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;

end chance;
