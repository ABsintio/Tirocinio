within BIOMD565;
model MODEL1406060000 "Machado2014 - Curcumin production pathway in Escherichia coli" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_extracellular elmt_extracellular;
    Class_elmt_cytosol elmt_cytosol;

    equation
        Reacs.elmt_cglcex = elmt_extracellular.elmt_cglcex;
        Reacs.elmt_cgap = elmt_cytosol.elmt_cgap;
        Reacs.elmt_cpgp = elmt_cytosol.elmt_cpgp;
        Reacs.elmt_cpg2 = elmt_cytosol.elmt_cpg2;
        Reacs.elmt_cur = elmt_cytosol.elmt_cur;
        Reacs.elmt_cpep = elmt_cytosol.elmt_cpep;
        Reacs.elmt_catp = Params.elmt_catp;
        Reacs.elmt_cpg3 = elmt_cytosol.elmt_cpg3;
        Reacs.elmt_cytosol = elmt_cytosol.elmt_cytosol;
        Reacs.elmt_crib5p = elmt_cytosol.elmt_crib5p;
        Reacs.elmt_ce4p = elmt_cytosol.elmt_ce4p;
        Reacs.elmt_cg6p = elmt_cytosol.elmt_cg6p;
        Reacs.elmt_accoa = elmt_cytosol.elmt_accoa;
        Reacs.elmt_cf6p = elmt_cytosol.elmt_cf6p;
        Reacs.elmt_ferdicoa = elmt_cytosol.elmt_ferdicoa;
        Reacs.elmt_cadp = Params.elmt_cadp;
        Reacs.elmt_cfdp = elmt_cytosol.elmt_cfdp;
        Reacs.elmt_cxyl5p = elmt_cytosol.elmt_cxyl5p;
        Reacs.elmt_fer = elmt_cytosol.elmt_fer;
        Reacs.elmt_cribu5p = elmt_cytosol.elmt_cribu5p;
        Reacs.elmt_cnadh = Params.elmt_cnadh;
        Reacs.elmt_cnadph = Params.elmt_cnadph;
        Reacs.elmt_cdhap = elmt_cytosol.elmt_cdhap;
        Reacs.elmt_extracellular = elmt_extracellular.elmt_extracellular;
        Reacs.elmt_cpg = elmt_cytosol.elmt_cpg;
        Reacs.elmt_Dil = Params.elmt_Dil;
        Reacs.elmt_camp = Params.elmt_camp;
        Reacs.elmt_malcoa = elmt_cytosol.elmt_malcoa;
        Reacs.elmt_cg1p = elmt_cytosol.elmt_cg1p;
        Reacs.elmt_fer_ext = elmt_extracellular.elmt_fer_ext;
        Reacs.elmt_cpyr = elmt_cytosol.elmt_cpyr;
        Reacs.elmt_fercoa = elmt_cytosol.elmt_fercoa;
        Reacs.elmt_cur_ext = elmt_extracellular.elmt_cur_ext;
        Reacs.elmt_csed7p = elmt_cytosol.elmt_csed7p;
        Reacs.elmt_cnad = Params.elmt_cnad;
        Reacs.elmt_cnadp = Params.elmt_cnadp;
        elmt_extracellular.elmt_EX_CUR = Reacs.elmt_EX_CUR;
        elmt_extracellular.elmt_reactant95 = Reacs.elmt_reactant95;
        elmt_extracellular.elmt_product94 = Reacs.elmt_product94;
        elmt_extracellular.elmt_vPTS = Reacs.elmt_vPTS;
        elmt_extracellular.elmt_product93 = Reacs.elmt_product93;
        elmt_extracellular.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_extracellular.elmt_product77 = Reacs.elmt_product77;
        elmt_extracellular.elmt_FER_t = Reacs.elmt_FER_t;
        elmt_extracellular.elmt_vEXTER = Reacs.elmt_vEXTER;
        elmt_extracellular.elmt_CUR_t = Reacs.elmt_CUR_t;
        elmt_extracellular.elmt_EX_FER = Reacs.elmt_EX_FER;
        elmt_extracellular.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cytosol.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_cytosol.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_cytosol.elmt_DCS = Reacs.elmt_DCS;
        elmt_cytosol.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_cytosol.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_cytosol.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_cytosol.elmt_vsersynth = Reacs.elmt_vsersynth;
        elmt_cytosol.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_cytosol.elmt_ACCOAC = Reacs.elmt_ACCOAC;
        elmt_cytosol.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_cytosol.elmt_vpyr = Reacs.elmt_vpyr;
        elmt_cytosol.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_cytosol.elmt_vE4P = Reacs.elmt_vE4P;
        elmt_cytosol.elmt_CURS = Reacs.elmt_CURS;
        elmt_cytosol.elmt_vSED7P = Reacs.elmt_vSED7P;
        elmt_cytosol.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_cytosol.elmt_product83 = Reacs.elmt_product83;
        elmt_cytosol.elmt_product89 = Reacs.elmt_product89;
        elmt_cytosol.elmt_vFER = Reacs.elmt_vFER;
        elmt_cytosol.elmt_product86 = Reacs.elmt_product86;
        elmt_cytosol.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_cytosol.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_cytosol.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_cytosol.elmt_vMURSyNTH = Reacs.elmt_vMURSyNTH;
        elmt_cytosol.elmt_vR5PI = Reacs.elmt_vR5PI;
        elmt_cytosol.elmt_vRu5P = Reacs.elmt_vRu5P;
        elmt_cytosol.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_cytosol.elmt_vMethSynth = Reacs.elmt_vMethSynth;
        elmt_cytosol.elmt_vTIS = Reacs.elmt_vTIS;
        elmt_cytosol.elmt_Synth3 = Reacs.elmt_Synth3;
        elmt_cytosol.elmt_Synth4 = Reacs.elmt_Synth4;
        elmt_cytosol.elmt_vPG = Reacs.elmt_vPG;
        elmt_cytosol.elmt_product79 = Reacs.elmt_product79;
        elmt_cytosol.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cytosol.elmt_R4CL = Reacs.elmt_R4CL;
        elmt_cytosol.elmt_product11 = Reacs.elmt_product11;
        elmt_cytosol.elmt_vfdP = Reacs.elmt_vfdP;
        elmt_cytosol.elmt_vPK = Reacs.elmt_vPK;
        elmt_cytosol.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_cytosol.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_cytosol.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_cytosol.elmt_product91 = Reacs.elmt_product91;
        elmt_cytosol.elmt_vPPK = Reacs.elmt_vPPK;
        elmt_cytosol.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_cytosol.elmt_vG6P = Reacs.elmt_vG6P;
        elmt_cytosol.elmt_product9 = Reacs.elmt_product9;
        elmt_cytosol.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cytosol.elmt_product7 = Reacs.elmt_product7;
        elmt_cytosol.elmt_vPGI = Reacs.elmt_vPGI;
        elmt_cytosol.elmt_product23 = Reacs.elmt_product23;
        elmt_cytosol.elmt_product22 = Reacs.elmt_product22;
        elmt_cytosol.elmt_vPGK = Reacs.elmt_vPGK;
        elmt_cytosol.elmt_vFERDICOA = Reacs.elmt_vFERDICOA;
        elmt_cytosol.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_cytosol.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_cytosol.elmt_product5 = Reacs.elmt_product5;
        elmt_cytosol.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_cytosol.elmt_product3 = Reacs.elmt_product3;
        elmt_cytosol.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_cytosol.elmt_product2 = Reacs.elmt_product2;
        elmt_cytosol.elmt_vTRPSYNTH = Reacs.elmt_vTRPSYNTH;
        elmt_cytosol.elmt_vPGM = Reacs.elmt_vPGM;
        elmt_cytosol.elmt_product15 = Reacs.elmt_product15;
        elmt_cytosol.elmt_product14 = Reacs.elmt_product14;
        elmt_cytosol.elmt_vPGP = Reacs.elmt_vPGP;
        elmt_cytosol.elmt_product19 = Reacs.elmt_product19;
        elmt_cytosol.elmt_product18 = Reacs.elmt_product18;
        elmt_cytosol.elmt_reactant101 = Reacs.elmt_reactant101;
        elmt_cytosol.elmt_reactant100 = Reacs.elmt_reactant100;
        elmt_cytosol.elmt_reactant84 = Reacs.elmt_reactant84;
        elmt_cytosol.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_cytosol.elmt_product33 = Reacs.elmt_product33;
        elmt_cytosol.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_cytosol.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt_cytosol.elmt_product32 = Reacs.elmt_product32;
        elmt_cytosol.elmt_product31 = Reacs.elmt_product31;
        elmt_cytosol.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt_cytosol.elmt_vPGDH = Reacs.elmt_vPGDH;
        elmt_cytosol.elmt_reactant87 = Reacs.elmt_reactant87;
        elmt_cytosol.elmt_vG3PDH = Reacs.elmt_vG3PDH;
        elmt_cytosol.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt_cytosol.elmt_vrpGluMu = Reacs.elmt_vrpGluMu;
        elmt_cytosol.elmt_vGLP = Reacs.elmt_vGLP;
        elmt_cytosol.elmt_vCUR = Reacs.elmt_vCUR;
        elmt_cytosol.elmt_FER_t = Reacs.elmt_FER_t;
        elmt_cytosol.elmt_product27 = Reacs.elmt_product27;
        elmt_cytosol.elmt_vPFK = Reacs.elmt_vPFK;
        elmt_cytosol.elmt_product26 = Reacs.elmt_product26;
        elmt_cytosol.elmt_vpepCxylase = Reacs.elmt_vpepCxylase;
        elmt_cytosol.elmt_vpg2 = Reacs.elmt_vpg2;
        elmt_cytosol.elmt_product29 = Reacs.elmt_product29;
        elmt_cytosol.elmt_vPG3 = Reacs.elmt_vPG3;
        elmt_cytosol.elmt_product41 = Reacs.elmt_product41;
        elmt_cytosol.elmt_reactant96 = Reacs.elmt_reactant96;
        elmt_cytosol.elmt_reactant97 = Reacs.elmt_reactant97;
        elmt_cytosol.elmt_reactant92 = Reacs.elmt_reactant92;
        elmt_cytosol.elmt_product43 = Reacs.elmt_product43;
        elmt_cytosol.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cytosol.elmt_vFERCOA = Reacs.elmt_vFERCOA;
        elmt_cytosol.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cytosol.elmt_reactant98 = Reacs.elmt_reactant98;
        elmt_cytosol.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cytosol.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt_cytosol.elmt_vXYL5P = Reacs.elmt_vXYL5P;
        elmt_cytosol.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cytosol.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cytosol.elmt_vTA = Reacs.elmt_vTA;
        elmt_cytosol.elmt_vG1PAT = Reacs.elmt_vG1PAT;
        elmt_cytosol.elmt_product36 = Reacs.elmt_product36;
        elmt_cytosol.elmt_vALDO = Reacs.elmt_vALDO;
        elmt_cytosol.elmt_vPEP = Reacs.elmt_vPEP;
        elmt_cytosol.elmt_product39 = Reacs.elmt_product39;
        elmt_cytosol.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_cytosol.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_cytosol.elmt_product51 = Reacs.elmt_product51;
        elmt_cytosol.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_cytosol.elmt_product50 = Reacs.elmt_product50;
        elmt_cytosol.elmt_vPTS = Reacs.elmt_vPTS;
        elmt_cytosol.elmt_vDAHPS = Reacs.elmt_vDAHPS;
        elmt_cytosol.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_cytosol.elmt_product55 = Reacs.elmt_product55;
        elmt_cytosol.elmt_vPDH = Reacs.elmt_vPDH;
        elmt_cytosol.elmt_vMALCOA = Reacs.elmt_vMALCOA;
        elmt_cytosol.elmt_product53 = Reacs.elmt_product53;
        elmt_cytosol.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_cytosol.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_cytosol.elmt_vENO = Reacs.elmt_vENO;
        elmt_cytosol.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_cytosol.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_cytosol.elmt_reactant67 = Reacs.elmt_reactant67;
        elmt_cytosol.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_cytosol.elmt_vRIB5P = Reacs.elmt_vRIB5P;
        elmt_cytosol.elmt_CUR_t = Reacs.elmt_CUR_t;
        elmt_cytosol.elmt_vSynth2 = Reacs.elmt_vSynth2;
        elmt_cytosol.elmt_vSynth1 = Reacs.elmt_vSynth1;
        elmt_cytosol.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_cytosol.elmt_vGAPDH = Reacs.elmt_vGAPDH;
        elmt_cytosol.elmt_vRibu5p = Reacs.elmt_vRibu5p;
        elmt_cytosol.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cytosol.elmt_reactant73 = Reacs.elmt_reactant73;
        elmt_cytosol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cytosol.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_cytosol.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_cytosol.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cytosol.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_cytosol.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cytosol.elmt_reactant71 = Reacs.elmt_reactant71;
        elmt_cytosol.elmt_vTKA = Reacs.elmt_vTKA;
        elmt_cytosol.elmt_reactant76 = Reacs.elmt_reactant76;
        elmt_cytosol.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_cytosol.elmt_vTKB = Reacs.elmt_vTKB;
        elmt_cytosol.elmt_vG6PDH = Reacs.elmt_vG6PDH;
        elmt_cytosol.elmt_vACCOA = Reacs.elmt_vACCOA;
        elmt_cytosol.elmt_vf6P = Reacs.elmt_vf6P;
        elmt_cytosol.elmt_vGAP = Reacs.elmt_vGAP;
        elmt_cytosol.elmt_product57 = Reacs.elmt_product57;
        elmt_cytosol.elmt_vDHAP = Reacs.elmt_vDHAP;

end MODEL1406060000;
