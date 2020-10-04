within BIOMD501;
class Parameters

    input Real elmt_DNA11_11;
    input Real elmt_DNA11_10;
    input Real elmt_DNA111_1;
    input Real elmt_DNA11_1_1;
    input Real elmt_DNA1110;
    input Real elmt_DNA011_1;
    input Real elmt_DNA1_101;
    input Real elmt_DNA0100;
    input Real elmt_DNA1101;
    input Real elmt_DNA0111;
    input Real elmt_DNA1_100;
    input Real elmt_DNA1_111;
    input Real elmt_DNA1100;
    input Real elmt_DNA0110;
    input Real elmt_DNA1111;
    input Real elmt_DNA1_110;
    input Real elmt_DNA01_11;
    input Real elmt_DNA1_1_11;
    input Real elmt_DNA01_1_1;
    input Real elmt_DNA01_10;
    input Real elmt_DNA1_1_10;
    input Real elmt_DNA1_11_1;
    input Real elmt_DNA1_1_1_1;
    input Real elmt_DNA0101;

    Real elmt_Kon_NG1(unit = "") "Kon_NG1";
    Real elmt_Koff_G1(unit = "") "Koff_G1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-04-25T10:57:00Z</dcterms:W3CDTF>
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
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-04-25T11:52:27Z</dcterms:W3CDTF>
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
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-04-25T10:56:35Z</dcterms:W3CDTF>
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
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-04-25T10:57:01Z</dcterms:W3CDTF>
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
              <rdf:Description rdf:about=\"#COPASI9\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-04-25T09:36:48Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                                                </annotation>"));
    Real elmt_parameter_1(unit = "") "DoubleGasOccupancy";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI49\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-01-07T14:02:10Z</dcterms:W3CDTF>
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
        elmt_Koff_NG1 = 5000.0;


    equation
        der(elmt_Kon_NG1) = 0;
        der(elmt_Koff_G1) = 0;
        der(elmt_Koff_P1) = 0;
        der(elmt_Kon_P1) = 0;
        der(elmt_Kon_G1) = 0;
        der(elmt_Koff_NG1) = 0;
        elmt_parameter_1 = (elmt_DNA0100 + elmt_DNA1100 + elmt_DNA0110 + elmt_DNA0101 + elmt_DNA1110 + elmt_DNA1101 + elmt_DNA0111 + elmt_DNA1111 + elmt_DNA1_100 + elmt_DNA01_10 + elmt_DNA1_110 + elmt_DNA11_10 + elmt_DNA1_1_10 + elmt_DNA1_101 + elmt_DNA01_11 + elmt_DNA011_1 + elmt_DNA01_1_1 + elmt_DNA1_111 + elmt_DNA11_11 + elmt_DNA111_1 + elmt_DNA1_1_11 + elmt_DNA1_11_1 + elmt_DNA11_1_1 + elmt_DNA1_1_1_1);

end Parameters;
