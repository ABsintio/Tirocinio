within BIOMD438;
model MODEL1301110000 "Saeidi2012 - Quorum sensing device that produces GFP" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;

    equation
        Reacs.elmt_s16 = elmt_default.elmt_s16;
        Reacs.elmt_s4 = elmt_default.elmt_s4;
        Reacs.elmt_s45 = elmt_default.elmt_s45;
        Reacs.elmt_s2 = elmt_default.elmt_s2;
        Reacs.elmt_s42 = elmt_default.elmt_s42;
        Reacs.elmt_s1 = elmt_default.elmt_s1;
        Reacs.elmt_s19 = elmt_default.elmt_s19;
        Reacs.elmt_s17 = elmt_default.elmt_s17;
        elmt_default.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_default.elmt_product9 = Reacs.elmt_product9;
        elmt_default.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_default.elmt_product6 = Reacs.elmt_product6;
        elmt_default.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_default.elmt_product11 = Reacs.elmt_product11;
        elmt_default.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_default.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_default.elmt_re3 = Reacs.elmt_re3;
        elmt_default.elmt_product1 = Reacs.elmt_product1;
        elmt_default.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_default.elmt_re2 = Reacs.elmt_re2;
        elmt_default.elmt_re1 = Reacs.elmt_re1;
        elmt_default.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_default.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_default.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_default.elmt_product3 = Reacs.elmt_product3;
        elmt_default.elmt_re14 = Reacs.elmt_re14;
        elmt_default.elmt_re8 = Reacs.elmt_re8;
        elmt_default.elmt_re5 = Reacs.elmt_re5;
        elmt_default.elmt_re4 = Reacs.elmt_re4;
        elmt_default.elmt_product15 = Reacs.elmt_product15;
        elmt_default.elmt_product13 = Reacs.elmt_product13;

end MODEL1301110000;
