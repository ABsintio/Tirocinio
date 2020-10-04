within BIOMD282;
class Class_elmt_cell

    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_r3;
    input Real elmt_r1;
    input Real elmt_product10;
    input Real elmt_reactant7;
    input Real elmt_r2;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_product2;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p_conc(unit = "");
    Real elmt_p_amount(unit = "");
    Real elmt_p(unit = "") "enzyme-substrate complex ES (catalase - hydrogen peroxide)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p1_conc(unit = "");
    Real elmt_p1_amount(unit = "");
    Real elmt_p1(unit = "") "product 1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p2_conc(unit = "");
    Real elmt_p2_amount(unit = "");
    Real elmt_p2(unit = "") "product 2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x_conc(unit = "");
    Real elmt_x_amount(unit = "");
    Real elmt_x(unit = "") "substrate S (hydrogen peroxide)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_e_conc(unit = "");
    Real elmt_e_amount(unit = "");
    Real elmt_e(unit = "") "enzyme E (catalase)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a_conc(unit = "");
    Real elmt_a_amount(unit = "");
    Real elmt_a(unit = "") "donor AH2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_p_conc = 0.0;
        elmt_p1_conc = 0.0;
        elmt_p2_conc = 0.0;
        elmt_x_conc = 2.0;
        elmt_e_conc = 1.36;
        elmt_a_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_p = elmt_p_conc;
        elmt_p1 = elmt_p1_conc;
        elmt_p2 = elmt_p2_conc;
        elmt_x = elmt_x_conc;
        elmt_e = elmt_e_conc;
        elmt_a = elmt_a_conc;
        der(elmt_a_amount) = 0;
        der(elmt_p_amount) = ((- (elmt_r3 * elmt_reactant7)) + (elmt_r1 * elmt_product2) + (- (elmt_r2 * elmt_reactant3)));
        der(elmt_p1_amount) = (elmt_r2 * elmt_product6);
        der(elmt_p2_amount) = (elmt_r3 * elmt_product10);
        der(elmt_x_amount) = ((- (elmt_r1 * elmt_reactant1)) + (- (elmt_r2 * elmt_reactant4)));
        der(elmt_e_amount) = ((elmt_r3 * elmt_product9) + (- (elmt_r1 * elmt_reactant0)) + (elmt_r2 * elmt_product5));

    algorithm
        elmt_p_conc := elmt_p_amount / elmt_cell;
        elmt_p1_conc := elmt_p1_amount / elmt_cell;
        elmt_p2_conc := elmt_p2_amount / elmt_cell;
        elmt_x_conc := elmt_x_amount / elmt_cell;
        elmt_e_conc := elmt_e_amount / elmt_cell;
        elmt_a_conc := elmt_a_amount / elmt_cell;
end Class_elmt_cell;
