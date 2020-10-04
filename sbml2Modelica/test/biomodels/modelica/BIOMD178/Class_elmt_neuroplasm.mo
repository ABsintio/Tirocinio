within BIOMD178;
class Class_elmt_neuroplasm

    input Real elmt_translocation;
    input Real elmt_product3;

    Real elmt_neuroplasm(unit = "") "neuroplasm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_lytic_conc(unit = "");
    Real elmt_lytic_amount(unit = "");
    Real elmt_lytic(unit = "") "lytic_BoNT/A";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_neuroplasm = 1.0;
        elmt_lytic_conc = 0.0;


    equation
        assert(elmt_neuroplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_neuroplasm) = 0;
        elmt_lytic = elmt_lytic_conc;
        der(elmt_lytic_amount) = (elmt_translocation * elmt_product3);

    algorithm
        elmt_lytic_conc := elmt_lytic_amount / elmt_neuroplasm;
end Class_elmt_neuroplasm;
