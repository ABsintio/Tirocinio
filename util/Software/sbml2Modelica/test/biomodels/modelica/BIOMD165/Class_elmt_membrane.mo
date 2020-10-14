within BIOMD165;
class Class_elmt_membrane

    Real elmt_membrane(unit = "m2.0") "membrane";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_membrane = 0.25;


    equation
        assert(elmt_membrane >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_membrane) = 0;

    algorithm
end Class_elmt_membrane;
