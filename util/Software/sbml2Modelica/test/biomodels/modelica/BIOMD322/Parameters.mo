within BIOMD322;
class Parameters

    Real elmt_parameter_6(unit = "") "delta";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI7\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-12-08T16:33:29Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
                                    </annotation>"));
    Real elmt_parameter_5(unit = "") "m";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI6\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-12-08T16:00:37Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
                                    </annotation>"));
    Real elmt_parameter_4(unit = "") "n";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI5\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-12-08T16:00:42Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
                                    </annotation>"));
    Real elmt_parameter_3(unit = "") "gamma";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI4\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-12-08T16:00:35Z</dcterms:W3CDTF>
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
          <rdf:Description rdf:about=\"#COPASI3\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-12-08T16:00:31Z</dcterms:W3CDTF>
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
          <rdf:Description rdf:about=\"#COPASI2\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-12-08T16:00:18Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
                                    </annotation>"));


    initial equation
        elmt_parameter_6 = 1.5;
        elmt_parameter_5 = 6.5;
        elmt_parameter_4 = 6.5;
        elmt_parameter_3 = 1.0;
        elmt_parameter_2 = 2.5;
        elmt_parameter_1 = 0.57;


    equation
        der(elmt_parameter_6) = 0;
        der(elmt_parameter_5) = 0;
        der(elmt_parameter_4) = 0;
        der(elmt_parameter_3) = 0;
        der(elmt_parameter_2) = 0;
        der(elmt_parameter_1) = 0;

end Parameters;
