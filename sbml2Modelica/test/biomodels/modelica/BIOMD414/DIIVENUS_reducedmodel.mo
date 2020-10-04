within BIOMD414;
model DIIVENUS_reducedmodel "Band2012_DII-Venus_ReducedModel" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_p2 = Params.elmt_p2;
        Reacs.elmt_VENUS = elmt_cell.elmt_VENUS;
        Reacs.elmt_lambda_star = Params.elmt_lambda_star;
        Reacs.elmt_qj_star = Params.elmt_qj_star;
        Reacs.elmt_p1_star = Params.elmt_p1_star;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_VENUSdecayduetoauxin = Reacs.elmt_VENUSdecayduetoauxin;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_VENUSdecayduetophotobleaching = Reacs.elmt_VENUSdecayduetophotobleaching;
        elmt_cell.elmt_VENUSproduction = Reacs.elmt_VENUSproduction;

end DIIVENUS_reducedmodel;
