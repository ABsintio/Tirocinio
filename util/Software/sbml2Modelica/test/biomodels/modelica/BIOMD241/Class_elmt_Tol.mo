within BIOMD241;
class Class_elmt_Tol

    input Real elmt_k_tol;
    input Real elmt_C_p;

    Real elmt_Tol(unit = "") "Tol";
    Real elmt_C_t_conc(unit = "");
    Real elmt_C_t_amount(unit = "");
    Real elmt_C_t(unit = "") "C_t";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Tol = 1.0;
        elmt_C_t_conc = 0.0;


    equation
        assert(elmt_Tol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Tol) = 0;
        elmt_C_t = elmt_C_t_conc;
        der(elmt_C_t_amount / elmt_Tol) = (elmt_k_tol * (elmt_C_p - elmt_C_t));

    algorithm
        elmt_C_t_conc := elmt_C_t_amount / elmt_Tol;
end Class_elmt_Tol;
