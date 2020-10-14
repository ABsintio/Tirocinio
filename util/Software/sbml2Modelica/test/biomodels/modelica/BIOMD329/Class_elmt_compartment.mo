within BIOMD329;
class Class_elmt_compartment

    input Real elmt_R7;
    input Real elmt_reactant2;
    input Real elmt_R8;
    input Real elmt_R5;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_R6;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_reactant5;
    input Real elmt_R1;
    input Real elmt_reactant7;
    input Real elmt_R2;
    input Real elmt_product1;
    input Real elmt_product0;
    input Real elmt_product4;

    Real elmt_compartment(unit = "") "compartment";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_c_conc(unit = "");
    Real elmt_c_amount(unit = "");
    Real elmt_c(unit = "") "Calcium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a_conc(unit = "");
    Real elmt_a_amount(unit = "");
    Real elmt_a(unit = "") "G-alpha";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_b_conc(unit = "");
    Real elmt_b_amount(unit = "");
    Real elmt_b(unit = "") "activePLC";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0E-13;
        elmt_c_conc = 0.01;
        elmt_a_conc = 0.01;
        elmt_b_conc = 0.01;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_c = elmt_c_conc;
        elmt_a = elmt_a_conc;
        elmt_b = elmt_b_conc;
        der(elmt_c_amount) = ((elmt_R7 * elmt_product6) + (- (elmt_R8 * elmt_reactant7)));
        der(elmt_a_amount) = ((- (elmt_R3 * elmt_reactant2)) + (- (elmt_R4 * elmt_reactant3)) + (elmt_R1 * elmt_product0) + (elmt_R2 * elmt_product1));
        der(elmt_b_amount) = ((elmt_R5 * elmt_product4) + (- (elmt_R6 * elmt_reactant5)));

    algorithm
        elmt_c_conc := elmt_c_amount / elmt_compartment;
        elmt_a_conc := elmt_a_amount / elmt_compartment;
        elmt_b_conc := elmt_b_amount / elmt_compartment;
end Class_elmt_compartment;
