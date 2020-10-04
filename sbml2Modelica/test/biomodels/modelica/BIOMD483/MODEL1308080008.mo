within BIOMD483;
model MODEL1308080008 "Cao2008 - Network of a toggle switch" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;

    equation
        Reacs.elmt_ba = Params.elmt_ba;
        Reacs.elmt_bb = Params.elmt_bb;
        Reacs.elmt_BDa = elmt_default.elmt_BDa;
        Reacs.elmt_ub = Params.elmt_ub;
        Reacs.elmt_sa = Params.elmt_sa;
        Reacs.elmt_BDb = elmt_default.elmt_BDb;
        Reacs.elmt_ua = Params.elmt_ua;
        Reacs.elmt_default = elmt_default.elmt_default;
        Reacs.elmt_Pa = elmt_default.elmt_Pa;
        Reacs.elmt_Pb = elmt_default.elmt_Pb;
        Reacs.elmt_sb = Params.elmt_sb;
        Reacs.elmt_Da = elmt_default.elmt_Da;
        Reacs.elmt_da = Params.elmt_da;
        Reacs.elmt_Db = elmt_default.elmt_Db;
        Reacs.elmt_db = Params.elmt_db;
        elmt_default.elmt_product10 = Reacs.elmt_product10;
        elmt_default.elmt_re11 = Reacs.elmt_re11;
        elmt_default.elmt_re12 = Reacs.elmt_re12;
        elmt_default.elmt_re13 = Reacs.elmt_re13;
        elmt_default.elmt_re14 = Reacs.elmt_re14;
        elmt_default.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_default.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_default.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_default.elmt_product7 = Reacs.elmt_product7;
        elmt_default.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_default.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_default.elmt_product1 = Reacs.elmt_product1;
        elmt_default.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_default.elmt_re2 = Reacs.elmt_re2;
        elmt_default.elmt_re1 = Reacs.elmt_re1;
        elmt_default.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_default.elmt_product5 = Reacs.elmt_product5;
        elmt_default.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_default.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_default.elmt_product3 = Reacs.elmt_product3;
        elmt_default.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_default.elmt_re7 = Reacs.elmt_re7;
        elmt_default.elmt_re5 = Reacs.elmt_re5;
        elmt_default.elmt_product16 = Reacs.elmt_product16;
        elmt_default.elmt_product15 = Reacs.elmt_product15;
        elmt_default.elmt_product13 = Reacs.elmt_product13;
        elmt_default.elmt_product19 = Reacs.elmt_product19;
        elmt_default.elmt_product18 = Reacs.elmt_product18;

end MODEL1308080008;
