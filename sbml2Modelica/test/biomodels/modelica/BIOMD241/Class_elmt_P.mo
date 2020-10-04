within BIOMD241;
class Class_elmt_P

    input Real elmt_C_p;
    input Real elmt_k12;
    input Real elmt_k21;

    Real elmt_P(unit = "") "P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_per_conc(unit = "");
    Real elmt_C_per_amount(unit = "");
    Real elmt_C_per(unit = "") "C_per";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_P = 1.0;
        elmt_C_per_conc = 0.0;


    equation
        assert(elmt_P >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_P) = 0;
        elmt_C_per = elmt_C_per_conc;
        der(elmt_C_per_amount / elmt_P) = ((elmt_k12 * elmt_C_p) - (elmt_k21 * elmt_C_per));

    algorithm
        elmt_C_per_conc := elmt_C_per_amount / elmt_P;
end Class_elmt_P;
