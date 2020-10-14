within BIOMD320;
class Class_elmt_V2_B

    input Real elmt_bens_distribution;
    input Real elmt_product18;

    Real elmt_V2_B(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C2_B_conc(unit = "");
    Real elmt_C2_B_amount(unit = "");
    Real elmt_C2_B(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_V2_B = 0.127;
        elmt_C2_B_conc = 0.0;


    equation
        assert(elmt_V2_B >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_V2_B) = 0;
        elmt_C2_B = elmt_C2_B_conc;
        der(elmt_C2_B_amount) = (elmt_bens_distribution * elmt_product18);

    algorithm
        elmt_C2_B_conc := elmt_C2_B_amount / elmt_V2_B;
end Class_elmt_V2_B;
