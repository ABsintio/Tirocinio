within BIOMD154;
class Class_elmt_compartment

    input Real elmt_reactant2;
    input Real elmt_reactant1;
    input Real elmt_R5;
    input Real elmt_reactant4;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_product0;
    input Real elmt_product3;

    Real elmt_compartment(unit = "") "cell";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_y_conc(unit = "");
    Real elmt_y_amount(unit = "");
    Real elmt_y(unit = "") "Mdm2";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x_conc(unit = "");
    Real elmt_x_amount(unit = "");
    Real elmt_x(unit = "") "p53";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_y_conc = 0.02;
        elmt_x_conc = 0.02;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_y = elmt_y_conc;
        elmt_x = elmt_x_conc;
        der(elmt_y_amount) = ((- (elmt_R5 * elmt_reactant4)) + (elmt_R4 * elmt_product3));
        der(elmt_x_amount) = ((- (elmt_R3 * elmt_reactant2)) + (elmt_R1 * elmt_product0) + (- (elmt_R2 * elmt_reactant1)));

    algorithm
        elmt_y_conc := elmt_y_amount / elmt_compartment;
        elmt_x_conc := elmt_x_amount / elmt_compartment;
end Class_elmt_compartment;
