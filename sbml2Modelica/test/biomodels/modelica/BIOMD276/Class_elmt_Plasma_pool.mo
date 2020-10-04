within BIOMD276;
class Class_elmt_Plasma_pool

    input Real elmt_Ca1;
    input Real elmt_lambda_2;
    input Real elmt_Ca0;
    input Real elmt_t0;
    input Real elmt_lambda_Ca;
    input Real elmt_alpha;
    input Real elmt_x1;

    Real elmt_Plasma_pool(unit = "") "Plasma_pool";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_conc(unit = "");
    Real elmt_Ca_amount(unit = "");
    Real elmt_Ca(unit = "") "Ca_in_Plasma";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x2_conc(unit = "");
    Real elmt_x2_amount(unit = "");
    Real elmt_x2(unit = "") "PTH_in_Plasma";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Plasma_pool = 1.0;
        elmt_x2_conc = 0.0;


    equation
        assert(elmt_Plasma_pool >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Plasma_pool) = 0;
        elmt_Ca = elmt_Ca_conc;
        elmt_x2 = elmt_x2_conc;
        elmt_Ca_amount = (if (time < elmt_t0) then elmt_Ca0 else (elmt_Ca0 - (elmt_Ca1 * (1.0 - exp(((- elmt_alpha) * (time - elmt_t0))))))) * elmt_Plasma_pool;
        der(elmt_x2_amount / elmt_Plasma_pool) = ((elmt_lambda_Ca * elmt_x1) - (elmt_lambda_2 * elmt_x2));

    algorithm
        elmt_Ca_conc := elmt_Ca_amount / elmt_Plasma_pool;
        elmt_x2_conc := elmt_x2_amount / elmt_Plasma_pool;
end Class_elmt_Plasma_pool;
