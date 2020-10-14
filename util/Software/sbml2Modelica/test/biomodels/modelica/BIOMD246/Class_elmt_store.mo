within BIOMD246;
class Class_elmt_store

    input Real elmt_reactant5;
    input Real elmt_v_Ca_leak;
    input Real elmt_reactant7;
    input Real elmt_v3;
    input Real elmt_v2;
    input Real elmt_product4;

    Real elmt_store(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Ca_store_conc(unit = "");
    Real elmt_Ca_store_amount(unit = "");
    Real elmt_Ca_store(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_store = 1.0;
        elmt_Ca_store_conc = 0.1;


    equation
        assert(elmt_store >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_store) = 0;
        elmt_Ca_store = elmt_Ca_store_conc;
        der(elmt_Ca_store_amount) = ((- (elmt_v_Ca_leak * elmt_reactant7)) + (- (elmt_v3 * elmt_reactant5)) + (elmt_v2 * elmt_product4));

    algorithm
        elmt_Ca_store_conc := elmt_Ca_store_amount / elmt_store;
end Class_elmt_store;
