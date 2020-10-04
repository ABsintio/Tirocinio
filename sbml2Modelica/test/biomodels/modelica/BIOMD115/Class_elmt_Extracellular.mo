within BIOMD115;
class Class_elmt_Extracellular

    Real elmt_Extracellular(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Extracellular = 1.0;


    equation
        assert(elmt_Extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Extracellular) = 0;

    algorithm
end Class_elmt_Extracellular;
