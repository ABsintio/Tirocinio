within BIOMD323;
class Class_elmt_compartment_1

    input Real elmt_product8;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_reaction_3;
    input Real elmt_product1;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_product4;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_reactant9;

    Real elmt_compartment_1(unit = "") "compartment";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "x2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "x3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
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
                  <dcterms:W3CDTF>2010-12-08T16:55:42Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment_1 = 1.0;
        elmt_species_2_conc = 0.0;
        elmt_species_3_conc = 0.33;
        elmt_species_1_conc = 0.0;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_3 = elmt_species_3_conc;
        elmt_species_1 = elmt_species_1_conc;
        der(elmt_species_2_amount) = ((- (elmt_reaction_5 * elmt_reactant10)) + (elmt_reaction_3 * elmt_product8) + (- (elmt_reaction_2 * elmt_reactant3)) + (elmt_reaction_2 * elmt_product4));
        der(elmt_species_3_amount) = ((- (elmt_reaction_6 * elmt_reactant11)) + (elmt_reaction_3 * elmt_product7) + (- (elmt_reaction_3 * elmt_reactant6)) + (elmt_reaction_1 * elmt_product2));
        der(elmt_species_1_amount) = ((- (elmt_reaction_4 * elmt_reactant9)) + (elmt_reaction_1 * elmt_product1) + (- (elmt_reaction_1 * elmt_reactant0)) + (elmt_reaction_2 * elmt_product5));

    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_compartment_1;
        elmt_species_3_conc := elmt_species_3_amount / elmt_compartment_1;
        elmt_species_1_conc := elmt_species_1_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
