within BIOMD266;
class Class_elmt_external

    Real elmt_external(unit = "") "external";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));
    Real elmt_X0_conc(unit = "");
    Real elmt_X0_amount(unit = "");
    Real elmt_X0(unit = "") "glucose";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_external = 1.0;
        elmt_X0_conc = 1.0;


    equation
        assert(elmt_external >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_external) = 0;
        elmt_X0 = elmt_X0_conc;
        der(elmt_X0_amount) = 0;

    algorithm
        elmt_X0_conc := elmt_X0_amount / elmt_external;
end Class_elmt_external;
