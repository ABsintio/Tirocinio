within BIOMD116;
class Class_elmt_compartment_0

    input Real elmt_product11;
    input Real elmt_product9;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_reactant14;
    input Real elmt_reaction_3;
    input Real elmt_product1;
    input Real elmt_reaction_4;
    input Real elmt_reactant15;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_product4;
    input Real elmt_reaction_0;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_reaction_9;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_product13;

    Real elmt_compartment_0(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "X3p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "Y1p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_0_conc(unit = "");
    Real elmt_species_0_amount(unit = "");
    Real elmt_species_0(unit = "") "X1p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "X2p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_4_conc(unit = "");
    Real elmt_species_4_amount(unit = "");
    Real elmt_species_4(unit = "") "Y2p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_5_conc(unit = "");
    Real elmt_species_5_amount(unit = "");
    Real elmt_species_5(unit = "") "Y3p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment_0 = 1.0;
        elmt_species_2_conc = 6.271793;
        elmt_species_3_conc = 3.203692;
        elmt_species_0_conc = 1.023667;
        elmt_species_1_conc = 2.154231;
        elmt_species_4_conc = 8.232192;
        elmt_species_5_conc = 9.312021;


    equation
        assert(elmt_compartment_0 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_3 = elmt_species_3_conc;
        elmt_species_0 = elmt_species_0_conc;
        elmt_species_1 = elmt_species_1_conc;
        elmt_species_4 = elmt_species_4_conc;
        elmt_species_5 = elmt_species_5_conc;
        der(elmt_species_2_amount) = ((- (elmt_reaction_8 * elmt_reactant14)) + (elmt_reaction_2 * elmt_product4));
        der(elmt_species_3_amount) = ((- (elmt_reaction_7 * elmt_reactant12)) + (elmt_reaction_3 * elmt_product5) + (- (elmt_reaction_4 * elmt_reactant6)));
        der(elmt_species_0_amount) = ((- (elmt_reaction_6 * elmt_reactant10)) + (elmt_reaction_1 * elmt_product2) + (- (elmt_reaction_0 * elmt_reactant0)));
        der(elmt_species_1_amount) = ((elmt_reaction_7 * elmt_product13) + (- (elmt_reaction_2 * elmt_reactant3)) + (elmt_reaction_0 * elmt_product1));
        der(elmt_species_4_amount) = ((- (elmt_reaction_5 * elmt_reactant8)) + (elmt_reaction_6 * elmt_product11) + (elmt_reaction_4 * elmt_product7));
        der(elmt_species_5_amount) = ((- (elmt_reaction_9 * elmt_reactant15)) + (elmt_reaction_5 * elmt_product9));

    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_compartment_0;
        elmt_species_3_conc := elmt_species_3_amount / elmt_compartment_0;
        elmt_species_0_conc := elmt_species_0_amount / elmt_compartment_0;
        elmt_species_1_conc := elmt_species_1_amount / elmt_compartment_0;
        elmt_species_4_conc := elmt_species_4_amount / elmt_compartment_0;
        elmt_species_5_conc := elmt_species_5_amount / elmt_compartment_0;
end Class_elmt_compartment_0;
