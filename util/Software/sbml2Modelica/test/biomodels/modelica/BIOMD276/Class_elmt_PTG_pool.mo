within BIOMD276;
class Class_elmt_PTG_pool

    input Real elmt_k;
    input Real elmt_lambda_1;
    input Real elmt_lambda_Ca;

    Real elmt_PTG_pool(unit = "") "PTG_pool";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x1_conc(unit = "");
    Real elmt_x1_amount(unit = "");
    Real elmt_x1(unit = "") "PTH_in_PTG";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_PTG_pool = 1.0;
        elmt_x1_conc = 0.0;


    equation
        assert(elmt_PTG_pool >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_PTG_pool) = 0;
        elmt_x1 = elmt_x1_conc;
        der(elmt_x1_amount / elmt_PTG_pool) = ((elmt_k - (elmt_lambda_Ca * elmt_x1)) - (elmt_lambda_1 * elmt_x1));

    algorithm
        elmt_x1_conc := elmt_x1_amount / elmt_PTG_pool;
end Class_elmt_PTG_pool;
