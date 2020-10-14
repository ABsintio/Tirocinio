within BIOMD116;
class Reactions

    input Real elmt_parameter_11;
    input Real elmt_parameter_10;
    input Real elmt_parameter_9;
    input Real elmt_parameter_8;
    input Real elmt_parameter_7;
    input Real elmt_parameter_19;
    input Real elmt_parameter_18;
    input Real elmt_species_4;
    input Real elmt_parameter_17;
    input Real elmt_species_5;
    input Real elmt_parameter_16;
    input Real elmt_parameter_15;
    input Real elmt_parameter_14;
    input Real elmt_parameter_13;
    input Real elmt_parameter_12;
    input Real elmt_parameter_6;
    input Real elmt_compartment_0;
    input Real elmt_parameter_5;
    input Real elmt_parameter_4;
    input Real elmt_parameter_3;
    input Real elmt_parameter_2;
    input Real elmt_parameter_1;
    input Real elmt_parameter_0;
    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_0;
    input Real elmt_species_1;

    Real elmt_reaction_9(unit = "") "Y3p inhibited by X3p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant15 "";
    Real elmt_reaction_7(unit = "") "Y1p activates X2p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_8(unit = "") "X3p inhibited by Y3p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant14 "";
    Real elmt_reaction_5(unit = "") "Y2p activates Y3p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reaction_6(unit = "") "X1p activates Y2p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_reaction_3(unit = "") "S2 activates Y1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product5 "";
    Real elmt_reaction_4(unit = "") "Y1p activates Y2p";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_1(unit = "") "S1 activates X1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product2 "";
    Real elmt_reaction_2(unit = "") "X2 activates X3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_reaction_0(unit = "") "X1 activats X2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_reaction_9 = ((elmt_compartment_0 * elmt_parameter_11 * elmt_species_5 * elmt_species_2) / (1.0 + (elmt_species_5 / elmt_parameter_19)));
        elmt_reaction_7 = (elmt_compartment_0 * elmt_parameter_12 * elmt_species_3 * (elmt_parameter_1 - elmt_species_1));
        elmt_reaction_8 = ((elmt_compartment_0 * elmt_parameter_11 * elmt_species_5 * elmt_species_2) / (1.0 + (elmt_species_2 / elmt_parameter_13)));
        elmt_reaction_5 = (elmt_compartment_0 * elmt_parameter_18 * elmt_species_4 * (elmt_parameter_5 - elmt_species_5));
        elmt_reaction_6 = (elmt_compartment_0 * elmt_parameter_12 * elmt_species_0 * (elmt_parameter_4 - elmt_species_4));
        elmt_reaction_3 = (((elmt_compartment_0 * elmt_parameter_15 * elmt_parameter_14) / (1.0 + (elmt_parameter_14 / elmt_parameter_16))) * (elmt_parameter_3 - elmt_species_3));
        elmt_reaction_4 = (elmt_compartment_0 * elmt_parameter_17 * elmt_species_3 * (elmt_parameter_4 - elmt_species_4));
        elmt_reaction_1 = (((elmt_compartment_0 * elmt_parameter_6 * elmt_parameter_7) / (1.0 + (elmt_parameter_7 / elmt_parameter_8))) * (elmt_parameter_0 - elmt_species_0));
        elmt_reaction_2 = (elmt_compartment_0 * elmt_parameter_10 * elmt_species_1 * (elmt_parameter_2 - elmt_species_2));
        elmt_reaction_0 = (elmt_compartment_0 * elmt_parameter_9 * elmt_species_0 * (elmt_parameter_1 - elmt_species_1));
        der(elmt_product9) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_product13) = 0;

end Reactions;
