within BIOMD451;
class Parameters

    input Real elmt_s73;
    input Real elmt_s40;

    Real elmt_ModelValue_5(unit = "") "Initial for BActin";
 annotation(Documentation(info="<annotation>
<initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"parameter_2\"/>
                                </annotation>"));
    Real elmt_parameter_4(unit = "") "IL17R";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI78\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-12-13T11:41:49Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                </annotation>"));
    Real elmt_parameter_3(unit = "") "FOXP3R";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI77\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-12-13T11:40:46Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                </annotation>"));
    Real elmt_parameter_2(unit = "") "BActin";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI76\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-12-13T11:42:17Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                </annotation>"));
    Real elmt_parameter_1(unit = "") "Hill Coeficient";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI75\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-02-25T11:26:39Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                </annotation>"));


    initial equation
        elmt_ModelValue_5 = elmt_parameter_2;
        elmt_parameter_2 = 0.00850607781012331;
        elmt_parameter_1 = 2.0;


    equation
        der(elmt_ModelValue_5) = 0;
        elmt_parameter_4 = (elmt_s73 / elmt_ModelValue_5);
        elmt_parameter_3 = (elmt_s40 / elmt_ModelValue_5);
        der(elmt_parameter_2) = 0;
        der(elmt_parameter_1) = 0;

end Parameters;
