within BIOMD487;
model MODEL1308080007 "Cao2013 - Application of ABSIS in the the enzymatic futile cycle" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_S6 = elmt_default.elmt_S6;
        Reacs.elmt_S4 = elmt_default.elmt_S4;
        Reacs.elmt_S5 = elmt_default.elmt_S5;
        Reacs.elmt_S2 = elmt_default.elmt_S2;
        Reacs.elmt_S3 = elmt_default.elmt_S3;
        Reacs.elmt_S1 = elmt_default.elmt_S1;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        elmt_default.elmt_product8 = Reacs.elmt_product8;
        elmt_default.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_default.elmt_product7 = Reacs.elmt_product7;
        elmt_default.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_default.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_default.elmt_product11 = Reacs.elmt_product11;
        elmt_default.elmt_re3 = Reacs.elmt_re3;
        elmt_default.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_default.elmt_re2 = Reacs.elmt_re2;
        elmt_default.elmt_re1 = Reacs.elmt_re1;
        elmt_default.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_default.elmt_product5 = Reacs.elmt_product5;
        elmt_default.elmt_product4 = Reacs.elmt_product4;
        elmt_default.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_default.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_default.elmt_product2 = Reacs.elmt_product2;
        elmt_default.elmt_re6 = Reacs.elmt_re6;
        elmt_default.elmt_re5 = Reacs.elmt_re5;
        elmt_default.elmt_re4 = Reacs.elmt_re4;
        elmt_default.elmt_product16 = Reacs.elmt_product16;
        elmt_default.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_default.elmt_product14 = Reacs.elmt_product14;
        elmt_default.elmt_product13 = Reacs.elmt_product13;
        elmt_default.elmt_product17 = Reacs.elmt_product17;

end MODEL1308080007;
