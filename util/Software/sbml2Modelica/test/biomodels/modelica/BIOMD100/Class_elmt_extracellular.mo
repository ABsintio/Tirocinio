within BIOMD100;
class Class_elmt_extracellular

    Real elmt_extracellular(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_EC_conc(unit = "");
    Real elmt_EC_amount(unit = "");
    Real elmt_EC(unit = "") "Extracellular Calcium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_extracellular = 1.0;
        elmt_EC_conc = 1000.0;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_EC = elmt_EC_conc;
        der(elmt_EC_amount) = 0;

    algorithm
        elmt_EC_conc := elmt_EC_amount / elmt_extracellular;
end Class_elmt_extracellular;
