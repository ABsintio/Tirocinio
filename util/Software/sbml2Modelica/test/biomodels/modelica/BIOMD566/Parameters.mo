within BIOMD566;
class Parameters

    Real elmt_k1(unit = "") "k1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-01-13T17:15:05Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_A0(unit = "") "A0";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-01-13T17:18:13Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_k2(unit = "") "k2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-01-13T17:15:43Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));


    initial equation
        elmt_k1 = 8.0E-6;
        elmt_A0 = 3.55;
        elmt_k2 = 0.034;


    equation
        der(elmt_k1) = 0;
        der(elmt_A0) = 0;
        der(elmt_k2) = 0;

end Parameters;
