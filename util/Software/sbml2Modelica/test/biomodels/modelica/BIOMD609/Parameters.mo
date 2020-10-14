within BIOMD609;
class Parameters

    Real elmt_bG(unit = "") "bG";
    Real elmt_k450(unit = "") "k450";
    Real elmt_dG(unit = "") "dG";
    Real elmt_kN(unit = "") "kN";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-03-08T17:35:52Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_bS(unit = "") "bS";
    Real elmt_kGSH(unit = "") "kGSH";
    Real elmt_dS(unit = "") "dS";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-03-09T13:55:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_P0(unit = "") "P0";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-03-08T17:00:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_kG(unit = "") "kG";
    Real elmt_kS(unit = "") "kS";
    Real elmt_kPSH(unit = "") "kPSH";


    initial equation
        elmt_bG = 1.374E-14;
        elmt_k450 = 0.315;
        elmt_dG = 2.0;
        elmt_kN = 0.0315;
        elmt_bS = 2.65E-14;
        elmt_kGSH = 1.6E18;
        elmt_dS = 2.0;
        elmt_P0 = 1.32E-13;
        elmt_kG = 2.99;
        elmt_kS = 2.26E14;
        elmt_kPSH = 110.0;


    equation
        der(elmt_bG) = 0;
        der(elmt_k450) = 0;
        der(elmt_dG) = 0;
        der(elmt_kN) = 0;
        der(elmt_bS) = 0;
        der(elmt_kGSH) = 0;
        der(elmt_dS) = 0;
        der(elmt_P0) = 0;
        der(elmt_kG) = 0;
        der(elmt_kS) = 0;
        der(elmt_kPSH) = 0;

end Parameters;
