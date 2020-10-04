within BIOMD283;
model chance "Chance1943_Peroxidase_ES_Kinetics" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_P = elmt_cell.elmt_P;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_X = elmt_cell.elmt_X;
        Reacs.elmt_E = elmt_cell.elmt_E;
        Reacs.elmt_K2 = Params.elmt_K2;
        Reacs.elmt_K3 = Params.elmt_K3;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_r1 = Reacs.elmt_r1;
        elmt_cell.elmt_r2 = Reacs.elmt_r2;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;

end chance;
