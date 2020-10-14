within BIOMD623;
class Reactions

    input Real elmt_species_6;
    input Real elmt_species_7;
    input Real elmt_species_4;
    input Real elmt_species_5;
    input Real elmt_species_8;
    input Real elmt_species_9;
    input Real elmt_species_15;
    input Real elmt_species_16;
    input Real elmt_species_17;
    input Real elmt_species_19;
    input Real elmt_compartment_0;
    input Real elmt_species_10;
    input Real elmt_species_11;
    input Real elmt_species_12;
    input Real elmt_species_13;
    input Real elmt_species_14;
    input Real elmt_species_26;
    input Real elmt_species_27;
    input Real elmt_species_28;
    input Real elmt_species_29;
    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_0;
    input Real elmt_species_1;
    input Real elmt_species_20;
    input Real elmt_species_21;
    input Real elmt_species_22;
    input Real elmt_species_23;
    input Real elmt_species_24;
    input Real elmt_species_25;

    Real elmt_reaction_27(unit = "") "Mek_Activation_bRaf";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI60\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_27_elmt_km(unit "") = 4768350.0 "";
    parameter Real elmt_reaction_27_elmt_kcat(unit "") = 185.759 "";
    Real elmt_product56 "";
    Real elmt_reactant55 "";
    Real elmt_reaction_28(unit = "") "EGFReceptor_Production";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI61\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:25:33Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000001\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_28_elmt_v(unit "") = 100.0 "";
    Real elmt_product58 "";
    Real elmt_reactant57 "";
    Real elmt_reaction_25(unit = "") "bRaf_Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI58\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:26:33Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_25_elmt_km(unit "") = 62464.6 "";
    parameter Real elmt_reaction_25_elmt_kcat(unit "") = 0.884096 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_reaction_26(unit = "") "bRaf_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI59\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:26:37Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_26_elmt_km(unit "") = 1061.71 "";
    parameter Real elmt_reaction_26_elmt_kcat(unit "") = 0.126329 "";
    Real elmt_reactant53 "";
    Real elmt_product54 "";
    Real elmt_reaction_29(unit = "") "EGFReceptor_Degradtion_Free";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI62\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:25:31Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_29_elmt_k1(unit "") = 0.00125 "";
    Real elmt_product60 "";
    Real elmt_reactant59 "";
    Real elmt_reaction_20(unit = "") "EGFReceptor_Degradation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI53\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:25:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_20_elmt_k1(unit "") = 0.2 "";
    Real elmt_reactant41 "";
    Real elmt_product42 "";
    Real elmt_reaction_23(unit = "") "Rap1_Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI56\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:27Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_23_elmt_km(unit "") = 35954.3 "";
    parameter Real elmt_reaction_23_elmt_kcat(unit "") = 32.344 "";
    Real elmt_reactant47 "";
    Real elmt_product48 "";
    Real elmt_reaction_24(unit = "") "Rap1_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI57\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:28Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_24_elmt_km(unit "") = 1432410.0 "";
    parameter Real elmt_reaction_24_elmt_kcat(unit "") = 1509.36 "";
    Real elmt_product50 "";
    Real elmt_reactant49 "";
    Real elmt_reaction_21(unit = "") "C3G_Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI54\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:26:39Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_21_elmt_km(unit "") = 6086070.0 "";
    parameter Real elmt_reaction_21_elmt_kcat(unit "") = 694.731 "";
    Real elmt_product44 "";
    Real elmt_reactant43 "";
    Real elmt_reaction_22(unit = "") "C3G_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI55\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:25:16Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000012\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_22_elmt_k1(unit "") = 2.5 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_reaction_3(unit = "") "Ras_Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI36\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:30Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_3_elmt_km(unit "") = 35954.3 "";
    parameter Real elmt_reaction_3_elmt_Kcat(unit "") = 32.344 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_reaction_4(unit = "") "Ras_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI37\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:31Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_4_elmt_km(unit "") = 1432410.0 "";
    parameter Real elmt_reaction_4_elmt_Kcat(unit "") = 1509.36 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_reaction_1(unit = "") "Sos_Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI34\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:32Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_1_elmt_km(unit "") = 6086070.0 "";
    parameter Real elmt_reaction_1_elmt_Kcat(unit "") = 694.731 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_reaction_2(unit = "") "Sos_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI35\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:25:58Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000012\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "") = 2.5 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_0(unit = "") "EGF_Binding_Unbinding";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI33\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:26:49Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000012\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_0_elmt_k1(unit "") = 2.18503E-5 "";
    parameter Real elmt_reaction_0_elmt_k2(unit "") = 0.121008 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_reaction_16(unit = "") "PI3K_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI49\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:19Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000012\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_16_elmt_k1(unit "") = 0.005 "";
    Real elmt_product34 "";
    Real elmt_reactant33 "";
    Real elmt_reaction_17(unit = "") "Akt_Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI50\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T14:02:21Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_17_elmt_km(unit "") = 653951.0 "";
    parameter Real elmt_reaction_17_elmt_Kcat(unit "") = 0.0566279 "";
    Real elmt_product36 "";
    Real elmt_reactant35 "";
    Real elmt_reaction_9(unit = "") "Erk_Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI42\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:26:55Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_9_elmt_km(unit "") = 1007340.0 "";
    parameter Real elmt_reaction_9_elmt_Kcat(unit "") = 9.85367 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_reaction_14(unit = "") "PI3K_Activation_EGFR";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI47\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:05Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_14_elmt_km(unit "") = 184912.0 "";
    parameter Real elmt_reaction_14_elmt_Kcat(unit "") = 10.6737 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reaction_15(unit = "") "PI3K_Activation_Ras";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI48\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_15_elmt_km(unit "") = 272056.0 "";
    parameter Real elmt_reaction_15_elmt_Kcat(unit "") = 0.0771067 "";
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_reaction_7(unit = "") "Mek_Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI40\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:26:58Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_7_elmt_km(unit "") = 4768350.0 "";
    parameter Real elmt_reaction_7_elmt_Kcat(unit "") = 185.759 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_reaction_8(unit = "") "Mek_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI41\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:01Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_8_elmt_km(unit "") = 518753.0 "";
    parameter Real elmt_reaction_8_elmt_Kcat(unit "") = 2.83243 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_reaction_5(unit = "") "Raf1_Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI38\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:21Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_5_elmt_km(unit "") = 62464.6 "";
    parameter Real elmt_reaction_5_elmt_Kcat(unit "") = 0.884096 "";
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_reaction_18(unit = "") "Akt_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI51\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:24:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000012\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_18_elmt_k1(unit "") = 0.005 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_reaction_6(unit = "") "Raf1_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI39\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:22Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_6_elmt_km(unit "") = 1061.71 "";
    parameter Real elmt_reaction_6_elmt_Kcat(unit "") = 0.126329 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_reaction_19(unit = "") "Raf1_Deactivation_Akt";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI52\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:25Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_19_elmt_km(unit "") = 119355.0 "";
    parameter Real elmt_reaction_19_elmt_Kcat(unit "") = 15.1212 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_reaction_30(unit = "") "bRaf_Activation_Ras";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI63\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:26:35Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_30_elmt_km(unit "") = 62464.6 "";
    parameter Real elmt_reaction_30_elmt_kcat(unit "") = 0.884096 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_reaction_12(unit = "") "P90Rsk_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI45\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:25:48Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000012\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_12_elmt_k1(unit "") = 0.005 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_reaction_13(unit = "") "Sos_Feedback_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI46\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:35Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_13_elmt_km(unit "") = 896896.0 "";
    parameter Real elmt_reaction_13_elmt_Kcat(unit "") = 1611.97 "";
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_reaction_10(unit = "") "Erk_Deactivation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI43\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:26:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_10_elmt_km(unit "") = 3496490.0 "";
    parameter Real elmt_reaction_10_elmt_Kcat(unit "") = 8.8912 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_reaction_11(unit = "") "P90Rsk_Activation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI44\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-28T16:27:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000029\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_11_elmt_km(unit "") = 763523.0 "";
    parameter Real elmt_reaction_11_elmt_Kcat(unit "") = 0.0213697 "";
    Real elmt_product24 "";
    Real elmt_reactant23 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_product34 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_product24 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product44 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product50 = 1.0;
        elmt_product56 = 1.0;
        elmt_product12 = 1.0;
        elmt_product54 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product48 = 1.0;
        elmt_product46 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product62 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product22 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product58 = 1.0;
        elmt_product14 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_reaction_27 = (elmt_compartment_0 * (((elmt_reaction_27_elmt_kcat * elmt_species_23 * elmt_species_9) / (elmt_reaction_27_elmt_km + elmt_species_9))));
        elmt_reaction_28 = (elmt_compartment_0 * (elmt_reaction_28_elmt_v));
        elmt_reaction_25 = (elmt_compartment_0 * (((elmt_reaction_25_elmt_kcat * elmt_species_21 * elmt_species_24) / (elmt_reaction_25_elmt_km + elmt_species_24))));
        elmt_reaction_26 = (elmt_compartment_0 * (((elmt_reaction_26_elmt_kcat * elmt_species_27 * elmt_species_23) / (elmt_reaction_26_elmt_km + elmt_species_23))));
        elmt_reaction_29 = (elmt_compartment_0 * elmt_reaction_29_elmt_k1 * elmt_species_1);
        elmt_reaction_20 = (elmt_compartment_0 * elmt_reaction_20_elmt_k1 * elmt_species_0);
        elmt_reaction_23 = (elmt_compartment_0 * (((elmt_reaction_23_elmt_kcat * elmt_species_19 * elmt_species_22) / (elmt_reaction_23_elmt_km + elmt_species_22))));
        elmt_reaction_24 = (elmt_compartment_0 * (((elmt_reaction_24_elmt_kcat * elmt_species_29 * elmt_species_21) / (elmt_reaction_24_elmt_km + elmt_species_21))));
        elmt_reaction_21 = (elmt_compartment_0 * (((elmt_reaction_21_elmt_kcat * elmt_species_0 * elmt_species_20) / (elmt_reaction_21_elmt_km + elmt_species_20))));
        elmt_reaction_22 = (elmt_compartment_0 * elmt_reaction_22_elmt_k1 * elmt_species_19);
        elmt_reaction_3 = (elmt_compartment_0 * (((elmt_reaction_3_elmt_Kcat * elmt_species_2 * elmt_species_5) / (elmt_reaction_3_elmt_km + elmt_species_5))));
        elmt_reaction_4 = (elmt_compartment_0 * (((elmt_reaction_4_elmt_Kcat * elmt_species_28 * elmt_species_4) / (elmt_reaction_4_elmt_km + elmt_species_4))));
        elmt_reaction_1 = (elmt_compartment_0 * (((elmt_reaction_1_elmt_Kcat * elmt_species_0 * elmt_species_3) / (elmt_reaction_1_elmt_km + elmt_species_3))));
        elmt_reaction_2 = (elmt_compartment_0 * elmt_reaction_2_elmt_k1 * elmt_species_2);
        elmt_reaction_0 = (elmt_compartment_0 * ((elmt_reaction_0_elmt_k1 * elmt_species_25 * elmt_species_1) - (elmt_reaction_0_elmt_k2 * elmt_species_0)));
        elmt_reaction_16 = (elmt_compartment_0 * elmt_reaction_16_elmt_k1 * elmt_species_14);
        elmt_reaction_17 = (elmt_compartment_0 * (((elmt_reaction_17_elmt_Kcat * elmt_species_14 * elmt_species_17) / (elmt_reaction_17_elmt_km + elmt_species_17))));
        elmt_reaction_9 = (elmt_compartment_0 * (((elmt_reaction_9_elmt_Kcat * elmt_species_8 * elmt_species_11) / (elmt_reaction_9_elmt_km + elmt_species_11))));
        elmt_reaction_14 = (elmt_compartment_0 * (((elmt_reaction_14_elmt_Kcat * elmt_species_0 * elmt_species_15) / (elmt_reaction_14_elmt_km + elmt_species_15))));
        elmt_reaction_15 = (elmt_compartment_0 * (((elmt_reaction_15_elmt_Kcat * elmt_species_4 * elmt_species_15) / (elmt_reaction_15_elmt_km + elmt_species_15))));
        elmt_reaction_7 = (elmt_compartment_0 * (((elmt_reaction_7_elmt_Kcat * elmt_species_6 * elmt_species_9) / (elmt_reaction_7_elmt_km + elmt_species_9))));
        elmt_reaction_8 = (elmt_compartment_0 * (((elmt_reaction_8_elmt_Kcat * elmt_species_26 * elmt_species_8) / (elmt_reaction_8_elmt_km + elmt_species_8))));
        elmt_reaction_5 = (elmt_compartment_0 * (((elmt_reaction_5_elmt_Kcat * elmt_species_4 * elmt_species_7) / (elmt_reaction_5_elmt_km + elmt_species_7))));
        elmt_reaction_18 = (elmt_compartment_0 * elmt_reaction_18_elmt_k1 * elmt_species_16);
        elmt_reaction_6 = (elmt_compartment_0 * (((elmt_reaction_6_elmt_Kcat * elmt_species_27 * elmt_species_6) / (elmt_reaction_6_elmt_km + elmt_species_6))));
        elmt_reaction_19 = (elmt_compartment_0 * (((elmt_reaction_19_elmt_Kcat * elmt_species_16 * elmt_species_6) / (elmt_reaction_19_elmt_km + elmt_species_6))));
        elmt_reaction_30 = (elmt_compartment_0 * (((elmt_reaction_30_elmt_kcat * elmt_species_4 * elmt_species_24) / (elmt_reaction_30_elmt_km + elmt_species_24))));
        elmt_reaction_12 = (elmt_compartment_0 * elmt_reaction_12_elmt_k1 * elmt_species_12);
        elmt_reaction_13 = (elmt_compartment_0 * (((elmt_reaction_13_elmt_Kcat * elmt_species_12 * elmt_species_2) / (elmt_reaction_13_elmt_km + elmt_species_2))));
        elmt_reaction_10 = (elmt_compartment_0 * (((elmt_reaction_10_elmt_Kcat * elmt_species_26 * elmt_species_10) / (elmt_reaction_10_elmt_km + elmt_species_10))));
        elmt_reaction_11 = (elmt_compartment_0 * (((elmt_reaction_11_elmt_Kcat * elmt_species_10 * elmt_species_13) / (elmt_reaction_11_elmt_km + elmt_species_13))));
        der(elmt_product30) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product34) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_product24) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product44) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product50) = 0;
        der(elmt_product56) = 0;
        der(elmt_product12) = 0;
        der(elmt_product54) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product48) = 0;
        der(elmt_product46) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product62) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product58) = 0;
        der(elmt_product14) = 0;
        der(elmt_product18) = 0;

end Reactions;
