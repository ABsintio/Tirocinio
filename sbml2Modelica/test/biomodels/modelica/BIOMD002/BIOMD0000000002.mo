within BIOMD002;
model BIOMD0000000002 "Edelstein1996 - EPSP ACh species" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_comp1 elmt_comp1;

    equation
        Reacs.elmt_kf_8 = Params.elmt_kf_8;
        Reacs.elmt_kf_7 = Params.elmt_kf_7;
        Reacs.elmt_kf_9 = Params.elmt_kf_9;
        Reacs.elmt_kf_4 = Params.elmt_kf_4;
        Reacs.elmt_kf_3 = Params.elmt_kf_3;
        Reacs.elmt_kr_10 = Params.elmt_kr_10;
        Reacs.elmt_kf_6 = Params.elmt_kf_6;
        Reacs.elmt_kr_11 = Params.elmt_kr_11;
        Reacs.elmt_kf_5 = Params.elmt_kf_5;
        Reacs.elmt_kr_12 = Params.elmt_kr_12;
        Reacs.elmt_kr_4 = Params.elmt_kr_4;
        Reacs.elmt_kr_13 = Params.elmt_kr_13;
        Reacs.elmt_kr_3 = Params.elmt_kr_3;
        Reacs.elmt_kr_6 = Params.elmt_kr_6;
        Reacs.elmt_kr_14 = Params.elmt_kr_14;
        Reacs.elmt_kr_15 = Params.elmt_kr_15;
        Reacs.elmt_kr_5 = Params.elmt_kr_5;
        Reacs.elmt_kr_16 = Params.elmt_kr_16;
        Reacs.elmt_kr_0 = Params.elmt_kr_0;
        Reacs.elmt_BL = elmt_comp1.elmt_BL;
        Reacs.elmt_kr_2 = Params.elmt_kr_2;
        Reacs.elmt_DL = elmt_comp1.elmt_DL;
        Reacs.elmt_kr_1 = Params.elmt_kr_1;
        Reacs.elmt_kr_8 = Params.elmt_kr_8;
        Reacs.elmt_kr_7 = Params.elmt_kr_7;
        Reacs.elmt_DLL = elmt_comp1.elmt_DLL;
        Reacs.elmt_ALL = elmt_comp1.elmt_ALL;
        Reacs.elmt_kr_9 = Params.elmt_kr_9;
        Reacs.elmt_BLL = elmt_comp1.elmt_BLL;
        Reacs.elmt_comp1 = elmt_comp1.elmt_comp1;
        Reacs.elmt_ILL = elmt_comp1.elmt_ILL;
        Reacs.elmt_IL = elmt_comp1.elmt_IL;
        Reacs.elmt_kf_16 = Params.elmt_kf_16;
        Reacs.elmt_L = elmt_comp1.elmt_L;
        Reacs.elmt_I = elmt_comp1.elmt_I;
        Reacs.elmt_kf_11 = Params.elmt_kf_11;
        Reacs.elmt_kf_10 = Params.elmt_kf_10;
        Reacs.elmt_AL = elmt_comp1.elmt_AL;
        Reacs.elmt_kf_15 = Params.elmt_kf_15;
        Reacs.elmt_D = elmt_comp1.elmt_D;
        Reacs.elmt_kf_14 = Params.elmt_kf_14;
        Reacs.elmt_kf_13 = Params.elmt_kf_13;
        Reacs.elmt_A = elmt_comp1.elmt_A;
        Reacs.elmt_kf_12 = Params.elmt_kf_12;
        Reacs.elmt_B = elmt_comp1.elmt_B;
        Reacs.elmt_kf_0 = Params.elmt_kf_0;
        Reacs.elmt_kf_2 = Params.elmt_kf_2;
        Reacs.elmt_kf_1 = Params.elmt_kf_1;
        elmt_comp1.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_comp1.elmt_product32 = Reacs.elmt_product32;
        elmt_comp1.elmt_React11 = Reacs.elmt_React11;
        elmt_comp1.elmt_React12 = Reacs.elmt_React12;
        elmt_comp1.elmt_React10 = Reacs.elmt_React10;
        elmt_comp1.elmt_React15 = Reacs.elmt_React15;
        elmt_comp1.elmt_React16 = Reacs.elmt_React16;
        elmt_comp1.elmt_React13 = Reacs.elmt_React13;
        elmt_comp1.elmt_React14 = Reacs.elmt_React14;
        elmt_comp1.elmt_product27 = Reacs.elmt_product27;
        elmt_comp1.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_comp1.elmt_product25 = Reacs.elmt_product25;
        elmt_comp1.elmt_product29 = Reacs.elmt_product29;
        elmt_comp1.elmt_product41 = Reacs.elmt_product41;
        elmt_comp1.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_comp1.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_comp1.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_comp1.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_comp1.elmt_product37 = Reacs.elmt_product37;
        elmt_comp1.elmt_product35 = Reacs.elmt_product35;
        elmt_comp1.elmt_product39 = Reacs.elmt_product39;
        elmt_comp1.elmt_product10 = Reacs.elmt_product10;
        elmt_comp1.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_comp1.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_comp1.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_comp1.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_comp1.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_comp1.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_comp1.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_comp1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_comp1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_comp1.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_comp1.elmt_product7 = Reacs.elmt_product7;
        elmt_comp1.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_comp1.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_comp1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_comp1.elmt_product23 = Reacs.elmt_product23;
        elmt_comp1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_comp1.elmt_product20 = Reacs.elmt_product20;
        elmt_comp1.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_comp1.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_comp1.elmt_product5 = Reacs.elmt_product5;
        elmt_comp1.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_comp1.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_comp1.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_comp1.elmt_product2 = Reacs.elmt_product2;
        elmt_comp1.elmt_React6 = Reacs.elmt_React6;
        elmt_comp1.elmt_React7 = Reacs.elmt_React7;
        elmt_comp1.elmt_React8 = Reacs.elmt_React8;
        elmt_comp1.elmt_React9 = Reacs.elmt_React9;
        elmt_comp1.elmt_React2 = Reacs.elmt_React2;
        elmt_comp1.elmt_React3 = Reacs.elmt_React3;
        elmt_comp1.elmt_product15 = Reacs.elmt_product15;
        elmt_comp1.elmt_React4 = Reacs.elmt_React4;
        elmt_comp1.elmt_React5 = Reacs.elmt_React5;
        elmt_comp1.elmt_product13 = Reacs.elmt_product13;
        elmt_comp1.elmt_React0 = Reacs.elmt_React0;
        elmt_comp1.elmt_React1 = Reacs.elmt_React1;
        elmt_comp1.elmt_product17 = Reacs.elmt_product17;

end BIOMD0000000002;
