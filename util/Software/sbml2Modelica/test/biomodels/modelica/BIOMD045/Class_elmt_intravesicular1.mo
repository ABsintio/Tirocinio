within BIOMD045;
class Class_elmt_intravesicular1

    input Real elmt_v2s;
    input Real elmt_v3s;
    input Real elmt_v6;
    input Real elmt_reactant14;
    input Real elmt_product13;
    input Real elmt_reactant10;

    Real elmt_intravesicular1(unit = "") "";
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

    initial equation
        elmt_intravesicular1 = 1.0;
        elmt_X_conc = 0.5;


    equation
        assert(elmt_intravesicular1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_intravesicular1) = 0;
        elmt_X = elmt_X_conc;
        der(elmt_X_amount) = ((elmt_v2s * elmt_product13) + (- (elmt_v3s * elmt_reactant14)) + (- (elmt_v6 * elmt_reactant10)));

    algorithm
        elmt_X_conc := elmt_X_amount / elmt_intravesicular1;
end Class_elmt_intravesicular1;
