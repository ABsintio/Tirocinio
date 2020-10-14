within BIOMD322;
class Class_elmt_compartment_1

    input Real elmt_product12;
    input Real elmt_product11;
    input Real elmt_product9;
    input Real elmt_reactant2;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_reactant4;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_reactant7;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reactant16;
    input Real elmt_reaction_2;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_reactant13;
    input Real elmt_reaction_9;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_product15;
    input Real elmt_product14;
    input Real elmt_product18;
    input Real elmt_product17;

    Real elmt_compartment_1(unit = "") "compartment";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "y";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "u";
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "x";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_4_conc(unit = "");
    Real elmt_species_4_amount(unit = "");
    Real elmt_species_4(unit = "") "v";

    initial equation
        elmt_compartment_1 = 1.0;
        elmt_species_2_conc = 0.1;
        elmt_species_3_conc = 0.1;
        elmt_species_1_conc = 0.1;
        elmt_species_4_conc = 0.1;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_3 = elmt_species_3_conc;
        elmt_species_1 = elmt_species_1_conc;
        elmt_species_4 = elmt_species_4_conc;
        der(elmt_species_2_amount) = ((elmt_reaction_7 * elmt_product11) + (- (elmt_reaction_7 * elmt_reactant10)) + (elmt_reaction_6 * elmt_product9) + (- (elmt_reaction_2 * elmt_reactant1)));
        der(elmt_species_3_amount) = ((elmt_reaction_7 * elmt_product12) + (- (elmt_reaction_5 * elmt_reactant4)) + (elmt_reaction_5 * elmt_product5) + (- (elmt_reaction_3 * elmt_reactant2)));
        der(elmt_species_1_amount) = ((elmt_reaction_9 * elmt_product18) + (elmt_reaction_8 * elmt_product14) + (- (elmt_reaction_8 * elmt_reactant13)) + (elmt_reaction_5 * elmt_product6) + (- (elmt_reaction_1 * elmt_reactant0)));
        der(elmt_species_4_amount) = ((- (elmt_reaction_9 * elmt_reactant16)) + (elmt_reaction_9 * elmt_product17) + (elmt_reaction_8 * elmt_product15) + (elmt_reaction_6 * elmt_product8) + (- (elmt_reaction_6 * elmt_reactant7)) + (- (elmt_reaction_4 * elmt_reactant3)));

    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_compartment_1;
        elmt_species_3_conc := elmt_species_3_amount / elmt_compartment_1;
        elmt_species_1_conc := elmt_species_1_amount / elmt_compartment_1;
        elmt_species_4_conc := elmt_species_4_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
