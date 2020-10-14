within BIOMD323;
class Parameters

    Real elmt_parameter_3(unit = "") "n";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI5\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-12-08T16:56:54Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_parameter_2(unit = "") "beta";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI4\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-12-08T16:56:24Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_parameter_1(unit = "") "alpha";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI3\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-12-08T16:56:19Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));


    initial equation
        elmt_parameter_3 = 5.0;
        elmt_parameter_2 = 0.3;
        elmt_parameter_1 = 1.0;


    equation
        der(elmt_parameter_3) = 0;
        der(elmt_parameter_2) = 0;
        der(elmt_parameter_1) = 0;

end Parameters;
