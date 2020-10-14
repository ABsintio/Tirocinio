within BIOMD580;
model MODEL1506230002 "Sonntag2012 - mTOR model - IRS dependent regulation of AMPK by insulin" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-01-04T15:03:08Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>piero.dalle-pezze@ncl.ac.uk</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Dalle Pezze</vCard:Family>
                    <vCard:Given>Piero</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Newcastle University</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cell elmt_Cell;

    equation
        Reacs.elmt_Akt_T308 = elmt_Cell.elmt_Akt_T308;
        Reacs.elmt_Akt_pT308_dephosphorylation = Params.elmt_Akt_pT308_dephosphorylation;
        Reacs.elmt_Akt_pS473_dephosphorylation = Params.elmt_Akt_pS473_dephosphorylation;
        Reacs.elmt_PRAS40_pS183_dephosphorylation = Params.elmt_PRAS40_pS183_dephosphorylation;
        Reacs.elmt_mTORC2_S2481_phosphorylation_by_PI3K_variant_p = Params.elmt_mTORC2_S2481_phosphorylation_by_PI3K_variant_p;
        Reacs.elmt_Amino_Acids = elmt_Cell.elmt_Amino_Acids;
        Reacs.elmt_mTORC1_S2448_activation_by_Amino_Acids = Params.elmt_mTORC1_S2448_activation_by_Amino_Acids;
        Reacs.elmt_Akt_T308_phosphorylation_by_IRS1_p = Params.elmt_Akt_T308_phosphorylation_by_IRS1_p;
        Reacs.elmt_Akt_pT308 = elmt_Cell.elmt_Akt_pT308;
        Reacs.elmt_PRAS40_pT246 = elmt_Cell.elmt_PRAS40_pT246;
        Reacs.elmt_PRAS40_T246 = elmt_Cell.elmt_PRAS40_T246;
        Reacs.elmt_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172 = Params.elmt_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172;
        Reacs.elmt_IRS1_phosphorylation_by_IR_beta_pY1146 = Params.elmt_IRS1_phosphorylation_by_IR_beta_pY1146;
        Reacs.elmt_PRAS40_pT246_dephosphorylation = Params.elmt_PRAS40_pT246_dephosphorylation;
        Reacs.elmt_IRS1_p = elmt_Cell.elmt_IRS1_p;
        Reacs.elmt_PI3K_variant = elmt_Cell.elmt_PI3K_variant;
        Reacs.elmt_p70S6K_pT389 = elmt_Cell.elmt_p70S6K_pT389;
        Reacs.elmt_mTORC1_pS2448 = elmt_Cell.elmt_mTORC1_pS2448;
        Reacs.elmt_IRS1_pS636 = elmt_Cell.elmt_IRS1_pS636;
        Reacs.elmt_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387 = Params.elmt_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387;
        Reacs.elmt_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p = Params.elmt_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p;
        Reacs.elmt_IR_beta_pY1146_dephosphorylation = Params.elmt_IR_beta_pY1146_dephosphorylation;
        Reacs.elmt_PRAS40_S183_phosphorylation_by_mTORC1_pS2448 = Params.elmt_PRAS40_S183_phosphorylation_by_mTORC1_pS2448;
        Reacs.elmt_mTORC2_pS2481_dephosphorylation = Params.elmt_mTORC2_pS2481_dephosphorylation;
        Reacs.elmt_Cell = elmt_Cell.elmt_Cell;
        Reacs.elmt_p70S6K_pT389_dephosphorylation = Params.elmt_p70S6K_pT389_dephosphorylation;
        Reacs.elmt_Insulin = elmt_Cell.elmt_Insulin;
        Reacs.elmt_Akt_S473 = elmt_Cell.elmt_Akt_S473;
        Reacs.elmt_Akt_pS473 = elmt_Cell.elmt_Akt_pS473;
        Reacs.elmt_PI3K_variant_phosphorylation_by_IR_beta_pY1146 = Params.elmt_PI3K_variant_phosphorylation_by_IR_beta_pY1146;
        Reacs.elmt_IRS1_pS636_dephosphorylation = Params.elmt_IRS1_pS636_dephosphorylation;
        Reacs.elmt_IR_beta_pY1146 = elmt_Cell.elmt_IR_beta_pY1146;
        Reacs.elmt_AMPK_pT172_dephosphorylation = Params.elmt_AMPK_pT172_dephosphorylation;
        Reacs.elmt_IR_beta_ready = Params.elmt_IR_beta_ready;
        Reacs.elmt_mTORC2 = elmt_Cell.elmt_mTORC2;
        Reacs.elmt_p70S6K = elmt_Cell.elmt_p70S6K;
        Reacs.elmt_mTORC1 = elmt_Cell.elmt_mTORC1;
        Reacs.elmt_PRAS40_T246_phosphorylation_by_Akt_pT308 = Params.elmt_PRAS40_T246_phosphorylation_by_Akt_pT308;
        Reacs.elmt_AMPK_pT172 = elmt_Cell.elmt_AMPK_pT172;
        Reacs.elmt_PRAS40_pS183 = elmt_Cell.elmt_PRAS40_pS183;
        Reacs.elmt_TSC1_TSC2_pS1387 = elmt_Cell.elmt_TSC1_TSC2_pS1387;
        Reacs.elmt_mTORC2_pS2481 = elmt_Cell.elmt_mTORC2_pS2481;
        Reacs.elmt_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308 = Params.elmt_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308;
        Reacs.elmt_AMPK = elmt_Cell.elmt_AMPK;
        Reacs.elmt_p70S6K_T389_phosphorylation_by_mTORC1_pS2448 = Params.elmt_p70S6K_T389_phosphorylation_by_mTORC1_pS2448;
        Reacs.elmt_TSC1_TSC2_pT1462 = elmt_Cell.elmt_TSC1_TSC2_pT1462;
        Reacs.elmt_IRS1 = elmt_Cell.elmt_IRS1;
        Reacs.elmt_IR_beta = elmt_Cell.elmt_IR_beta;
        Reacs.elmt_PI3K_variant_p = elmt_Cell.elmt_PI3K_variant_p;
        Reacs.elmt_PRAS40_S183 = elmt_Cell.elmt_PRAS40_S183;
        Reacs.elmt_IR_beta_refractory = elmt_Cell.elmt_IR_beta_refractory;
        Reacs.elmt_IRS1_p_phosphorylation_by_p70S6K_pT389 = Params.elmt_IRS1_p_phosphorylation_by_p70S6K_pT389;
        Reacs.elmt_PI3K_variant_p_dephosphorylation = Params.elmt_PI3K_variant_p_dephosphorylation;
        Reacs.elmt_IR_beta_phosphorylation_by_Insulin = Params.elmt_IR_beta_phosphorylation_by_Insulin;
        Reacs.elmt_AMPK_T172_phosphorylation = Params.elmt_AMPK_T172_phosphorylation;
        elmt_Cell.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_Cell.elmt_scale_PRAS40_pT246_obs = Params.elmt_scale_PRAS40_pT246_obs;
        elmt_Cell.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_Cell.elmt_product33 = Reacs.elmt_product33;
        elmt_Cell.elmt_product31 = Reacs.elmt_product31;
        elmt_Cell.elmt_scale_Akt_pT308_obs = Params.elmt_scale_Akt_pT308_obs;
        elmt_Cell.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_Cell.elmt_scale_PRAS40_pS183_obs = Params.elmt_scale_PRAS40_pS183_obs;
        elmt_Cell.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_Cell.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_Cell.elmt_reaction_25 = Reacs.elmt_reaction_25;
        elmt_Cell.elmt_scale_IRS1_pS636_obs = Params.elmt_scale_IRS1_pS636_obs;
        elmt_Cell.elmt_reaction_26 = Reacs.elmt_reaction_26;
        elmt_Cell.elmt_scale_Akt_pS473_obs = Params.elmt_scale_Akt_pS473_obs;
        elmt_Cell.elmt_product27 = Reacs.elmt_product27;
        elmt_Cell.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_Cell.elmt_scale_p70S6K_pT389_obs = Params.elmt_scale_p70S6K_pT389_obs;
        elmt_Cell.elmt_product25 = Reacs.elmt_product25;
        elmt_Cell.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_Cell.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_Cell.elmt_product29 = Reacs.elmt_product29;
        elmt_Cell.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_Cell.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_Cell.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_Cell.elmt_product41 = Reacs.elmt_product41;
        elmt_Cell.elmt_product45 = Reacs.elmt_product45;
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
        elmt_Cell.elmt_product51 = Reacs.elmt_product51;
        elmt_Cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_Cell.elmt_product11 = Reacs.elmt_product11;
        elmt_Cell.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_Cell.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_Cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_Cell.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_Cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_Cell.elmt_product49 = Reacs.elmt_product49;
        elmt_Cell.elmt_scale_mTOR_pS2448_obs = Params.elmt_scale_mTOR_pS2448_obs;
        elmt_Cell.elmt_product47 = Reacs.elmt_product47;
        elmt_Cell.elmt_scale_TSC1_TSC2_pS1387_obs = Params.elmt_scale_TSC1_TSC2_pS1387_obs;
        elmt_Cell.elmt_product9 = Reacs.elmt_product9;
        elmt_Cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Cell.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_Cell.elmt_product7 = Reacs.elmt_product7;
        elmt_Cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cell.elmt_product23 = Reacs.elmt_product23;
        elmt_Cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Cell.elmt_product21 = Reacs.elmt_product21;
        elmt_Cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Cell.elmt_product1 = Reacs.elmt_product1;
        elmt_Cell.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_Cell.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_Cell.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_Cell.elmt_product5 = Reacs.elmt_product5;
        elmt_Cell.elmt_scale_AMPK_pT172_obs = Params.elmt_scale_AMPK_pT172_obs;
        elmt_Cell.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_Cell.elmt_product3 = Reacs.elmt_product3;
        elmt_Cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Cell.elmt_product15 = Reacs.elmt_product15;
        elmt_Cell.elmt_scale_mTOR_pS2481_obs = Params.elmt_scale_mTOR_pS2481_obs;
        elmt_Cell.elmt_product13 = Reacs.elmt_product13;
        elmt_Cell.elmt_scale_IR_beta_pY1146_obs = Params.elmt_scale_IR_beta_pY1146_obs;
        elmt_Cell.elmt_product19 = Reacs.elmt_product19;
        elmt_Cell.elmt_product17 = Reacs.elmt_product17;

end MODEL1506230002;
