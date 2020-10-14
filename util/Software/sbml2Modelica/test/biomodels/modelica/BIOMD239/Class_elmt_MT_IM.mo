within BIOMD239;
class Class_elmt_MT_IM

    Real elmt_MT_IM(unit = "") "mitochondrial inner membrane";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_MT_IM = 1.0;


    equation
        assert(elmt_MT_IM >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_MT_IM) = 0;

    algorithm
end Class_elmt_MT_IM;
