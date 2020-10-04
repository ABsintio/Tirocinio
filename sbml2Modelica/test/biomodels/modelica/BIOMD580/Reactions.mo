within BIOMD580;
class Reactions

    input Real elmt_Akt_T308;
    input Real elmt_Akt_pT308_dephosphorylation;
    input Real elmt_Akt_pS473_dephosphorylation;
    input Real elmt_PRAS40_pS183_dephosphorylation;
    input Real elmt_mTORC2_S2481_phosphorylation_by_PI3K_variant_p;
    input Real elmt_Amino_Acids;
    input Real elmt_mTORC1_S2448_activation_by_Amino_Acids;
    input Real elmt_Akt_T308_phosphorylation_by_IRS1_p;
    input Real elmt_Akt_pT308;
    input Real elmt_PRAS40_pT246;
    input Real elmt_PRAS40_T246;
    input Real elmt_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172;
    input Real elmt_IRS1_phosphorylation_by_IR_beta_pY1146;
    input Real elmt_PRAS40_pT246_dephosphorylation;
    input Real elmt_IRS1_p;
    input Real elmt_PI3K_variant;
    input Real elmt_p70S6K_pT389;
    input Real elmt_mTORC1_pS2448;
    input Real elmt_IRS1_pS636;
    input Real elmt_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387;
    input Real elmt_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p;
    input Real elmt_IR_beta_pY1146_dephosphorylation;
    input Real elmt_PRAS40_S183_phosphorylation_by_mTORC1_pS2448;
    input Real elmt_mTORC2_pS2481_dephosphorylation;
    input Real elmt_Cell;
    input Real elmt_p70S6K_pT389_dephosphorylation;
    input Real elmt_Insulin;
    input Real elmt_Akt_S473;
    input Real elmt_Akt_pS473;
    input Real elmt_PI3K_variant_phosphorylation_by_IR_beta_pY1146;
    input Real elmt_IRS1_pS636_dephosphorylation;
    input Real elmt_IR_beta_pY1146;
    input Real elmt_AMPK_pT172_dephosphorylation;
    input Real elmt_IR_beta_ready;
    input Real elmt_mTORC2;
    input Real elmt_p70S6K;
    input Real elmt_mTORC1;
    input Real elmt_PRAS40_T246_phosphorylation_by_Akt_pT308;
    input Real elmt_AMPK_pT172;
    input Real elmt_PRAS40_pS183;
    input Real elmt_TSC1_TSC2_pS1387;
    input Real elmt_mTORC2_pS2481;
    input Real elmt_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308;
    input Real elmt_AMPK;
    input Real elmt_p70S6K_T389_phosphorylation_by_mTORC1_pS2448;
    input Real elmt_TSC1_TSC2_pT1462;
    input Real elmt_IRS1;
    input Real elmt_IR_beta;
    input Real elmt_PI3K_variant_p;
    input Real elmt_PRAS40_S183;
    input Real elmt_IR_beta_refractory;
    input Real elmt_IRS1_p_phosphorylation_by_p70S6K_pT389;
    input Real elmt_PI3K_variant_p_dephosphorylation;
    input Real elmt_IR_beta_phosphorylation_by_Insulin;
    input Real elmt_AMPK_T172_phosphorylation;

    Real elmt_reaction_25(unit = "") "PI3K_variant_p_dephosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI64\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:59:33Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_reaction_26(unit = "") "PI3K_variant_phosphorylation_by_IR_beta_pY1146";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI65\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:59:46Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant50 "";
    Real elmt_product51 "";
    Real elmt_reaction_20(unit = "") "PRAS40_pT246_dephosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI59\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:58:53Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_reaction_23(unit = "") "TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI62\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:59:18Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product45 "";
    Real elmt_reactant44 "";
    Real elmt_reaction_24(unit = "") "TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI63\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:59:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product47 "";
    Real elmt_reactant46 "";
    Real elmt_reaction_21(unit = "") "PRAS40_S183_phosphorylation_by_mTORC1_pS2448";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI60\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:59:02Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_reaction_22(unit = "") "PRAS40_T246_phosphorylation_by_Akt_pT308";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI61\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:59:11Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_reaction_3(unit = "") "IR_beta_ready";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI42\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:56:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_reaction_4(unit = "") "IRS1_phosphorylation_by_IR_beta_pY1146";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI43\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:56:18Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_1(unit = "") "IR_beta_phosphorylation_by_Insulin";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI40\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:55:17Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_reaction_2(unit = "") "IR_beta_pY1146_dephosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI41\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:55:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_reaction_16(unit = "") "mTORC2_S2481_phosphorylation_by_PI3K_variant_p";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI55\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:58:18Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant30 "";
    Real elmt_product31 "";
    Real elmt_reaction_17(unit = "") "p70S6K_pT389_dephosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI56\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:58:28Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_reaction_9(unit = "") "Akt_pT308_dephosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI48\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:57:17Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_reaction_14(unit = "") "mTORC1_S2448_activation_by_Amino_Acids";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI53\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:58:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_reaction_15(unit = "") "mTORC2_pS2481_dephosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI54\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:58:07Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_reaction_7(unit = "") "AMPK_T172_phosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI46\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:56:55Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_8(unit = "") "AMPK_pT172_dephosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI47\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:57:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reaction_5(unit = "") "IRS1_p_phosphorylation_by_p70S6K_pT389";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI44\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:56:36Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reaction_18(unit = "") "p70S6K_T389_phosphorylation_by_mTORC1_pS2448";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI57\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:58:37Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product35 "";
    Real elmt_reactant34 "";
    Real elmt_reaction_6(unit = "") "IRS1_pS636_dephosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI45\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:56:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_reaction_19(unit = "") "PRAS40_pS183_dephosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI58\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:58:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant36 "";
    Real elmt_product37 "";
    Real elmt_reaction_12(unit = "") "Akt_T308_phosphorylation_by_IRS1_p";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI51\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:57:42Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_reaction_13(unit = "") "mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI52\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:57:51Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_reaction_10(unit = "") "Akt_pS473_dephosphorylation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI49\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:57:25Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_reaction_11(unit = "") "Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI50\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-04T15:57:35Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant20 "";
    Real elmt_product21 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product41 = 1.0;
        elmt_product45 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_reaction_25 = (elmt_Cell * elmt_PI3K_variant_p_dephosphorylation * elmt_PI3K_variant_p);
        elmt_reaction_26 = (elmt_Cell * ((elmt_PI3K_variant_phosphorylation_by_IR_beta_pY1146 * elmt_PI3K_variant * elmt_IR_beta_pY1146)));
        elmt_reaction_20 = (elmt_Cell * elmt_PRAS40_pT246_dephosphorylation * elmt_PRAS40_pT246);
        elmt_reaction_23 = (elmt_Cell * ((elmt_TSC1_TSC2_S1387_phosphorylation_by_AMPK_pT172 * elmt_TSC1_TSC2_pT1462 * elmt_AMPK_pT172)));
        elmt_reaction_24 = (elmt_Cell * ((elmt_TSC1_TSC2_T1462_phosphorylation_by_Akt_pT308 * elmt_TSC1_TSC2_pS1387 * elmt_Akt_pT308)));
        elmt_reaction_21 = (elmt_Cell * ((elmt_PRAS40_S183_phosphorylation_by_mTORC1_pS2448 * elmt_PRAS40_S183 * elmt_mTORC1_pS2448)));
        elmt_reaction_22 = (elmt_Cell * ((elmt_PRAS40_T246_phosphorylation_by_Akt_pT308 * elmt_PRAS40_T246 * elmt_Akt_pT308)));
        elmt_reaction_3 = (elmt_Cell * elmt_IR_beta_ready * elmt_IR_beta_refractory);
        elmt_reaction_4 = (elmt_Cell * ((elmt_IRS1_phosphorylation_by_IR_beta_pY1146 * elmt_IRS1 * elmt_IR_beta_pY1146)));
        elmt_reaction_1 = (elmt_Cell * ((elmt_IR_beta_phosphorylation_by_Insulin * elmt_IR_beta * elmt_Insulin)));
        elmt_reaction_2 = (elmt_Cell * elmt_IR_beta_pY1146_dephosphorylation * elmt_IR_beta_pY1146);
        elmt_reaction_16 = (elmt_Cell * ((elmt_mTORC2_S2481_phosphorylation_by_PI3K_variant_p * elmt_mTORC2 * elmt_PI3K_variant_p)));
        elmt_reaction_17 = (elmt_Cell * elmt_p70S6K_pT389_dephosphorylation * elmt_p70S6K_pT389);
        elmt_reaction_9 = (elmt_Cell * elmt_Akt_pT308_dephosphorylation * elmt_Akt_pT308);
        elmt_reaction_14 = (elmt_Cell * ((elmt_mTORC1_S2448_activation_by_Amino_Acids * elmt_mTORC1 * elmt_Amino_Acids)));
        elmt_reaction_15 = (elmt_Cell * elmt_mTORC2_pS2481_dephosphorylation * elmt_mTORC2_pS2481);
        elmt_reaction_7 = (elmt_Cell * ((elmt_AMPK_T172_phosphorylation * elmt_AMPK * elmt_IRS1_p)));
        elmt_reaction_8 = (elmt_Cell * elmt_AMPK_pT172_dephosphorylation * elmt_AMPK_pT172);
        elmt_reaction_5 = (elmt_Cell * ((elmt_IRS1_p_phosphorylation_by_p70S6K_pT389 * elmt_IRS1_p * elmt_p70S6K_pT389)));
        elmt_reaction_18 = (elmt_Cell * ((elmt_p70S6K_T389_phosphorylation_by_mTORC1_pS2448 * elmt_p70S6K * elmt_mTORC1_pS2448)));
        elmt_reaction_6 = (elmt_Cell * elmt_IRS1_pS636_dephosphorylation * elmt_IRS1_pS636);
        elmt_reaction_19 = (elmt_Cell * elmt_PRAS40_pS183_dephosphorylation * elmt_PRAS40_pS183);
        elmt_reaction_12 = (elmt_Cell * ((elmt_Akt_T308_phosphorylation_by_IRS1_p * elmt_Akt_T308 * elmt_IRS1_p)));
        elmt_reaction_13 = (elmt_Cell * ((elmt_mTORC1_pS2448_dephosphorylation_by_TSC1_TSC2_pS1387 * elmt_mTORC1_pS2448 * elmt_TSC1_TSC2_pS1387)));
        elmt_reaction_10 = (elmt_Cell * elmt_Akt_pS473_dephosphorylation * elmt_Akt_pS473);
        elmt_reaction_11 = (elmt_Cell * ((elmt_Akt_S473_phosphorylation_by_mTORC2_pS2481_n_IRS1_p * elmt_Akt_S473 * elmt_mTORC2_pS2481 * elmt_IRS1_p)));
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product41) = 0;
        der(elmt_product45) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
