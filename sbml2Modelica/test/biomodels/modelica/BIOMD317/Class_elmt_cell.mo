within BIOMD317;
class Class_elmt_cell

    input Real elmt_reactant1;
    input Real elmt_r5;
    input Real elmt_r6;
    input Real elmt_reactant3;
    input Real elmt_r3;
    input Real elmt_reactant5;
    input Real elmt_r4;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_product0;
    input Real elmt_product4;
    input Real elmt_product2;
    input Real elmt_FX;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Z3_conc(unit = "");
    Real elmt_Z3_amount(unit = "");
    Real elmt_Z3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Z1_conc(unit = "");
    Real elmt_Z1_amount(unit = "");
    Real elmt_Z1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Z2_conc(unit = "");
    Real elmt_Z2_amount(unit = "");
    Real elmt_Z2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_X_conc = 0.0;
        elmt_Z3_conc = 0.0;
        elmt_Z1_conc = 0.0;
        elmt_Z2_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_X = elmt_X_conc;
        elmt_Z3 = elmt_Z3_conc;
        elmt_Z1 = elmt_Z1_conc;
        elmt_Z2 = elmt_Z2_conc;
        der(elmt_X_amount / elmt_cell) = (elmt_FX - elmt_X);
        der(elmt_Z3_amount) = ((elmt_r5 * elmt_product4) + (- (elmt_r6 * elmt_reactant5)));
        der(elmt_Z1_amount) = ((elmt_r1 * elmt_product0) + (- (elmt_r2 * elmt_reactant1)));
        der(elmt_Z2_amount) = ((elmt_r3 * elmt_product2) + (- (elmt_r4 * elmt_reactant3)));

    algorithm
        elmt_X_conc := elmt_X_amount / elmt_cell;
        elmt_Z3_conc := elmt_Z3_amount / elmt_cell;
        elmt_Z1_conc := elmt_Z1_amount / elmt_cell;
        elmt_Z2_conc := elmt_Z2_amount / elmt_cell;
end Class_elmt_cell;
