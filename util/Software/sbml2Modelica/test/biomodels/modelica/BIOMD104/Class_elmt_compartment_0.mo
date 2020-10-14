within BIOMD104;
class Class_elmt_compartment_0

    input Real elmt_reactant2;
    input Real elmt_product1;
    input Real elmt_reaction_1;
    input Real elmt_reaction_0;
    input Real elmt_reactant0;
    input Real elmt_product3;

    input Boolean elmt_event_0000002;

    input Real assign_elmt_species_2;

    Real elmt_compartment_0(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "E1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "E2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_0_conc(unit = "");
    Real elmt_species_0_amount(unit = "");
    Real elmt_species_0(unit = "") "S";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "X1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_4_conc(unit = "");
    Real elmt_species_4_amount(unit = "");
    Real elmt_species_4(unit = "") "P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_5_conc(unit = "");
    Real elmt_species_5_amount(unit = "");
    Real elmt_species_5(unit = "") "Etot";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_0 = 1.0;
        elmt_species_2_conc = 1.0;
        elmt_species_0_conc = 1.0;
        elmt_species_1_conc = 0.0;
        elmt_species_4_conc = 0.0;
        elmt_species_5_conc = 1.0;


    equation
        assert(elmt_compartment_0 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_3 = elmt_species_3_conc;
        elmt_species_0 = elmt_species_0_conc;
        elmt_species_1 = elmt_species_1_conc;
        elmt_species_4 = elmt_species_4_conc;
        elmt_species_5 = elmt_species_5_conc;
        der(elmt_species_2_amount / elmt_compartment_0) = 0.0;
        elmt_species_3_amount = (elmt_species_5 - elmt_species_2) * elmt_compartment_0;
        der(elmt_species_5_amount) = 0;
        der(elmt_species_0_amount) = (- (elmt_reaction_0 * elmt_reactant0));
        der(elmt_species_1_amount) = ((- (elmt_reaction_1 * elmt_reactant2)) + (elmt_reaction_0 * elmt_product1));
        der(elmt_species_4_amount) = (elmt_reaction_1 * elmt_product3);

        when elmt_event_0000002 then
            reinit(elmt_species_2_amount, assign_elmt_species_2 * pre(elmt_compartment_0));
        end when;
    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_compartment_0;
        elmt_species_3_conc := elmt_species_3_amount / elmt_compartment_0;
        elmt_species_0_conc := elmt_species_0_amount / elmt_compartment_0;
        elmt_species_1_conc := elmt_species_1_amount / elmt_compartment_0;
        elmt_species_4_conc := elmt_species_4_amount / elmt_compartment_0;
        elmt_species_5_conc := elmt_species_5_amount / elmt_compartment_0;
end Class_elmt_compartment_0;
