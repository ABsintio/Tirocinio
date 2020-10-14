within BIOMD489;
class Reactions

    input Real elmt_species_37;
    input Real elmt_species_38;
    input Real elmt_species_39;
    input Real elmt_compartment_1;
    input Real elmt_species_30;
    input Real elmt_species_31;
    input Real elmt_species_32;
    input Real elmt_species_33;
    input Real elmt_species_34;
    input Real elmt_species_35;
    input Real elmt_species_36;
    input Real elmt_species_48;
    input Real elmt_species_49;
    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_1;
    input Real elmt_species_40;
    input Real elmt_species_41;
    input Real elmt_species_42;
    input Real elmt_species_43;
    input Real elmt_species_44;
    input Real elmt_species_45;
    input Real elmt_species_46;
    input Real elmt_species_47;
    input Real elmt_species_50;
    input Real elmt_species_6;
    input Real elmt_species_7;
    input Real elmt_species_4;
    input Real elmt_species_5;
    input Real elmt_species_8;
    input Real elmt_species_9;
    input Real elmt_species_15;
    input Real elmt_species_16;
    input Real elmt_species_17;
    input Real elmt_species_18;
    input Real elmt_species_19;
    input Real elmt_species_51;
    input Real elmt_species_52;
    input Real elmt_species_53;
    input Real elmt_species_10;
    input Real elmt_species_11;
    input Real elmt_species_12;
    input Real elmt_species_13;
    input Real elmt_species_14;
    input Real elmt_species_26;
    input Real elmt_species_27;
    input Real elmt_species_28;
    input Real elmt_species_29;
    input Real elmt_species_20;
    input Real elmt_species_21;
    input Real elmt_species_22;
    input Real elmt_species_24;
    input Real elmt_species_25;

    Real elmt_reaction_27(unit = "") "NFkB13) NFkB Nuclear Import/Export";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI80\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:01:30Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_27_elmt_k1(unit "") = 0.09 "";
    parameter Real elmt_reaction_27_elmt_k2(unit "") = 8.0E-5 "";
    Real elmt_product82 "";
    Real elmt_reactant81 "";
    Real elmt_reaction_28(unit = "") "NFkB14) Nuclear IkBa:NFkB Binding";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI81\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-16T18:10:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_28_elmt_k1(unit "") = 0.5 "";
    parameter Real elmt_reaction_28_elmt_k2(unit "") = 5.0E-4 "";
    Real elmt_reactant83 "";
    Real elmt_product85 "";
    Real elmt_reactant84 "";
    Real elmt_reaction_25(unit = "") "NFkB11) IkBb:NFkB Constitutive Degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI105\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:42:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_25_elmt_k1(unit "") = 2.25E-5 "";
    Real elmt_product78 "";
    Real elmt_reactant77 "";
    Real elmt_reaction_26(unit = "") "NFkB12) IkBe:NFkB Constitutive Degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI79\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-22T10:17:34Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_26_elmt_k1(unit "") = 2.25E-5 "";
    Real elmt_product80 "";
    Real elmt_reactant79 "";
    Real elmt_reaction_29(unit = "") "NFkB15) Nuclear IkBb:NFkB Binding";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI82\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T09:44:18Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_29_elmt_k1(unit "") = 0.5 "";
    parameter Real elmt_reaction_29_elmt_k2(unit "") = 5.0E-4 "";
    Real elmt_reactant86 "";
    Real elmt_product88 "";
    Real elmt_reactant87 "";
    Real elmt_reaction_20(unit = "") "NFkB06) IKK:IkBe:NFkB Binding (1)";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI74\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:50:32Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_20_elmt_k1(unit "") = 0.07 "";
    parameter Real elmt_reaction_20_elmt_k2(unit "") = 0.00175 "";
    Real elmt_reactant63 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_reaction_23(unit = "") "NFkB09) IKK:IkBe:NFkB Catalysis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI77\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T14:51:08Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_23_elmt_k1(unit "") = 0.011 "";
    Real elmt_reactant72 "";
    Real elmt_product74 "";
    Real elmt_product73 "";
    Real elmt_reaction_24(unit = "") "NFkB10) IkBa:NFkB Constitutive Degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI78\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:01:25Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_24_elmt_k1(unit "") = 2.25E-5 "";
    Real elmt_reactant75 "";
    Real elmt_product76 "";
    Real elmt_reaction_21(unit = "") "NFkB07) IKK:IkBa:NFkB Catalysis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI75\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:01:19Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_21_elmt_k1(unit "") = 0.0204 "";
    Real elmt_product67 "";
    Real elmt_product68 "";
    Real elmt_reactant66 "";
    Real elmt_reaction_22(unit = "") "NFkB08) IKK:IkBb:NFkB Catalysis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI76\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T14:51:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_22_elmt_k1(unit "") = 0.0075 "";
    Real elmt_product71 "";
    Real elmt_reactant69 "";
    Real elmt_product70 "";
    Real elmt_reaction_3(unit = "") "MYD883) TAK/TAB Binds to TRAF6";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI57\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-17T17:41:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 0.003 "";
    parameter Real elmt_reaction_3_elmt_k2(unit "") = 0.01 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_4(unit = "") "MYD884) IKK Phosphorylation by TAK1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI58\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:54:01Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_4_elmt_k(unit "") = 0.1 "";
    parameter Real elmt_reaction_4_elmt_Km(unit "") = 0.1 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reaction_1(unit = "") "MYD881) Receptor Complex Formation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI55\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:52:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_1_elmt_k1(unit "") = 1.0E-4 "";
    parameter Real elmt_reaction_1_elmt_k2(unit "") = 1.0E-4 "";
    Real elmt_reactant2 "";
    Real elmt_reactant1 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_reactant3 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_reactant0 "";
    Real elmt_reaction_2(unit = "") "MYD882) IRAK1 and TRAF6 Phosphorylation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI56\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:52:24Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "") = 0.001 "";
    parameter Real elmt_reaction_2_elmt_k2(unit "") = 0.001 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_reaction_16(unit = "") "NFkB02) IKK:IkBa:NFkB Binding (1)";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI70\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:50:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_16_elmt_k1(unit "") = 0.185 "";
    parameter Real elmt_reaction_16_elmt_k2(unit "") = 0.0125 "";
    Real elmt_reactant51 "";
    Real elmt_reactant52 "";
    Real elmt_product53 "";
    Real elmt_reaction_17(unit = "") "NFkB03) IkBb:NFkB Binding";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI71\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:01:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_17_elmt_k1(unit "") = 0.5 "";
    parameter Real elmt_reaction_17_elmt_k2(unit "") = 5.0E-4 "";
    Real elmt_product56 "";
    Real elmt_reactant54 "";
    Real elmt_reactant55 "";
    Real elmt_reaction_9(unit = "") "TRIF04) IRF3 Nuclear Import/Export";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI63\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:00:10Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_9_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_reaction_9_elmt_k2(unit "") = 0.1 "";
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_reaction_14(unit = "") "TRIF11) IKK Phosphorylation by RIP1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI68\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:00:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_14_elmt_k(unit "") = 0.1 "";
    parameter Real elmt_reaction_14_elmt_Km(unit "") = 0.1 "";
    Real elmt_product47 "";
    Real elmt_reactant46 "";
    Real elmt_reaction_58(unit = "") "NFkB44) IKK:IkBe Catalysis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI99\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-22T10:08:12Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_58_elmt_k1(unit "") = 0.0022 "";
    Real elmt_product157 "";
    Real elmt_reactant156 "";
    Real elmt_reaction_15(unit = "") "NFkB01) IkBa:NFkB Binding ";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI69\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:50:14Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_15_elmt_k1(unit "") = 0.5 "";
    parameter Real elmt_reaction_15_elmt_k2(unit "") = 5.0E-4 "";
    Real elmt_product50 "";
    Real elmt_reactant48 "";
    Real elmt_reactant49 "";
    Real elmt_reaction_59(unit = "") "TRIF06a)Inducible TNFa Synthesis by NFkB";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI100\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-22T10:16:07Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_59_elmt_k1(unit "") = 0.001 "";
    Real elmt_product159 "";
    Real elmt_product160 "";
    Real elmt_reactant158 "";
    Real elmt_reaction_7(unit = "") "TRIF02) IRF3 Phosphorylation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI61\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:59:43Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_7_elmt_k(unit "") = 0.1 "";
    parameter Real elmt_reaction_7_elmt_Km(unit "") = 0.1 "";
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_reaction_8(unit = "") "TRIF03) IRF3 Dephosphorylation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI62\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:00:08Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_8_elmt_k1(unit "") = 0.1 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reaction_5(unit = "") "MYD885) IKK[P] Dephosphorylation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI59\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-17T17:43:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_5_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_reaction_18(unit = "") "NFkB04) IKK:IkBb:NFkB Binding (1)";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI72\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:50:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_18_elmt_k1(unit "") = 0.048 "";
    parameter Real elmt_reaction_18_elmt_k2(unit "") = 0.00175 "";
    Real elmt_reactant58 "";
    Real elmt_product59 "";
    Real elmt_reactant57 "";
    Real elmt_reaction_6(unit = "") "TRIF01) Receptor Complex Formation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI60\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:59:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_6_elmt_k1(unit "") = 1.0E-4 "";
    parameter Real elmt_reaction_6_elmt_k2(unit "") = 1.0E-4 "";
    Real elmt_reactant20 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_reactant21 "";
    Real elmt_reactant22 "";
    Real elmt_reactant23 "";
    Real elmt_reactant24 "";
    Real elmt_reaction_19(unit = "") "NFkB05) IkBe:NFkB Binding";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI73\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T14:50:52Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_19_elmt_k1(unit "") = 0.5 "";
    parameter Real elmt_reaction_19_elmt_k2(unit "") = 5.0E-4 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_reactant60 "";
    Real elmt_reaction_52(unit = "") "NFkB38) IKK:IkBb:NFkB Binding (2)";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI97\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-16T18:15:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_52_elmt_k1(unit "") = 0.5 "";
    parameter Real elmt_reaction_52_elmt_k2(unit "") = 5.0E-4 "";
    Real elmt_reactant143 "";
    Real elmt_reactant142 "";
    Real elmt_product144 "";
    Real elmt_reaction_53(unit = "") "NFkB39) IkBb:NFkB Nuclear Export";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI114\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:46:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_53_elmt_k1(unit "") = 0.0052 "";
    Real elmt_product146 "";
    Real elmt_reactant145 "";
    Real elmt_reaction_50(unit = "") "NFkB36) IKK:IkBa:NFkB Binding (2)";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI95\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-16T18:13:55Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_50_elmt_k1(unit "") = 0.5 "";
    parameter Real elmt_reaction_50_elmt_k2(unit "") = 5.0E-4 "";
    Real elmt_reactant138 "";
    Real elmt_reactant137 "";
    Real elmt_product139 "";
    Real elmt_reaction_51(unit = "") "NFkB37) IkBa:NFkB Nuclear Export";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI96\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-16T18:15:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_51_elmt_k1(unit "") = 0.0138 "";
    Real elmt_reactant140 "";
    Real elmt_product141 "";
    Real elmt_reaction_12(unit = "") "TRIF09) TNFa Degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI66\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-17T17:50:58Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_12_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_reaction_56(unit = "") "NFkB42) IKK:IkBa Catalysis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI98\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:01:59Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_56_elmt_k1(unit "") = 0.00407 "";
    Real elmt_reactant152 "";
    Real elmt_product153 "";
    Real elmt_reaction_13(unit = "") "TRIF10) TNFa Receptor Complex Formation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI67\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-17T17:50:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_13_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_reaction_13_elmt_k2(unit "") = 0.1 "";
    Real elmt_reactant40 "";
    Real elmt_reactant41 "";
    Real elmt_reactant42 "";
    Real elmt_product45 "";
    Real elmt_reactant43 "";
    Real elmt_reactant44 "";
    Real elmt_reaction_57(unit = "") "NFkB43) IKK:IkBb Catalysis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI117\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:46:42Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_57_elmt_k1(unit "") = 0.0015 "";
    Real elmt_reactant154 "";
    Real elmt_product155 "";
    Real elmt_reaction_10(unit = "") "TRIF05) Inducible TNFa Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI64\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:00:13Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_10_elmt_k1(unit "") = 0.02 "";
    Real elmt_product34 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_reaction_54(unit = "") "NFkB40) IKK:IkBe:NFkB Binding (2)";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI115\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:46:19Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_54_elmt_k1(unit "") = 0.5 "";
    parameter Real elmt_reaction_54_elmt_k2(unit "") = 5.0E-4 "";
    Real elmt_reactant148 "";
    Real elmt_reactant147 "";
    Real elmt_product149 "";
    Real elmt_reaction_11(unit = "") "TRIF06) Constitutive TNFa Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI65\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:00:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_11_elmt_k1(unit "") = 0.001 "";
    Real elmt_reactant36 "";
    Real elmt_product37 "";
    Real elmt_reaction_55(unit = "") "NFkB41) IkBe:NFkB Nuclear Export";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI116\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:46:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_55_elmt_k1(unit "") = 0.0052 "";
    Real elmt_reactant150 "";
    Real elmt_product151 "";
    Real elmt_reaction_49(unit = "") "NFkB35) IkBe Nuclear Import/Export";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI113\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:45:53Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_49_elmt_k1(unit "") = 1.5E-4 "";
    parameter Real elmt_reaction_49_elmt_k2(unit "") = 1.0E-4 "";
    Real elmt_product136 "";
    Real elmt_reactant135 "";
    Real elmt_reaction_47(unit = "") "NFkB33) IkBe Translation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI94\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:40:44Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_47_elmt_k1(unit "") = 0.00408 "";
    Real elmt_reactant130 "";
    Real elmt_product131 "";
    Real elmt_product132 "";
    Real elmt_reaction_48(unit = "") "NFkB34) IkBe Degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI112\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:45:49Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_48_elmt_k1(unit "") = 1.13E-4 "";
    Real elmt_product134 "";
    Real elmt_reactant133 "";
    Real elmt_reaction_41(unit = "") "NFkB27) IkBa Nuclear Import/Export";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI90\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-16T18:13:27Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_41_elmt_k1(unit "") = 3.0E-4 "";
    parameter Real elmt_reaction_41_elmt_k2(unit "") = 2.0E-4 "";
    Real elmt_reactant115 "";
    Real elmt_product116 "";
    Real elmt_reaction_42(unit = "") "NFkB28) IKK:IkBb Binding";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI91\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T09:46:41Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_42_elmt_k1(unit "") = 0.006 "";
    parameter Real elmt_reaction_42_elmt_k2(unit "") = 0.00175 "";
    Real elmt_reactant118 "";
    Real elmt_reactant117 "";
    Real elmt_product119 "";
    Real elmt_reaction_40(unit = "") "NFkB26) IkBa Degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI89\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-16T18:13:06Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_40_elmt_k1(unit "") = 1.13E-4 "";
    Real elmt_product114 "";
    Real elmt_reactant113 "";
    Real elmt_reaction_45(unit = "") "NFkB31) IkBb Nuclear Import/Export";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI93\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T10:40:14Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_45_elmt_k1(unit "") = 1.5E-4 "";
    parameter Real elmt_reaction_45_elmt_k2(unit "") = 1.0E-4 "";
    Real elmt_product126 "";
    Real elmt_reactant125 "";
    Real elmt_reaction_46(unit = "") "NFkB32) IKK:IkBe Binding";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI111\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:45:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_46_elmt_k1(unit "") = 0.009 "";
    parameter Real elmt_reaction_46_elmt_k2(unit "") = 0.00175 "";
    Real elmt_reactant128 "";
    Real elmt_reactant127 "";
    Real elmt_product129 "";
    Real elmt_reaction_43(unit = "") "NFkB29) IkBb Translation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI92\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-16T18:26:47Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_43_elmt_k1(unit "") = 0.00408 "";
    Real elmt_reactant120 "";
    Real elmt_product122 "";
    Real elmt_product121 "";
    Real elmt_reaction_44(unit = "") "NFkB30) IkBb Degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI110\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:45:22Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_44_elmt_k1(unit "") = 1.13E-4 "";
    Real elmt_product124 "";
    Real elmt_reactant123 "";
    Real elmt_reaction_38(unit = "") "NFkB24) IKK:IkBa Binding";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI87\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T09:44:07Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_38_elmt_k1(unit "") = 0.0225 "";
    parameter Real elmt_reaction_38_elmt_k2(unit "") = 0.00125 "";
    Real elmt_reactant108 "";
    Real elmt_reactant107 "";
    Real elmt_product109 "";
    Real elmt_reaction_39(unit = "") "NFkB25) IkBa Translation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI88\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:01:48Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_39_elmt_k1(unit "") = 0.00408 "";
    Real elmt_reactant110 "";
    Real elmt_product112 "";
    Real elmt_product111 "";
    Real elmt_reaction_36(unit = "") "NFkB22) Constitutive IkBe mRNA Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI108\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:44:07Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_36_elmt_k1(unit "") = 1.27E-7 "";
    Real elmt_product104 "";
    Real elmt_reactant103 "";
    Real elmt_reaction_37(unit = "") "NFkB23) IkBe mRNA degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI109\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:44:19Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_37_elmt_k1(unit "") = 2.8E-4 "";
    Real elmt_reactant105 "";
    Real elmt_product106 "";
    Real elmt_reaction_30(unit = "") "NFkB16) Nuclear IkBe:NFkB Binding";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI106\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:42:49Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_30_elmt_k1(unit "") = 0.5 "";
    parameter Real elmt_reaction_30_elmt_k2(unit "") = 5.0E-4 "";
    Real elmt_reactant90 "";
    Real elmt_product91 "";
    Real elmt_reactant89 "";
    Real elmt_reaction_31(unit = "") "NFkB17) Constitutive IkBa mRNA Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI83\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-17T18:02:50Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_31_elmt_k1(unit "") = 1.54E-6 "";
    Real elmt_product93 "";
    Real elmt_reactant92 "";
    Real elmt_reaction_34(unit = "") "NFkB20) Constitutive IkBb mRNA Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI86\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-16T18:12:27Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_34_elmt_k1(unit "") = 1.78E-7 "";
    Real elmt_product100 "";
    Real elmt_reactant99 "";
    Real elmt_reaction_35(unit = "") "NFkB21) IkBb mRNA degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI107\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-24T13:44:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_35_elmt_k1(unit "") = 2.8E-4 "";
    Real elmt_product102 "";
    Real elmt_reactant101 "";
    Real elmt_reaction_32(unit = "") "NFkB18) Inducible IkBa mRNA Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI84\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-01-18T11:01:39Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_32_elmt_k1(unit "") = 0.0165 "";
    Real elmt_reactant94 "";
    Real elmt_product96 "";
    Real elmt_product95 "";
    Real elmt_reaction_33(unit = "") "NFkB19) IkBa mRNA degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI85\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-02-16T18:12:13Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_33_elmt_k1(unit "") = 2.8E-4 "";
    Real elmt_reactant97 "";
    Real elmt_product98 "";


    initial equation
        elmt_product74 = 1.0;
        elmt_product73 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_product71 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product78 = 1.0;
        elmt_product76 = 1.0;
        elmt_reactant108 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_reactant110 = 1.0;
        elmt_reactant118 = 1.0;
        elmt_reactant117 = 1.0;
        elmt_product68 = 1.0;
        elmt_reactant115 = 1.0;
        elmt_reactant113 = 1.0;
        elmt_product85 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product82 = 1.0;
        elmt_product88 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_product80 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product102 = 1.0;
        elmt_reactant120 = 1.0;
        elmt_product104 = 1.0;
        elmt_product100 = 1.0;
        elmt_reactant128 = 1.0;
        elmt_product109 = 1.0;
        elmt_reactant127 = 1.0;
        elmt_reactant125 = 1.0;
        elmt_product106 = 1.0;
        elmt_reactant123 = 1.0;
        elmt_product96 = 2.0;
        elmt_product95 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product93 = 1.0;
        elmt_product10 = 1.0;
        elmt_product98 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_product151 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_product91 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_product157 = 1.0;
        elmt_product159 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product153 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product155 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product160 = 2.0;
        elmt_reactant36 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant33 = 2.0;
        elmt_reactant29 = 1.0;
        elmt_reactant107 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant105 = 1.0;
        elmt_product13 = 1.0;
        elmt_reactant103 = 1.0;
        elmt_reactant101 = 1.0;
        elmt_product17 = 1.0;
        elmt_reactant83 = 1.0;
        elmt_product30 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_reactant86 = 1.0;
        elmt_product34 = 1.0;
        elmt_reactant81 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant87 = 1.0;
        elmt_reactant89 = 1.0;
        elmt_reactant154 = 1.0;
        elmt_product134 = 1.0;
        elmt_reactant152 = 1.0;
        elmt_product136 = 1.0;
        elmt_reactant150 = 1.0;
        elmt_product131 = 1.0;
        elmt_product132 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_reactant158 = 2.0;
        elmt_product139 = 1.0;
        elmt_reactant156 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant94 = 2.0;
        elmt_reactant97 = 1.0;
        elmt_product45 = 1.0;
        elmt_reactant90 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant99 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product146 = 1.0;
        elmt_product141 = 1.0;
        elmt_product144 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 2.0;
        elmt_product149 = 1.0;
        elmt_product39 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product56 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_product112 = 1.0;
        elmt_reactant130 = 1.0;
        elmt_product114 = 1.0;
        elmt_product111 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant138 = 1.0;
        elmt_reactant137 = 1.0;
        elmt_reactant135 = 1.0;
        elmt_product116 = 1.0;
        elmt_product119 = 1.0;
        elmt_reactant133 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product67 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant77 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant79 = 1.0;
        elmt_reactant143 = 1.0;
        elmt_product124 = 1.0;
        elmt_reactant142 = 1.0;
        elmt_product126 = 1.0;
        elmt_reactant140 = 1.0;
        elmt_product122 = 1.0;
        elmt_product121 = 1.0;
        elmt_product59 = 1.0;
        elmt_reactant148 = 1.0;
        elmt_reactant147 = 1.0;
        elmt_reactant145 = 1.0;
        elmt_product129 = 1.0;


    equation
        elmt_reaction_27 = (elmt_compartment_1 * ((elmt_reaction_27_elmt_k1 * elmt_species_31) - (elmt_reaction_27_elmt_k2 * elmt_species_39)));
        elmt_reaction_28 = (elmt_compartment_1 * ((elmt_reaction_28_elmt_k1 * elmt_species_40 * elmt_species_39) - (elmt_reaction_28_elmt_k2 * elmt_species_41)));
        elmt_reaction_25 = (elmt_compartment_1 * elmt_reaction_25_elmt_k1 * elmt_species_34);
        elmt_reaction_26 = (elmt_compartment_1 * elmt_reaction_26_elmt_k1 * elmt_species_37);
        elmt_reaction_29 = (elmt_compartment_1 * ((elmt_reaction_29_elmt_k1 * elmt_species_42 * elmt_species_39) - (elmt_reaction_29_elmt_k2 * elmt_species_43)));
        elmt_reaction_20 = (elmt_compartment_1 * ((elmt_reaction_20_elmt_k1 * elmt_species_15 * elmt_species_37) - (elmt_reaction_20_elmt_k2 * elmt_species_38)));
        elmt_reaction_23 = (elmt_compartment_1 * elmt_reaction_23_elmt_k1 * elmt_species_38);
        elmt_reaction_24 = (elmt_compartment_1 * elmt_reaction_24_elmt_k1 * elmt_species_30);
        elmt_reaction_21 = (elmt_compartment_1 * elmt_reaction_21_elmt_k1 * elmt_species_32);
        elmt_reaction_22 = (elmt_compartment_1 * elmt_reaction_22_elmt_k1 * elmt_species_35);
        elmt_reaction_3 = (elmt_compartment_1 * ((elmt_reaction_3_elmt_k1 * elmt_species_11 * elmt_species_12) - (elmt_reaction_3_elmt_k2 * elmt_species_13)));
        elmt_reaction_4 = (elmt_compartment_1 * (((elmt_reaction_4_elmt_k * elmt_species_13 * elmt_species_14) / (elmt_reaction_4_elmt_Km + elmt_species_14))));
        elmt_reaction_1 = (elmt_compartment_1 * ((elmt_reaction_1_elmt_k1 * elmt_species_4 * elmt_species_3 * elmt_species_1 * elmt_species_8 * elmt_species_6 * elmt_species_2 * elmt_species_7) - (elmt_reaction_1_elmt_k2 * elmt_species_5)));
        elmt_reaction_2 = (elmt_compartment_1 * (((elmt_reaction_2_elmt_k1 * elmt_species_5 * elmt_species_9 * elmt_species_10) - (elmt_reaction_2_elmt_k2 * elmt_species_11))));
        elmt_reaction_16 = (elmt_compartment_1 * ((elmt_reaction_16_elmt_k1 * elmt_species_15 * elmt_species_30) - (elmt_reaction_16_elmt_k2 * elmt_species_32)));
        elmt_reaction_17 = (elmt_compartment_1 * ((elmt_reaction_17_elmt_k1 * elmt_species_33 * elmt_species_31) - (elmt_reaction_17_elmt_k2 * elmt_species_34)));
        elmt_reaction_9 = (elmt_compartment_1 * ((elmt_reaction_9_elmt_k1 * elmt_species_20) - (elmt_reaction_9_elmt_k2 * elmt_species_21)));
        elmt_reaction_14 = (elmt_compartment_1 * (((elmt_reaction_14_elmt_k * elmt_species_28 * elmt_species_14) / (elmt_reaction_14_elmt_Km + elmt_species_14))));
        elmt_reaction_58 = (elmt_compartment_1 * elmt_reaction_58_elmt_k1 * elmt_species_51);
        elmt_reaction_15 = (elmt_compartment_1 * ((elmt_reaction_15_elmt_k1 * elmt_species_29 * elmt_species_31) - (elmt_reaction_15_elmt_k2 * elmt_species_30)));
        elmt_reaction_59 = (elmt_compartment_1 * elmt_reaction_59_elmt_k1 * Functions.pow(elmt_species_39, 2.0));
        elmt_reaction_7 = (elmt_compartment_1 * (((elmt_reaction_7_elmt_k * elmt_species_52 * elmt_species_19) / (elmt_reaction_7_elmt_Km + elmt_species_19))));
        elmt_reaction_8 = (elmt_compartment_1 * elmt_reaction_8_elmt_k1 * elmt_species_20);
        elmt_reaction_5 = (elmt_compartment_1 * elmt_reaction_5_elmt_k1 * elmt_species_15);
        elmt_reaction_18 = (elmt_compartment_1 * ((elmt_reaction_18_elmt_k1 * elmt_species_15 * elmt_species_34) - (elmt_reaction_18_elmt_k2 * elmt_species_35)));
        elmt_reaction_6 = (elmt_compartment_1 * ((elmt_reaction_6_elmt_k1 * elmt_species_4 * elmt_species_3 * elmt_species_1 * elmt_species_8 * elmt_species_18 * elmt_species_17 * elmt_species_16 * elmt_species_53) - (elmt_reaction_6_elmt_k2 * elmt_species_52)));
        elmt_reaction_19 = (elmt_compartment_1 * ((elmt_reaction_19_elmt_k1 * elmt_species_36 * elmt_species_31) - (elmt_reaction_19_elmt_k2 * elmt_species_37)));
        elmt_reaction_52 = (elmt_compartment_1 * ((elmt_reaction_52_elmt_k1 * elmt_species_50 * elmt_species_31) - (elmt_reaction_52_elmt_k2 * elmt_species_35)));
        elmt_reaction_53 = (elmt_compartment_1 * elmt_reaction_53_elmt_k1 * elmt_species_43);
        elmt_reaction_50 = (elmt_compartment_1 * ((elmt_reaction_50_elmt_k1 * elmt_species_49 * elmt_species_31) - (elmt_reaction_50_elmt_k2 * elmt_species_32)));
        elmt_reaction_51 = (elmt_compartment_1 * elmt_reaction_51_elmt_k1 * elmt_species_41);
        elmt_reaction_12 = (elmt_compartment_1 * elmt_reaction_12_elmt_k1 * elmt_species_24);
        elmt_reaction_56 = (elmt_compartment_1 * elmt_reaction_56_elmt_k1 * elmt_species_49);
        elmt_reaction_13 = (elmt_compartment_1 * ((elmt_reaction_13_elmt_k1 * elmt_species_24 * elmt_species_25 * elmt_species_27 * elmt_species_26 * elmt_species_16) - (elmt_reaction_13_elmt_k2 * elmt_species_28)));
        elmt_reaction_57 = (elmt_compartment_1 * elmt_reaction_57_elmt_k1 * elmt_species_50);
        elmt_reaction_10 = (elmt_compartment_1 * elmt_reaction_10_elmt_k1 * Functions.pow(elmt_species_21, 2.0));
        elmt_reaction_54 = (elmt_compartment_1 * ((elmt_reaction_54_elmt_k1 * elmt_species_51 * elmt_species_31) - (elmt_reaction_54_elmt_k2 * elmt_species_38)));
        elmt_reaction_11 = (elmt_compartment_1 * elmt_reaction_11_elmt_k1 * elmt_species_22);
        elmt_reaction_55 = (elmt_compartment_1 * elmt_reaction_55_elmt_k1 * elmt_species_45);
        elmt_reaction_49 = (elmt_compartment_1 * ((elmt_reaction_49_elmt_k1 * elmt_species_36) - (elmt_reaction_49_elmt_k2 * elmt_species_44)));
        elmt_reaction_47 = (elmt_compartment_1 * elmt_reaction_47_elmt_k1 * elmt_species_48);
        elmt_reaction_48 = (elmt_compartment_1 * elmt_reaction_48_elmt_k1 * elmt_species_36);
        elmt_reaction_41 = (elmt_compartment_1 * ((elmt_reaction_41_elmt_k1 * elmt_species_29) - (elmt_reaction_41_elmt_k2 * elmt_species_40)));
        elmt_reaction_42 = (elmt_compartment_1 * ((elmt_reaction_42_elmt_k1 * elmt_species_15 * elmt_species_33) - (elmt_reaction_42_elmt_k2 * elmt_species_50)));
        elmt_reaction_40 = (elmt_compartment_1 * elmt_reaction_40_elmt_k1 * elmt_species_29);
        elmt_reaction_45 = (elmt_compartment_1 * ((elmt_reaction_45_elmt_k1 * elmt_species_33) - (elmt_reaction_45_elmt_k2 * elmt_species_42)));
        elmt_reaction_46 = (elmt_compartment_1 * ((elmt_reaction_46_elmt_k1 * elmt_species_15 * elmt_species_36) - (elmt_reaction_46_elmt_k2 * elmt_species_51)));
        elmt_reaction_43 = (elmt_compartment_1 * elmt_reaction_43_elmt_k1 * elmt_species_47);
        elmt_reaction_44 = (elmt_compartment_1 * elmt_reaction_44_elmt_k1 * elmt_species_33);
        elmt_reaction_38 = (elmt_compartment_1 * ((elmt_reaction_38_elmt_k1 * elmt_species_15 * elmt_species_29) - (elmt_reaction_38_elmt_k2 * elmt_species_49)));
        elmt_reaction_39 = (elmt_compartment_1 * elmt_reaction_39_elmt_k1 * elmt_species_46);
        elmt_reaction_36 = (elmt_compartment_1 * elmt_reaction_36_elmt_k1 * elmt_species_22);
        elmt_reaction_37 = (elmt_compartment_1 * elmt_reaction_37_elmt_k1 * elmt_species_48);
        elmt_reaction_30 = (elmt_compartment_1 * ((elmt_reaction_30_elmt_k1 * elmt_species_44 * elmt_species_39) - (elmt_reaction_30_elmt_k2 * elmt_species_45)));
        elmt_reaction_31 = (elmt_compartment_1 * elmt_reaction_31_elmt_k1 * elmt_species_22);
        elmt_reaction_34 = (elmt_compartment_1 * elmt_reaction_34_elmt_k1 * elmt_species_22);
        elmt_reaction_35 = (elmt_compartment_1 * elmt_reaction_35_elmt_k1 * elmt_species_47);
        elmt_reaction_32 = (elmt_compartment_1 * elmt_reaction_32_elmt_k1 * Functions.pow(elmt_species_39, 2.0));
        elmt_reaction_33 = (elmt_compartment_1 * elmt_reaction_33_elmt_k1 * elmt_species_46);
        der(elmt_product74) = 0;
        der(elmt_product73) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product71) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product78) = 0;
        der(elmt_product76) = 0;
        der(elmt_reactant108) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant110) = 0;
        der(elmt_reactant118) = 0;
        der(elmt_reactant117) = 0;
        der(elmt_product68) = 0;
        der(elmt_reactant115) = 0;
        der(elmt_reactant113) = 0;
        der(elmt_product85) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product82) = 0;
        der(elmt_product88) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_product80) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product102) = 0;
        der(elmt_reactant120) = 0;
        der(elmt_product104) = 0;
        der(elmt_product100) = 0;
        der(elmt_reactant128) = 0;
        der(elmt_product109) = 0;
        der(elmt_reactant127) = 0;
        der(elmt_reactant125) = 0;
        der(elmt_product106) = 0;
        der(elmt_reactant123) = 0;
        der(elmt_product96) = 0;
        der(elmt_product95) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product93) = 0;
        der(elmt_product10) = 0;
        der(elmt_product98) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_product151) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_product91) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_product157) = 0;
        der(elmt_product159) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product153) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product155) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product160) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_reactant107) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_product13) = 0;
        der(elmt_reactant103) = 0;
        der(elmt_reactant101) = 0;
        der(elmt_product17) = 0;
        der(elmt_reactant83) = 0;
        der(elmt_product30) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_reactant86) = 0;
        der(elmt_product34) = 0;
        der(elmt_reactant81) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant87) = 0;
        der(elmt_reactant89) = 0;
        der(elmt_reactant154) = 0;
        der(elmt_product134) = 0;
        der(elmt_reactant152) = 0;
        der(elmt_product136) = 0;
        der(elmt_reactant150) = 0;
        der(elmt_product131) = 0;
        der(elmt_product132) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant158) = 0;
        der(elmt_product139) = 0;
        der(elmt_reactant156) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_product45) = 0;
        der(elmt_reactant90) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant99) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product146) = 0;
        der(elmt_product141) = 0;
        der(elmt_product144) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product149) = 0;
        der(elmt_product39) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product56) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_product112) = 0;
        der(elmt_reactant130) = 0;
        der(elmt_product114) = 0;
        der(elmt_product111) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant138) = 0;
        der(elmt_reactant137) = 0;
        der(elmt_reactant135) = 0;
        der(elmt_product116) = 0;
        der(elmt_product119) = 0;
        der(elmt_reactant133) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product67) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant77) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant79) = 0;
        der(elmt_reactant143) = 0;
        der(elmt_product124) = 0;
        der(elmt_reactant142) = 0;
        der(elmt_product126) = 0;
        der(elmt_reactant140) = 0;
        der(elmt_product122) = 0;
        der(elmt_product121) = 0;
        der(elmt_product59) = 0;
        der(elmt_reactant148) = 0;
        der(elmt_reactant147) = 0;
        der(elmt_reactant145) = 0;
        der(elmt_product129) = 0;

end Reactions;
