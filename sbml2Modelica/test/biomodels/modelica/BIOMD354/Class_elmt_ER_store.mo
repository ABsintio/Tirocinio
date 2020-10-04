within BIOMD354;
class Class_elmt_ER_store

    input Real elmt_JChannel;
    input Real elmt_JPump;
    input Real elmt_ERtoMito;
    input Real elmt_reactant3;
    input Real elmt_reactant14;
    input Real elmt_product2;

    Real elmt_ER_store(unit = "") "ER_store";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CaS_conc(unit = "");
    Real elmt_CaS_amount(unit = "");
    Real elmt_CaS(unit = "") "CaS";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_ER_store = 1.0;
        elmt_CaS_conc = (2.0 / elmt_ER_store);


    equation
        assert(elmt_ER_store >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ER_store) = 0;
        elmt_CaS = elmt_CaS_conc;
        der(elmt_CaS_amount) = ((- (elmt_JChannel * elmt_reactant3)) + (elmt_JPump * elmt_product2) + (- (elmt_ERtoMito * elmt_reactant14)));

    algorithm
        elmt_CaS_conc := elmt_CaS_amount / elmt_ER_store;
end Class_elmt_ER_store;
