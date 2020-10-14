within BIOMD331;
class Class_elmt_mit

    input Real elmt_Ca_cyt;
    input Real elmt_K19;
    input Real elmt_k18;
    input Real elmt_k20;
    input Real elmt_K21;

    Real elmt_mit(unit = "") "mitochondria";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_mit_conc(unit = "");
    Real elmt_Ca_mit_amount(unit = "");
    Real elmt_Ca_mit(unit = "") "Calcium-mit";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_mit = 1.0;
        elmt_Ca_mit_conc = 0.001;


    equation
        assert(elmt_mit >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_mit) = 0;
        elmt_Ca_mit = elmt_Ca_mit_conc;
        der(elmt_Ca_mit_amount / elmt_mit) = (((elmt_k18 * Functions.pow(elmt_Ca_cyt, 8.0)) / (Functions.pow(elmt_K19, 8.0) + Functions.pow(elmt_Ca_cyt, 8.0))) - (((elmt_Ca_mit - elmt_Ca_cyt) * elmt_k20 * elmt_Ca_cyt) / (elmt_Ca_cyt + elmt_K21)));

    algorithm
        elmt_Ca_mit_conc := elmt_Ca_mit_amount / elmt_mit;
end Class_elmt_mit;
