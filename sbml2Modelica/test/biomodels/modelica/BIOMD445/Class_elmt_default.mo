within BIOMD445;
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
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "cPP2C";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "cSnRK2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "cABAR_m";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_4_conc(unit = "");
    Real elmt_species_4_amount(unit = "");
    Real elmt_species_4(unit = "") "cs";

    initial equation
        elmt_default = 1.0;
        elmt_species_2_conc = 0.999999951844376;
        elmt_species_3_conc = 0.999999951844376;
        elmt_species_1_conc = 0.999999951844376;
        elmt_species_4_conc = 0.999999951844376;


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
