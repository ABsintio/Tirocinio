within BIOMD405;
class Class_elmt_compartment_1

    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_product11;
    input Real elmt_reactant8;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_reactant13;
    input Real elmt_product2;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;

    Real elmt_compartment_1(unit = "") "compartment";
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "x2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-11-14T12:01:29Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "E1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-11-14T12:01:44Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "x1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-11-14T12:01:10Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_6_conc(unit = "");
    Real elmt_species_6_amount(unit = "");
    Real elmt_species_6(unit = "") "E+x1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_4_conc(unit = "");
    Real elmt_species_4_amount(unit = "");
    Real elmt_species_4(unit = "") "E2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-11-14T12:01:55Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_species_5_conc(unit = "");
    Real elmt_species_5_amount(unit = "");
    Real elmt_species_5(unit = "") "E";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-11-14T12:02:06Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    initial equation
        elmt_compartment_1 = 1.0;
        elmt_species_2_conc = 0.0;
        elmt_species_3_conc = 0.0;
        elmt_species_1_conc = 0.0;
        elmt_species_6_conc = 1.0;
        elmt_species_4_conc = 0.0;
        elmt_species_5_conc = 100.0;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_3 = elmt_species_3_conc;
        elmt_species_1 = elmt_species_1_conc;
        elmt_species_6 = elmt_species_6_conc;
        elmt_species_4 = elmt_species_4_conc;
        elmt_species_5 = elmt_species_5_conc;
        der(elmt_species_6_amount) = 0;
        der(elmt_species_2_amount) = ((- (elmt_reaction_8 * elmt_reactant13)) + (elmt_reaction_4 * elmt_product7) + (- (elmt_reaction_2 * elmt_reactant3)));
        der(elmt_species_3_amount) = ((- (elmt_reaction_5 * elmt_reactant8)) + (elmt_reaction_1 * elmt_product2));
        der(elmt_species_1_amount) = ((- (elmt_reaction_7 * elmt_reactant12)) + (elmt_reaction_3 * elmt_product6) + (- (elmt_reaction_1 * elmt_reactant0)));
        der(elmt_species_4_amount) = ((- (elmt_reaction_6 * elmt_reactant10)) + (elmt_reaction_2 * elmt_product5));
        der(elmt_species_5_amount) = ((elmt_reaction_5 * elmt_product9) + (elmt_reaction_6 * elmt_product11) + (- (elmt_reaction_1 * elmt_reactant1)) + (- (elmt_reaction_2 * elmt_reactant4)));

    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_compartment_1;
        elmt_species_3_conc := elmt_species_3_amount / elmt_compartment_1;
        elmt_species_1_conc := elmt_species_1_amount / elmt_compartment_1;
        elmt_species_6_conc := elmt_species_6_amount / elmt_compartment_1;
        elmt_species_4_conc := elmt_species_4_amount / elmt_compartment_1;
        elmt_species_5_conc := elmt_species_5_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
