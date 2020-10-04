within BIOMD128;
class Class_elmt_event_0000001 "ET-1 switch" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    Boolean trigger;
    Real    value_elmt_IP3;
    Real    value_elmt_girk;
    Real    value_elmt_ETswitch;

    equation
        trigger = (time > 60000.0);
        algorithm
            value_elmt_IP3 := 0.3;
            value_elmt_girk := 3000.0;
            value_elmt_ETswitch := 1.0;
end Class_elmt_event_0000001;
