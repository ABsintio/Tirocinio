within BIOMD404;
class Class_elmt_cell

    input Real elmt_reactant40;
    input Real elmt_product72;
    input Real elmt_reactant41;
    input Real elmt_product78;
    input Real elmt_product75;
    input Real elmt_reactant47;
    input Real elmt_reactant49;
    input Real elmt_reactant43;
    input Real elmt_reactant44;
    input Real elmt_reactant46;
    input Real elmt_product69;
    input Real elmt_reactant50;
    input Real elmt_product84;
    input Real elmt_reactant52;
    input Real elmt_reactant53;
    input Real elmt_product87;
    input Real elmt_reactant58;
    input Real elmt_reactant59;
    input Real elmt_product81;
    input Real elmt_reactant55;
    input Real elmt_reactant56;
    input Real elmt_product102;
    input Real elmt_motor_r4;
    input Real elmt_phosphorylation_r10;
    input Real elmt_motor_r3;
    input Real elmt_motor_r2;
    input Real elmt_motor_r1;
    input Real elmt_product96;
    input Real elmt_product93;
    input Real elmt_product12;
    input Real elmt_product99;
    input Real elmt_reactant26;
    input Real elmt_reactant28;
    input Real elmt_reactant22;
    input Real elmt_product90;
    input Real elmt_reactant23;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_product9;
    input Real elmt_regulatory_r9;
    input Real elmt_regulatory_r8;
    input Real elmt_product8;
    input Real elmt_reactant31;
    input Real elmt_regulatory_r5;
    input Real elmt_regulatory_r4;
    input Real elmt_product21;
    input Real elmt_regulatory_r7;
    input Real elmt_regulatory_r6;
    input Real elmt_product20;
    input Real elmt_regulatory_r1;
    input Real elmt_product1;
    input Real elmt_reactant37;
    input Real elmt_regulatory_r3;
    input Real elmt_reactant38;
    input Real elmt_regulatory_r2;
    input Real elmt_product5;
    input Real elmt_reactant34;
    input Real elmt_product3;
    input Real elmt_reactant35;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product17;
    input Real elmt_reactant100;
    input Real elmt_reactant83;
    input Real elmt_product30;
    input Real elmt_reactant85;
    input Real elmt_reactant86;
    input Real elmt_reactant80;
    input Real elmt_product33;
    input Real elmt_reactant82;
    input Real elmt_regulatory_r12;
    input Real elmt_regulatory_r11;
    input Real elmt_regulatory_r14;
    input Real elmt_regulatory_r13;
    input Real elmt_reactant88;
    input Real elmt_regulatory_r10;
    input Real elmt_reactant89;
    input Real elmt_product27;
    input Real elmt_product25;
    input Real elmt_product24;
    input Real elmt_reactant94;
    input Real elmt_reactant97;
    input Real elmt_product45;
    input Real elmt_reactant91;
    input Real elmt_reactant92;
    input Real elmt_product42;
    input Real elmt_reaction_3;
    input Real elmt_reactant14;
    input Real elmt_reaction_1;
    input Real elmt_reactant16;
    input Real elmt_reaction_2;
    input Real elmt_reactant10;
    input Real elmt_reactant11;
    input Real elmt_product36;
    input Real elmt_product39;
    input Real elmt_reactant61;
    input Real elmt_phosphorylation_r5;
    input Real elmt_phosphorylation_r6;
    input Real elmt_reactant62;
    input Real elmt_product51;
    input Real elmt_phosphorylation_r7;
    input Real elmt_phosphorylation_r8;
    input Real elmt_reactant64;
    input Real elmt_phosphorylation_r9;
    input Real elmt_product54;
    input Real elmt_reactant65;
    input Real elmt_phosphorylation_r1;
    input Real elmt_phosphorylation_r2;
    input Real elmt_reactant67;
    input Real elmt_phosphorylation_r3;
    input Real elmt_phosphorylation_r4;
    input Real elmt_reactant68;
    input Real elmt_product48;
    input Real elmt_product63;
    input Real elmt_reactant2;
    input Real elmt_reactant73;
    input Real elmt_reactant4;
    input Real elmt_reactant74;
    input Real elmt_product60;
    input Real elmt_reactant6;
    input Real elmt_product66;
    input Real elmt_reactant70;
    input Real elmt_reactant7;
    input Real elmt_reactant71;
    input Real elmt_reactant76;
    input Real elmt_reactant77;
    input Real elmt_reactant0;
    input Real elmt_reactant79;
    input Real elmt_regulatory_r16;
    input Real elmt_regulatory_r15;
    input Real elmt_regulatory_r18;
    input Real elmt_regulatory_r17;
    input Real elmt_product57;

    input Boolean elmt_event_2;
    input Boolean elmt_event_1;

    input Real assign_elmt_asp;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI2\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:17:51Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TW_conc(unit = "");
    Real elmt_TW_amount(unit = "");
    Real elmt_TW(unit = "") "TW";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI9\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:21:42Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MYpYp_conc(unit = "");
    Real elmt_MYpYp_amount(unit = "");
    Real elmt_MYpYp(unit = "") "MYpYp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI28\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:24:54Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tasp_A_conc(unit = "");
    Real elmt_Tasp_A_amount(unit = "");
    Real elmt_Tasp_A(unit = "") "Tasp_A";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI13\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-11-27T22:14:46Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_asp_conc(unit = "");
    Real elmt_asp_amount(unit = "");
    Real elmt_asp(unit = "") "asp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI3\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:01:20Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tni_W_conc(unit = "");
    Real elmt_Tni_W_amount(unit = "");
    Real elmt_Tni_W(unit = "") "Tni_W";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI11\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-07T18:41:26Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_WA_conc(unit = "");
    Real elmt_WA_amount(unit = "");
    Real elmt_WA(unit = "") "WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI15\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:22:20Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tasp_WA_conc(unit = "");
    Real elmt_Tasp_WA_amount(unit = "");
    Real elmt_Tasp_WA(unit = "") "Tasp_WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI17\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-11-27T22:57:36Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MYp_conc(unit = "");
    Real elmt_MYp_amount(unit = "");
    Real elmt_MYp(unit = "") "MYp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI27\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:24:41Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Y_conc(unit = "");
    Real elmt_Y_amount(unit = "");
    Real elmt_Y(unit = "") "Y";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI24\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:24:04Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Z_conc(unit = "");
    Real elmt_Z_amount(unit = "");
    Real elmt_Z(unit = "") "Z";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI23\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:23:52Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_W_conc(unit = "");
    Real elmt_W_amount(unit = "");
    Real elmt_W(unit = "") "W";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI8\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:21:27Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tni_conc(unit = "");
    Real elmt_Tni_amount(unit = "");
    Real elmt_Tni(unit = "") "Tni";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI7\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-07T18:41:21Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ni_conc(unit = "");
    Real elmt_ni_amount(unit = "");
    Real elmt_ni(unit = "") "ni";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI4\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-07T18:39:47Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tni_A_conc(unit = "");
    Real elmt_Tni_A_amount(unit = "");
    Real elmt_Tni_A(unit = "") "Tni_A";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI14\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-07T18:41:25Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_T_conc(unit = "");
    Real elmt_T_amount(unit = "");
    Real elmt_T(unit = "") "T";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI5\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:21:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MYpYpYp_conc(unit = "");
    Real elmt_MYpYpYp_amount(unit = "");
    Real elmt_MYpYpYp(unit = "") "MYpYpYp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI29\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:25:05Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Yp_conc(unit = "");
    Real elmt_Yp_amount(unit = "");
    Real elmt_Yp(unit = "") "Yp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI25\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:24:13Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MYpYpYpYp_conc(unit = "");
    Real elmt_MYpYpYpYp_amount(unit = "");
    Real elmt_MYpYpYpYp(unit = "") "MYpYpYpYp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI30\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:25:21Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tasp_conc(unit = "");
    Real elmt_Tasp_amount(unit = "");
    Real elmt_Tasp(unit = "") "Tasp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI6\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-11-27T22:04:33Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "M";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI26\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:24:26Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tni_WA_conc(unit = "");
    Real elmt_Tni_WA_amount(unit = "");
    Real elmt_Tni_WA(unit = "") "Tni_WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI18\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-07T18:41:27Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tasp_W_conc(unit = "");
    Real elmt_Tasp_W_amount(unit = "");
    Real elmt_Tasp_W(unit = "") "Tasp_W";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI10\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-07T18:41:16Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TA_conc(unit = "");
    Real elmt_TA_amount(unit = "");
    Real elmt_TA(unit = "") "TA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI12\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:22:03Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Bp_conc(unit = "");
    Real elmt_Bp_amount(unit = "");
    Real elmt_Bp(unit = "") "Bp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI22\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T21:58:16Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TWA_conc(unit = "");
    Real elmt_TWA_amount(unit = "");
    Real elmt_TWA(unit = "") "TWA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI16\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:22:33Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "A";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI19\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:11:26Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_B_conc(unit = "");
    Real elmt_B_amount(unit = "");
    Real elmt_B(unit = "") "B";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI21\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:23:22Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ap_conc(unit = "");
    Real elmt_Ap_amount(unit = "");
    Real elmt_Ap(unit = "") "Ap";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI20\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:23:10Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI31\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-08T00:17:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.41E-15;
        elmt_TW_conc = 5.91E-7;
        elmt_MYpYp_conc = 2.99E-10;
        elmt_Tasp_A_conc = 0.0;
        elmt_asp_conc = 0.0;
        elmt_Tni_W_conc = 0.0;
        elmt_WA_conc = 6.78E-7;
        elmt_Tasp_WA_conc = 0.0;
        elmt_MYp_conc = 7.77E-10;
        elmt_Y_conc = 9.9E-6;
        elmt_Z_conc = 2.0E-5;
        elmt_W_conc = 2.89E-6;
        elmt_Tni_conc = 0.0;
        elmt_ni_conc = 0.0;
        elmt_Tni_A_conc = 0.0;
        elmt_T_conc = 3.12E-6;
        elmt_MYpYpYp_conc = 3.78E-10;
        elmt_Yp_conc = 7.0E-9;
        elmt_MYpYpYpYp_conc = 2.31E-9;
        elmt_Tasp_conc = 0.0;
        elmt_M_conc = 6.24E-9;
        elmt_Tni_WA_conc = 0.0;
        elmt_Tasp_W_conc = 0.0;
        elmt_TA_conc = 4.44E-7;
        elmt_Bp_conc = 6.87E-8;
        elmt_TWA_conc = 8.47E-7;
        elmt_A_conc = 3.0E-6;
        elmt_B_conc = 1.93E-6;
        elmt_Ap_conc = 3.48E-8;
        elmt_species_1_conc = 0.1;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_TW = elmt_TW_conc;
        elmt_MYpYp = elmt_MYpYp_conc;
        elmt_Tasp_A = elmt_Tasp_A_conc;
        elmt_asp = elmt_asp_conc;
        elmt_Tni_W = elmt_Tni_W_conc;
        elmt_WA = elmt_WA_conc;
        elmt_Tasp_WA = elmt_Tasp_WA_conc;
        elmt_MYp = elmt_MYp_conc;
        elmt_Y = elmt_Y_conc;
        elmt_Z = elmt_Z_conc;
        elmt_W = elmt_W_conc;
        elmt_Tni = elmt_Tni_conc;
        elmt_ni = elmt_ni_conc;
        elmt_Tni_A = elmt_Tni_A_conc;
        elmt_T = elmt_T_conc;
        elmt_MYpYpYp = elmt_MYpYpYp_conc;
        elmt_Yp = elmt_Yp_conc;
        elmt_MYpYpYpYp = elmt_MYpYpYpYp_conc;
        elmt_Tasp = elmt_Tasp_conc;
        elmt_M = elmt_M_conc;
        elmt_Tni_WA = elmt_Tni_WA_conc;
        elmt_Tasp_W = elmt_Tasp_W_conc;
        elmt_TA = elmt_TA_conc;
        elmt_Bp = elmt_Bp_conc;
        elmt_TWA = elmt_TWA_conc;
        elmt_A = elmt_A_conc;
        elmt_B = elmt_B_conc;
        elmt_Ap = elmt_Ap_conc;
        elmt_species_1 = elmt_species_1_conc;
        der(elmt_asp_amount / elmt_cell) = 0.0;
        der(elmt_ni_amount) = 0;
        der(elmt_species_1_amount) = 0;
        der(elmt_TW_amount) = ((- (elmt_regulatory_r6 * elmt_reactant43)) + (elmt_regulatory_r3 * elmt_product36) + (- (elmt_reaction_2 * elmt_reactant97)));
        der(elmt_MYpYp_amount) = ((- (elmt_motor_r3 * elmt_reactant88)) + (elmt_motor_r2 * elmt_product87));
        der(elmt_Tasp_A_amount) = ((- (elmt_regulatory_r12 * elmt_reactant61)) + (elmt_regulatory_r10 * elmt_product57) + (elmt_reaction_1 * elmt_product96));
        der(elmt_Tni_W_amount) = ((elmt_regulatory_r14 * elmt_product69) + (- (elmt_regulatory_r16 * elmt_reactant73)));
        der(elmt_WA_amount) = ((- (elmt_regulatory_r13 * elmt_reactant65)) + (- (elmt_regulatory_r8 * elmt_reactant50)) + (elmt_regulatory_r5 * elmt_product42) + (- (elmt_regulatory_r18 * elmt_reactant80)));
        der(elmt_Tasp_WA_amount) = ((elmt_regulatory_r12 * elmt_product63) + (elmt_regulatory_r11 * elmt_product60) + (elmt_regulatory_r13 * elmt_product66) + (elmt_phosphorylation_r4 * elmt_product8) + (- (elmt_phosphorylation_r4 * elmt_reactant6)) + (elmt_reaction_3 * elmt_product102));
        der(elmt_MYp_amount) = ((- (elmt_motor_r2 * elmt_reactant85)) + (elmt_motor_r1 * elmt_product84));
        der(elmt_Y_amount) = ((- (elmt_phosphorylation_r5 * elmt_reactant11)) + (- (elmt_phosphorylation_r6 * elmt_reactant14)) + (elmt_phosphorylation_r7 * elmt_product17) + (elmt_phosphorylation_r8 * elmt_product20) + (elmt_phosphorylation_r4 * elmt_product9));
        der(elmt_Z_amount) = ((- (elmt_phosphorylation_r8 * elmt_reactant19)) + (elmt_phosphorylation_r8 * elmt_product21));
        der(elmt_W_amount) = ((- (elmt_regulatory_r12 * elmt_reactant62)) + (- (elmt_regulatory_r14 * elmt_reactant68)) + (- (elmt_regulatory_r9 * elmt_reactant53)) + (- (elmt_regulatory_r5 * elmt_reactant40)) + (- (elmt_regulatory_r7 * elmt_reactant47)) + (- (elmt_regulatory_r3 * elmt_reactant35)) + (- (elmt_regulatory_r17 * elmt_reactant77)));
        der(elmt_Tni_amount) = ((- (elmt_regulatory_r14 * elmt_reactant67)) + (elmt_regulatory_r2 * elmt_product33) + (- (elmt_regulatory_r15 * elmt_reactant70)) + (- (elmt_regulatory_r18 * elmt_reactant79)));
        der(elmt_Tni_A_amount) = ((elmt_regulatory_r15 * elmt_product72) + (- (elmt_regulatory_r17 * elmt_reactant76)));
        der(elmt_T_amount) = ((- (elmt_regulatory_r8 * elmt_reactant49)) + (- (elmt_regulatory_r4 * elmt_reactant37)) + (- (elmt_regulatory_r1 * elmt_reactant28)) + (- (elmt_regulatory_r3 * elmt_reactant34)) + (- (elmt_regulatory_r2 * elmt_reactant31)));
        der(elmt_MYpYpYp_amount) = ((- (elmt_motor_r4 * elmt_reactant91)) + (elmt_motor_r3 * elmt_product90));
        der(elmt_Yp_amount) = ((elmt_phosphorylation_r5 * elmt_product13) + (elmt_phosphorylation_r6 * elmt_product15) + (- (elmt_phosphorylation_r7 * elmt_reactant16)) + (- (elmt_phosphorylation_r8 * elmt_reactant18)) + (- (elmt_phosphorylation_r4 * elmt_reactant7)) + (- (elmt_motor_r4 * elmt_reactant92)) + (- (elmt_motor_r3 * elmt_reactant89)) + (- (elmt_motor_r2 * elmt_reactant86)) + (- (elmt_motor_r1 * elmt_reactant83)));
        der(elmt_MYpYpYpYp_amount) = (elmt_motor_r4 * elmt_product93);
        der(elmt_Tasp_amount) = ((- (elmt_regulatory_r13 * elmt_reactant64)) + (- (elmt_regulatory_r10 * elmt_reactant55)) + (- (elmt_regulatory_r9 * elmt_reactant52)) + (elmt_regulatory_r1 * elmt_product30));
        der(elmt_M_amount) = (- (elmt_motor_r1 * elmt_reactant82));
        der(elmt_Tni_WA_amount) = ((elmt_regulatory_r16 * elmt_product75) + (elmt_regulatory_r18 * elmt_product81) + (elmt_regulatory_r17 * elmt_product78));
        der(elmt_Tasp_W_amount) = ((- (elmt_regulatory_r11 * elmt_reactant58)) + (elmt_regulatory_r9 * elmt_product54) + (elmt_reaction_2 * elmt_product99));
        der(elmt_TA_amount) = ((elmt_regulatory_r4 * elmt_product39) + (- (elmt_regulatory_r7 * elmt_reactant46)) + (- (elmt_reaction_1 * elmt_reactant94)));
        der(elmt_Bp_amount) = ((elmt_phosphorylation_r9 * elmt_product25) + (- (elmt_phosphorylation_r10 * elmt_reactant26)));
        der(elmt_TWA_amount) = ((elmt_regulatory_r8 * elmt_product51) + (elmt_regulatory_r7 * elmt_product48) + (elmt_regulatory_r6 * elmt_product45) + (- (elmt_reaction_3 * elmt_reactant100)));
        der(elmt_A_amount) = ((elmt_phosphorylation_r5 * elmt_product12) + (elmt_phosphorylation_r9 * elmt_product24) + (- (elmt_regulatory_r11 * elmt_reactant59)) + (- (elmt_phosphorylation_r1 * elmt_reactant0)) + (- (elmt_phosphorylation_r2 * elmt_reactant2)) + (- (elmt_phosphorylation_r3 * elmt_reactant4)) + (- (elmt_regulatory_r10 * elmt_reactant56)) + (- (elmt_regulatory_r5 * elmt_reactant41)) + (- (elmt_regulatory_r4 * elmt_reactant38)) + (- (elmt_regulatory_r6 * elmt_reactant44)) + (- (elmt_regulatory_r16 * elmt_reactant74)) + (- (elmt_regulatory_r15 * elmt_reactant71)));
        der(elmt_B_amount) = ((- (elmt_phosphorylation_r9 * elmt_reactant23)) + (elmt_phosphorylation_r10 * elmt_product27));
        der(elmt_Ap_amount) = ((- (elmt_phosphorylation_r5 * elmt_reactant10)) + (- (elmt_phosphorylation_r9 * elmt_reactant22)) + (elmt_phosphorylation_r1 * elmt_product1) + (elmt_phosphorylation_r2 * elmt_product3) + (elmt_phosphorylation_r3 * elmt_product5));

        when elmt_event_2 then
            reinit(elmt_asp_amount, assign_elmt_asp * pre(elmt_cell));
        end when;
        when elmt_event_1 then
            reinit(elmt_asp_amount, assign_elmt_asp * pre(elmt_cell));
        end when;
    algorithm
        elmt_TW_conc := elmt_TW_amount / elmt_cell;
        elmt_MYpYp_conc := elmt_MYpYp_amount / elmt_cell;
        elmt_Tasp_A_conc := elmt_Tasp_A_amount / elmt_cell;
        elmt_asp_conc := elmt_asp_amount / elmt_cell;
        elmt_Tni_W_conc := elmt_Tni_W_amount / elmt_cell;
        elmt_WA_conc := elmt_WA_amount / elmt_cell;
        elmt_Tasp_WA_conc := elmt_Tasp_WA_amount / elmt_cell;
        elmt_MYp_conc := elmt_MYp_amount / elmt_cell;
        elmt_Y_conc := elmt_Y_amount / elmt_cell;
        elmt_Z_conc := elmt_Z_amount / elmt_cell;
        elmt_W_conc := elmt_W_amount / elmt_cell;
        elmt_Tni_conc := elmt_Tni_amount / elmt_cell;
        elmt_ni_conc := elmt_ni_amount / elmt_cell;
        elmt_Tni_A_conc := elmt_Tni_A_amount / elmt_cell;
        elmt_T_conc := elmt_T_amount / elmt_cell;
        elmt_MYpYpYp_conc := elmt_MYpYpYp_amount / elmt_cell;
        elmt_Yp_conc := elmt_Yp_amount / elmt_cell;
        elmt_MYpYpYpYp_conc := elmt_MYpYpYpYp_amount / elmt_cell;
        elmt_Tasp_conc := elmt_Tasp_amount / elmt_cell;
        elmt_M_conc := elmt_M_amount / elmt_cell;
        elmt_Tni_WA_conc := elmt_Tni_WA_amount / elmt_cell;
        elmt_Tasp_W_conc := elmt_Tasp_W_amount / elmt_cell;
        elmt_TA_conc := elmt_TA_amount / elmt_cell;
        elmt_Bp_conc := elmt_Bp_amount / elmt_cell;
        elmt_TWA_conc := elmt_TWA_amount / elmt_cell;
        elmt_A_conc := elmt_A_amount / elmt_cell;
        elmt_B_conc := elmt_B_amount / elmt_cell;
        elmt_Ap_conc := elmt_Ap_amount / elmt_cell;
        elmt_species_1_conc := elmt_species_1_amount / elmt_cell;
end Class_elmt_cell;
