within BIOMD625;
class Class_elmt_compartment

    input Real elmt_STAT3_Activation;
    input Real elmt_NaiveCD4_Source;
    input Real elmt_product34;
    input Real elmt_product33;
    input Real elmt_IL21_Degradation;
    input Real elmt_IL6_Degradation;
    input Real elmt_Tfr_Death;
    input Real elmt_IL6_Production;
    input Real elmt_RXR_Degradation;
    input Real elmt_ICOS_Degradation;
    input Real elmt_reactant9;
    input Real elmt_RXR_Activation;
    input Real elmt_Tfr_Differentiation;
    input Real elmt_TGFb_Production;
    input Real elmt_FoxP3_Activation;
    input Real elmt_CXCR5_Production;
    input Real elmt_product37;
    input Real elmt_product36;
    input Real elmt_IL4_Production;
    input Real elmt_Bcl6_Activation;
    input Real elmt_IL4_Degradation;
    input Real elmt_Tgif1_Degradation;
    input Real elmt_product12;
    input Real elmt_IL21_Production;
    input Real elmt_product11;
    input Real elmt_product10;
    input Real elmt_reactant26;
    input Real elmt_NaiveCD4_Death;
    input Real elmt_ICOS_Production;
    input Real elmt_reactant27;
    input Real elmt_IL10_Degradation;
    input Real elmt_reactant21;
    input Real elmt_reactant22;
    input Real elmt_reactant23;
    input Real elmt_reactant24;
    input Real elmt_Blimp1_Activation;
    input Real elmt_nTreg_Source;
    input Real elmt_Tfh_Differentiation;
    input Real elmt_CXCR5_Degradation;
    input Real elmt_reactant1;
    input Real elmt_reactant30;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_nTreg_Death;
    input Real elmt_reactant3;
    input Real elmt_reactant31;
    input Real elmt_reactant6;
    input Real elmt_Tgif1_Production;
    input Real elmt_reactant8;
    input Real elmt_product20;
    input Real elmt_STAT3_Degradation;
    input Real elmt_FoxP3_Degradation;
    input Real elmt_product0;
    input Real elmt_reactant38;
    input Real elmt_reactant39;
    input Real elmt_product5;
    input Real elmt_reactant32;
    input Real elmt_IL10_Production;
    input Real elmt_product2;
    input Real elmt_reactant35;
    input Real elmt_Tfh_Death;
    input Real elmt_TGFb_Degradation;
    input Real elmt_reactant29;
    input Real elmt_Blimp1_Degradation;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_Bcl6_Degradation;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_product18;

    Real elmt_compartment(unit = "") "compartment";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/26947272\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-12T22:50:07Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:encodes rdf:resource=\"urn:miriam:taxonomy:210\"/>
            <CopasiMT:encodes>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/taxonomy/10090\"/>
              </rdf:Bag>
            </CopasiMT:encodes>
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/bto/BTO:0005568\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_nTreg_conc(unit = "");
    Real elmt_nTreg_amount(unit = "");
    Real elmt_nTreg(unit = "") "nTreg";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI3\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-06-22T15:50:46Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:cl:CL:0002677\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_CXCR5_conc(unit = "");
    Real elmt_CXCR5_amount(unit = "");
    Real elmt_CXCR5(unit = "") "CXCR5";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI16\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-13T06:22:56Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:Q04683\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_Tfh_conc(unit = "");
    Real elmt_Tfh_amount(unit = "");
    Real elmt_Tfh(unit = "") "Tfh";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI4\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-05-25T14:35:40Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:cl:CL:0002038\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_IL6_conc(unit = "");
    Real elmt_IL6_amount(unit = "");
    Real elmt_IL6(unit = "") "IL6";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI13\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-06-22T16:24:58Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:P08505\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_IL4_conc(unit = "");
    Real elmt_IL4_amount(unit = "");
    Real elmt_IL4(unit = "") "IL4";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI12\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-13T06:23:03Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:P07750\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_IL10_conc(unit = "");
    Real elmt_IL10_amount(unit = "");
    Real elmt_IL10(unit = "") "IL10";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI14\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-13T06:23:00Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:P18893\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_IL21_conc(unit = "");
    Real elmt_IL21_amount(unit = "");
    Real elmt_IL21(unit = "") "IL21";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI15\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-13T06:23:02Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:Q9ES17\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_Tgif1_conc(unit = "");
    Real elmt_Tgif1_amount(unit = "");
    Real elmt_Tgif1(unit = "") "Tgif1";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI19\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-13T11:22:33Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:ncbigene:669823\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_Tfr_conc(unit = "");
    Real elmt_Tfr_amount(unit = "");
    Real elmt_Tfr(unit = "") "Tfr";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI5\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>T follicular regulatory cells</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"urn:miriam:pubmed:27088919\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-05-25T14:35:31Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isPartOf rdf:resource=\"urn:miriam:cl:CL:0002677\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_Bcl6_conc(unit = "");
    Real elmt_Bcl6_amount(unit = "");
    Real elmt_Bcl6(unit = "") "Bcl6";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI6\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-13T06:22:43Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:P41183\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_STAT3_conc(unit = "");
    Real elmt_STAT3_amount(unit = "");
    Real elmt_STAT3(unit = "") "STAT3";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI9\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-05-25T14:36:03Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:P42227\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_STAT5_conc(unit = "");
    Real elmt_STAT5_amount(unit = "");
    Real elmt_STAT5(unit = "") "STAT5";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI10\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-05-25T14:36:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:P42232\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_Blimp1_conc(unit = "");
    Real elmt_Blimp1_amount(unit = "");
    Real elmt_Blimp1(unit = "") "Blimp1";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI7\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-13T06:22:55Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:Q60636\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_FoxP3_conc(unit = "");
    Real elmt_FoxP3_amount(unit = "");
    Real elmt_FoxP3(unit = "") "FoxP3";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI8\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-13T06:22:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:Q99JB6\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_IL2_conc(unit = "");
    Real elmt_IL2_amount(unit = "");
    Real elmt_IL2(unit = "") "IL2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI11\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-05-25T14:36:18Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:P04351\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_ICOS_conc(unit = "");
    Real elmt_ICOS_amount(unit = "");
    Real elmt_ICOS(unit = "") "ICOS";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI17\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-13T06:22:58Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:Q9WVS0\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_TGFb_conc(unit = "");
    Real elmt_TGFb_amount(unit = "");
    Real elmt_TGFb(unit = "") "TGFb";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI18\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-10T12:01:07Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:Q64729\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_RXR_conc(unit = "");
    Real elmt_RXR_amount(unit = "");
    Real elmt_RXR(unit = "") "RXR";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI20\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-13T09:34:14Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:P28700\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_NaiveCD4_conc(unit = "");
    Real elmt_NaiveCD4_amount(unit = "");
    Real elmt_NaiveCD4(unit = "") "NaiveCD4";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI2\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-05-25T11:11:35Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:uniprot:P06332\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_nTreg_conc = 100.0;
        elmt_CXCR5_conc = 1.0;
        elmt_Tfh_conc = 1.0;
        elmt_IL6_conc = 1.0;
        elmt_IL4_conc = 1.0;
        elmt_IL10_conc = 1.0;
        elmt_IL21_conc = 1.0;
        elmt_Tgif1_conc = 1.0;
        elmt_Tfr_conc = 1.0;
        elmt_Bcl6_conc = 1.0;
        elmt_STAT3_conc = 1.0;
        elmt_STAT5_conc = 0.0;
        elmt_Blimp1_conc = 1.0;
        elmt_FoxP3_conc = 1.0;
        elmt_IL2_conc = 1.0E-4;
        elmt_ICOS_conc = 1.0;
        elmt_TGFb_conc = 1.0;
        elmt_RXR_conc = 1.0;
        elmt_NaiveCD4_conc = 200.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_nTreg = elmt_nTreg_conc;
        elmt_CXCR5 = elmt_CXCR5_conc;
        elmt_Tfh = elmt_Tfh_conc;
        elmt_IL6 = elmt_IL6_conc;
        elmt_IL4 = elmt_IL4_conc;
        elmt_IL10 = elmt_IL10_conc;
        elmt_IL21 = elmt_IL21_conc;
        elmt_Tgif1 = elmt_Tgif1_conc;
        elmt_Tfr = elmt_Tfr_conc;
        elmt_Bcl6 = elmt_Bcl6_conc;
        elmt_STAT3 = elmt_STAT3_conc;
        elmt_STAT5 = elmt_STAT5_conc;
        elmt_Blimp1 = elmt_Blimp1_conc;
        elmt_FoxP3 = elmt_FoxP3_conc;
        elmt_IL2 = elmt_IL2_conc;
        elmt_ICOS = elmt_ICOS_conc;
        elmt_TGFb = elmt_TGFb_conc;
        elmt_RXR = elmt_RXR_conc;
        elmt_NaiveCD4 = elmt_NaiveCD4_conc;
        der(elmt_STAT5_amount) = 0;
        der(elmt_IL2_amount) = 0;
        der(elmt_nTreg_amount) = ((elmt_nTreg_Source * elmt_product2) + (- (elmt_nTreg_Death * elmt_reactant3)) + (- (elmt_Tfr_Differentiation * elmt_reactant6)));
        der(elmt_CXCR5_amount) = ((- (elmt_CXCR5_Degradation * elmt_reactant26)) + (elmt_CXCR5_Production * elmt_product15));
        der(elmt_Tfh_amount) = ((elmt_Tfh_Differentiation * elmt_product5) + (- (elmt_Tfh_Death * elmt_reactant8)));
        der(elmt_IL6_amount) = ((- (elmt_IL6_Degradation * elmt_reactant30)) + (elmt_IL6_Production * elmt_product19));
        der(elmt_IL4_amount) = ((elmt_IL4_Production * elmt_product18) + (- (elmt_IL4_Degradation * elmt_reactant29)));
        der(elmt_IL10_amount) = ((- (elmt_IL10_Degradation * elmt_reactant31)) + (elmt_IL10_Production * elmt_product20));
        der(elmt_IL21_amount) = ((elmt_IL21_Production * elmt_product33) + (- (elmt_IL21_Degradation * elmt_reactant32)));
        der(elmt_Tgif1_amount) = ((elmt_Tgif1_Production * elmt_product37) + (- (elmt_Tgif1_Degradation * elmt_reactant39)));
        der(elmt_Tfr_amount) = ((- (elmt_Tfr_Death * elmt_reactant9)) + (elmt_Tfr_Differentiation * elmt_product7));
        der(elmt_Bcl6_amount) = ((- (elmt_Bcl6_Degradation * elmt_reactant21)) + (elmt_Bcl6_Activation * elmt_product10));
        der(elmt_STAT3_amount) = ((elmt_STAT3_Activation * elmt_product13) + (- (elmt_STAT3_Degradation * elmt_reactant24)));
        der(elmt_Blimp1_amount) = ((elmt_Blimp1_Activation * elmt_product11) + (- (elmt_Blimp1_Degradation * elmt_reactant22)));
        der(elmt_FoxP3_amount) = ((- (elmt_FoxP3_Degradation * elmt_reactant23)) + (elmt_FoxP3_Activation * elmt_product12));
        der(elmt_ICOS_amount) = ((elmt_ICOS_Production * elmt_product16) + (- (elmt_ICOS_Degradation * elmt_reactant27)));
        der(elmt_TGFb_amount) = ((elmt_TGFb_Production * elmt_product34) + (- (elmt_TGFb_Degradation * elmt_reactant35)));
        der(elmt_RXR_amount) = ((- (elmt_RXR_Degradation * elmt_reactant38)) + (elmt_RXR_Activation * elmt_product36));
        der(elmt_NaiveCD4_amount) = ((elmt_NaiveCD4_Source * elmt_product0) + (- (elmt_NaiveCD4_Death * elmt_reactant1)) + (- (elmt_Tfh_Differentiation * elmt_reactant4)));

    algorithm
        elmt_nTreg_conc := elmt_nTreg_amount / elmt_compartment;
        elmt_CXCR5_conc := elmt_CXCR5_amount / elmt_compartment;
        elmt_Tfh_conc := elmt_Tfh_amount / elmt_compartment;
        elmt_IL6_conc := elmt_IL6_amount / elmt_compartment;
        elmt_IL4_conc := elmt_IL4_amount / elmt_compartment;
        elmt_IL10_conc := elmt_IL10_amount / elmt_compartment;
        elmt_IL21_conc := elmt_IL21_amount / elmt_compartment;
        elmt_Tgif1_conc := elmt_Tgif1_amount / elmt_compartment;
        elmt_Tfr_conc := elmt_Tfr_amount / elmt_compartment;
        elmt_Bcl6_conc := elmt_Bcl6_amount / elmt_compartment;
        elmt_STAT3_conc := elmt_STAT3_amount / elmt_compartment;
        elmt_STAT5_conc := elmt_STAT5_amount / elmt_compartment;
        elmt_Blimp1_conc := elmt_Blimp1_amount / elmt_compartment;
        elmt_FoxP3_conc := elmt_FoxP3_amount / elmt_compartment;
        elmt_IL2_conc := elmt_IL2_amount / elmt_compartment;
        elmt_ICOS_conc := elmt_ICOS_amount / elmt_compartment;
        elmt_TGFb_conc := elmt_TGFb_amount / elmt_compartment;
        elmt_RXR_conc := elmt_RXR_amount / elmt_compartment;
        elmt_NaiveCD4_conc := elmt_NaiveCD4_amount / elmt_compartment;
end Class_elmt_compartment;
