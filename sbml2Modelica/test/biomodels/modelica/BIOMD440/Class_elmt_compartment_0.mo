within BIOMD440;
class Class_elmt_compartment_0

    input Real elmt_product11;
    input Real elmt_reactant18;
    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_reactant14;
    input Real elmt_product1;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reactant16;
    input Real elmt_reaction_2;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_reaction_0;
    input Real elmt_product3;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_reaction_9;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_compartment_0(unit = "") "compartment";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "MKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "MKK_P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_0_conc(unit = "");
    Real elmt_species_0_amount(unit = "");
    Real elmt_species_0(unit = "") "MKKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "MKKK_P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_6_conc(unit = "");
    Real elmt_species_6_amount(unit = "");
    Real elmt_species_6(unit = "") "M_P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_7_conc(unit = "");
    Real elmt_species_7_amount(unit = "");
    Real elmt_species_7(unit = "") "M_PP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_4_conc(unit = "");
    Real elmt_species_4_amount(unit = "");
    Real elmt_species_4(unit = "") "MKK_PP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_5_conc(unit = "");
    Real elmt_species_5_amount(unit = "");
    Real elmt_species_5(unit = "") "M";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_10_conc(unit = "");
    Real elmt_species_10_amount(unit = "");
    Real elmt_species_10(unit = "") "P3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_8_conc(unit = "");
    Real elmt_species_8_amount(unit = "");
    Real elmt_species_8(unit = "") "P1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_9_conc(unit = "");
    Real elmt_species_9_amount(unit = "");
    Real elmt_species_9(unit = "") "P2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_0 = 1.0;
        elmt_species_2_conc = 3999.99961475501;
        elmt_species_3_conc = 0.0;
        elmt_species_0_conc = 999.999903688753;
        elmt_species_1_conc = 0.0;
        elmt_species_6_conc = 0.0;
        elmt_species_7_conc = 0.0;
        elmt_species_4_conc = 0.0;
        elmt_species_5_conc = 999.999903688753;
        elmt_species_10_conc = 499.999951844377;
        elmt_species_8_conc = 99.9999903688752;
        elmt_species_9_conc = 499.999951844377;


    equation
        assert(elmt_compartment_0 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_3 = elmt_species_3_conc;
        elmt_species_0 = elmt_species_0_conc;
        elmt_species_1 = elmt_species_1_conc;
        elmt_species_6 = elmt_species_6_conc;
        elmt_species_7 = elmt_species_7_conc;
        elmt_species_4 = elmt_species_4_conc;
        elmt_species_5 = elmt_species_5_conc;
        elmt_species_10 = elmt_species_10_conc;
        elmt_species_8 = elmt_species_8_conc;
        elmt_species_9 = elmt_species_9_conc;
        der(elmt_species_10_amount) = 0;
        der(elmt_species_8_amount) = 0;
        der(elmt_species_9_amount) = 0;
        der(elmt_species_2_amount) = ((elmt_reaction_7 * elmt_product15) + (- (elmt_reaction_1 * elmt_reactant2)));
        der(elmt_species_3_amount) = ((- (elmt_reaction_7 * elmt_reactant14)) + (elmt_reaction_6 * elmt_product13) + (elmt_reaction_1 * elmt_product3) + (- (elmt_reaction_2 * elmt_reactant4)));
        der(elmt_species_0_amount) = ((elmt_reaction_5 * elmt_product11) + (- (elmt_reaction_0 * elmt_reactant0)));
        der(elmt_species_1_amount) = ((- (elmt_reaction_5 * elmt_reactant10)) + (elmt_reaction_0 * elmt_product1));
        der(elmt_species_6_amount) = ((- (elmt_reaction_9 * elmt_reactant18)) + (elmt_reaction_8 * elmt_product17) + (elmt_reaction_3 * elmt_product7) + (- (elmt_reaction_4 * elmt_reactant8)));
        der(elmt_species_7_amount) = ((- (elmt_reaction_8 * elmt_reactant16)) + (elmt_reaction_4 * elmt_product9));
        der(elmt_species_4_amount) = ((- (elmt_reaction_6 * elmt_reactant12)) + (elmt_reaction_2 * elmt_product5));
        der(elmt_species_5_amount) = ((elmt_reaction_9 * elmt_product19) + (- (elmt_reaction_3 * elmt_reactant6)));

    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_compartment_0;
        elmt_species_3_conc := elmt_species_3_amount / elmt_compartment_0;
        elmt_species_0_conc := elmt_species_0_amount / elmt_compartment_0;
        elmt_species_1_conc := elmt_species_1_amount / elmt_compartment_0;
        elmt_species_6_conc := elmt_species_6_amount / elmt_compartment_0;
        elmt_species_7_conc := elmt_species_7_amount / elmt_compartment_0;
        elmt_species_4_conc := elmt_species_4_amount / elmt_compartment_0;
        elmt_species_5_conc := elmt_species_5_amount / elmt_compartment_0;
        elmt_species_10_conc := elmt_species_10_amount / elmt_compartment_0;
        elmt_species_8_conc := elmt_species_8_amount / elmt_compartment_0;
        elmt_species_9_conc := elmt_species_9_amount / elmt_compartment_0;
end Class_elmt_compartment_0;
