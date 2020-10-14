within BIOMD188;
class Class_elmt_stressCell "" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Boolean trigger;
    Real    value_elmt_IR;

    equation
        trigger = (time >= 3600.0);
        algorithm
            value_elmt_IR := 25.0;
end Class_elmt_stressCell;
