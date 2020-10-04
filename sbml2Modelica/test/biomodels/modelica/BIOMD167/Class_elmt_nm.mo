within BIOMD167;
class Class_elmt_nm

    Real elmt_nm(unit = "m2.0") "nm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_nm = 1.0;


    equation
        assert(elmt_nm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nm) = 0;

    algorithm
end Class_elmt_nm;
