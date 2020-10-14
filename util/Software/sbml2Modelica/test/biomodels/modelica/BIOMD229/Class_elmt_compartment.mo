within BIOMD229;
class Class_elmt_compartment

    input Real elmt_v9;
    input Real elmt_v7;
    input Real elmt_product12;
    input Real elmt_v8;
    input Real elmt_product10;
    input Real elmt_v5;
    input Real elmt_v6;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_reactant9;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_v13;
    input Real elmt_v12;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_v11;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_v10;
    input Real elmt_reactant5;
    input Real elmt_reactant7;
    input Real elmt_product0;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_product2;
    input Real elmt_v14;
    input Real elmt_reactant13;

    Real elmt_compartment(unit = "") "compartment";
    Real elmt_excAMP_conc(unit = "");
    Real elmt_excAMP_amount(unit = "");
    Real elmt_excAMP(unit = "") "excAMP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PKA_conc(unit = "");
    Real elmt_PKA_amount(unit = "");
    Real elmt_PKA(unit = "") "PKA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ERK2_conc(unit = "");
    Real elmt_ERK2_amount(unit = "");
    Real elmt_ERK2(unit = "") "ERK2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_REGA_conc(unit = "");
    Real elmt_REGA_amount(unit = "");
    Real elmt_REGA(unit = "") "REGA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ACA_conc(unit = "");
    Real elmt_ACA_amount(unit = "");
    Real elmt_ACA(unit = "") "ACA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CAR1_conc(unit = "");
    Real elmt_CAR1_amount(unit = "");
    Real elmt_CAR1(unit = "") "CAR1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_incAMP_conc(unit = "");
    Real elmt_incAMP_amount(unit = "");
    Real elmt_incAMP(unit = "") "incAMP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_excAMP_conc = 0.48;
        elmt_PKA_conc = 1.6;
        elmt_ERK2_conc = 1.13;
        elmt_REGA_conc = 0.9;
        elmt_ACA_conc = 3.39;
        elmt_CAR1_conc = 2.45;
        elmt_incAMP_conc = 1.2;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_excAMP = elmt_excAMP_conc;
        elmt_PKA = elmt_PKA_conc;
        elmt_ERK2 = elmt_ERK2_conc;
        elmt_REGA = elmt_REGA_conc;
        elmt_ACA = elmt_ACA_conc;
        elmt_CAR1 = elmt_CAR1_conc;
        elmt_incAMP = elmt_incAMP_conc;
        der(elmt_excAMP_amount) = ((- (elmt_v12 * elmt_reactant11)) + (elmt_v11 * elmt_product10));
        der(elmt_PKA_amount) = ((elmt_v3 * elmt_product2) + (- (elmt_v4 * elmt_reactant3)));
        der(elmt_ERK2_amount) = ((elmt_v5 * elmt_product4) + (- (elmt_v6 * elmt_reactant5)));
        der(elmt_REGA_amount) = ((elmt_v7 * elmt_product6) + (- (elmt_v8 * elmt_reactant7)));
        der(elmt_ACA_amount) = ((elmt_v1 * elmt_product0) + (- (elmt_v2 * elmt_reactant1)));
        der(elmt_CAR1_amount) = ((elmt_v13 * elmt_product12) + (- (elmt_v14 * elmt_reactant13)));
        der(elmt_incAMP_amount) = ((elmt_v9 * elmt_product8) + (- (elmt_v10 * elmt_reactant9)));

    algorithm
        elmt_excAMP_conc := elmt_excAMP_amount / elmt_compartment;
        elmt_PKA_conc := elmt_PKA_amount / elmt_compartment;
        elmt_ERK2_conc := elmt_ERK2_amount / elmt_compartment;
        elmt_REGA_conc := elmt_REGA_amount / elmt_compartment;
        elmt_ACA_conc := elmt_ACA_amount / elmt_compartment;
        elmt_CAR1_conc := elmt_CAR1_amount / elmt_compartment;
        elmt_incAMP_conc := elmt_incAMP_amount / elmt_compartment;
end Class_elmt_compartment;
