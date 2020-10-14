within BIOMD640;
model MODEL1702270000 "DallePezze2016 - Activation of AMPK and mTOR by amino acids" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-05-07T15:00:48Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>piero.dallepezze@babraham.ac.uk</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Dalle Pezze</vCard:Family>
                    <vCard:Given>Piero</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>The Babraham Institute, Cambridge, UK</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cell elmt_Cell;

    equation
        Reacs.elmt_Akt_pS473_dephos_second = Params.elmt_Akt_pS473_dephos_second;
        Reacs.elmt_IRS_p_phos_by_p70_S6K_pT229_pT389 = Params.elmt_IRS_p_phos_by_p70_S6K_pT229_pT389;
        Reacs.elmt_Akt_pT308_dephos_first = Params.elmt_Akt_pT308_dephos_first;
        Reacs.elmt_PI3K_variant_phos_by_IR_beta_pY1146 = Params.elmt_PI3K_variant_phos_by_IR_beta_pY1146;
        Reacs.elmt_IRS_phos_by_IR_beta_pY1146 = Params.elmt_IRS_phos_by_IR_beta_pY1146;
        Reacs.elmt_TSC1_TSC2_pT1462_dephos = Params.elmt_TSC1_TSC2_pT1462_dephos;
        Reacs.elmt_mTORC2_S2481_phos_by_Amino_Acids = Params.elmt_mTORC2_S2481_phos_by_Amino_Acids;
        Reacs.elmt_PI3K_PDK1 = elmt_Cell.elmt_PI3K_PDK1;
        Reacs.elmt_Akt_S473_phos_by_mTORC2_pS2481_second = Params.elmt_Akt_S473_phos_by_mTORC2_pS2481_second;
        Reacs.elmt_TSC1_TSC2 = elmt_Cell.elmt_TSC1_TSC2;
        Reacs.elmt_TSC1_TSC2_S1387_phos_by_AMPK_pT172 = Params.elmt_TSC1_TSC2_S1387_phos_by_AMPK_pT172;
        Reacs.elmt_Akt_pS473_dephos_first = Params.elmt_Akt_pS473_dephos_first;
        Reacs.elmt_TSC1_TSC2_T1462_phos_by_Akt_pT308 = Params.elmt_TSC1_TSC2_T1462_phos_by_Akt_pT308;
        Reacs.elmt_PI3K_p_PDK1 = elmt_Cell.elmt_PI3K_p_PDK1;
        Reacs.elmt_p70_S6K = elmt_Cell.elmt_p70_S6K;
        Reacs.elmt_IRS_phos_by_p70_S6K_pT229_pT389 = Params.elmt_IRS_phos_by_p70_S6K_pT229_pT389;
        Reacs.elmt_Amino_Acids = elmt_Cell.elmt_Amino_Acids;
        Reacs.elmt_PRAS40_T246_phos_by_Akt_pT308_second = Params.elmt_PRAS40_T246_phos_by_Akt_pT308_second;
        Reacs.elmt_mTORC1_S2448_activation_by_Amino_Acids = Params.elmt_mTORC1_S2448_activation_by_Amino_Acids;
        Reacs.elmt_IRS_p = elmt_Cell.elmt_IRS_p;
        Reacs.elmt_Akt_pT308 = elmt_Cell.elmt_Akt_pT308;
        Reacs.elmt_p70_S6K_pT389_dephos_second = Params.elmt_p70_S6K_pT389_dephos_second;
        Reacs.elmt_TSC1_TSC2_pS1387_dephos = Params.elmt_TSC1_TSC2_pS1387_dephos;
        Reacs.elmt_PRAS40_pT246 = elmt_Cell.elmt_PRAS40_pT246;
        Reacs.elmt_AMPK_T172_phos = Params.elmt_AMPK_T172_phos;
        Reacs.elmt_PRAS40_pT246_pS183 = elmt_Cell.elmt_PRAS40_pT246_pS183;
        Reacs.elmt_IRS = elmt_Cell.elmt_IRS;
        Reacs.elmt_PRAS40_S183_phos_by_mTORC1_pS2448_second = Params.elmt_PRAS40_S183_phos_by_mTORC1_pS2448_second;
        Reacs.elmt_p70_S6K_T389_phos_by_mTORC1_pS2448_first = Params.elmt_p70_S6K_T389_phos_by_mTORC1_pS2448_first;
        Reacs.elmt_PI3K_variant = elmt_Cell.elmt_PI3K_variant;
        Reacs.elmt_PRAS40_pT246_dephos_first = Params.elmt_PRAS40_pT246_dephos_first;
        Reacs.elmt_mTORC1_pS2448 = elmt_Cell.elmt_mTORC1_pS2448;
        Reacs.elmt_p70_S6K_pT229 = elmt_Cell.elmt_p70_S6K_pT229;
        Reacs.elmt_p70_S6K_pT229_dephos_first = Params.elmt_p70_S6K_pT229_dephos_first;
        Reacs.elmt_PRAS40_pS183_dephos_first = Params.elmt_PRAS40_pS183_dephos_first;
        Reacs.elmt_p70_S6K_pT389 = elmt_Cell.elmt_p70_S6K_pT389;
        Reacs.elmt_IRS_pS636 = elmt_Cell.elmt_IRS_pS636;
        Reacs.elmt_PRAS40_pS183_dephos_second = Params.elmt_PRAS40_pS183_dephos_second;
        Reacs.elmt_AMPK_pT172_dephos = Params.elmt_AMPK_pT172_dephos;
        Reacs.elmt_p70_S6K_T229_phos_by_PI3K_p_PDK1_first = Params.elmt_p70_S6K_T229_phos_by_PI3K_p_PDK1_first;
        Reacs.elmt_Akt_S473_phos_by_mTORC2_pS2481_first = Params.elmt_Akt_S473_phos_by_mTORC2_pS2481_first;
        Reacs.elmt_Akt_pT308_dephos_second = Params.elmt_Akt_pT308_dephos_second;
        Reacs.elmt_Akt = elmt_Cell.elmt_Akt;
        Reacs.elmt_Cell = elmt_Cell.elmt_Cell;
        Reacs.elmt_mTORC1_pS2448_dephos_by_TSC1_TSC2 = Params.elmt_mTORC1_pS2448_dephos_by_TSC1_TSC2;
        Reacs.elmt_PRAS40_S183_phos_by_mTORC1_pS2448_first = Params.elmt_PRAS40_S183_phos_by_mTORC1_pS2448_first;
        Reacs.elmt_p70_S6K_T389_phos_by_mTORC1_pS2448_second = Params.elmt_p70_S6K_T389_phos_by_mTORC1_pS2448_second;
        Reacs.elmt_IR_beta_pY1146_dephos = Params.elmt_IR_beta_pY1146_dephos;
        Reacs.elmt_Insulin = elmt_Cell.elmt_Insulin;
        Reacs.elmt_p70_S6K_pT229_pT389 = elmt_Cell.elmt_p70_S6K_pT229_pT389;
        Reacs.elmt_p70_S6K_pT389_dephos_first = Params.elmt_p70_S6K_pT389_dephos_first;
        Reacs.elmt_PRAS40_T246_phos_by_Akt_pT308_first = Params.elmt_PRAS40_T246_phos_by_Akt_pT308_first;
        Reacs.elmt_Akt_pS473 = elmt_Cell.elmt_Akt_pS473;
        Reacs.elmt_IR_beta_pY1146 = elmt_Cell.elmt_IR_beta_pY1146;
        Reacs.elmt_PI3K_PDK1_phos_by_IRS_p = Params.elmt_PI3K_PDK1_phos_by_IRS_p;
        Reacs.elmt_PRAS40_pT246_dephos_second = Params.elmt_PRAS40_pT246_dephos_second;
        Reacs.elmt_IR_beta_phos_by_Insulin = Params.elmt_IR_beta_phos_by_Insulin;
        Reacs.elmt_mTORC2_S2481_phos_by_PI3K_variant_p = Params.elmt_mTORC2_S2481_phos_by_PI3K_variant_p;
        Reacs.elmt_mTORC2_pS2481_dephos = Params.elmt_mTORC2_pS2481_dephos;
        Reacs.elmt_IR_beta_ready = Params.elmt_IR_beta_ready;
        Reacs.elmt_IRS_phos_by_Amino_Acids = Params.elmt_IRS_phos_by_Amino_Acids;
        Reacs.elmt_mTORC2 = elmt_Cell.elmt_mTORC2;
        Reacs.elmt_mTORC1 = elmt_Cell.elmt_mTORC1;
        Reacs.elmt_IRS_pS636_turnover = Params.elmt_IRS_pS636_turnover;
        Reacs.elmt_AMPK_pT172 = elmt_Cell.elmt_AMPK_pT172;
        Reacs.elmt_PRAS40_pS183 = elmt_Cell.elmt_PRAS40_pS183;
        Reacs.elmt_TSC1_TSC2_pS1387 = elmt_Cell.elmt_TSC1_TSC2_pS1387;
        Reacs.elmt_mTORC2_pS2481 = elmt_Cell.elmt_mTORC2_pS2481;
        Reacs.elmt_Akt_T308_phos_by_PI3K_p_PDK1_second = Params.elmt_Akt_T308_phos_by_PI3K_p_PDK1_second;
        Reacs.elmt_AMPK = elmt_Cell.elmt_AMPK;
        Reacs.elmt_PI3K_variant_p_dephos = Params.elmt_PI3K_variant_p_dephos;
        Reacs.elmt_TSC1_TSC2_pT1462 = elmt_Cell.elmt_TSC1_TSC2_pT1462;
        Reacs.elmt_Akt_pT308_pS473 = elmt_Cell.elmt_Akt_pT308_pS473;
        Reacs.elmt_p70_S6K_T229_phos_by_PI3K_p_PDK1_second = Params.elmt_p70_S6K_T229_phos_by_PI3K_p_PDK1_second;
        Reacs.elmt_IR_beta = elmt_Cell.elmt_IR_beta;
        Reacs.elmt_p70_S6K_pT229_dephos_second = Params.elmt_p70_S6K_pT229_dephos_second;
        Reacs.elmt_PI3K_variant_p = elmt_Cell.elmt_PI3K_variant_p;
        Reacs.elmt_IR_beta_refractory = elmt_Cell.elmt_IR_beta_refractory;
        Reacs.elmt_PRAS40 = elmt_Cell.elmt_PRAS40;
        Reacs.elmt_PI3K_p_PDK1_dephos = Params.elmt_PI3K_p_PDK1_dephos;
        Reacs.elmt_Akt_T308_phos_by_PI3K_p_PDK1_first = Params.elmt_Akt_T308_phos_by_PI3K_p_PDK1_first;
        Reacs.elmt_AMPK_T172_phos_by_Amino_Acids = Params.elmt_AMPK_T172_phos_by_Amino_Acids;
        elmt_Cell.elmt_product73 = Reacs.elmt_product73;
        elmt_Cell.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_Cell.elmt_product71 = Reacs.elmt_product71;
        elmt_Cell.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_Cell.elmt_product77 = Reacs.elmt_product77;
        elmt_Cell.elmt_product75 = Reacs.elmt_product75;
        elmt_Cell.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_Cell.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_Cell.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_Cell.elmt_product69 = Reacs.elmt_product69;
        elmt_Cell.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_Cell.elmt_product85 = Reacs.elmt_product85;
        elmt_Cell.elmt_product83 = Reacs.elmt_product83;
        elmt_Cell.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_Cell.elmt_product89 = Reacs.elmt_product89;
        elmt_Cell.elmt_product87 = Reacs.elmt_product87;
        elmt_Cell.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_Cell.elmt_product81 = Reacs.elmt_product81;
        elmt_Cell.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_Cell.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_Cell.elmt_product79 = Reacs.elmt_product79;
        elmt_Cell.elmt_product95 = Reacs.elmt_product95;
        elmt_Cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_Cell.elmt_product93 = Reacs.elmt_product93;
        elmt_Cell.elmt_product11 = Reacs.elmt_product11;
        elmt_Cell.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_Cell.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_Cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_Cell.elmt_product91 = Reacs.elmt_product91;
        elmt_Cell.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_Cell.elmt_reaction_47 = Reacs.elmt_reaction_47;
        elmt_Cell.elmt_reaction_48 = Reacs.elmt_reaction_48;
        elmt_Cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_Cell.elmt_reaction_41 = Reacs.elmt_reaction_41;
        elmt_Cell.elmt_reaction_42 = Reacs.elmt_reaction_42;
        elmt_Cell.elmt_reaction_40 = Reacs.elmt_reaction_40;
        elmt_Cell.elmt_reaction_45 = Reacs.elmt_reaction_45;
        elmt_Cell.elmt_reaction_46 = Reacs.elmt_reaction_46;
        elmt_Cell.elmt_reaction_43 = Reacs.elmt_reaction_43;
        elmt_Cell.elmt_reaction_44 = Reacs.elmt_reaction_44;
        elmt_Cell.elmt_product9 = Reacs.elmt_product9;
        elmt_Cell.elmt_product7 = Reacs.elmt_product7;
        elmt_Cell.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_Cell.elmt_product23 = Reacs.elmt_product23;
        elmt_Cell.elmt_product21 = Reacs.elmt_product21;
        elmt_Cell.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_Cell.elmt_product1 = Reacs.elmt_product1;
        elmt_Cell.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_Cell.elmt_product5 = Reacs.elmt_product5;
        elmt_Cell.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_Cell.elmt_product3 = Reacs.elmt_product3;
        elmt_Cell.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_Cell.elmt_reaction_38 = Reacs.elmt_reaction_38;
        elmt_Cell.elmt_reaction_39 = Reacs.elmt_reaction_39;
        elmt_Cell.elmt_reaction_36 = Reacs.elmt_reaction_36;
        elmt_Cell.elmt_reaction_37 = Reacs.elmt_reaction_37;
        elmt_Cell.elmt_reaction_30 = Reacs.elmt_reaction_30;
        elmt_Cell.elmt_reaction_31 = Reacs.elmt_reaction_31;
        elmt_Cell.elmt_product15 = Reacs.elmt_product15;
        elmt_Cell.elmt_product13 = Reacs.elmt_product13;
        elmt_Cell.elmt_reaction_34 = Reacs.elmt_reaction_34;
        elmt_Cell.elmt_reaction_35 = Reacs.elmt_reaction_35;
        elmt_Cell.elmt_product19 = Reacs.elmt_product19;
        elmt_Cell.elmt_reaction_32 = Reacs.elmt_reaction_32;
        elmt_Cell.elmt_reaction_33 = Reacs.elmt_reaction_33;
        elmt_Cell.elmt_product17 = Reacs.elmt_product17;
        elmt_Cell.elmt_reactant84 = Reacs.elmt_reactant84;
        elmt_Cell.elmt_reactant86 = Reacs.elmt_reactant86;
        elmt_Cell.elmt_product33 = Reacs.elmt_product33;
        elmt_Cell.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_Cell.elmt_product31 = Reacs.elmt_product31;
        elmt_Cell.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt_Cell.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt_Cell.elmt_reaction_27 = Reacs.elmt_reaction_27;
        elmt_Cell.elmt_reaction_28 = Reacs.elmt_reaction_28;
        elmt_Cell.elmt_reaction_25 = Reacs.elmt_reaction_25;
        elmt_Cell.elmt_reaction_26 = Reacs.elmt_reaction_26;
        elmt_Cell.elmt_reaction_29 = Reacs.elmt_reaction_29;
        elmt_Cell.elmt_product27 = Reacs.elmt_product27;
        elmt_Cell.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_Cell.elmt_product25 = Reacs.elmt_product25;
        elmt_Cell.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_Cell.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_Cell.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_Cell.elmt_product29 = Reacs.elmt_product29;
        elmt_Cell.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_Cell.elmt_reactant94 = Reacs.elmt_reactant94;
        elmt_Cell.elmt_product41 = Reacs.elmt_product41;
        elmt_Cell.elmt_product45 = Reacs.elmt_product45;
        elmt_Cell.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_Cell.elmt_reactant92 = Reacs.elmt_reactant92;
        elmt_Cell.elmt_product43 = Reacs.elmt_product43;
        elmt_Cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_Cell.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_Cell.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_Cell.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_Cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_Cell.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_Cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_Cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_Cell.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_Cell.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_Cell.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_Cell.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_Cell.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_Cell.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_Cell.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_Cell.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_Cell.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_Cell.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_Cell.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_Cell.elmt_product37 = Reacs.elmt_product37;
        elmt_Cell.elmt_product35 = Reacs.elmt_product35;
        elmt_Cell.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_Cell.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_Cell.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_Cell.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_Cell.elmt_product39 = Reacs.elmt_product39;
        elmt_Cell.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_Cell.elmt_product51 = Reacs.elmt_product51;
        elmt_Cell.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_Cell.elmt_product55 = Reacs.elmt_product55;
        elmt_Cell.elmt_product53 = Reacs.elmt_product53;
        elmt_Cell.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_Cell.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_Cell.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_Cell.elmt_product49 = Reacs.elmt_product49;
        elmt_Cell.elmt_product47 = Reacs.elmt_product47;
        elmt_Cell.elmt_product63 = Reacs.elmt_product63;
        elmt_Cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Cell.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_Cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cell.elmt_product61 = Reacs.elmt_product61;
        elmt_Cell.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_Cell.elmt_product67 = Reacs.elmt_product67;
        elmt_Cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Cell.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_Cell.elmt_product65 = Reacs.elmt_product65;
        elmt_Cell.elmt_reactant76 = Reacs.elmt_reactant76;
        elmt_Cell.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_Cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Cell.elmt_product59 = Reacs.elmt_product59;
        elmt_Cell.elmt_product57 = Reacs.elmt_product57;

end MODEL1702270000;
