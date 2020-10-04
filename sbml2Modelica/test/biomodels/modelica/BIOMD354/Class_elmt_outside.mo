within BIOMD354;
class Class_elmt_outside

    Real elmt_outside(unit = "") "Outside";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CaO_conc(unit = "");
    Real elmt_CaO_amount(unit = "");
    Real elmt_CaO(unit = "") "CaO";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_outside = 1.0;
        elmt_CaO_conc = (1000.0 / elmt_outside);


    equation
        assert(elmt_outside >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_outside) = 0;
        elmt_CaO = elmt_CaO_conc;
        der(elmt_CaO_amount) = 0;

    algorithm
        elmt_CaO_conc := elmt_CaO_amount / elmt_outside;
end Class_elmt_outside;
