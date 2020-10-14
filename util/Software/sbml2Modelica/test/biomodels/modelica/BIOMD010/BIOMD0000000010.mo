within BIOMD010;
model BIOMD0000000010 "Kholodenko2000 - Ultrasensitivity and negative feedback bring oscillations in MAPK cascade" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_uVol elmt_uVol;

    equation
        Reacs.elmt_MAPK_PP = elmt_uVol.elmt_MAPK_PP;
        Reacs.elmt_MAPK_P = elmt_uVol.elmt_MAPK_P;
        Reacs.elmt_MKK_P = elmt_uVol.elmt_MKK_P;
        Reacs.elmt_uVol = elmt_uVol.elmt_uVol;
        Reacs.elmt_MAPK = elmt_uVol.elmt_MAPK;
        Reacs.elmt_MKK_PP = elmt_uVol.elmt_MKK_PP;
        Reacs.elmt_MKKK = elmt_uVol.elmt_MKKK;
        Reacs.elmt_MKK = elmt_uVol.elmt_MKK;
        Reacs.elmt_MKKK_P = elmt_uVol.elmt_MKKK_P;
        elmt_uVol.elmt_product11 = Reacs.elmt_product11;
        elmt_uVol.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_uVol.elmt_J9 = Reacs.elmt_J9;
        elmt_uVol.elmt_product9 = Reacs.elmt_product9;
        elmt_uVol.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_uVol.elmt_J0 = Reacs.elmt_J0;
        elmt_uVol.elmt_product7 = Reacs.elmt_product7;
        elmt_uVol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_uVol.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_uVol.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_uVol.elmt_J7 = Reacs.elmt_J7;
        elmt_uVol.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_uVol.elmt_product1 = Reacs.elmt_product1;
        elmt_uVol.elmt_J8 = Reacs.elmt_J8;
        elmt_uVol.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_uVol.elmt_J5 = Reacs.elmt_J5;
        elmt_uVol.elmt_J6 = Reacs.elmt_J6;
        elmt_uVol.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_uVol.elmt_J3 = Reacs.elmt_J3;
        elmt_uVol.elmt_product5 = Reacs.elmt_product5;
        elmt_uVol.elmt_J4 = Reacs.elmt_J4;
        elmt_uVol.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_uVol.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_uVol.elmt_J1 = Reacs.elmt_J1;
        elmt_uVol.elmt_product3 = Reacs.elmt_product3;
        elmt_uVol.elmt_J2 = Reacs.elmt_J2;
        elmt_uVol.elmt_product15 = Reacs.elmt_product15;
        elmt_uVol.elmt_product13 = Reacs.elmt_product13;
        elmt_uVol.elmt_product19 = Reacs.elmt_product19;
        elmt_uVol.elmt_product17 = Reacs.elmt_product17;

end BIOMD0000000010;
