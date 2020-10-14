within BIOMD538;
class Parameters

    Real elmt_Mupcd(unit = "") "Mupcd";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-08-06T16:48:23Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Rrom(unit = "") "Rrom";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-08-06T16:46:44Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_ONLrom_0(unit = "") "ONLrom";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-08-06T16:46:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Munr(unit = "") "Munr";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-08-06T16:31:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Murom(unit = "") "Murom";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-08-06T16:46:55Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));


    initial equation
        elmt_Mupcd = 0.223;
        elmt_Rrom = 0.103;
        elmt_ONLrom_0 = 40.947;
        elmt_Munr = 0.278;
        elmt_Murom = 0.0708;


    equation
        der(elmt_Mupcd) = 0;
        der(elmt_Rrom) = 0;
        der(elmt_ONLrom_0) = 0;
        der(elmt_Munr) = 0;
        der(elmt_Murom) = 0;

end Parameters;
