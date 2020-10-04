within BIOMD126;
class Class_elmt_event_0000001 "" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Boolean trigger;
    Real    value_elmt_v;

    equation
        trigger = ((time >= 5.0) and (time <= 20.0));
        algorithm
            value_elmt_v := (-30.0);
end Class_elmt_event_0000001;
