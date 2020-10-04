within BIOMD630;
class Parameters

    Real elmt_parameter_2(unit = "") "degradation constant 2";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI9\">
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
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_parameter_1(unit = "") "degradation constant 1";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI8\">
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
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_parameter_13(unit = "") "hill cooperativity";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI10\">
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/biomodels.sbo/SBO:0000190\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
      </rdf:RDF>
    </annotation>"));


    initial equation
        elmt_parameter_2 = 0.032;
        elmt_parameter_1 = 0.084;
        elmt_parameter_13 = 2.0;


    equation
        der(elmt_parameter_2) = 0;
        der(elmt_parameter_1) = 0;
        der(elmt_parameter_13) = 0;

end Parameters;
