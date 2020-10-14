within BIOMD486;
model MODEL1308080006 "Cao2013 - Application of ABSIS method in the reversible isomerization model" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_A = elmt_default.elmt_A;
        Reacs.elmt_B = elmt_default.elmt_B;
        elmt_default.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_default.elmt_product1 = Reacs.elmt_product1;
        elmt_default.elmt_re2 = Reacs.elmt_re2;
        elmt_default.elmt_re12 = Reacs.elmt_re12;
        elmt_default.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_default.elmt_product3 = Reacs.elmt_product3;

end MODEL1308080006;
