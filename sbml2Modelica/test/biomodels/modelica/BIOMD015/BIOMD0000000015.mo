within BIOMD015;
model BIOMD0000000015 "Curto1998 - purine metabolism" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_DNA = elmt_cell.elmt_DNA;
        Reacs.elmt_Gua = elmt_cell.elmt_Gua;
        Reacs.elmt_SAM = elmt_cell.elmt_SAM;
        Reacs.elmt_ATP = elmt_cell.elmt_ATP;
        Reacs.elmt_dATP = elmt_cell.elmt_dATP;
        Reacs.elmt_PRPP = elmt_cell.elmt_PRPP;
        Reacs.elmt_UA = elmt_cell.elmt_UA;
        Reacs.elmt_Xa = elmt_cell.elmt_Xa;
        Reacs.elmt_XMP = elmt_cell.elmt_XMP;
        Reacs.elmt_dGTP = elmt_cell.elmt_dGTP;
        Reacs.elmt_RNA = elmt_cell.elmt_RNA;
        Reacs.elmt_GTP = elmt_cell.elmt_GTP;
        Reacs.elmt_Ade = elmt_cell.elmt_Ade;
        Reacs.elmt_HX = elmt_cell.elmt_HX;
        Reacs.elmt_R5P = elmt_cell.elmt_R5P;
        Reacs.elmt_SAMP = elmt_cell.elmt_SAMP;
        Reacs.elmt_Pi = elmt_cell.elmt_Pi;
        Reacs.elmt_IMP = elmt_cell.elmt_IMP;
        elmt_cell.elmt_gdna = Reacs.elmt_gdna;
        elmt_cell.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_cell.elmt_product71 = Reacs.elmt_product71;
        elmt_cell.elmt_rnaa = Reacs.elmt_rnaa;
        elmt_cell.elmt_trans = Reacs.elmt_trans;
        elmt_cell.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_cell.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_cell.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_cell.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_cell.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_cell.elmt_gmps = Reacs.elmt_gmps;
        elmt_cell.elmt_gmpr = Reacs.elmt_gmpr;
        elmt_cell.elmt_rnag = Reacs.elmt_rnag;
        elmt_cell.elmt_dnag = Reacs.elmt_dnag;
        elmt_cell.elmt_asli = Reacs.elmt_asli;
        elmt_cell.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_cell.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_cell.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_cell.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_cell.elmt_asuc = Reacs.elmt_asuc;
        elmt_cell.elmt_hx = Reacs.elmt_hx;
        elmt_cell.elmt_hprt = Reacs.elmt_hprt;
        elmt_cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_adna = Reacs.elmt_adna;
        elmt_cell.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_cell.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_cell.elmt_impd = Reacs.elmt_impd;
        elmt_cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cell.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_cell.elmt_ampd = Reacs.elmt_ampd;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_dnaa = Reacs.elmt_dnaa;
        elmt_cell.elmt_den = Reacs.elmt_den;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_product23 = Reacs.elmt_product23;
        elmt_cell.elmt_product21 = Reacs.elmt_product21;
        elmt_cell.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_cell.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_cell.elmt_xd = Reacs.elmt_xd;
        elmt_cell.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_cell.elmt_adrnr = Reacs.elmt_adrnr;
        elmt_cell.elmt_x = Reacs.elmt_x;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_product19 = Reacs.elmt_product19;
        elmt_cell.elmt_product17 = Reacs.elmt_product17;
        elmt_cell.elmt_gua = Reacs.elmt_gua;
        elmt_cell.elmt_product33 = Reacs.elmt_product33;
        elmt_cell.elmt_product31 = Reacs.elmt_product31;
        elmt_cell.elmt_ua = Reacs.elmt_ua;
        elmt_cell.elmt_grna = Reacs.elmt_grna;
        elmt_cell.elmt_product27 = Reacs.elmt_product27;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_product25 = Reacs.elmt_product25;
        elmt_cell.elmt_product29 = Reacs.elmt_product29;
        elmt_cell.elmt_gprt = Reacs.elmt_gprt;
        elmt_cell.elmt_product40 = Reacs.elmt_product40;
        elmt_cell.elmt_aprt = Reacs.elmt_aprt;
        elmt_cell.elmt_hxd = Reacs.elmt_hxd;
        elmt_cell.elmt_gnuc = Reacs.elmt_gnuc;
        elmt_cell.elmt_product44 = Reacs.elmt_product44;
        elmt_cell.elmt_product42 = Reacs.elmt_product42;
        elmt_cell.elmt_mat = Reacs.elmt_mat;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_dada = Reacs.elmt_dada;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product37 = Reacs.elmt_product37;
        elmt_cell.elmt_product35 = Reacs.elmt_product35;
        elmt_cell.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_cell.elmt_product52 = Reacs.elmt_product52;
        elmt_cell.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_cell.elmt_product50 = Reacs.elmt_product50;
        elmt_cell.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_cell.elmt_product56 = Reacs.elmt_product56;
        elmt_cell.elmt_product54 = Reacs.elmt_product54;
        elmt_cell.elmt_prpps = Reacs.elmt_prpps;
        elmt_cell.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_cell.elmt_gdrnr = Reacs.elmt_gdrnr;
        elmt_cell.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_cell.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_cell.elmt_arna = Reacs.elmt_arna;
        elmt_cell.elmt_product47 = Reacs.elmt_product47;
        elmt_cell.elmt_pyr = Reacs.elmt_pyr;
        elmt_cell.elmt_product63 = Reacs.elmt_product63;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_inuc = Reacs.elmt_inuc;
        elmt_cell.elmt_product60 = Reacs.elmt_product60;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_product67 = Reacs.elmt_product67;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_cell.elmt_product65 = Reacs.elmt_product65;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_ada = Reacs.elmt_ada;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_dgnuc = Reacs.elmt_dgnuc;
        elmt_cell.elmt_polyam = Reacs.elmt_polyam;
        elmt_cell.elmt_ade = Reacs.elmt_ade;
        elmt_cell.elmt_product58 = Reacs.elmt_product58;

end BIOMD0000000015;
