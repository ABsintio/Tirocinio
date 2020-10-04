within BIOMD160;
model Xie2007_CircClock "Xie2007_CircClock" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_wholeCell elmt_wholeCell;

    equation
        Reacs.elmt_timp = elmt_wholeCell.elmt_timp;
        Reacs.elmt_dccpt = Params.elmt_dccpt;
        Reacs.elmt_PT = elmt_wholeCell.elmt_PT;
        Reacs.elmt_tlclk = Params.elmt_tlclk;
        Reacs.elmt_tlper = Params.elmt_tlper;
        Reacs.elmt_ubpt = Params.elmt_ubpt;
        Reacs.elmt_timm = elmt_wholeCell.elmt_timm;
        Reacs.elmt_tltim = Params.elmt_tltim;
        Reacs.elmt_ubpdpclkp = Params.elmt_ubpdpclkp;
        Reacs.elmt_dcc = Params.elmt_dcc;
        Reacs.elmt_bcc = Params.elmt_bcc;
        Reacs.elmt_dtimm = Params.elmt_dtimm;
        Reacs.elmt_vrim = elmt_wholeCell.elmt_vrim;
        Reacs.elmt_vrip = elmt_wholeCell.elmt_vrip;
        Reacs.elmt_tccctimp = Params.elmt_tccctimp;
        Reacs.elmt_bccperp = Params.elmt_bccperp;
        Reacs.elmt_dtim = Params.elmt_dtim;
        Reacs.elmt_CCPT = elmt_wholeCell.elmt_CCPT;
        Reacs.elmt_bccpdpp = Params.elmt_bccpdpp;
        Reacs.elmt_prvc = elmt_wholeCell.elmt_prvc;
        Reacs.elmt_dclkm = Params.elmt_dclkm;
        Reacs.elmt_dper = Params.elmt_dper;
        Reacs.elmt_bvriclkp = Params.elmt_bvriclkp;
        Reacs.elmt_tcclkp = Params.elmt_tcclkp;
        Reacs.elmt_wholeCell = elmt_wholeCell.elmt_wholeCell;
        Reacs.elmt_PDP = elmt_wholeCell.elmt_PDP;
        Reacs.elmt_tlpdp = Params.elmt_tlpdp;
        Reacs.elmt_dclk = Params.elmt_dclk;
        Reacs.elmt_dpt = Params.elmt_dpt;
        Reacs.elmt_bpt = Params.elmt_bpt;
        Reacs.elmt_dvrim = Params.elmt_dvrim;
        Reacs.elmt_dvri = Params.elmt_dvri;
        Reacs.elmt_dpdpm = Params.elmt_dpdpm;
        Reacs.elmt_npdp = Params.elmt_npdp;
        Reacs.elmt_dperm = Params.elmt_dperm;
        Reacs.elmt_TIM = elmt_wholeCell.elmt_TIM;
        Reacs.elmt_ubcctimp = Params.elmt_ubcctimp;
        Reacs.elmt_npt = Params.elmt_npt;
        Reacs.elmt_dpdp = Params.elmt_dpdp;
        Reacs.elmt_prcper = elmt_wholeCell.elmt_prcper;
        Reacs.elmt_PER = elmt_wholeCell.elmt_PER;
        Reacs.elmt_tcccperp = Params.elmt_tcccperp;
        Reacs.elmt_tcccpdpp = Params.elmt_tcccpdpp;
        Reacs.elmt_bcctimp = Params.elmt_bcctimp;
        Reacs.elmt_ubccpt = Params.elmt_ubccpt;
        Reacs.elmt_tcpdpclkp = Params.elmt_tcpdpclkp;
        Reacs.elmt_bccvrip = Params.elmt_bccvrip;
        Reacs.elmt_CLK = elmt_wholeCell.elmt_CLK;
        Reacs.elmt_ubcc = Params.elmt_ubcc;
        Reacs.elmt_tcccvrip = Params.elmt_tcccvrip;
        Reacs.elmt_CYC = elmt_wholeCell.elmt_CYC;
        Reacs.elmt_VRI = elmt_wholeCell.elmt_VRI;
        Reacs.elmt_prcv = elmt_wholeCell.elmt_prcv;
        Reacs.elmt_ubccpdpp = Params.elmt_ubccpdpp;
        Reacs.elmt_prpc = elmt_wholeCell.elmt_prpc;
        Reacs.elmt_pdpp = elmt_wholeCell.elmt_pdpp;
        Reacs.elmt_ubccperp = Params.elmt_ubccperp;
        Reacs.elmt_prct = elmt_wholeCell.elmt_prct;
        Reacs.elmt_perp = elmt_wholeCell.elmt_perp;
        Reacs.elmt_bpdpclkp = Params.elmt_bpdpclkp;
        Reacs.elmt_pdpm = elmt_wholeCell.elmt_pdpm;
        Reacs.elmt_perm = elmt_wholeCell.elmt_perm;
        Reacs.elmt_tcdvpmt = Params.elmt_tcdvpmt;
        Reacs.elmt_CC = elmt_wholeCell.elmt_CC;
        Reacs.elmt_prcpdp = elmt_wholeCell.elmt_prcpdp;
        Reacs.elmt_bccpt = Params.elmt_bccpt;
        Reacs.elmt_nvri = Params.elmt_nvri;
        Reacs.elmt_ubccvrip = Params.elmt_ubccvrip;
        Reacs.elmt_tlvri = Params.elmt_tlvri;
        Reacs.elmt_ubvriclkp = Params.elmt_ubvriclkp;
        Reacs.elmt_tcvriclkp = Params.elmt_tcvriclkp;
        Reacs.elmt_clkm = elmt_wholeCell.elmt_clkm;
        Reacs.elmt_clkp = elmt_wholeCell.elmt_clkp;
        elmt_wholeCell.elmt_re37 = Reacs.elmt_re37;
        elmt_wholeCell.elmt_re38 = Reacs.elmt_re38;
        elmt_wholeCell.elmt_re39 = Reacs.elmt_re39;
        elmt_wholeCell.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_wholeCell.elmt_product34 = Reacs.elmt_product34;
        elmt_wholeCell.elmt_product32 = Reacs.elmt_product32;
        elmt_wholeCell.elmt_product31 = Reacs.elmt_product31;
        elmt_wholeCell.elmt_re30 = Reacs.elmt_re30;
        elmt_wholeCell.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_wholeCell.elmt_re31 = Reacs.elmt_re31;
        elmt_wholeCell.elmt_re32 = Reacs.elmt_re32;
        elmt_wholeCell.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_wholeCell.elmt_re35 = Reacs.elmt_re35;
        elmt_wholeCell.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_wholeCell.elmt_product25 = Reacs.elmt_product25;
        elmt_wholeCell.elmt_product29 = Reacs.elmt_product29;
        elmt_wholeCell.elmt_product41 = Reacs.elmt_product41;
        elmt_wholeCell.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_wholeCell.elmt_product40 = Reacs.elmt_product40;
        elmt_wholeCell.elmt_re28 = Reacs.elmt_re28;
        elmt_wholeCell.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_wholeCell.elmt_product44 = Reacs.elmt_product44;
        elmt_wholeCell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_wholeCell.elmt_re3 = Reacs.elmt_re3;
        elmt_wholeCell.elmt_re62 = Reacs.elmt_re62;
        elmt_wholeCell.elmt_re2 = Reacs.elmt_re2;
        elmt_wholeCell.elmt_re63 = Reacs.elmt_re63;
        elmt_wholeCell.elmt_re1 = Reacs.elmt_re1;
        elmt_wholeCell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_wholeCell.elmt_re20 = Reacs.elmt_re20;
        elmt_wholeCell.elmt_re64 = Reacs.elmt_re64;
        elmt_wholeCell.elmt_re65 = Reacs.elmt_re65;
        elmt_wholeCell.elmt_re66 = Reacs.elmt_re66;
        elmt_wholeCell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_wholeCell.elmt_re68 = Reacs.elmt_re68;
        elmt_wholeCell.elmt_re69 = Reacs.elmt_re69;
        elmt_wholeCell.elmt_re9 = Reacs.elmt_re9;
        elmt_wholeCell.elmt_re4 = Reacs.elmt_re4;
        elmt_wholeCell.elmt_product36 = Reacs.elmt_product36;
        elmt_wholeCell.elmt_product39 = Reacs.elmt_product39;
        elmt_wholeCell.elmt_re59 = Reacs.elmt_re59;
        elmt_wholeCell.elmt_re15 = Reacs.elmt_re15;
        elmt_wholeCell.elmt_product51 = Reacs.elmt_product51;
        elmt_wholeCell.elmt_re17 = Reacs.elmt_re17;
        elmt_wholeCell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_wholeCell.elmt_product11 = Reacs.elmt_product11;
        elmt_wholeCell.elmt_product10 = Reacs.elmt_product10;
        elmt_wholeCell.elmt_re51 = Reacs.elmt_re51;
        elmt_wholeCell.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_wholeCell.elmt_re53 = Reacs.elmt_re53;
        elmt_wholeCell.elmt_re54 = Reacs.elmt_re54;
        elmt_wholeCell.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_wholeCell.elmt_re10 = Reacs.elmt_re10;
        elmt_wholeCell.elmt_re55 = Reacs.elmt_re55;
        elmt_wholeCell.elmt_re56 = Reacs.elmt_re56;
        elmt_wholeCell.elmt_re57 = Reacs.elmt_re57;
        elmt_wholeCell.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_wholeCell.elmt_re58 = Reacs.elmt_re58;
        elmt_wholeCell.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_wholeCell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_wholeCell.elmt_re60 = Reacs.elmt_re60;
        elmt_wholeCell.elmt_re61 = Reacs.elmt_re61;
        elmt_wholeCell.elmt_product49 = Reacs.elmt_product49;
        elmt_wholeCell.elmt_product47 = Reacs.elmt_product47;
        elmt_wholeCell.elmt_product46 = Reacs.elmt_product46;
        elmt_wholeCell.elmt_product9 = Reacs.elmt_product9;
        elmt_wholeCell.elmt_re48 = Reacs.elmt_re48;
        elmt_wholeCell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_wholeCell.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_wholeCell.elmt_product7 = Reacs.elmt_product7;
        elmt_wholeCell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_wholeCell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_wholeCell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_wholeCell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_wholeCell.elmt_product22 = Reacs.elmt_product22;
        elmt_wholeCell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_wholeCell.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_wholeCell.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_wholeCell.elmt_re42 = Reacs.elmt_re42;
        elmt_wholeCell.elmt_re43 = Reacs.elmt_re43;
        elmt_wholeCell.elmt_re44 = Reacs.elmt_re44;
        elmt_wholeCell.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_wholeCell.elmt_re45 = Reacs.elmt_re45;
        elmt_wholeCell.elmt_re46 = Reacs.elmt_re46;
        elmt_wholeCell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_wholeCell.elmt_re47 = Reacs.elmt_re47;
        elmt_wholeCell.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_wholeCell.elmt_product2 = Reacs.elmt_product2;
        elmt_wholeCell.elmt_product15 = Reacs.elmt_product15;
        elmt_wholeCell.elmt_product13 = Reacs.elmt_product13;
        elmt_wholeCell.elmt_product19 = Reacs.elmt_product19;
        elmt_wholeCell.elmt_product17 = Reacs.elmt_product17;

end Xie2007_CircClock;
