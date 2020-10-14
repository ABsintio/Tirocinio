within BIOMD302;
class Class_elmt_post_synaptic_cell

    Real elmt_post_synaptic_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_post_synaptic_cell = 1.0;


    equation
        assert(elmt_post_synaptic_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_post_synaptic_cell) = 0;

    algorithm
end Class_elmt_post_synaptic_cell;
