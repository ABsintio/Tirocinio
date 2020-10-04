within BIOMD121;
class Class_elmt_event_0000001 "" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    input Real elmt_vtest;
    Boolean trigger;
    Real    value_elmt_v;

    equation
        trigger = ((time > 50.0) and (time <= 300.0));
        algorithm
            value_elmt_v := elmt_vtest;
end Class_elmt_event_0000001;
