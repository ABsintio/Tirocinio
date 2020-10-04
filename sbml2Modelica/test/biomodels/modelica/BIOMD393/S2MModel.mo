within BIOMD393;
model S2MModel "Arnold2011_Zhu2007_CalvinCycle_Starch_Sucrose_Photorespiration" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cytosol elmt_cytosol;
    Class_elmt_chloroplast elmt_chloroplast;

    equation
        Params.elmt_O2 = elmt_chloroplast.elmt_O2;
        Params.elmt_CO2 = elmt_chloroplast.elmt_CO2;
        Params.elmt_F26BPc = elmt_cytosol.elmt_F26BPc;
        Params.elmt_RuBP = elmt_chloroplast.elmt_RuBP;
        Reacs.elmt_PiPic = elmt_cytosol.elmt_PiPic;
        Reacs.elmt_GAP = elmt_chloroplast.elmt_GAP;
        Reacs.elmt_F6Pc = elmt_cytosol.elmt_F6Pc;
        Reacs.elmt_G1P = elmt_chloroplast.elmt_G1P;
        Reacs.elmt_DHAP = elmt_chloroplast.elmt_DHAP;
        Reacs.elmt_DHAPc = elmt_cytosol.elmt_DHAPc;
        Reacs.elmt_UDPGc = elmt_cytosol.elmt_UDPGc;
        Reacs.elmt_K52a = Params.elmt_K52a;
        Reacs.elmt_DPGA = elmt_chloroplast.elmt_DPGA;
        Reacs.elmt_NADPH = elmt_chloroplast.elmt_NADPH;
        Reacs.elmt_Succ = elmt_cytosol.elmt_Succ;
        Reacs.elmt_UDPc = elmt_cytosol.elmt_UDPc;
        Reacs.elmt_GAPc = elmt_cytosol.elmt_GAPc;
        Reacs.elmt_GLUc = elmt_cytosol.elmt_GLUc;
        Reacs.elmt_GCA = elmt_chloroplast.elmt_GCA;
        Reacs.elmt_FBPc = elmt_cytosol.elmt_FBPc;
        Reacs.elmt_GLYc = elmt_cytosol.elmt_GLYc;
        Reacs.elmt_Ru5P = elmt_chloroplast.elmt_Ru5P;
        Reacs.elmt_SBP = elmt_chloroplast.elmt_SBP;
        Reacs.elmt_Wc_min = Params.elmt_Wc_min;
        Reacs.elmt_Pi = elmt_chloroplast.elmt_Pi;
        Reacs.elmt_G1Pc = elmt_cytosol.elmt_G1Pc;
        Reacs.elmt_HPRc = elmt_chloroplast.elmt_HPRc;
        Reacs.elmt_Pic = elmt_cytosol.elmt_Pic;
        Reacs.elmt_F26BPc = elmt_cytosol.elmt_F26BPc;
        Reacs.elmt_ATPc = elmt_cytosol.elmt_ATPc;
        Reacs.elmt_NAD = elmt_cytosol.elmt_NAD;
        Reacs.elmt_ATP = elmt_chloroplast.elmt_ATP;
        Reacs.elmt_cytosol = elmt_cytosol.elmt_cytosol;
        Reacs.elmt_Wo_min = Params.elmt_Wo_min;
        Reacs.elmt_KGc = elmt_cytosol.elmt_KGc;
        Reacs.elmt_PGAc = elmt_cytosol.elmt_PGAc;
        Reacs.elmt_GCEAc = elmt_cytosol.elmt_GCEAc;
        Reacs.elmt_ADPc = elmt_cytosol.elmt_ADPc;
        Reacs.elmt_UTPc = elmt_cytosol.elmt_UTPc;
        Reacs.elmt_ADP = elmt_chloroplast.elmt_ADP;
        Reacs.elmt_R5P = elmt_chloroplast.elmt_R5P;
        Reacs.elmt_RuBP = elmt_chloroplast.elmt_RuBP;
        Reacs.elmt_S7P = elmt_chloroplast.elmt_S7P;
        Reacs.elmt_GCEA = elmt_chloroplast.elmt_GCEA;
        Reacs.elmt_NADH = elmt_cytosol.elmt_NADH;
        Reacs.elmt_FBP = elmt_chloroplast.elmt_FBP;
        Reacs.elmt_X5P = elmt_chloroplast.elmt_X5P;
        Reacs.elmt_F6P = elmt_chloroplast.elmt_F6P;
        Reacs.elmt_SERc = elmt_cytosol.elmt_SERc;
        Reacs.elmt_GOAc = elmt_cytosol.elmt_GOAc;
        Reacs.elmt_SucPc = elmt_cytosol.elmt_SucPc;
        Reacs.elmt_E4P = elmt_chloroplast.elmt_E4P;
        Reacs.elmt_GCAc = elmt_cytosol.elmt_GCAc;
        Reacs.elmt_chloroplast = elmt_chloroplast.elmt_chloroplast;
        Reacs.elmt_PGCA = elmt_chloroplast.elmt_PGCA;
        Reacs.elmt_PGA = elmt_chloroplast.elmt_PGA;
        elmt_chloroplast.elmt_product30 = Reacs.elmt_product30;
        elmt_chloroplast.elmt_SERcGOAc_AT = Reacs.elmt_SERcGOAc_AT;
        elmt_chloroplast.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_chloroplast.elmt_product34 = Reacs.elmt_product34;
        elmt_chloroplast.elmt_product78 = Reacs.elmt_product78;
        elmt_chloroplast.elmt_product77 = Reacs.elmt_product77;
        elmt_chloroplast.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt_chloroplast.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt_chloroplast.elmt_product75 = Reacs.elmt_product75;
        elmt_chloroplast.elmt_GPT_GCA = Reacs.elmt_GPT_GCA;
        elmt_chloroplast.elmt_GPT_GCEAc = Reacs.elmt_GPT_GCEAc;
        elmt_chloroplast.elmt_product27 = Reacs.elmt_product27;
        elmt_chloroplast.elmt_RuBisCO_O2 = Reacs.elmt_RuBisCO_O2;
        elmt_chloroplast.elmt_product69 = Reacs.elmt_product69;
        elmt_chloroplast.elmt_product83 = Reacs.elmt_product83;
        elmt_chloroplast.elmt_F6P_TK = Reacs.elmt_F6P_TK;
        elmt_chloroplast.elmt_product89 = Reacs.elmt_product89;
        elmt_chloroplast.elmt_reactant91 = Reacs.elmt_reactant91;
        elmt_chloroplast.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_chloroplast.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_chloroplast.elmt_SBP_A = Reacs.elmt_SBP_A;
        elmt_chloroplast.elmt_PGCA_P = Reacs.elmt_PGCA_P;
        elmt_chloroplast.elmt_GPT_GCAc = Reacs.elmt_GPT_GCAc;
        elmt_chloroplast.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_chloroplast.elmt_product80 = Reacs.elmt_product80;
        elmt_chloroplast.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_chloroplast.elmt_Ru5P_K = Reacs.elmt_Ru5P_K;
        elmt_chloroplast.elmt_PGA_K = Reacs.elmt_PGA_K;
        elmt_chloroplast.elmt_FBPase = Reacs.elmt_FBPase;
        elmt_chloroplast.elmt_ATP_S = Reacs.elmt_ATP_S;
        elmt_chloroplast.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_chloroplast.elmt_FBP_A = Reacs.elmt_FBP_A;
        elmt_chloroplast.elmt_product11 = Reacs.elmt_product11;
        elmt_chloroplast.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_chloroplast.elmt_cP = Params.elmt_cP;
        elmt_chloroplast.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_chloroplast.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_chloroplast.elmt_GAP_DH = Reacs.elmt_GAP_DH;
        elmt_chloroplast.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_chloroplast.elmt_AGPase = Reacs.elmt_AGPase;
        elmt_chloroplast.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_chloroplast.elmt_TPT_PGA = Reacs.elmt_TPT_PGA;
        elmt_chloroplast.elmt_cA = Params.elmt_cA;
        elmt_chloroplast.elmt_RuBisCO_CO2 = Reacs.elmt_RuBisCO_CO2;
        elmt_chloroplast.elmt_TPT_GAP = Reacs.elmt_TPT_GAP;
        elmt_chloroplast.elmt_GCEA_K = Reacs.elmt_GCEA_K;
        elmt_chloroplast.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_chloroplast.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_chloroplast.elmt_product8 = Reacs.elmt_product8;
        elmt_chloroplast.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_chloroplast.elmt_product23 = Reacs.elmt_product23;
        elmt_chloroplast.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_chloroplast.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_chloroplast.elmt_product21 = Reacs.elmt_product21;
        elmt_chloroplast.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_chloroplast.elmt_product1 = Reacs.elmt_product1;
        elmt_chloroplast.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_chloroplast.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_chloroplast.elmt_reactant76 = Reacs.elmt_reactant76;
        elmt_chloroplast.elmt_product4 = Reacs.elmt_product4;
        elmt_chloroplast.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_chloroplast.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_chloroplast.elmt_reactant79 = Reacs.elmt_reactant79;
        elmt_chloroplast.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_chloroplast.elmt_GPT_GCEA = Reacs.elmt_GPT_GCEA;
        elmt_chloroplast.elmt_SBPase = Reacs.elmt_SBPase;
        elmt_chloroplast.elmt_GCEA_DH = Reacs.elmt_GCEA_DH;
        elmt_chloroplast.elmt_S7P_TK = Reacs.elmt_S7P_TK;
        elmt_chloroplast.elmt_product13 = Reacs.elmt_product13;
        elmt_chloroplast.elmt_TPT_DHAP = Reacs.elmt_TPT_DHAP;
        elmt_chloroplast.elmt_product18 = Reacs.elmt_product18;
        elmt_chloroplast.elmt_product17 = Reacs.elmt_product17;
        elmt_cytosol.elmt_SERcGOAc_AT = Reacs.elmt_SERcGOAc_AT;
        elmt_cytosol.elmt_FBPcase = Reacs.elmt_FBPcase;
        elmt_cytosol.elmt_product73 = Reacs.elmt_product73;
        elmt_cytosol.elmt_cPc = Params.elmt_cPc;
        elmt_cytosol.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_cytosol.elmt_product71 = Reacs.elmt_product71;
        elmt_cytosol.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_cytosol.elmt_F26BPc_P = Reacs.elmt_F26BPc_P;
        elmt_cytosol.elmt_reactant87 = Reacs.elmt_reactant87;
        elmt_cytosol.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_cytosol.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt_cytosol.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_cytosol.elmt_GPT_GCA = Reacs.elmt_GPT_GCA;
        elmt_cytosol.elmt_GPT_GCEAc = Reacs.elmt_GPT_GCEAc;
        elmt_cytosol.elmt_product40 = Reacs.elmt_product40;
        elmt_cytosol.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_cytosol.elmt_reactant96 = Reacs.elmt_reactant96;
        elmt_cytosol.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_cytosol.elmt_product44 = Reacs.elmt_product44;
        elmt_cytosol.elmt_cUc = Params.elmt_cUc;
        elmt_cytosol.elmt_product86 = Reacs.elmt_product86;
        elmt_cytosol.elmt_product42 = Reacs.elmt_product42;
        elmt_cytosol.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_cytosol.elmt_GPT_GCAc = Reacs.elmt_GPT_GCAc;
        elmt_cytosol.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt_cytosol.elmt_FBPc_A = Reacs.elmt_FBPc_A;
        elmt_cytosol.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_cytosol.elmt_cAc = Params.elmt_cAc;
        elmt_cytosol.elmt_GLYc_DC = Reacs.elmt_GLYc_DC;
        elmt_cytosol.elmt_product100 = Reacs.elmt_product100;
        elmt_cytosol.elmt_product38 = Reacs.elmt_product38;
        elmt_cytosol.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_cytosol.elmt_product50 = Reacs.elmt_product50;
        elmt_cytosol.elmt_F6Pc_K = Reacs.elmt_F6Pc_K;
        elmt_cytosol.elmt_PGAc_Deg = Reacs.elmt_PGAc_Deg;
        elmt_cytosol.elmt_product93 = Reacs.elmt_product93;
        elmt_cytosol.elmt_GCAc_Ox = Reacs.elmt_GCAc_Ox;
        elmt_cytosol.elmt_product54 = Reacs.elmt_product54;
        elmt_cytosol.elmt_product98 = Reacs.elmt_product98;
        elmt_cytosol.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_cytosol.elmt_reactant67 = Reacs.elmt_reactant67;
        elmt_cytosol.elmt_product90 = Reacs.elmt_product90;
        elmt_cytosol.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_cytosol.elmt_GLUcGOAc_AT = Reacs.elmt_GLUcGOAc_AT;
        elmt_cytosol.elmt_TPT_PGA = Reacs.elmt_TPT_PGA;
        elmt_cytosol.elmt_SucPc_P = Reacs.elmt_SucPc_P;
        elmt_cytosol.elmt_SucPc_S = Reacs.elmt_SucPc_S;
        elmt_cytosol.elmt_product46 = Reacs.elmt_product46;
        elmt_cytosol.elmt_TPT_GAP = Reacs.elmt_TPT_GAP;
        elmt_cytosol.elmt_product61 = Reacs.elmt_product61;
        elmt_cytosol.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_cytosol.elmt_Succ_Deg = Reacs.elmt_Succ_Deg;
        elmt_cytosol.elmt_product64 = Reacs.elmt_product64;
        elmt_cytosol.elmt_UGPase = Reacs.elmt_UGPase;
        elmt_cytosol.elmt_GPT_GCEA = Reacs.elmt_GPT_GCEA;
        elmt_cytosol.elmt_GCEA_DH = Reacs.elmt_GCEA_DH;
        elmt_cytosol.elmt_product57 = Reacs.elmt_product57;
        elmt_cytosol.elmt_TPT_DHAP = Reacs.elmt_TPT_DHAP;

end S2MModel;
