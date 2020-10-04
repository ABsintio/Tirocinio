within BIOMD191;
class Class_elmt_extracellular

    Real elmt_extracellular(unit = "") "extracellular";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ARGex_conc(unit = "");
    Real elmt_ARGex_amount(unit = "");
    Real elmt_ARGex(unit = "") "Arginine ex";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_extracellular = 1.0;
        elmt_ARGex_conc = 330.0;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_ARGex = elmt_ARGex_conc;
        der(elmt_ARGex_amount) = 0;

    algorithm
        elmt_ARGex_conc := elmt_ARGex_amount / elmt_extracellular;
end Class_elmt_extracellular;
