within BIOMD122;
class Class_elmt_event_0000003 "" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    Boolean trigger;
    Real    value_elmt_Ca_Nuc;
    Real    value_elmt_Ca_Cyt;

    equation
        trigger = (time >= 1500.0);
        algorithm
            value_elmt_Ca_Nuc := 0.1;
            value_elmt_Ca_Cyt := 0.1;
end Class_elmt_event_0000003;
