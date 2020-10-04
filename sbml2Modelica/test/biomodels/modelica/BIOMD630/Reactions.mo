within BIOMD630;
class Reactions

    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_1;
    input Real elmt_compartment_1;
    input Real elmt_species_6;
    input Real elmt_species_4;
    input Real elmt_species_5;
    input Real elmt_parameter_2;
    input Real elmt_parameter_1;
    input Real elmt_parameter_13;

    Real elmt_reaction_3(unit = "") "activation of plasmin";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI13\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/3667621\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 0.9 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_reaction_4(unit = "") "degradation of single intact chain urokinase-type plasminogen activator";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI14\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/16339882\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15208304\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant12 "";
    Real elmt_reaction_1(unit = "") "cleavage of plasminogen";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI11\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/3667621\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000178\"/>
            <CopasiMT:isVersionOf>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0031639\"/>
              </rdf:Bag>
            </CopasiMT:isVersionOf>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_1_elmt_k1(unit "") = 0.035 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_reaction_2(unit = "") "activation of urokinase-type plasminogen activator";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI12\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/3667621\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000178\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_2_elmt_parameter_8(unit "") = 40.0 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_9(unit = "") "catalytic reaction of x-plasmin";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:layout=\"http://projects.eml.org/bcb/sbml/level2\" xmlns:render=\"http://projects.eml.org/bcb/sbml/render/level2\">
	
	</rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"/>
      </COPASI>
    </annotation>"));
    parameter Real elmt_reaction_9_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_reaction_14(unit = "") "synthesis of x";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI24\">
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000393\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_14_elmt_v(unit "") = 0.01 "";
    Real elmt_product25 "";
    Real elmt_reaction_7(unit = "") "degradation of two-chain urokinase type plasminogen activator";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI17\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15208304\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/16339882\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant15 "";
    Real elmt_reaction_8(unit = "") "reversible plasmin bonding x";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI18\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/16690877\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000526\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_8_elmt_k1(unit "") = 0.0 "";
    parameter Real elmt_reaction_8_elmt_k2(unit "") = 0.016 "";
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_reaction_5(unit = "") "degradation of plasminogen";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI15\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/1906642\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/6193754\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant13 "";
    Real elmt_reaction_6(unit = "") "degradation of plasmin";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI16\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/16339882\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15208304\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000179\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant14 "";
    Real elmt_reaction_12(unit = "") "synthesis of single intact chain urokinase-type plasminogen activator";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI22\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/16339882\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1371/journal.pcbi.0020120\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000393\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_12_elmt_v(unit "") = 0.0032 "";
    Real elmt_product23 "";
    Real elmt_reaction_13(unit = "") "synthesis of plasminogen";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI23\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1371/journal.pcbi.0020120\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/16339882\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000393\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_reaction_13_elmt_v(unit "") = 0.01 "";
    Real elmt_product24 "";
    Real elmt_reaction_10(unit = "") "degradation of x";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI20\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/6193754\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/1906642\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant21 "";
    Real elmt_reaction_11(unit = "") "degradation of x-plasmin";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI21\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/6193754\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/1906642\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000179\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant22 "";


    initial equation
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_reaction_3 = (elmt_compartment_1 * elmt_reaction_3_elmt_k1 * elmt_species_4 * elmt_species_1);
        elmt_reaction_4 = (elmt_compartment_1 * elmt_parameter_1 * elmt_species_3);
        elmt_reaction_1 = (elmt_compartment_1 * elmt_reaction_1_elmt_k1 * elmt_species_3 * elmt_species_1);
        elmt_reaction_2 = (elmt_compartment_1 * ((elmt_reaction_2_elmt_parameter_8 * Functions.pow(elmt_species_2, elmt_parameter_13) * elmt_species_3)));
        elmt_reaction_9 = (elmt_compartment_1 * elmt_reaction_9_elmt_k1 * elmt_species_6);
        elmt_reaction_14 = (elmt_compartment_1 * (elmt_reaction_14_elmt_v));
        elmt_reaction_7 = (elmt_compartment_1 * elmt_parameter_1 * elmt_species_4);
        elmt_reaction_8 = (elmt_compartment_1 * ((elmt_reaction_8_elmt_k1 * elmt_species_2 * elmt_species_5) - (elmt_reaction_8_elmt_k2 * elmt_species_6)));
        elmt_reaction_5 = (elmt_compartment_1 * elmt_parameter_2 * elmt_species_1);
        elmt_reaction_6 = (elmt_compartment_1 * elmt_parameter_1 * elmt_species_2);
        elmt_reaction_12 = (elmt_compartment_1 * (elmt_reaction_12_elmt_v));
        elmt_reaction_13 = (elmt_compartment_1 * (elmt_reaction_13_elmt_v));
        elmt_reaction_10 = (elmt_compartment_1 * elmt_parameter_2 * elmt_species_5);
        elmt_reaction_11 = (elmt_compartment_1 * elmt_parameter_2 * elmt_species_6);
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product18) = 0;

end Reactions;
