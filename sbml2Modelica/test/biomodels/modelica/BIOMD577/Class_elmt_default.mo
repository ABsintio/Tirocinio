within BIOMD577;
class Class_elmt_default

    input Real elmt_product63;
    input Real elmt_reactant64;
    input Real elmt_product65;
    input Real elmt_reactant70;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_reactant66;
    input Real elmt_reactant67;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_product69;
    input Real elmt_product68;

    Real elmt_default(unit = "") "default";
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "cPP2C";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI2\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-02-21T21:35:21Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "cSnRK2";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI3\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-02-21T21:35:35Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "cABAR_m";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI1\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-02-21T21:32:51Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    Real elmt_species_4_conc(unit = "");
    Real elmt_species_4_amount(unit = "");
    Real elmt_species_4(unit = "") "cs";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI4\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-02-21T21:35:49Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_species_2_conc = 0.4027;
        elmt_species_3_conc = 0.2362;
        elmt_species_1_conc = 0.856;
        elmt_species_4_conc = 0.2843;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_3 = elmt_species_3_conc;
        elmt_species_1 = elmt_species_1_conc;
        elmt_species_4 = elmt_species_4_conc;
        der(elmt_species_2_amount) = ((elmt_reaction_3 * elmt_product65) + (- (elmt_reaction_4 * elmt_reactant66)));
        der(elmt_species_3_amount) = ((- (elmt_reaction_5 * elmt_reactant67)) + (elmt_reaction_6 * elmt_product68));
        der(elmt_species_1_amount) = ((elmt_reaction_1 * elmt_product63) + (- (elmt_reaction_2 * elmt_reactant64)));
        der(elmt_species_4_amount) = ((elmt_reaction_7 * elmt_product69) + (- (elmt_reaction_8 * elmt_reactant70)));

    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_default;
        elmt_species_3_conc := elmt_species_3_amount / elmt_default;
        elmt_species_1_conc := elmt_species_1_amount / elmt_default;
        elmt_species_4_conc := elmt_species_4_amount / elmt_default;
end Class_elmt_default;
