within BIOMD533;
class Parameters

    Real elmt_k0(unit = "") "k0";
    Real elmt_k1(unit = "") "k1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI12\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-22T11:11:50Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_epsilon(unit = "") "epsilon";
    Real elmt_k4(unit = "") "k4";
    Real elmt_k2(unit = "") "k2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI13\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-22T11:11:47Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_q(unit = "") "q";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI14\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-22T11:12:13Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_k3(unit = "") "k3";


    initial equation
        elmt_k0 = 0.59;
        elmt_k1 = 0.672;
        elmt_epsilon = 0.0;
        elmt_k4 = 0.554;
        elmt_k2 = 0.678;
        elmt_q = 2.0;
        elmt_k3 = 0.0392;


    equation
        der(elmt_k0) = 0;
        der(elmt_k1) = 0;
        der(elmt_epsilon) = 0;
        der(elmt_k4) = 0;
        der(elmt_k2) = 0;
        der(elmt_q) = 0;
        der(elmt_k3) = 0;

end Parameters;
