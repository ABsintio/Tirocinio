within BIOMD006;
model BIOMD0000000006 "Tyson1991 - Cell Cycle 2 var" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_kappa = Params.elmt_kappa;
        Reacs.elmt_z = elmt_cell.elmt_z;
        Reacs.elmt_k4prime = Params.elmt_k4prime;
        Reacs.elmt_u = elmt_cell.elmt_u;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k4 = Params.elmt_k4;
        elmt_cell.elmt_kappa = Params.elmt_kappa;
        elmt_cell.elmt_k6 = Params.elmt_k6;
        elmt_cell.elmt_k4 = Params.elmt_k4;
        elmt_cell.elmt_alpha = Params.elmt_alpha;

end BIOMD0000000006;
