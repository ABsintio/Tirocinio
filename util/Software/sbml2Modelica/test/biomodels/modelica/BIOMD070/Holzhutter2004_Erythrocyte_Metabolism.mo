within BIOMD070;
model Holzhutter2004_Erythrocyte_Metabolism "Holzhutter2004_Erythrocyte_Metabolism" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_P2NADPH = elmt_compartment.elmt_P2NADPH;
        Reacs.elmt_AMPf = elmt_compartment.elmt_AMPf;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_Fru6P = elmt_compartment.elmt_Fru6P;
        Reacs.elmt_GSSG = elmt_compartment.elmt_GSSG;
        Reacs.elmt_MgATP = elmt_compartment.elmt_MgATP;
        Reacs.elmt_NAD = elmt_compartment.elmt_NAD;
        Reacs.elmt_NADPf = elmt_compartment.elmt_NADPf;
        Reacs.elmt_P2NADP = elmt_compartment.elmt_P2NADP;
        Reacs.elmt_ATPf = elmt_compartment.elmt_ATPf;
        Reacs.elmt_MgGri23P2 = elmt_compartment.elmt_MgGri23P2;
        Reacs.elmt_PRPP = elmt_compartment.elmt_PRPP;
        Reacs.elmt_PEP = elmt_compartment.elmt_PEP;
        Reacs.elmt_Xul5P = elmt_compartment.elmt_Xul5P;
        Reacs.elmt_Gri3P = elmt_compartment.elmt_Gri3P;
        Reacs.elmt_Rul5P = elmt_compartment.elmt_Rul5P;
        Reacs.elmt_Sed7P = elmt_compartment.elmt_Sed7P;
        Reacs.elmt_Phiex = elmt_compartment.elmt_Phiex;
        Reacs.elmt_P2f = elmt_compartment.elmt_P2f;
        Reacs.elmt_P1NADPH = elmt_compartment.elmt_P1NADPH;
        Reacs.elmt_DHAP = elmt_compartment.elmt_DHAP;
        Reacs.elmt_Gri23P2f = elmt_compartment.elmt_Gri23P2f;
        Reacs.elmt_ADPf = elmt_compartment.elmt_ADPf;
        Reacs.elmt_P1NADP = elmt_compartment.elmt_P1NADP;
        Reacs.elmt_NADH = elmt_compartment.elmt_NADH;
        Reacs.elmt_Glc6P = elmt_compartment.elmt_Glc6P;
        Reacs.elmt_Phi = elmt_compartment.elmt_Phi;
        Reacs.elmt_Rib5P = elmt_compartment.elmt_Rib5P;
        Reacs.elmt_Pyrex = elmt_compartment.elmt_Pyrex;
        Reacs.elmt_MgAMP = elmt_compartment.elmt_MgAMP;
        Reacs.elmt_GSH = elmt_compartment.elmt_GSH;
        Reacs.elmt_Gri2P = elmt_compartment.elmt_Gri2P;
        Reacs.elmt_Glcin = elmt_compartment.elmt_Glcin;
        Reacs.elmt_NADPHf = elmt_compartment.elmt_NADPHf;
        Reacs.elmt_Fru16P2 = elmt_compartment.elmt_Fru16P2;
        Reacs.elmt_P1f = elmt_compartment.elmt_P1f;
        Reacs.elmt_Lacex = elmt_compartment.elmt_Lacex;
        Reacs.elmt_MgADP = elmt_compartment.elmt_MgADP;
        Reacs.elmt_E4P = elmt_compartment.elmt_E4P;
        Reacs.elmt_GlcA6P = elmt_compartment.elmt_GlcA6P;
        Reacs.elmt_Lac = elmt_compartment.elmt_Lac;
        Reacs.elmt_Glcout = elmt_compartment.elmt_Glcout;
        Reacs.elmt_Gri13P2 = elmt_compartment.elmt_Gri13P2;
        Reacs.elmt_Mgf = elmt_compartment.elmt_Mgf;
        Reacs.elmt_GraP = elmt_compartment.elmt_GraP;
        Reacs.elmt_Pyr = elmt_compartment.elmt_Pyr;
        elmt_compartment.elmt_product74 = Reacs.elmt_product74;
        elmt_compartment.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_compartment.elmt_product71 = Reacs.elmt_product71;
        elmt_compartment.elmt_vMgATP = Reacs.elmt_vMgATP;
        elmt_compartment.elmt_product78 = Reacs.elmt_product78;
        elmt_compartment.elmt_reactant109 = Reacs.elmt_reactant109;
        elmt_compartment.elmt_product75 = Reacs.elmt_product75;
        elmt_compartment.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_compartment.elmt_vRibPiso = Reacs.elmt_vRibPiso;
        elmt_compartment.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_compartment.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_compartment.elmt_product69 = Reacs.elmt_product69;
        elmt_compartment.elmt_reactant115 = Reacs.elmt_reactant115;
        elmt_compartment.elmt_reactant112 = Reacs.elmt_reactant112;
        elmt_compartment.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_compartment.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_compartment.elmt_vPGLDH = Reacs.elmt_vPGLDH;
        elmt_compartment.elmt_vATPase = Reacs.elmt_vATPase;
        elmt_compartment.elmt_product82 = Reacs.elmt_product82;
        elmt_compartment.elmt_product89 = Reacs.elmt_product89;
        elmt_compartment.elmt_product87 = Reacs.elmt_product87;
        elmt_compartment.elmt_product86 = Reacs.elmt_product86;
        elmt_compartment.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_compartment.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_compartment.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_compartment.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_compartment.elmt_product102 = Reacs.elmt_product102;
        elmt_compartment.elmt_product101 = Reacs.elmt_product101;
        elmt_compartment.elmt_vGPI = Reacs.elmt_vGPI;
        elmt_compartment.elmt_product104 = Reacs.elmt_product104;
        elmt_compartment.elmt_vTrAld = Reacs.elmt_vTrAld;
        elmt_compartment.elmt_vMgADP = Reacs.elmt_vMgADP;
        elmt_compartment.elmt_product79 = Reacs.elmt_product79;
        elmt_compartment.elmt_vALD = Reacs.elmt_vALD;
        elmt_compartment.elmt_product105 = Reacs.elmt_product105;
        elmt_compartment.elmt_product108 = Reacs.elmt_product108;
        elmt_compartment.elmt_product107 = Reacs.elmt_product107;
        elmt_compartment.elmt_product96 = Reacs.elmt_product96;
        elmt_compartment.elmt_vTPI = Reacs.elmt_vTPI;
        elmt_compartment.elmt_product95 = Reacs.elmt_product95;
        elmt_compartment.elmt_product93 = Reacs.elmt_product93;
        elmt_compartment.elmt_product99 = Reacs.elmt_product99;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_product98 = Reacs.elmt_product98;
        elmt_compartment.elmt_vPK = Reacs.elmt_vPK;
        elmt_compartment.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_compartment.elmt_vP2NADPH = Reacs.elmt_vP2NADPH;
        elmt_compartment.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment.elmt_product91 = Reacs.elmt_product91;
        elmt_compartment.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_compartment.elmt_vTrKet2 = Reacs.elmt_vTrKet2;
        elmt_compartment.elmt_vTrKet1 = Reacs.elmt_vTrKet1;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_vP2NADP = Reacs.elmt_vP2NADP;
        elmt_compartment.elmt_vPhiexch = Reacs.elmt_vPhiexch;
        elmt_compartment.elmt_vLDHNADH = Reacs.elmt_vLDHNADH;
        elmt_compartment.elmt_vMgAMP = Reacs.elmt_vMgAMP;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_compartment.elmt_vRibPepi = Reacs.elmt_vRibPepi;
        elmt_compartment.elmt_vPGK = Reacs.elmt_vPGK;
        elmt_compartment.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment.elmt_vAK = Reacs.elmt_vAK;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_compartment.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_compartment.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_compartment.elmt_vPGM = Reacs.elmt_vPGM;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_reactant106 = Reacs.elmt_reactant106;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_reactant103 = Reacs.elmt_reactant103;
        elmt_compartment.elmt_reactant100 = Reacs.elmt_reactant100;
        elmt_compartment.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment.elmt_reactant84 = Reacs.elmt_reactant84;
        elmt_compartment.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_compartment.elmt_vGLT = Reacs.elmt_vGLT;
        elmt_compartment.elmt_product34 = Reacs.elmt_product34;
        elmt_compartment.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_compartment.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt_compartment.elmt_product32 = Reacs.elmt_product32;
        elmt_compartment.elmt_product27 = Reacs.elmt_product27;
        elmt_compartment.elmt_vPFK = Reacs.elmt_vPFK;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment.elmt_product29 = Reacs.elmt_product29;
        elmt_compartment.elmt_vPPRPPS = Reacs.elmt_vPPRPPS;
        elmt_compartment.elmt_reactant94 = Reacs.elmt_reactant94;
        elmt_compartment.elmt_product41 = Reacs.elmt_product41;
        elmt_compartment.elmt_reactant97 = Reacs.elmt_reactant97;
        elmt_compartment.elmt_product45 = Reacs.elmt_product45;
        elmt_compartment.elmt_product42 = Reacs.elmt_product42;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_vP1NADPH = Reacs.elmt_vP1NADPH;
        elmt_compartment.elmt_product38 = Reacs.elmt_product38;
        elmt_compartment.elmt_product37 = Reacs.elmt_product37;
        elmt_compartment.elmt_vHEX = Reacs.elmt_vHEX;
        elmt_compartment.elmt_product52 = Reacs.elmt_product52;
        elmt_compartment.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_compartment.elmt_vLDHNADPH = Reacs.elmt_vLDHNADPH;
        elmt_compartment.elmt_vPyrexch = Reacs.elmt_vPyrexch;
        elmt_compartment.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_compartment.elmt_product56 = Reacs.elmt_product56;
        elmt_compartment.elmt_vP1NADP = Reacs.elmt_vP1NADP;
        elmt_compartment.elmt_product53 = Reacs.elmt_product53;
        elmt_compartment.elmt_vENO = Reacs.elmt_vENO;
        elmt_compartment.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_compartment.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_compartment.elmt_product113 = Reacs.elmt_product113;
        elmt_compartment.elmt_vMgGri23P2 = Reacs.elmt_vMgGri23P2;
        elmt_compartment.elmt_product114 = Reacs.elmt_product114;
        elmt_compartment.elmt_product111 = Reacs.elmt_product111;
        elmt_compartment.elmt_product110 = Reacs.elmt_product110;
        elmt_compartment.elmt_product49 = Reacs.elmt_product49;
        elmt_compartment.elmt_product48 = Reacs.elmt_product48;
        elmt_compartment.elmt_product46 = Reacs.elmt_product46;
        elmt_compartment.elmt_product117 = Reacs.elmt_product117;
        elmt_compartment.elmt_vLacexch = Reacs.elmt_vLacexch;
        elmt_compartment.elmt_vGSHox = Reacs.elmt_vGSHox;
        elmt_compartment.elmt_product116 = Reacs.elmt_product116;
        elmt_compartment.elmt_vGSSGRD = Reacs.elmt_vGSSGRD;
        elmt_compartment.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_vGAPDH = Reacs.elmt_vGAPDH;
        elmt_compartment.elmt_reactant73 = Reacs.elmt_reactant73;
        elmt_compartment.elmt_product61 = Reacs.elmt_product61;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_product60 = Reacs.elmt_product60;
        elmt_compartment.elmt_product67 = Reacs.elmt_product67;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_product65 = Reacs.elmt_product65;
        elmt_compartment.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_compartment.elmt_product64 = Reacs.elmt_product64;
        elmt_compartment.elmt_reactant76 = Reacs.elmt_reactant76;
        elmt_compartment.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_compartment.elmt_vG6PDH = Reacs.elmt_vG6PDH;
        elmt_compartment.elmt_vBPGP = Reacs.elmt_vBPGP;
        elmt_compartment.elmt_product57 = Reacs.elmt_product57;
        elmt_compartment.elmt_vBPGM = Reacs.elmt_vBPGM;

end Holzhutter2004_Erythrocyte_Metabolism;
