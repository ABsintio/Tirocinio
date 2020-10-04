within BIOMD563;
class Class_elmt_Cell

    input Real elmt_product30;
    input Real elmt_reactant20;
    input Real elmt_product33;
    input Real elmt_Effector_recognition;
    input Real elmt_PAMP_production;
    input Real elmt_reactant27;
    input Real elmt_ETI;
    input Real elmt_Callose_production;
    input Real elmt_PTI;
    input Real elmt_reactant18;
    input Real elmt_Callose_removal;
    input Real elmt_product26;
    input Real elmt_PAMP_removal;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_reactant31;
    input Real elmt_reactant3;
    input Real elmt_product23;
    input Real elmt_product21;
    input Real elmt_reactant7;
    input Real elmt_reactant32;
    input Real elmt_product5;
    input Real elmt_Effector_translocation;
    input Real elmt_PAMP_recognition;
    input Real elmt_Callose_suppression;
    input Real elmt_reactant29;
    input Real elmt_product13;
    input Real elmt_E_int_removal;

    Real elmt_Cell(unit = "") "Cell";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:57:30Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_E_int_conc(unit = "");
    Real elmt_E_int_amount(unit = "");
    Real elmt_E_int(unit = "") "E_int";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:24:47Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_R_0_conc(unit = "");
    Real elmt_R_0_amount(unit = "");
    Real elmt_R_0(unit = "") "R*";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:10:28Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Callose_conc(unit = "");
    Real elmt_Callose_amount(unit = "");
    Real elmt_Callose(unit = "") "Callose";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:53:11Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_PAMP_conc(unit = "");
    Real elmt_PAMP_amount(unit = "");
    Real elmt_PAMP(unit = "") "PAMP";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:10:18Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "R";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:10:27Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    initial equation
        elmt_Cell = 1.0;
        elmt_E_int_conc = 0.0;
        elmt_R_0_conc = 0.0;
        elmt_Callose_conc = 0.0;
        elmt_PAMP_conc = 0.0;
        elmt_R_conc = 1.0;


    equation
        assert(elmt_Cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cell) = 0;
        elmt_E_int = elmt_E_int_conc;
        elmt_R_0 = elmt_R_0_conc;
        elmt_Callose = elmt_Callose_conc;
        elmt_PAMP = elmt_PAMP_conc;
        elmt_R = elmt_R_conc;
        der(elmt_E_int_amount) = ((- (elmt_Effector_recognition * elmt_reactant4)) + (elmt_Effector_translocation * elmt_product23) + (elmt_Callose_suppression * elmt_product33) + (- (elmt_Callose_suppression * elmt_reactant32)) + (- (elmt_E_int_removal * elmt_reactant18)));
        der(elmt_R_0_amount) = ((elmt_Effector_recognition * elmt_product5) + (- (elmt_ETI * elmt_reactant20)) + (elmt_ETI * elmt_product21));
        der(elmt_Callose_amount) = ((elmt_Callose_production * elmt_product26) + (- (elmt_Callose_suppression * elmt_reactant31)) + (elmt_PTI * elmt_product30) + (- (elmt_PTI * elmt_reactant29)) + (- (elmt_Callose_removal * elmt_reactant27)));
        der(elmt_PAMP_amount) = ((elmt_PAMP_production * elmt_product13) + (- (elmt_PAMP_recognition * elmt_reactant1)) + (- (elmt_PAMP_removal * elmt_reactant7)));
        der(elmt_R_amount) = (- (elmt_Effector_recognition * elmt_reactant3));

    algorithm
        elmt_E_int_conc := elmt_E_int_amount / elmt_Cell;
        elmt_R_0_conc := elmt_R_0_amount / elmt_Cell;
        elmt_Callose_conc := elmt_Callose_amount / elmt_Cell;
        elmt_PAMP_conc := elmt_PAMP_amount / elmt_Cell;
        elmt_R_conc := elmt_R_amount / elmt_Cell;
end Class_elmt_Cell;
