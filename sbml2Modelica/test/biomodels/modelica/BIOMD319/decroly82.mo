within BIOMD319;
model decroly82 "Decroly1982_Enzymatic_Oscillator" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_beta = elmt_cell.elmt_beta;
        Reacs.elmt_gamma = elmt_cell.elmt_gamma;
        Reacs.elmt_alpha = elmt_cell.elmt_alpha;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_r3 = Reacs.elmt_r3;
        elmt_cell.elmt_r4 = Reacs.elmt_r4;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_r1 = Reacs.elmt_r1;
        elmt_cell.elmt_r2 = Reacs.elmt_r2;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;

end decroly82;
