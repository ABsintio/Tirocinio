within BIOMD545;
model MODEL1407230000 "Ouyang2014 - photomorphogenic UV-B signalling network" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Hypctol elmt_Hypctol;

    equation
        Params.elmt_CDCS = elmt_Hypctol.elmt_CDCS;
        Params.elmt_UCS = elmt_Hypctol.elmt_UCS;
        Params.elmt_CS = elmt_Hypctol.elmt_CS;
        Params.elmt_UVR8M = elmt_Hypctol.elmt_UVR8M;
        Params.elmt_UR = elmt_Hypctol.elmt_UR;
        Reacs.elmt_kd1 = Params.elmt_kd1;
        Reacs.elmt_n3 = Params.elmt_n3;
        Reacs.elmt_n1 = Params.elmt_n1;
        Reacs.elmt_n2 = Params.elmt_n2;
        Reacs.elmt_UVR8M = elmt_Hypctol.elmt_UVR8M;
        Reacs.elmt_kdr1 = Params.elmt_kdr1;
        Reacs.elmt_kd4 = Params.elmt_kd4;
        Reacs.elmt_kd3 = Params.elmt_kd3;
        Reacs.elmt_kdr2 = Params.elmt_kdr2;
        Reacs.elmt_kd2 = Params.elmt_kd2;
        Reacs.elmt_kdr3 = Params.elmt_kdr3;
        Reacs.elmt_UVR8D = elmt_Hypctol.elmt_UVR8D;
        Reacs.elmt_UCS = elmt_Hypctol.elmt_UCS;
        Reacs.elmt_HY5 = elmt_Hypctol.elmt_HY5;
        Reacs.elmt_CS = elmt_Hypctol.elmt_CS;
        Reacs.elmt_ks3 = Params.elmt_ks3;
        Reacs.elmt_FHY3 = elmt_Hypctol.elmt_FHY3;
        Reacs.elmt_ks2 = Params.elmt_ks2;
        Reacs.elmt_ksr = Params.elmt_ksr;
        Reacs.elmt_ks1 = Params.elmt_ks1;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_CDW = elmt_Hypctol.elmt_CDW;
        Reacs.elmt_CD = elmt_Hypctol.elmt_CD;
        Reacs.elmt_UV = Params.elmt_UV;
        Reacs.elmt_DWD = elmt_Hypctol.elmt_DWD;
        Reacs.elmt_ka4 = Params.elmt_ka4;
        Reacs.elmt_ka3 = Params.elmt_ka3;
        Reacs.elmt_ka2 = Params.elmt_ka2;
        Reacs.elmt_kdr3a = Params.elmt_kdr3a;
        Reacs.elmt_ka1 = Params.elmt_ka1;
        Reacs.elmt_kdr3b = Params.elmt_kdr3b;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_CDCS = elmt_Hypctol.elmt_CDCS;
        Reacs.elmt_UR = elmt_Hypctol.elmt_UR;
        Reacs.elmt_RUP = elmt_Hypctol.elmt_RUP;
        elmt_Hypctol.elmt_r7 = Reacs.elmt_r7;
        elmt_Hypctol.elmt_r8 = Reacs.elmt_r8;
        elmt_Hypctol.elmt_r5 = Reacs.elmt_r5;
        elmt_Hypctol.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_Hypctol.elmt_r6 = Reacs.elmt_r6;
        elmt_Hypctol.elmt_r3 = Reacs.elmt_r3;
        elmt_Hypctol.elmt_product12 = Reacs.elmt_product12;
        elmt_Hypctol.elmt_r4 = Reacs.elmt_r4;
        elmt_Hypctol.elmt_r1 = Reacs.elmt_r1;
        elmt_Hypctol.elmt_r2 = Reacs.elmt_r2;
        elmt_Hypctol.elmt_r9 = Reacs.elmt_r9;
        elmt_Hypctol.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_Hypctol.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Hypctol.elmt_product9 = Reacs.elmt_product9;
        elmt_Hypctol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Hypctol.elmt_product6 = Reacs.elmt_product6;
        elmt_Hypctol.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_Hypctol.elmt_product21 = Reacs.elmt_product21;
        elmt_Hypctol.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Hypctol.elmt_r10 = Reacs.elmt_r10;
        elmt_Hypctol.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_Hypctol.elmt_product1 = Reacs.elmt_product1;
        elmt_Hypctol.elmt_product0 = Reacs.elmt_product0;
        elmt_Hypctol.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_Hypctol.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_Hypctol.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_Hypctol.elmt_product3 = Reacs.elmt_product3;
        elmt_Hypctol.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_Hypctol.elmt_product15 = Reacs.elmt_product15;
        elmt_Hypctol.elmt_product14 = Reacs.elmt_product14;
        elmt_Hypctol.elmt_product18 = Reacs.elmt_product18;
        elmt_Hypctol.elmt_product17 = Reacs.elmt_product17;

end MODEL1407230000;
