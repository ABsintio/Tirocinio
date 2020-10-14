within BIOMD500;
class Parameters

    input Real elmt_DNA_111;
    input Real elmt_DNA_1B11;
    input Real elmt_DNA_11B1;
    input Real elmt_DNA_01B1;
    input Real elmt_DNA_1B10;
    input Real elmt_DNA_010;
    input Real elmt_DNA_011;
    input Real elmt_DNA_110;
    input Real elmt_DNA_1B1B1;

    Real elmt_Kon_NG1(unit = "") "Kon_NG1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI20\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-11-21T14:00:30Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                        </annotation>"));
    Real elmt_Koff_G1(unit = "") "Koff_G1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI19\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-05-30T11:11:34Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                        </annotation>"));
    Real elmt_Koff_P1(unit = "") "Koff_P1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI17\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-12-17T10:21:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                        </annotation>"));
    Real elmt_Kon_P1(unit = "") "Kon_P1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI16\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-05-30T10:49:35Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                        </annotation>"));
    Real elmt_Kon_G1(unit = "") "Kon_G1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI18\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-12-17T10:21:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                        </annotation>"));
    Real elmt_Koff_NG1(unit = "") "Koff_NG1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI21\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-05-30T10:35:22Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                        </annotation>"));
    Real elmt_parameter_1(unit = "") "GAS_siteOccupancy";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI22\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-01-07T13:08:46Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                        </annotation>"));


    initial equation
        elmt_Kon_NG1 = 2.0E10;
        elmt_Koff_G1 = 100.0;
        elmt_Koff_P1 = 100.0;
        elmt_Kon_P1 = 60000.0;
        elmt_Kon_G1 = 2.0E10;
        elmt_Koff_NG1 = 20000.0;


    equation
        der(elmt_Kon_NG1) = 0;
        der(elmt_Koff_G1) = 0;
        der(elmt_Koff_P1) = 0;
        der(elmt_Kon_P1) = 0;
        der(elmt_Kon_G1) = 0;
        der(elmt_Koff_NG1) = 0;
        elmt_parameter_1 = (elmt_DNA_010 + elmt_DNA_011 + elmt_DNA_110 + elmt_DNA_111 + elmt_DNA_01B1 + elmt_DNA_1B10 + elmt_DNA_1B11 + elmt_DNA_11B1 + elmt_DNA_1B1B1);

end Parameters;
