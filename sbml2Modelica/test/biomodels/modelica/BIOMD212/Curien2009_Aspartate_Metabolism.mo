within BIOMD212;
model Curien2009_Aspartate_Metabolism "Curien2009_Aspartate_Metabolism" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_c1 elmt_c1;

    equation
        Reacs.elmt_ASADH = elmt_c1.elmt_ASADH;
        Reacs.elmt_V_Lys_RS = Params.elmt_V_Lys_RS;
        Reacs.elmt_LKR = elmt_c1.elmt_LKR;
        Reacs.elmt_PHser = elmt_c1.elmt_PHser;
        Reacs.elmt_AKHSDHI = elmt_c1.elmt_AKHSDHI;
        Reacs.elmt_V_Ile_RS = Params.elmt_V_Ile_RS;
        Reacs.elmt_AK1 = elmt_c1.elmt_AK1;
        Reacs.elmt_AspP = elmt_c1.elmt_AspP;
        Reacs.elmt_AK2 = elmt_c1.elmt_AK2;
        Reacs.elmt_DHDPS2 = elmt_c1.elmt_DHDPS2;
        Reacs.elmt_V_Thr_RS = Params.elmt_V_Thr_RS;
        Reacs.elmt_Ile = elmt_c1.elmt_Ile;
        Reacs.elmt_TD = elmt_c1.elmt_TD;
        Reacs.elmt_Val = elmt_c1.elmt_Val;
        Reacs.elmt_ASA = elmt_c1.elmt_ASA;
        Reacs.elmt_THA = elmt_c1.elmt_THA;
        Reacs.elmt_TS1 = elmt_c1.elmt_TS1;
        Reacs.elmt_c1 = elmt_c1.elmt_c1;
        Reacs.elmt_HSK = elmt_c1.elmt_HSK;
        Reacs.elmt_Thr = elmt_c1.elmt_Thr;
        Reacs.elmt_Cys = elmt_c1.elmt_Cys;
        Reacs.elmt_DHDPS1 = elmt_c1.elmt_DHDPS1;
        Reacs.elmt_AdoMet = elmt_c1.elmt_AdoMet;
        Reacs.elmt_Lys = elmt_c1.elmt_Lys;
        Reacs.elmt_AKHSDHII = elmt_c1.elmt_AKHSDHII;
        Reacs.elmt_CGS = elmt_c1.elmt_CGS;
        Reacs.elmt_Phosphate = elmt_c1.elmt_Phosphate;
        Reacs.elmt_Hser = elmt_c1.elmt_Hser;
        elmt_c1.elmt_VakI = Reacs.elmt_VakI;
        elmt_c1.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_c1.elmt_product11 = Reacs.elmt_product11;
        elmt_c1.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_c1.elmt_VileTRNA = Reacs.elmt_VileTRNA;
        elmt_c1.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_c1.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_c1.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_c1.elmt_Vcgs = Reacs.elmt_Vcgs;
        elmt_c1.elmt_Vtd = Reacs.elmt_Vtd;
        elmt_c1.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_c1.elmt_VlysKR = Reacs.elmt_VlysKR;
        elmt_c1.elmt_Vts1 = Reacs.elmt_Vts1;
        elmt_c1.elmt_Vak2 = Reacs.elmt_Vak2;
        elmt_c1.elmt_Vak1 = Reacs.elmt_Vak1;
        elmt_c1.elmt_Vdhdps2 = Reacs.elmt_Vdhdps2;
        elmt_c1.elmt_product25 = Reacs.elmt_product25;
        elmt_c1.elmt_Vdhdps1 = Reacs.elmt_Vdhdps1;
        elmt_c1.elmt_VlysTRNA = Reacs.elmt_VlysTRNA;
        elmt_c1.elmt_Vhsk = Reacs.elmt_Vhsk;
        elmt_c1.elmt_product9 = Reacs.elmt_product9;
        elmt_c1.elmt_product7 = Reacs.elmt_product7;
        elmt_c1.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_c1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_c1.elmt_product21 = Reacs.elmt_product21;
        elmt_c1.elmt_VthrTRNA = Reacs.elmt_VthrTRNA;
        elmt_c1.elmt_product1 = Reacs.elmt_product1;
        elmt_c1.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_c1.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_c1.elmt_product5 = Reacs.elmt_product5;
        elmt_c1.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_c1.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_c1.elmt_product3 = Reacs.elmt_product3;
        elmt_c1.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_c1.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_c1.elmt_Vasadh = Reacs.elmt_Vasadh;
        elmt_c1.elmt_Vtha = Reacs.elmt_Vtha;
        elmt_c1.elmt_product15 = Reacs.elmt_product15;
        elmt_c1.elmt_product13 = Reacs.elmt_product13;
        elmt_c1.elmt_Vhsdh1 = Reacs.elmt_Vhsdh1;
        elmt_c1.elmt_product19 = Reacs.elmt_product19;
        elmt_c1.elmt_VakII = Reacs.elmt_VakII;
        elmt_c1.elmt_Vhsdh2 = Reacs.elmt_Vhsdh2;
        elmt_c1.elmt_product17 = Reacs.elmt_product17;

end Curien2009_Aspartate_Metabolism;
