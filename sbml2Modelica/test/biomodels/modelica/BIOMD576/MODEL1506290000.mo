within BIOMD576;
model MODEL1506290000 "Kolodkin2013 - Nuclear receptor-mediated cortisol signalling network" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-08-01T18:55:13Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_blood elmt_blood;
    Class_elmt_default elmt_default;

    equation
        Params.elmt_TATgene_GRprot_DEX = elmt_default.elmt_TATgene_GRprot_DEX;
        Params.elmt_PXRprot_DEX = elmt_default.elmt_PXRprot_DEX;
        Params.elmt_CYPgene_PXRprot_DEX = elmt_default.elmt_CYPgene_PXRprot_DEX;
        Params.elmt_s87 = elmt_default.elmt_s87;
        Params.elmt_s42 = elmt_default.elmt_s42;
        Params.elmt_s165 = elmt_default.elmt_s165;
        Params.elmt_s183 = elmt_default.elmt_s183;
        Params.elmt_PXRgene_GRprot_DEX = elmt_default.elmt_PXRgene_GRprot_DEX;
        Params.elmt_GRgene_GRprot_DEX = elmt_default.elmt_GRgene_GRprot_DEX;
        Params.elmt_CYPgene_PXRprot_Ligand2 = elmt_default.elmt_CYPgene_PXRprot_Ligand2;
        Params.elmt_GRprot_DEX = elmt_default.elmt_GRprot_DEX;
        Params.elmt_s39 = elmt_default.elmt_s39;
        Params.elmt_s119 = elmt_default.elmt_s119;
        Params.elmt_PXRprot_Ligand2 = elmt_default.elmt_PXRprot_Ligand2;
        Params.elmt_s84 = elmt_default.elmt_s84;
        Params.elmt_s109 = elmt_default.elmt_s109;
        Reacs.elmt_TATgene_GRprot_DEX = elmt_default.elmt_TATgene_GRprot_DEX;
        Reacs.elmt_s46 = elmt_default.elmt_s46;
        Reacs.elmt_s87 = elmt_default.elmt_s87;
        Reacs.elmt_TATGene_GRprotein = Params.elmt_TATGene_GRprotein;
        Reacs.elmt_s42 = elmt_default.elmt_s42;
        Reacs.elmt_s165 = elmt_default.elmt_s165;
        Reacs.elmt_GRgene_GRprot_DEX = elmt_default.elmt_GRgene_GRprot_DEX;
        Reacs.elmt_PXRgene_GRprot_DEX = elmt_default.elmt_PXRgene_GRprot_DEX;
        Reacs.elmt_GeneProteinBinding_diff_limited = Params.elmt_GeneProteinBinding_diff_limited;
        Reacs.elmt_TAT_PROT = elmt_default.elmt_TAT_PROT;
        Reacs.elmt_CBG = elmt_blood.elmt_CBG;
        Reacs.elmt_DEXout = elmt_blood.elmt_DEXout;
        Reacs.elmt_CYPgene_PXRprot_DEX = elmt_default.elmt_CYPgene_PXRprot_DEX;
        Reacs.elmt_s2 = elmt_blood.elmt_s2;
        Reacs.elmt_s155 = elmt_default.elmt_s155;
        Reacs.elmt_GRGene_GRprotein = Params.elmt_GRGene_GRprotein;
        Reacs.elmt_CBG_CortOUT = elmt_blood.elmt_CBG_CortOUT;
        Reacs.elmt_cypMrna_synt = Params.elmt_cypMrna_synt;
        Reacs.elmt_s119 = elmt_default.elmt_s119;
        Reacs.elmt_Cortisone = elmt_default.elmt_Cortisone;
        Reacs.elmt_s114 = elmt_default.elmt_s114;
        Reacs.elmt_blood = elmt_blood.elmt_blood;
        Reacs.elmt_Ligand2 = elmt_default.elmt_Ligand2;
        Reacs.elmt_DEX = elmt_default.elmt_DEX;
        Reacs.elmt_Alb = elmt_blood.elmt_Alb;
        Reacs.elmt_pxrMrna_synt = Params.elmt_pxrMrna_synt;
        Reacs.elmt_PXRprot_DEX = elmt_default.elmt_PXRprot_DEX;
        Reacs.elmt_PXRGene_GRprotein = Params.elmt_PXRGene_GRprotein;
        Reacs.elmt_s185 = elmt_default.elmt_s185;
        Reacs.elmt_s183 = elmt_default.elmt_s183;
        Reacs.elmt_GRprot_DEX = elmt_default.elmt_GRprot_DEX;
        Reacs.elmt_s28 = elmt_default.elmt_s28;
        Reacs.elmt_grMrna_synt = Params.elmt_grMrna_synt;
        Reacs.elmt_tatMrna_synt = Params.elmt_tatMrna_synt;
        Reacs.elmt_s109 = elmt_default.elmt_s109;
        Reacs.elmt_s36 = elmt_default.elmt_s36;
        Reacs.elmt_s33 = elmt_default.elmt_s33;
        Reacs.elmt_cypGene_PXRprotein = Params.elmt_cypGene_PXRprotein;
        Reacs.elmt_s32 = elmt_default.elmt_s32;
        Reacs.elmt_Alb_CortOUT = elmt_blood.elmt_Alb_CortOUT;
        Reacs.elmt_default = elmt_default.elmt_default;
        Reacs.elmt_s173 = elmt_default.elmt_s173;
        Reacs.elmt_s172 = elmt_default.elmt_s172;
        Reacs.elmt_CYPgene_PXRprot_Ligand2 = elmt_default.elmt_CYPgene_PXRprot_Ligand2;
        Reacs.elmt_s39 = elmt_default.elmt_s39;
        Reacs.elmt_CortAdded = elmt_blood.elmt_CortAdded;
        Reacs.elmt_PXRprot_Ligand2 = elmt_default.elmt_PXRprot_Ligand2;
        Reacs.elmt_s178 = elmt_default.elmt_s178;
        Reacs.elmt_s40 = elmt_default.elmt_s40;
        Reacs.elmt_s84 = elmt_default.elmt_s84;
        elmt_blood.elmt_cortisolTransport = Reacs.elmt_cortisolTransport;
        elmt_blood.elmt_product124 = Reacs.elmt_product124;
        elmt_blood.elmt_reactant121 = Reacs.elmt_reactant121;
        elmt_blood.elmt_reactant120 = Reacs.elmt_reactant120;
        elmt_blood.elmt_cort_distribution = Reacs.elmt_cort_distribution;
        elmt_blood.elmt_product122 = Reacs.elmt_product122;
        elmt_blood.elmt_Cortisol_CBG = Reacs.elmt_Cortisol_CBG;
        elmt_blood.elmt_reactant118 = Reacs.elmt_reactant118;
        elmt_blood.elmt_reactant117 = Reacs.elmt_reactant117;
        elmt_blood.elmt_Cort_Alb = Reacs.elmt_Cort_Alb;
        elmt_blood.elmt_product119 = Reacs.elmt_product119;
        elmt_blood.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_default.elmt_product74 = Reacs.elmt_product74;
        elmt_default.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_default.elmt_product72 = Reacs.elmt_product72;
        elmt_default.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_default.elmt_product77 = Reacs.elmt_product77;
        elmt_default.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_default.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_default.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_default.elmt_reactant110 = Reacs.elmt_reactant110;
        elmt_default.elmt_product69 = Reacs.elmt_product69;
        elmt_default.elmt_reactant111 = Reacs.elmt_reactant111;
        elmt_default.elmt_product83 = Reacs.elmt_product83;
        elmt_default.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_default.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_default.elmt_product89 = Reacs.elmt_product89;
        elmt_default.elmt_CYPmRNA_PXR_L2_binding = Reacs.elmt_CYPmRNA_PXR_L2_binding;
        elmt_default.elmt_product86 = Reacs.elmt_product86;
        elmt_default.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_default.elmt_CYPmRNA_synt_PXR_L2 = Reacs.elmt_CYPmRNA_synt_PXR_L2;
        elmt_default.elmt_product80 = Reacs.elmt_product80;
        elmt_default.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_default.elmt_product102 = Reacs.elmt_product102;
        elmt_default.elmt_product104 = Reacs.elmt_product104;
        elmt_default.elmt_product109 = Reacs.elmt_product109;
        elmt_default.elmt_product107 = Reacs.elmt_product107;
        elmt_default.elmt_product99 = Reacs.elmt_product99;
        elmt_default.elmt_product97 = Reacs.elmt_product97;
        elmt_default.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_default.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_default.elmt_product91 = Reacs.elmt_product91;
        elmt_default.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_default.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_default.elmt_product9 = Reacs.elmt_product9;
        elmt_default.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_default.elmt_product21 = Reacs.elmt_product21;
        elmt_default.elmt_re40 = Reacs.elmt_re40;
        elmt_default.elmt_product1 = Reacs.elmt_product1;
        elmt_default.elmt_re41 = Reacs.elmt_re41;
        elmt_default.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_default.elmt_re42 = Reacs.elmt_re42;
        elmt_default.elmt_re43 = Reacs.elmt_re43;
        elmt_default.elmt_re44 = Reacs.elmt_re44;
        elmt_default.elmt_product5 = Reacs.elmt_product5;
        elmt_default.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_default.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_default.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_default.elmt_reactant106 = Reacs.elmt_reactant106;
        elmt_default.elmt_reactant105 = Reacs.elmt_reactant105;
        elmt_default.elmt_product13 = Reacs.elmt_product13;
        elmt_default.elmt_reactant101 = Reacs.elmt_reactant101;
        elmt_default.elmt_reactant100 = Reacs.elmt_reactant100;
        elmt_default.elmt_product17 = Reacs.elmt_product17;
        elmt_default.elmt_product30 = Reacs.elmt_product30;
        elmt_default.elmt_re37 = Reacs.elmt_re37;
        elmt_default.elmt_reactant84 = Reacs.elmt_reactant84;
        elmt_default.elmt_re38 = Reacs.elmt_re38;
        elmt_default.elmt_re39 = Reacs.elmt_re39;
        elmt_default.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt_default.elmt_product32 = Reacs.elmt_product32;
        elmt_default.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt_default.elmt_re30 = Reacs.elmt_re30;
        elmt_default.elmt_re31 = Reacs.elmt_re31;
        elmt_default.elmt_re32 = Reacs.elmt_re32;
        elmt_default.elmt_re33 = Reacs.elmt_re33;
        elmt_default.elmt_reactant87 = Reacs.elmt_reactant87;
        elmt_default.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt_default.elmt_re34 = Reacs.elmt_re34;
        elmt_default.elmt_re35 = Reacs.elmt_re35;
        elmt_default.elmt_re36 = Reacs.elmt_re36;
        elmt_default.elmt_cortisolTransport = Reacs.elmt_cortisolTransport;
        elmt_default.elmt_product25 = Reacs.elmt_product25;
        elmt_default.elmt_re26 = Reacs.elmt_re26;
        elmt_default.elmt_re27 = Reacs.elmt_re27;
        elmt_default.elmt_reactant95 = Reacs.elmt_reactant95;
        elmt_default.elmt_re28 = Reacs.elmt_re28;
        elmt_default.elmt_reactant96 = Reacs.elmt_reactant96;
        elmt_default.elmt_re29 = Reacs.elmt_re29;
        elmt_default.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_default.elmt_product44 = Reacs.elmt_product44;
        elmt_default.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_default.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_default.elmt_re3 = Reacs.elmt_re3;
        elmt_default.elmt_re2 = Reacs.elmt_re2;
        elmt_default.elmt_re20 = Reacs.elmt_re20;
        elmt_default.elmt_re1 = Reacs.elmt_re1;
        elmt_default.elmt_re21 = Reacs.elmt_re21;
        elmt_default.elmt_re22 = Reacs.elmt_re22;
        elmt_default.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_default.elmt_re23 = Reacs.elmt_re23;
        elmt_default.elmt_re24 = Reacs.elmt_re24;
        elmt_default.elmt_re25 = Reacs.elmt_re25;
        elmt_default.elmt_re9 = Reacs.elmt_re9;
        elmt_default.elmt_re8 = Reacs.elmt_re8;
        elmt_default.elmt_re7 = Reacs.elmt_re7;
        elmt_default.elmt_re6 = Reacs.elmt_re6;
        elmt_default.elmt_re5 = Reacs.elmt_re5;
        elmt_default.elmt_re4 = Reacs.elmt_re4;
        elmt_default.elmt_product38 = Reacs.elmt_product38;
        elmt_default.elmt_product36 = Reacs.elmt_product36;
        elmt_default.elmt_L2_PXR_binding = Reacs.elmt_L2_PXR_binding;
        elmt_default.elmt_re15 = Reacs.elmt_re15;
        elmt_default.elmt_re16 = Reacs.elmt_re16;
        elmt_default.elmt_product51 = Reacs.elmt_product51;
        elmt_default.elmt_re17 = Reacs.elmt_re17;
        elmt_default.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_default.elmt_re18 = Reacs.elmt_re18;
        elmt_default.elmt_product56 = Reacs.elmt_product56;
        elmt_default.elmt_re19 = Reacs.elmt_re19;
        elmt_default.elmt_product54 = Reacs.elmt_product54;
        elmt_default.elmt_re10 = Reacs.elmt_re10;
        elmt_default.elmt_re11 = Reacs.elmt_re11;
        elmt_default.elmt_re12 = Reacs.elmt_re12;
        elmt_default.elmt_re13 = Reacs.elmt_re13;
        elmt_default.elmt_re14 = Reacs.elmt_re14;
        elmt_default.elmt_product112 = Reacs.elmt_product112;
        elmt_default.elmt_product114 = Reacs.elmt_product114;
        elmt_default.elmt_product49 = Reacs.elmt_product49;
        elmt_default.elmt_L2_PXR_deg = Reacs.elmt_L2_PXR_deg;
        elmt_default.elmt_product46 = Reacs.elmt_product46;
        elmt_default.elmt_product116 = Reacs.elmt_product116;
        elmt_default.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_default.elmt_product63 = Reacs.elmt_product63;
        elmt_default.elmt_reactant73 = Reacs.elmt_reactant73;
        elmt_default.elmt_product61 = Reacs.elmt_product61;
        elmt_default.elmt_product67 = Reacs.elmt_product67;
        elmt_default.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_default.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_default.elmt_reactant71 = Reacs.elmt_reactant71;
        elmt_default.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_default.elmt_reactant79 = Reacs.elmt_reactant79;
        elmt_default.elmt_product59 = Reacs.elmt_product59;

end MODEL1506290000;
