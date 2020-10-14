within BIOMD241;
class Class_elmt_Eff

    input Real elmt_C_p;
    input Real elmt_k_eo;

    Real elmt_Eff(unit = "") "Eff";
    Real elmt_C_e_conc(unit = "");
    Real elmt_C_e_amount(unit = "");
    Real elmt_C_e(unit = "") "C_e";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Eff = 1.0;
        elmt_C_e_conc = 0.0;


    equation
        assert(elmt_Eff >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Eff) = 0;
        elmt_C_e = elmt_C_e_conc;
        der(elmt_C_e_amount / elmt_Eff) = (elmt_k_eo * (elmt_C_p - elmt_C_e));

    algorithm
        elmt_C_e_conc := elmt_C_e_amount / elmt_Eff;
end Class_elmt_Eff;
