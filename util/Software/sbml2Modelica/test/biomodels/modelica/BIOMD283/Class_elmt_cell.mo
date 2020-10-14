within BIOMD283;
class Class_elmt_cell

    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_product5;
    input Real elmt_product4;
    input Real elmt_reactant0;
    input Real elmt_product2;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "X";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_conc(unit = "");
    Real elmt_E_amount(unit = "");
    Real elmt_E(unit = "") "E";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Q_conc(unit = "");
    Real elmt_Q_amount(unit = "");
    Real elmt_Q(unit = "") "Q";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_P_conc = 0.0;
        elmt_X_conc = 8.0;
        elmt_E_conc = 1.0;
        elmt_Q_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_P = elmt_P_conc;
        elmt_X = elmt_X_conc;
        elmt_E = elmt_E_conc;
        elmt_Q = elmt_Q_conc;
        der(elmt_P_amount) = ((elmt_r1 * elmt_product2) + (- (elmt_r2 * elmt_reactant3)));
        der(elmt_X_amount) = (- (elmt_r1 * elmt_reactant0));
        der(elmt_E_amount) = ((- (elmt_r1 * elmt_reactant1)) + (elmt_r2 * elmt_product4));
        der(elmt_Q_amount) = (elmt_r2 * elmt_product5);

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_cell;
        elmt_X_conc := elmt_X_amount / elmt_cell;
        elmt_E_conc := elmt_E_amount / elmt_cell;
        elmt_Q_conc := elmt_Q_amount / elmt_cell;
end Class_elmt_cell;
