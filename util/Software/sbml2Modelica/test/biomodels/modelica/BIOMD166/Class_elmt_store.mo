within BIOMD166;
class Class_elmt_store

    input Real elmt_Calcium_into_cytoplasm;
    input Real elmt_product6;
    input Real elmt_reactant7;
    input Real elmt_Calcium_into_store;
    input Real elmt_reactant9;
    input Real elmt_Leakage;

    Real elmt_store(unit = "") "store";
    Real elmt_Y_conc(unit = "");
    Real elmt_Y_amount(unit = "");
    Real elmt_Y(unit = "") "Calcium in store";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_store = 1.0;
        elmt_Y_conc = 0.0;


    equation
        assert(elmt_store >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_store) = 0;
        elmt_Y = elmt_Y_conc;
        der(elmt_Y_amount) = ((- (elmt_Calcium_into_cytoplasm * elmt_reactant7)) + (elmt_Calcium_into_store * elmt_product6) + (- (elmt_Leakage * elmt_reactant9)));

    algorithm
        elmt_Y_conc := elmt_Y_amount / elmt_store;
end Class_elmt_store;
