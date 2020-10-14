within BIOMD563;
class Class_elmt_Apoplast

    input Real elmt_product10;
    input Real elmt_PAMP_production;
    input Real elmt_reactant28;
    input Real elmt_reactant22;
    input Real elmt_Callose_production;
    input Real elmt_reactant24;
    input Real elmt_ETI;
    input Real elmt_PTI;
    input Real elmt_reactant19;
    input Real elmt_Pathogen_removal;
    input Real elmt_product25;
    input Real elmt_product9;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_Pathogen_arrival;
    input Real elmt_reactant15;
    input Real elmt_Effector_production;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_product2;
    input Real elmt_Effector_translocation;
    input Real elmt_PAMP_recognition;
    input Real elmt_Effector_removal;
    input Real elmt_product16;
    input Real elmt_product14;
    input Real elmt_product17;

    input Boolean elmt_Pathogen_introduced;

    input Real assign_elmt_Path_bulk;

    Real elmt_Apoplast(unit = "") "Apoplast";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-22T08:55:58Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_PRR_0_conc(unit = "");
    Real elmt_PRR_0_amount(unit = "");
    Real elmt_PRR_0(unit = "") "PRR";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI11\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:10:22Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_PRR_conc(unit = "");
    Real elmt_PRR_amount(unit = "");
    Real elmt_PRR(unit = "") "PRR*";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI10\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:10:23Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_E_conc(unit = "");
    Real elmt_E_amount(unit = "");
    Real elmt_E(unit = "") "E";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI12\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:10:12Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Path_conc(unit = "");
    Real elmt_Path_amount(unit = "");
    Real elmt_Path(unit = "") "Path";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:13:10Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Path_bulk_conc(unit = "");
    Real elmt_Path_bulk_amount(unit = "");
    Real elmt_Path_bulk(unit = "") "Path_bulk";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI9\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:13:05Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    initial equation
        elmt_Apoplast = 1.0;
        elmt_PRR_0_conc = 1.0;
        elmt_PRR_conc = 0.0;
        elmt_E_conc = 0.0;
        elmt_Path_conc = 0.0;
        elmt_Path_bulk_conc = 0.0;


    equation
        assert(elmt_Apoplast >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Apoplast) = 0;
        elmt_PRR_0 = elmt_PRR_0_conc;
        elmt_PRR = elmt_PRR_conc;
        elmt_E = elmt_E_conc;
        elmt_Path = elmt_Path_conc;
        elmt_Path_bulk = elmt_Path_bulk_conc;
        der(elmt_PRR_0_amount) = (- (elmt_PAMP_recognition * elmt_reactant0));
        der(elmt_PRR_amount) = ((elmt_Callose_production * elmt_product25) + (- (elmt_Callose_production * elmt_reactant24)) + (elmt_PAMP_recognition * elmt_product2));
        der(elmt_E_amount) = ((elmt_Effector_production * elmt_product16) + (- (elmt_Effector_translocation * elmt_reactant22)) + (- (elmt_Effector_removal * elmt_reactant6)));
        der(elmt_Path_amount) = ((elmt_Pathogen_arrival * elmt_product10) + (elmt_PAMP_production * elmt_product14) + (- (elmt_PAMP_production * elmt_reactant12)) + (- (elmt_Effector_production * elmt_reactant15)) + (elmt_Effector_production * elmt_product17) + (- (elmt_ETI * elmt_reactant19)) + (- (elmt_PTI * elmt_reactant28)) + (- (elmt_Pathogen_removal * elmt_reactant11)));
        der(elmt_Path_bulk_amount) = ((elmt_Pathogen_arrival * elmt_product9) + (- (elmt_Pathogen_arrival * elmt_reactant8)));

        when elmt_Pathogen_introduced then
            reinit(elmt_Path_bulk_amount, assign_elmt_Path_bulk * pre(elmt_Apoplast));
        end when;
    algorithm
        elmt_PRR_0_conc := elmt_PRR_0_amount / elmt_Apoplast;
        elmt_PRR_conc := elmt_PRR_amount / elmt_Apoplast;
        elmt_E_conc := elmt_E_amount / elmt_Apoplast;
        elmt_Path_conc := elmt_Path_amount / elmt_Apoplast;
        elmt_Path_bulk_conc := elmt_Path_bulk_amount / elmt_Apoplast;
end Class_elmt_Apoplast;
