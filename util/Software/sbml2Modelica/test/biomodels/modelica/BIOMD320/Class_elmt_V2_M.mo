within BIOMD320;
class Class_elmt_V2_M

    input Real elmt_product20;
    input Real elmt_ro_distribution;

    Real elmt_V2_M(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C2_M_conc(unit = "");
    Real elmt_C2_M_amount(unit = "");
    Real elmt_C2_M(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_V2_M = 3.2;
        elmt_C2_M_conc = 0.0;


    equation
        assert(elmt_V2_M >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_V2_M) = 0;
        elmt_C2_M = elmt_C2_M_conc;
        der(elmt_C2_M_amount) = (elmt_ro_distribution * elmt_product20);

    algorithm
        elmt_C2_M_conc := elmt_C2_M_amount / elmt_V2_M;
end Class_elmt_V2_M;
