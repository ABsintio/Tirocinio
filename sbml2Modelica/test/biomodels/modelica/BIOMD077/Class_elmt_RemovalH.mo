within BIOMD077;
class Class_elmt_RemovalH "removal of hormone" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Boolean trigger;
    Real    value_elmt_H;

    equation
        trigger = (time > 5.0);
        algorithm
            value_elmt_H := 0.0;
end Class_elmt_RemovalH;
