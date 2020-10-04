within BIOMD241;
class Class_elmt_C

    input Real elmt_X_gut;
    input Real elmt_C_per;
    input Real elmt_k_a;
    input Real elmt_F;
    input Real elmt_k12;
    input Real elmt_V_C;
    input Real elmt_k21;
    input Real elmt_k10;

    Real elmt_C(unit = "") "C";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_p_conc(unit = "");
    Real elmt_C_p_amount(unit = "");
    Real elmt_C_p(unit = "") "C_p";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_C = 0.31;
        elmt_C_p_conc = (0.0 / elmt_C);


    equation
        assert(elmt_C >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_C) = 0;
        elmt_C_p = elmt_C_p_conc;
        der(elmt_C_p_amount / elmt_C) = (((((elmt_k_a * elmt_F * elmt_X_gut) / elmt_V_C) - (elmt_k12 * elmt_C_p)) + (elmt_k21 * elmt_C_per)) - (elmt_k10 * elmt_C_p));

    algorithm
        elmt_C_p_conc := elmt_C_p_amount / elmt_C;
end Class_elmt_C;
