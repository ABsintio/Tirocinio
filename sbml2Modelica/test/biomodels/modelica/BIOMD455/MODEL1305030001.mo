within BIOMD455;
model MODEL1305030001 "Smallbone2013 - Metabolic Control Analysis - Example 2" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_x3 = elmt_cell.elmt_x3;
        Reacs.elmt_y4 = elmt_cell.elmt_y4;
        Reacs.elmt_y5 = elmt_cell.elmt_y5;
        Reacs.elmt_x1 = elmt_cell.elmt_x1;
        Reacs.elmt_y2 = elmt_cell.elmt_y2;
        Reacs.elmt_y3 = elmt_cell.elmt_y3;
        Reacs.elmt_x2 = elmt_cell.elmt_x2;
        Reacs.elmt_y1 = elmt_cell.elmt_y1;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_v5 = Reacs.elmt_v5;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_v3 = Reacs.elmt_v3;
        elmt_cell.elmt_v4 = Reacs.elmt_v4;
        elmt_cell.elmt_v1 = Reacs.elmt_v1;
        elmt_cell.elmt_v2 = Reacs.elmt_v2;

end MODEL1305030001;
