within BIOMD625;
class Reactions

    input Real elmt_CXCR5;
    input Real elmt_nTreg;
    input Real elmt_Tfh;
    input Real elmt_compartment;
    input Real elmt_IL6;
    input Real elmt_IL21;
    input Real elmt_IL10;
    input Real elmt_IL4;
    input Real elmt_Tgif1;
    input Real elmt_Tfr;
    input Real elmt_Bcl6;
    input Real elmt_STAT3;
    input Real elmt_STAT5;
    input Real elmt_Blimp1;
    input Real elmt_FoxP3;
    input Real elmt_IL2;
    input Real elmt_ICOS;
    input Real elmt_TGFb;
    input Real elmt_RXR;
    input Real elmt_NaiveCD4;

    Real elmt_STAT3_Activation(unit = "") "STAT3 Activation";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI32\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:25:03Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_STAT3_Activation_elmt_sigma2(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_STAT3_Activation_elmt_sigma1(unit "") = 0.1253 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product13 "";
    Real elmt_NaiveCD4_Source(unit = "") "NaiveCD4 Source";
 annotation(Documentation(info="<annotation>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI21\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:22:46Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_NaiveCD4_Source_elmt_v(unit "") = 100.0 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_IL21_Production(unit = "") "IL21 Production";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI52\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:22:08Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
  </rdf:RDF>
</annotation>"));
    parameter Real elmt_IL21_Production_elmt_sigma(unit "") = 0.06005 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product33 "";
    Real elmt_IL21_Degradation(unit = "") "IL21 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI51\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:21:57Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_IL21_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant32 "";
    Real elmt_NaiveCD4_Death(unit = "") "NaiveCD4 Death";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI22\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:22:39Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_NaiveCD4_Death_elmt_k1(unit "") = 0.035655 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_IL6_Degradation(unit = "") "IL6 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI49\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:22:25Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_IL6_Degradation_elmt_k1(unit "") = 0.69675 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant30 "";
    Real elmt_ICOS_Production(unit = "") "ICOS Production";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI35\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:21:05Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_ICOS_Production_elmt_sigma(unit "") = 0.01787 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product16 "";
    Real elmt_IL10_Degradation(unit = "") "IL10 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI50\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:21:25Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_IL10_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant31 "";
    Real elmt_Tfr_Death(unit = "") "Tfr Death";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI28\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:26:03Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:go:GO:0070238\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_Tfr_Death_elmt_k1(unit "") = 0.03 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant9 "";
    Real elmt_Blimp1_Activation(unit = "") "Blimp1 Activation";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI30\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:20:27Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_Blimp1_Activation_elmt_sigma(unit "") = 3.59995 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Blimp1_Activation_elmt_alpha(unit "") = 2.386 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product11 "";
    Real elmt_IL6_Production(unit = "") "IL6 Production";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI38\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:22:29Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_IL6_Production_elmt_alpha1(unit "") = 0.43475 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_IL6_Production_elmt_sigma1(unit "") = 0.9901 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product19 "";
    Real elmt_RXR_Degradation(unit = "") "RXR Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI57\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-06-22T15:33:22Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_RXR_Degradation_elmt_k1(unit "") = 0.08465 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant38 "";
    Real elmt_ICOS_Degradation(unit = "") "ICOS Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI46\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:21:01Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_ICOS_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant27 "";
    Real elmt_nTreg_Source(unit = "") "nTreg Source";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI23\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:23:00Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_nTreg_Source_elmt_v(unit "") = 10.0 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product2 "";
    Real elmt_Tfh_Differentiation(unit = "") "Tfh Differentiation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI25\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:25:53Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:go:GO:0061470\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_Tfh_Differentiation_elmt_gamma(unit "") = 0.364318 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Tfh_Differentiation_elmt_alpha(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_IL2_Production(unit = "") "IL2 Production";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\"/>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI36\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:21:58Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000393\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_IL2_Production_elmt_v(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product17 "";
    Real elmt_CXCR5_Degradation(unit = "") "CXCR5 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI45\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:20:36Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_CXCR5_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant26 "";
    Real elmt_nTreg_Death(unit = "") "nTreg Death";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI24\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:22:53Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_nTreg_Death_elmt_k1(unit "") = 0.03 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_reactant3 "";
    Real elmt_Tgif1_Production(unit = "") "Tgif1 Production";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI56\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-06-22T15:32:13Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_Tgif1_Production_elmt_sigma(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product37 "";
    Real elmt_STAT3_Degradation(unit = "") "STAT3 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI43\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:25:08Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_STAT3_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant24 "";
    Real elmt_RXR_Activation(unit = "") "RXR Activation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\"/>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI55\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-06-22T15:31:38Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000393\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_RXR_Activation_elmt_sigma(unit "") = 0.05 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_RXR_Activation_elmt_alpha(unit "") = 3.04985 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product36 "";
    Real elmt_FoxP3_Degradation(unit = "") "FoxP3 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI42\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:20:56Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_FoxP3_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant23 "";
    Real elmt_Tfr_Differentiation(unit = "") "Tfr Differentiation";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI26\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:26:08Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Tfr_Differentiation_elmt_gamma2(unit "") = 0.111444 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Tfr_Differentiation_elmt_gamma1(unit "") = 0.0555708 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_STAT5_Activation(unit = "") "STAT5 Activation";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI33\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:25:19Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_STAT5_Activation_elmt_sigma(unit "") = 10.0 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product14 "";
    Real elmt_IL10_Production(unit = "") "IL10 Production";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI39\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:21:31Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_IL10_Production_elmt_sigma(unit "") = 0.0677 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product20 "";
    Real elmt_TGFb_Production(unit = "") "TGFb Production";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI53\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-06-22T15:30:27Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_TGFb_Production_elmt_sigma(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product34 "";
    Real elmt_FoxP3_Activation(unit = "") "FoxP3 Activation";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI31\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:20:49Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_FoxP3_Activation_elmt_sigma(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product12 "";
    Real elmt_STAT5_Degradation(unit = "") "STAT5 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI44\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:25:29Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_STAT5_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant25 "";
    Real elmt_Tfh_Death(unit = "") "Tfh Death";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI27\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:25:46Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:go:GO:0070231\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_Tfh_Death_elmt_k1(unit "") = 0.03 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant8 "";
    Real elmt_IL2_Degradation(unit = "") "IL2 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI47\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:21:52Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_IL2_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant28 "";
    Real elmt_TGFb_Degradation(unit = "") "TGFb Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI54\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-06-22T15:31:06Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_TGFb_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant35 "";
    Real elmt_Blimp1_Degradation(unit = "") "Blimp1 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI41\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:20:32Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_Blimp1_Degradation_elmt_k1(unit "") = 0.1106 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant22 "";
    Real elmt_CXCR5_Production(unit = "") "CXCR5 Production";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI34\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:20:42Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_CXCR5_Production_elmt_sigma2(unit "") = 2.92243 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_CXCR5_Production_elmt_sigma1(unit "") = 3.0403 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_CXCR5_Production_elmt_alpha(unit "") = 0.0539319 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product15 "";
    Real elmt_Bcl6_Degradation(unit = "") "Bcl6 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI40\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:20:20Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_Bcl6_Degradation_elmt_k1(unit "") = 0.16373 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant21 "";
    Real elmt_Bcl6_Activation(unit = "") "Bcl6 Activation";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI29\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:20:05Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_Bcl6_Activation_elmt_alpha3(unit "") = 0.1253 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Bcl6_Activation_elmt_sigma2(unit "") = 3.2195 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Bcl6_Activation_elmt_alpha1(unit "") = 0.20001 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Bcl6_Activation_elmt_sigma1(unit "") = 3.24417 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_Bcl6_Activation_elmt_alpha2(unit "") = 1.36752 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product10 "";
    Real elmt_IL4_Production(unit = "") "IL4 Production";
 annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI37\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-05-25T11:22:18Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));
    parameter Real elmt_IL4_Production_elmt_sigma(unit "") = 0.014555 "";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product18 "";
    Real elmt_IL4_Degradation(unit = "") "IL4 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI48\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-05-25T11:22:13Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_IL4_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant29 "";
    Real elmt_Tgif1_Degradation(unit = "") "Tgif1 Degradation";
 annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
    </rdf:RDF>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI58\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2015-06-22T15:33:46Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0030163\"/>
          <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
  </annotation>"));
    parameter Real elmt_Tgif1_Degradation_elmt_k1(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant39 "";


    initial equation
        elmt_product34 = 1.0;
        elmt_product12 = 1.0;
        elmt_product33 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product20 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product5 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product37 = 1.0;
        elmt_product15 = 1.0;
        elmt_product36 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_STAT3_Activation = (elmt_compartment * (((elmt_STAT3_Activation_elmt_sigma1 * elmt_IL6) + (elmt_STAT3_Activation_elmt_sigma2 * elmt_IL21))));
        elmt_NaiveCD4_Source = (elmt_compartment * (elmt_NaiveCD4_Source_elmt_v));
        elmt_IL21_Production = (elmt_compartment * ((elmt_IL21_Production_elmt_sigma * elmt_Tfh)));
        elmt_IL21_Degradation = (elmt_compartment * elmt_IL21_Degradation_elmt_k1 * elmt_IL21);
        elmt_NaiveCD4_Death = (elmt_compartment * elmt_NaiveCD4_Death_elmt_k1 * elmt_NaiveCD4);
        elmt_IL6_Degradation = (elmt_compartment * elmt_IL6_Degradation_elmt_k1 * elmt_IL6);
        elmt_ICOS_Production = (elmt_compartment * ((elmt_ICOS_Production_elmt_sigma * elmt_Tfh)));
        elmt_IL10_Degradation = (elmt_compartment * elmt_IL10_Degradation_elmt_k1 * elmt_IL10);
        elmt_Tfr_Death = (elmt_compartment * elmt_Tfr_Death_elmt_k1 * elmt_Tfr);
        elmt_Blimp1_Activation = (elmt_compartment * (((elmt_Blimp1_Activation_elmt_sigma * elmt_Tfr) / (elmt_Blimp1_Activation_elmt_alpha + elmt_Bcl6))));
        elmt_IL6_Production = (elmt_compartment * ((elmt_IL6_Production_elmt_sigma1 / (elmt_IL6_Production_elmt_alpha1 + elmt_IL4))));
        elmt_RXR_Degradation = (elmt_compartment * elmt_RXR_Degradation_elmt_k1 * elmt_RXR);
        elmt_ICOS_Degradation = (elmt_compartment * elmt_ICOS_Degradation_elmt_k1 * elmt_ICOS);
        elmt_nTreg_Source = (elmt_compartment * (elmt_nTreg_Source_elmt_v));
        elmt_Tfh_Differentiation = (elmt_compartment * (((elmt_Tfh_Differentiation_elmt_gamma * elmt_NaiveCD4 * elmt_Bcl6) / (elmt_Tfh_Differentiation_elmt_alpha + elmt_IL10))));
        elmt_IL2_Production = (elmt_compartment * (elmt_IL2_Production_elmt_v));
        elmt_CXCR5_Degradation = (elmt_compartment * elmt_CXCR5_Degradation_elmt_k1 * elmt_CXCR5);
        elmt_nTreg_Death = (elmt_compartment * elmt_nTreg_Death_elmt_k1 * elmt_nTreg);
        elmt_Tgif1_Production = (elmt_compartment * ((elmt_Tgif1_Production_elmt_sigma * elmt_Tfh)));
        elmt_STAT3_Degradation = (elmt_compartment * elmt_STAT3_Degradation_elmt_k1 * elmt_STAT3);
        elmt_RXR_Activation = (elmt_compartment * (((elmt_RXR_Activation_elmt_sigma * elmt_TGFb) / (elmt_RXR_Activation_elmt_alpha + elmt_Tgif1))));
        elmt_FoxP3_Degradation = (elmt_compartment * elmt_FoxP3_Degradation_elmt_k1 * elmt_FoxP3);
        elmt_Tfr_Differentiation = (elmt_compartment * (((elmt_Tfr_Differentiation_elmt_gamma1 * elmt_nTreg * elmt_Bcl6) + (elmt_Tfr_Differentiation_elmt_gamma2 * elmt_nTreg * elmt_CXCR5))));
        elmt_STAT5_Activation = (elmt_compartment * ((elmt_STAT5_Activation_elmt_sigma * elmt_IL2)));
        elmt_IL10_Production = (elmt_compartment * ((elmt_IL10_Production_elmt_sigma * elmt_Tfr)));
        elmt_TGFb_Production = (elmt_compartment * ((elmt_TGFb_Production_elmt_sigma * elmt_IL10)));
        elmt_FoxP3_Activation = (elmt_compartment * ((elmt_FoxP3_Activation_elmt_sigma * elmt_nTreg)));
        elmt_STAT5_Degradation = (elmt_compartment * elmt_STAT5_Degradation_elmt_k1 * elmt_STAT5);
        elmt_Tfh_Death = (elmt_compartment * elmt_Tfh_Death_elmt_k1 * elmt_Tfh);
        elmt_IL2_Degradation = (elmt_compartment * elmt_IL2_Degradation_elmt_k1 * elmt_IL2);
        elmt_TGFb_Degradation = (elmt_compartment * elmt_TGFb_Degradation_elmt_k1 * elmt_TGFb);
        elmt_Blimp1_Degradation = (elmt_compartment * elmt_Blimp1_Degradation_elmt_k1 * elmt_Blimp1);
        elmt_CXCR5_Production = (elmt_compartment * ((((elmt_CXCR5_Production_elmt_sigma1 * elmt_Tfh) + (elmt_CXCR5_Production_elmt_sigma2 * elmt_Tfr)) / (elmt_CXCR5_Production_elmt_alpha + elmt_Blimp1))));
        elmt_Bcl6_Degradation = (elmt_compartment * elmt_Bcl6_Degradation_elmt_k1 * elmt_Bcl6);
        elmt_Bcl6_Activation = (elmt_compartment * ((((elmt_Bcl6_Activation_elmt_sigma1 * elmt_ICOS) + (elmt_Bcl6_Activation_elmt_sigma2 * elmt_STAT3)) / ((elmt_Bcl6_Activation_elmt_alpha1 + elmt_Blimp1) * (elmt_Bcl6_Activation_elmt_alpha2 + elmt_STAT5) * (elmt_Bcl6_Activation_elmt_alpha3 + elmt_RXR)))));
        elmt_IL4_Production = (elmt_compartment * ((elmt_IL4_Production_elmt_sigma * elmt_Tfh)));
        elmt_IL4_Degradation = (elmt_compartment * elmt_IL4_Degradation_elmt_k1 * elmt_IL4);
        elmt_Tgif1_Degradation = (elmt_compartment * elmt_Tgif1_Degradation_elmt_k1 * elmt_Tgif1);
        der(elmt_product34) = 0;
        der(elmt_product12) = 0;
        der(elmt_product33) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product20) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product5) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product37) = 0;
        der(elmt_product15) = 0;
        der(elmt_product36) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;
        der(elmt_product17) = 0;

end Reactions;
