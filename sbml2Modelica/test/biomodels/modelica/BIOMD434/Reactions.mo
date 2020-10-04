within BIOMD434;
class Reactions

    input Real elmt_species_7;
    input Real elmt_species_4;
    input Real elmt_species_5;
    input Real elmt_species_26;
    input Real elmt_species_15;
    input Real elmt_species_28;
    input Real elmt_species_17;
    input Real elmt_species_18;
    input Real elmt_species_2;
    input Real elmt_species_19;
    input Real elmt_species_1;
    input Real elmt_species_30;
    input Real elmt_species_31;
    input Real elmt_species_21;
    input Real elmt_species_10;
    input Real elmt_species_11;
    input Real elmt_species_22;
    input Real elmt_species_33;
    input Real elmt_species_23;
    input Real elmt_species_34;
    input Real elmt_species_24;
    input Real elmt_species_13;
    input Real elmt_species_25;
    input Real elmt_species_14;

    Real elmt_reaction_27(unit = "") "Peripheral LDL Receptor Degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI63\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T19:27:25Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_27_elmt_k1(unit "") = 0.01 "";
    Real elmt_reactant52 "";
    Real elmt_product53 "";
    Real elmt_reaction_28(unit = "") "Peripheral Cholesterol Storage";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI64\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T19:34:43Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_28_elmt_k23(unit "") = 0.017386 "";
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_reaction_25(unit = "") "Receptor Independent Peripheral Uptake";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI61\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T19:10:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_25_elmt_k1(unit "") = 5.0E-6 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_reaction_26(unit = "") "Peripheral LDLR Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI62\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T19:14:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_26_elmt_kprs(unit "") = 100.0 "";
    Real elmt_reactant50 "";
    Real elmt_product51 "";
    Real elmt_reaction_29(unit = "") "Release of Stored Peripheral Cholesterol";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI65\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T19:42:32Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_29_elmt_k24(unit "") = 0.1068 "";
    Real elmt_product57 "";
    Real elmt_reactant56 "";
    Real elmt_reaction_20(unit = "") "IDL Cholesterol ReUptake";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI56\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T17:49:04Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_20_elmt_k1(unit "") = 0.054 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_reaction_23(unit = "") "Receptor Independent Hepatic Uptake";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI59\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T18:13:29Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_23_elmt_k1(unit "") = 0.005 "";
    Real elmt_product45 "";
    Real elmt_reactant44 "";
    Real elmt_reaction_24(unit = "") "Receptor Dependent Peripheral Uptake";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI60\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T19:00:22Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_24_elmt_k20(unit "") = 0.00675 "";
    Real elmt_product47 "";
    Real elmt_reactant46 "";
    Real elmt_reaction_21(unit = "") "LDL Cholesterol Formation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI57\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T17:55:06Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_21_elmt_k17(unit "") = 0.38 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_reaction_22(unit = "") "Receptor Dependent Hepatic Uptake";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI58\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T18:02:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_22_elmt_k18(unit "") = 0.068 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_reaction_3(unit = "") "Bile Salt Release";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI39\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:34:22Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 6.0 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_reaction_4(unit = "") "Bile Salt Return";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI40\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:40:02Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_4_elmt_k1(unit "") = 4.29 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_1(unit = "") "Ingestion";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI37\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:14:52Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_1_elmt_k1(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_reaction_2(unit = "") "Intestinal Cholesterol Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI38\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:18:44Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_2_elmt_ICSmax(unit "") = 100.0 "";
    parameter Real elmt_reaction_2_elmt_IS(unit "") = 5.0 "";
    parameter Real elmt_reaction_2_elmt_ICt(unit "") = 3120.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_reaction_16(unit = "") "Hepatic LDLR Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI52\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T17:19:52Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_16_elmt_khrs(unit "") = 100.0 "";
    Real elmt_reactant30 "";
    Real elmt_product31 "";
    Real elmt_reaction_17(unit = "") "Hepatic LDL Receptor Degradation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI53\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T17:33:50Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_17_elmt_k1(unit "") = 0.01 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_reaction_9(unit = "") "Intestinal Nascent HDL Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI45\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T16:05:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_9_elmt_k8(unit "") = 5.0E-4 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_reaction_14(unit = "") "Hepatic Nascent HDL Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI50\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T17:02:30Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_14_elmt_k11(unit "") = 0.005 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_reaction_15(unit = "") "VLDL Cholesterol Formation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI51\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T17:14:25Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_15_elmt_k1(unit "") = 0.016 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_reaction_7(unit = "") "Cholesterol Absorption";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI43\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:54:22Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_7_elmt_k6(unit "") = 5.286E-4 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_8(unit = "") "Cholesterol Excretion";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI44\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:59:34Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_8_elmt_k7(unit "") = 5.286E-4 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reaction_5(unit = "") "Bile Salt Excretion";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI41\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:43:27Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_5_elmt_k1(unit "") = 0.856 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reaction_18(unit = "") "VLDL Cholesterol ReUptake";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI54\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T17:37:31Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_18_elmt_k1(unit "") = 0.0496 "";
    Real elmt_product35 "";
    Real elmt_reactant34 "";
    Real elmt_reaction_6(unit = "") "Bile Salt Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI42\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:46:49Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_6_elmt_k5(unit "") = 2.66 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_reaction_19(unit = "") "IDL Cholesterol Formation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI55\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T17:42:31Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_19_elmt_k15(unit "") = 0.43 "";
    Real elmt_reactant36 "";
    Real elmt_product37 "";
    Real elmt_reaction_30(unit = "") "Peripheral Steroid Production";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI66\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T19:48:06Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_30_elmt_k1(unit "") = 5.0E-4 "";
    Real elmt_reactant58 "";
    Real elmt_product59 "";
    Real elmt_reaction_31(unit = "") "HDL Cholesterol Formation";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI67\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T19:51:53Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_31_elmt_k26(unit "") = 1.5E-5 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_reactant60 "";
    Real elmt_reaction_12(unit = "") "Hepatic Cholesterol Storage";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI48\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T16:47:31Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_12_elmt_k9(unit "") = 1.0 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_reaction_34(unit = "") "CETP Mediated TransferTo LDL";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI70\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T20:23:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_34_elmt_k28(unit "") = 0.001 "";
    Real elmt_product68 "";
    Real elmt_reactant67 "";
    Real elmt_reaction_13(unit = "") "Release of Stored Cholesterol";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI49\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T16:53:39Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_13_elmt_k10(unit "") = 5.998 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_reaction_35(unit = "") "Reverse Cholesterol Transport";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI71\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T20:27:42Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_35_elmt_k29(unit "") = 0.05 "";
    Real elmt_reactant69 "";
    Real elmt_product70 "";
    Real elmt_reaction_10(unit = "") "Billary Cholesterol Release";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI46\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T16:19:07Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_10_elmt_BS(unit "") = 5.0 "";
    parameter Real elmt_reaction_10_elmt_BCRt(unit "") = 55326.0 "";
    parameter Real elmt_reaction_10_elmt_BCRmax(unit "") = 2000.0 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_reaction_32(unit = "") "Peripheral Cholesterol Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI68\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T20:01:44Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_32_elmt_PCSmax(unit "") = 500.0 "";
    parameter Real elmt_reaction_32_elmt_PPCt(unit "") = 80342.0 "";
    parameter Real elmt_reaction_32_elmt_PCSS(unit "") = 5.0 "";
    Real elmt_reactant63 "";
    Real elmt_product64 "";
    Real elmt_reaction_11(unit = "") "Hepatic Cholesterol Synthesis";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI47\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T16:27:54Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    parameter Real elmt_reaction_11_elmt_HCSt(unit "") = 93925.0 "";
    parameter Real elmt_reaction_11_elmt_HS(unit "") = 5.0 "";
    parameter Real elmt_reaction_11_elmt_HCSmax(unit "") = 500.0 "";
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_reaction_33(unit = "") "CETP Mediated Transfer To VLDL";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI69\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T20:15:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_33_elmt_k27(unit "") = 0.01 "";
    Real elmt_product66 "";
    Real elmt_reactant65 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product68 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product45 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product55 = 1.0;
        elmt_product11 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product9 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_product66 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_product64 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product15 = 1.0;
        elmt_product59 = 1.0;
        elmt_product57 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_reaction_27 = (elmt_reaction_27_elmt_k1 * elmt_species_25);
        elmt_reaction_28 = ((elmt_reaction_28_elmt_k23 * elmt_species_14 * elmt_species_11));
        elmt_reaction_25 = (elmt_reaction_25_elmt_k1 * elmt_species_23);
        elmt_reaction_26 = (((elmt_reaction_26_elmt_kprs * elmt_species_26) / elmt_species_11));
        elmt_reaction_29 = ((elmt_reaction_29_elmt_k24 * elmt_species_15 * elmt_species_28));
        elmt_reaction_20 = (elmt_reaction_20_elmt_k1 * elmt_species_21);
        elmt_reaction_23 = (elmt_reaction_23_elmt_k1 * elmt_species_23);
        elmt_reaction_24 = ((elmt_reaction_24_elmt_k20 * elmt_species_25 * elmt_species_23));
        elmt_reaction_21 = ((elmt_reaction_21_elmt_k17 * elmt_species_21 * elmt_species_24));
        elmt_reaction_22 = ((elmt_reaction_22_elmt_k18 * elmt_species_23 * elmt_species_18));
        elmt_reaction_3 = (elmt_reaction_3_elmt_k1 * elmt_species_4);
        elmt_reaction_4 = (elmt_reaction_4_elmt_k1 * elmt_species_5);
        elmt_reaction_1 = (elmt_reaction_1_elmt_k1 * elmt_species_1);
        elmt_reaction_2 = ((elmt_reaction_2_elmt_ICSmax / (1.0 + Functions.pow((elmt_species_2 / elmt_reaction_2_elmt_ICt), elmt_reaction_2_elmt_IS))));
        elmt_reaction_16 = (((elmt_reaction_16_elmt_khrs * elmt_species_19) / elmt_species_7));
        elmt_reaction_17 = (elmt_reaction_17_elmt_k1 * elmt_species_18);
        elmt_reaction_9 = ((elmt_reaction_9_elmt_k8 * elmt_species_11));
        elmt_reaction_14 = ((elmt_reaction_14_elmt_k11 * elmt_species_11));
        elmt_reaction_15 = (elmt_reaction_15_elmt_k1 * elmt_species_7);
        elmt_reaction_7 = ((elmt_reaction_7_elmt_k6 * elmt_species_2 * elmt_species_5));
        elmt_reaction_8 = ((elmt_reaction_8_elmt_k7 * elmt_species_2 * elmt_species_5));
        elmt_reaction_5 = (elmt_reaction_5_elmt_k1 * elmt_species_5);
        elmt_reaction_18 = (elmt_reaction_18_elmt_k1 * elmt_species_17);
        elmt_reaction_6 = (((elmt_reaction_6_elmt_k5 * elmt_species_7) / elmt_species_4));
        elmt_reaction_19 = ((elmt_reaction_19_elmt_k15 * elmt_species_17 * elmt_species_22));
        elmt_reaction_30 = (elmt_reaction_30_elmt_k1 * elmt_species_11);
        elmt_reaction_31 = ((elmt_reaction_31_elmt_k26 * elmt_species_11 * elmt_species_10 * elmt_species_31));
        elmt_reaction_12 = ((elmt_reaction_12_elmt_k9 * elmt_species_14 * elmt_species_7));
        elmt_reaction_34 = ((elmt_reaction_34_elmt_k28 * elmt_species_30 * elmt_species_33));
        elmt_reaction_13 = ((elmt_reaction_13_elmt_k10 * elmt_species_15 * elmt_species_13));
        elmt_reaction_35 = ((elmt_reaction_35_elmt_k29 * elmt_species_30 * elmt_species_34));
        elmt_reaction_10 = ((elmt_reaction_10_elmt_BCRmax / (1.0 + Functions.pow((elmt_reaction_10_elmt_BCRt / elmt_species_7), elmt_reaction_10_elmt_BS))));
        elmt_reaction_32 = ((elmt_reaction_32_elmt_PCSmax / (1.0 + Functions.pow((elmt_species_11 / elmt_reaction_32_elmt_PPCt), elmt_reaction_32_elmt_PCSS))));
        elmt_reaction_11 = ((elmt_reaction_11_elmt_HCSmax / (1.0 + Functions.pow((elmt_species_7 / elmt_reaction_11_elmt_HCSt), elmt_reaction_11_elmt_HS))));
        elmt_reaction_33 = ((elmt_reaction_33_elmt_k27 * elmt_species_30 * elmt_species_33));
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product68) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product45) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product55) = 0;
        der(elmt_product11) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_product64) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product15) = 0;
        der(elmt_product59) = 0;
        der(elmt_product57) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
