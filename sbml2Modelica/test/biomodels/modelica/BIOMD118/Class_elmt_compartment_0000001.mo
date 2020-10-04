within BIOMD118;
class Class_elmt_compartment_0000001

    Real elmt_compartment_0000001(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment_0000001 = 1.0;


    equation
        assert(elmt_compartment_0000001 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0000001) = 0;

    algorithm
end Class_elmt_compartment_0000001;
