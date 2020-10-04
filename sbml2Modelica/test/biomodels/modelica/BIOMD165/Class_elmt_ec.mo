within BIOMD165;
class Class_elmt_ec

    Real elmt_ec(unit = "m3.0") "ec";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_ec = 1.0;


    equation
        assert(elmt_ec >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ec) = 0;

    algorithm
end Class_elmt_ec;
