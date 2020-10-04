within BIOMD099;
class Class_elmt_compartment_1

    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_product12;
    input Real elmt_reactant5;
    input Real elmt_reactant7;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_product0;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_product4;
    input Real elmt_reaction_0;
    input Real elmt_product2;
    input Real elmt_reactant13;
    input Real elmt_reaction_9;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_reactant9;
    input Real elmt_reaction_12;
    input Real elmt_reaction_13;

    Real elmt_compartment_1(unit = "") "Intracellular";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "PKA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "REGA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "In_cAMP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_6_conc(unit = "");
    Real elmt_species_6_amount(unit = "");
    Real elmt_species_6(unit = "") "ERK2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_4_conc(unit = "");
    Real elmt_species_4_amount(unit = "");
    Real elmt_species_4(unit = "") "ACA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_5_conc(unit = "");
    Real elmt_species_5_amount(unit = "");
    Real elmt_species_5(unit = "") "CAR1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_1 = 1.0;
        elmt_species_2_conc = 1.0;
        elmt_species_3_conc = 2.5;
        elmt_species_1_conc = 1.0;
        elmt_species_6_conc = 1.6;
        elmt_species_4_conc = 1.4;
        elmt_species_5_conc = 1.5;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_3 = elmt_species_3_conc;
        elmt_species_1 = elmt_species_1_conc;
        elmt_species_6 = elmt_species_6_conc;
        elmt_species_4 = elmt_species_4_conc;
        elmt_species_5 = elmt_species_5_conc;
        der(elmt_species_2_amount) = ((- (elmt_reaction_3 * elmt_reactant3)) + (elmt_reaction_2 * elmt_product2));
        der(elmt_species_3_amount) = ((- (elmt_reaction_7 * elmt_reactant7)) + (elmt_reaction_6 * elmt_product6));
        der(elmt_species_1_amount) = ((- (elmt_reaction_9 * elmt_reactant9)) + (elmt_reaction_8 * elmt_product8));
        der(elmt_species_6_amount) = ((elmt_reaction_4 * elmt_product4) + (- (elmt_reaction_5 * elmt_reactant5)));
        der(elmt_species_4_amount) = ((- (elmt_reaction_1 * elmt_reactant1)) + (elmt_reaction_0 * elmt_product0));
        der(elmt_species_5_amount) = ((elmt_reaction_12 * elmt_product12) + (- (elmt_reaction_13 * elmt_reactant13)));

    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_compartment_1;
        elmt_species_3_conc := elmt_species_3_amount / elmt_compartment_1;
        elmt_species_1_conc := elmt_species_1_amount / elmt_compartment_1;
        elmt_species_6_conc := elmt_species_6_amount / elmt_compartment_1;
        elmt_species_4_conc := elmt_species_4_amount / elmt_compartment_1;
        elmt_species_5_conc := elmt_species_5_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
