within BIOMD138;
model model_0000001 "Tabak2007_dopamine" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Params.elmt_c = elmt_cell.elmt_c;
        Reacs.elmt_ica = Params.elmt_ica;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_ff = Params.elmt_ff;
        Reacs.elmt_alpha = Params.elmt_alpha;
        Reacs.elmt_c = elmt_cell.elmt_c;
        Reacs.elmt_kc = Params.elmt_kc;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_reaction_0000004 = Reacs.elmt_reaction_0000004;

end model_0000001;
