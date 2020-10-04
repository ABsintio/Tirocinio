within BIOMD458;
model BIOMD0000000458 "Smallbone2013 - Serine biosynthesis" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_php = elmt_cell.elmt_php;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_p3g = elmt_cell.elmt_p3g;
        Reacs.elmt_pser = elmt_cell.elmt_pser;
        Reacs.elmt_ser = elmt_cell.elmt_ser;
        Reacs.elmt_serA = elmt_cell.elmt_serA;
        Reacs.elmt_serB = elmt_cell.elmt_serB;
        Reacs.elmt_serC = elmt_cell.elmt_serC;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_PDH = Reacs.elmt_PDH;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_PSP = Reacs.elmt_PSP;
        elmt_cell.elmt_PSA = Reacs.elmt_PSA;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;

end BIOMD0000000458;
