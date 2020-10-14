within BIOMD626;
model Ray2013___Meiotic_initiation_in_S__cerevisiae "Ray2013 - Meiotic initiation in S. cerevisiae" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	






  </rdf:RDF>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
      <rdf:Description rdf:about=\"#COPASI0\">
        <dcterms:bibliographicCitation>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/23631506\"/>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:bibliographicCitation>
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2017-02-03T14:41:35Z</dcterms:W3CDTF>
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
                <vCard:EMAIL>hkarakurt@gtu.edu.tr</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Karakurt</vCard:Family>
                    <vCard:Given>Hamza Umut</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Gebze Technical University</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>debjit.ray@email.wsu.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Debjit</vCard:Family>
                    <vCard:Given>Ray</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Washington State University</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:creator>
        <dcterms:modified>
          <rdf:Description>
            <dcterms:W3CDTF>2017-02-24T13:27:01Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:modified>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/MODEL1303060000\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/BIOMD0000000626\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/eco/ECO:0000362\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"urn:miriam:reactome:R-SCE-1500620\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/mamo/MAMO_0000046\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:isVersionOf>
          <rdf:Bag>
            <rdf:li rdf:resource=\"urn:miriam:go:GO:0051321\"/>
          </rdf:Bag>
        </CopasiMT:isVersionOf>
        <CopasiMT:isVersionOf>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0040020\"/>
          </rdf:Bag>
        </CopasiMT:isVersionOf>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_V elmt_V;

    equation
        Reacs.elmt_pUme6 = elmt_V.elmt_pUme6;
        Reacs.elmt_Ime1 = elmt_V.elmt_Ime1;
        Reacs.elmt_Ime2 = elmt_V.elmt_Ime2;
        Reacs.elmt_Rim11 = elmt_V.elmt_Rim11;
        Reacs.elmt_V = elmt_V.elmt_V;
        Reacs.elmt_pIme1 = elmt_V.elmt_pIme1;
        Reacs.elmt_pSok2 = elmt_V.elmt_pSok2;
        elmt_V.elmt_pume6_1 = Reacs.elmt_pume6_1;
        elmt_V.elmt_rim11_1 = Reacs.elmt_rim11_1;
        elmt_V.elmt_product1 = Reacs.elmt_product1;
        elmt_V.elmt_ime2_1 = Reacs.elmt_ime2_1;
        elmt_V.elmt_product0 = Reacs.elmt_product0;
        elmt_V.elmt_sok2_1 = Reacs.elmt_sok2_1;
        elmt_V.elmt_product5 = Reacs.elmt_product5;
        elmt_V.elmt_product4 = Reacs.elmt_product4;
        elmt_V.elmt_ime1_1 = Reacs.elmt_ime1_1;
        elmt_V.elmt_product3 = Reacs.elmt_product3;
        elmt_V.elmt_product2 = Reacs.elmt_product2;
        elmt_V.elmt_pime1_1 = Reacs.elmt_pime1_1;

end Ray2013___Meiotic_initiation_in_S__cerevisiae;
