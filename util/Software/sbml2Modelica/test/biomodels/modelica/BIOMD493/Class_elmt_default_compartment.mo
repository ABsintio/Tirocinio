within BIOMD493;
class Class_elmt_default_compartment

    input Real elmt_a6;
    input Real elmt_reactant1;
    input Real elmt_a4;
    input Real elmt_reactant3;
    input Real elmt_a5;
    input Real elmt_a2;
    input Real elmt_a3;
    input Real elmt_reactant5;
    input Real elmt_a1;
    input Real elmt_product0;
    input Real elmt_product4;
    input Real elmt_product2;

    Real elmt_default_compartment(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_O_conc(unit = "");
    Real elmt_O_amount(unit = "");
    Real elmt_O(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_conc(unit = "");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_default_compartment = 1.0;
        elmt_O_conc = 0.14;
        elmt_P_conc = 12.03;
        elmt_C_conc = 0.14;


    equation
        assert(elmt_default_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default_compartment) = 0;
        elmt_O = elmt_O_conc;
        elmt_P = elmt_P_conc;
        elmt_C = elmt_C_conc;
        der(elmt_O_amount) = ((- (elmt_a4 * elmt_reactant3)) + (elmt_a3 * elmt_product2));
        der(elmt_P_amount) = ((- (elmt_a2 * elmt_reactant1)) + (elmt_a1 * elmt_product0));
        der(elmt_C_amount) = ((- (elmt_a6 * elmt_reactant5)) + (elmt_a5 * elmt_product4));

    algorithm
        elmt_O_conc := elmt_O_amount / elmt_default_compartment;
        elmt_P_conc := elmt_P_amount / elmt_default_compartment;
        elmt_C_conc := elmt_C_amount / elmt_default_compartment;
end Class_elmt_default_compartment;
