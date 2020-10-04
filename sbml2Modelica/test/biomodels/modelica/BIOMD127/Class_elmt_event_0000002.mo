within BIOMD127;
class Class_elmt_event_0000002 "Stimulus" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    Boolean trigger;
    Real    value_elmt_i;

    equation
        trigger = (time > 10.0);
        algorithm
            value_elmt_i := 10.0;
end Class_elmt_event_0000002;
