within BIOMD625;
model Leber2016___Expanded_model_of_Tfh_Tfr_differentiation___Helicobacter_pylori_infection_1_1 "Leber2016 - Expanded model of Tfh-Tfr differentiation - Helicobacter pylori infection" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
	
	
	
  </rdf:RDF>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
      <rdf:Description rdf:about=\"#COPASI0\">
        <dcterms:bibliographicCitation>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/mamo/MAMO_0000046\"/>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:bibliographicCitation>
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
            <dcterms:W3CDTF>2015-05-25T11:11:04Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
        <dcterms:creator>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>kothamav@babraham.ac.uk</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Kothamachu</vCard:Family>
                    <vCard:Given>Varun</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Babraham Institute</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>ajleber@vt.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Leber</vCard:Family>
                    <vCard:Given>Andrew</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Biocomplexity Institute at Virginia Tech</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:creator>
        <dcterms:modified>
          <rdf:Description>
            <dcterms:W3CDTF>2017-02-01T15:35:12Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:modified>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/MODEL1603010000\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/BIOMD0000000625\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:isPartOf>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/doid/DOID:750\"/>
          </rdf:Bag>
        </CopasiMT:isPartOf>
        <CopasiMT:isPartOf>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/doid/DOID:1724\"/>
          </rdf:Bag>
        </CopasiMT:isPartOf>
        <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:go:GO:0044419\"/>
        <CopasiMT:occursIn>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/bto/BTO:0005568\"/>
          </rdf:Bag>
        </CopasiMT:occursIn>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_CXCR5 = elmt_compartment.elmt_CXCR5;
        Reacs.elmt_nTreg = elmt_compartment.elmt_nTreg;
        Reacs.elmt_Tfh = elmt_compartment.elmt_Tfh;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_IL6 = elmt_compartment.elmt_IL6;
        Reacs.elmt_IL21 = elmt_compartment.elmt_IL21;
        Reacs.elmt_IL10 = elmt_compartment.elmt_IL10;
        Reacs.elmt_IL4 = elmt_compartment.elmt_IL4;
        Reacs.elmt_Tgif1 = elmt_compartment.elmt_Tgif1;
        Reacs.elmt_Tfr = elmt_compartment.elmt_Tfr;
        Reacs.elmt_Bcl6 = elmt_compartment.elmt_Bcl6;
        Reacs.elmt_STAT3 = elmt_compartment.elmt_STAT3;
        Reacs.elmt_STAT5 = elmt_compartment.elmt_STAT5;
        Reacs.elmt_Blimp1 = elmt_compartment.elmt_Blimp1;
        Reacs.elmt_FoxP3 = elmt_compartment.elmt_FoxP3;
        Reacs.elmt_IL2 = elmt_compartment.elmt_IL2;
        Reacs.elmt_ICOS = elmt_compartment.elmt_ICOS;
        Reacs.elmt_TGFb = elmt_compartment.elmt_TGFb;
        Reacs.elmt_RXR = elmt_compartment.elmt_RXR;
        Reacs.elmt_NaiveCD4 = elmt_compartment.elmt_NaiveCD4;
        elmt_compartment.elmt_STAT3_Activation = Reacs.elmt_STAT3_Activation;
        elmt_compartment.elmt_NaiveCD4_Source = Reacs.elmt_NaiveCD4_Source;
        elmt_compartment.elmt_product34 = Reacs.elmt_product34;
        elmt_compartment.elmt_product33 = Reacs.elmt_product33;
        elmt_compartment.elmt_IL21_Degradation = Reacs.elmt_IL21_Degradation;
        elmt_compartment.elmt_IL6_Degradation = Reacs.elmt_IL6_Degradation;
        elmt_compartment.elmt_Tfr_Death = Reacs.elmt_Tfr_Death;
        elmt_compartment.elmt_IL6_Production = Reacs.elmt_IL6_Production;
        elmt_compartment.elmt_RXR_Degradation = Reacs.elmt_RXR_Degradation;
        elmt_compartment.elmt_ICOS_Degradation = Reacs.elmt_ICOS_Degradation;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_RXR_Activation = Reacs.elmt_RXR_Activation;
        elmt_compartment.elmt_Tfr_Differentiation = Reacs.elmt_Tfr_Differentiation;
        elmt_compartment.elmt_TGFb_Production = Reacs.elmt_TGFb_Production;
        elmt_compartment.elmt_FoxP3_Activation = Reacs.elmt_FoxP3_Activation;
        elmt_compartment.elmt_CXCR5_Production = Reacs.elmt_CXCR5_Production;
        elmt_compartment.elmt_product37 = Reacs.elmt_product37;
        elmt_compartment.elmt_product36 = Reacs.elmt_product36;
        elmt_compartment.elmt_IL4_Production = Reacs.elmt_IL4_Production;
        elmt_compartment.elmt_Bcl6_Activation = Reacs.elmt_Bcl6_Activation;
        elmt_compartment.elmt_IL4_Degradation = Reacs.elmt_IL4_Degradation;
        elmt_compartment.elmt_Tgif1_Degradation = Reacs.elmt_Tgif1_Degradation;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_IL21_Production = Reacs.elmt_IL21_Production;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_compartment.elmt_NaiveCD4_Death = Reacs.elmt_NaiveCD4_Death;
        elmt_compartment.elmt_ICOS_Production = Reacs.elmt_ICOS_Production;
        elmt_compartment.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment.elmt_IL10_Degradation = Reacs.elmt_IL10_Degradation;
        elmt_compartment.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_compartment.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment.elmt_Blimp1_Activation = Reacs.elmt_Blimp1_Activation;
        elmt_compartment.elmt_nTreg_Source = Reacs.elmt_nTreg_Source;
        elmt_compartment.elmt_Tfh_Differentiation = Reacs.elmt_Tfh_Differentiation;
        elmt_compartment.elmt_CXCR5_Degradation = Reacs.elmt_CXCR5_Degradation;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_nTreg_Death = Reacs.elmt_nTreg_Death;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_Tgif1_Production = Reacs.elmt_Tgif1_Production;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment.elmt_STAT3_Degradation = Reacs.elmt_STAT3_Degradation;
        elmt_compartment.elmt_FoxP3_Degradation = Reacs.elmt_FoxP3_Degradation;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_compartment.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_compartment.elmt_IL10_Production = Reacs.elmt_IL10_Production;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_compartment.elmt_Tfh_Death = Reacs.elmt_Tfh_Death;
        elmt_compartment.elmt_TGFb_Degradation = Reacs.elmt_TGFb_Degradation;
        elmt_compartment.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment.elmt_Blimp1_Degradation = Reacs.elmt_Blimp1_Degradation;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment.elmt_Bcl6_Degradation = Reacs.elmt_Bcl6_Degradation;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_product19 = Reacs.elmt_product19;
        elmt_compartment.elmt_product18 = Reacs.elmt_product18;

end Leber2016___Expanded_model_of_Tfh_Tfr_differentiation___Helicobacter_pylori_infection_1_1;
