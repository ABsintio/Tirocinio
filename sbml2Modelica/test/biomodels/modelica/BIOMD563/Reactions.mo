within BIOMD563;
class Reactions

    input Real elmt_Cell;
    input Real elmt_E_int;
    input Real elmt_R_0;
    input Real elmt_PRR_0;
    input Real elmt_Callose;
    input Real elmt_PRR;
    input Real elmt_E;
    input Real elmt_Apoplast;
    input Real elmt_PAMP;
    input Real elmt_Path_bulk;
    input Real elmt_Path;
    input Real elmt_R;

    Real elmt_Effector_recognition(unit = "") "Effector recognition";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI15\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:09:01Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Effector_recognition_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_Effector_recognition_elmt_k2(unit "") = 0.1 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_Pathogen_arrival(unit = "") "Pathogen arrival";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI18\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:11:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Pathogen_arrival_elmt_k1(unit "") = 0.1 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_PAMP_production(unit = "") "PAMP production";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI20\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:14:54Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_PAMP_production_elmt_k1(unit "") = 0.1 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_Effector_production(unit = "") "Effector production";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI21\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:18:24Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Effector_production_elmt_k1(unit "") = 0.1 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_ETI(unit = "") "ETI";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI23\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:26:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_ETI_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant20 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_Effector_translocation(unit = "") "Effector translocation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI24\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:34:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Effector_translocation_elmt_Km(unit "") = 0.1 "";
    parameter Real elmt_Effector_translocation_elmt_Ki(unit "") = 0.1 "";
    parameter Real elmt_Effector_translocation_elmt_V(unit "") = 0.1 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_Callose_production(unit = "") "Callose production";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI25\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:50:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Callose_production_elmt_k1(unit "") = 0.1 "";
    Real elmt_product26 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_PAMP_recognition(unit = "") "PAMP recognition";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI14\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:08:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_PAMP_recognition_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_PAMP_recognition_elmt_k2(unit "") = 0.1 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_Callose_suppression(unit = "") "Callose suppression";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI28\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T15:09:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Callose_suppression_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant31 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_PTI(unit = "") "PTI";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI27\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:54:44Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_PTI_elmt_k1(unit "") = 0.1 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reactant28 "";
    Real elmt_Callose_removal(unit = "") "Callose removal";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI26\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:53:54Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Callose_removal_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant27 "";
    Real elmt_Pathogen_removal(unit = "") "Pathogen removal";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI19\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:12:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Pathogen_removal_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant11 "";
    Real elmt_Effector_removal(unit = "") "Effector removal";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI16\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:09:27Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Effector_removal_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant6 "";
    Real elmt_PAMP_removal(unit = "") "PAMP removal";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI17\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:09:47Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_PAMP_removal_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant7 "";
    Real elmt_E_int_removal(unit = "") "E_int removal";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI22\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:22:30Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_E_int_removal_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant18 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product33 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product26 = 1.0;
        elmt_product25 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_Effector_recognition = (elmt_Cell * ((elmt_Effector_recognition_elmt_k1 * elmt_R * elmt_E_int) - (elmt_Effector_recognition_elmt_k2 * elmt_R_0)));
        elmt_Pathogen_arrival = (elmt_Apoplast * elmt_Pathogen_arrival_elmt_k1 * elmt_Path_bulk);
        elmt_PAMP_production = (elmt_PAMP_production_elmt_k1 * elmt_Path);
        elmt_Effector_production = (elmt_Apoplast * elmt_Effector_production_elmt_k1 * elmt_Path);
        elmt_ETI = (elmt_ETI_elmt_k1 * elmt_Path * elmt_R_0);
        elmt_Effector_translocation = (((elmt_Effector_translocation_elmt_V * elmt_E) / (elmt_Effector_translocation_elmt_Km + elmt_E + ((elmt_Effector_translocation_elmt_Km * elmt_Callose) / elmt_Effector_translocation_elmt_Ki))));
        elmt_Callose_production = (elmt_Callose_production_elmt_k1 * elmt_PRR);
        elmt_PAMP_recognition = ((elmt_PAMP_recognition_elmt_k1 * elmt_PRR_0 * elmt_PAMP) - (elmt_PAMP_recognition_elmt_k2 * elmt_PRR));
        elmt_Callose_suppression = (elmt_Cell * elmt_Callose_suppression_elmt_k1 * elmt_Callose * elmt_E_int);
        elmt_PTI = (elmt_PTI_elmt_k1 * elmt_Path * elmt_Callose);
        elmt_Callose_removal = (elmt_Cell * elmt_Callose_removal_elmt_k1 * elmt_Callose);
        elmt_Pathogen_removal = (elmt_Apoplast * elmt_Pathogen_removal_elmt_k1 * elmt_Path);
        elmt_Effector_removal = (elmt_Apoplast * elmt_Effector_removal_elmt_k1 * elmt_E);
        elmt_PAMP_removal = (elmt_Cell * elmt_PAMP_removal_elmt_k1 * elmt_PAMP);
        elmt_E_int_removal = (elmt_Cell * elmt_E_int_removal_elmt_k1 * elmt_E_int);
        der(elmt_product30) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product33) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product26) = 0;
        der(elmt_product25) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product17) = 0;

end Reactions;
