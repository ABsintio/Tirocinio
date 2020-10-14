within BIOMD054;
class Class_elmt_cell

    input Real elmt_reactant2;
    input Real elmt_reactant1;
    input Real elmt_U6_plus_U7_minus_U8;
    input Real elmt_reactant4;
    input Real elmt_U2;
    input Real elmt_product0;
    input Real elmt_U3;
    input Real elmt_U1;
    input Real elmt_U6_plus_3U7;
    input Real elmt_product5;
    input Real elmt_product3;

    Real elmt_cell(unit = "") "Erythrocyte";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_I_conc(unit = "");
    Real elmt_I_amount(unit = "");
    Real elmt_I(unit = "") "Ions";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_E_conc(unit = "");
    Real elmt_E_amount(unit = "");
    Real elmt_E(unit = "") "Energy pool";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "Adenylate pool";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_I_conc = 10.0;
        elmt_E_conc = 2.1;
        elmt_A_conc = 1.11;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_I = elmt_I_conc;
        elmt_E = elmt_E_conc;
        elmt_A = elmt_A_conc;
        der(elmt_I_amount) = ((- (elmt_U2 * elmt_reactant1)) + (elmt_U1 * elmt_product0));
        der(elmt_E_amount) = ((- (elmt_U2 * elmt_reactant2)) + (elmt_U3 * elmt_product3) + (- (elmt_U6_plus_3U7 * elmt_reactant4)));
        der(elmt_A_amount) = (elmt_U6_plus_U7_minus_U8 * elmt_product5);

    algorithm
        elmt_I_conc := elmt_I_amount / elmt_cell;
        elmt_E_conc := elmt_E_amount / elmt_cell;
        elmt_A_conc := elmt_A_amount / elmt_cell;
end Class_elmt_cell;
