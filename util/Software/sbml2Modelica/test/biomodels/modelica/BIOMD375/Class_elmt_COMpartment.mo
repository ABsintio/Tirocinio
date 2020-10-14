within BIOMD375;
class Class_elmt_COMpartment

    input Real elmt_i_CRAC;
    input Real elmt_i_K_ATP;
    input Real elmt_i_K;
    input Real elmt_n_infinity;
    input Real elmt_i_K_Ca;
    input Real elmt_i_Ca;
    input Real elmt_i_leak;
    input Real elmt_Cm;
    input Real elmt_J_er_tot;
    input Real elmt_sigma_er;
    input Real elmt_jm_infinity;
    input Real elmt_lambda_n;
    input Real elmt_tau_j;
    input Real elmt_lambda_er;
    input Real elmt_J_mem_tot;
    input Real elmt_tau_n;

    Real elmt_COMpartment(unit = "") "COMpartment";
    Real elmt_jm_conc(unit = "");
    Real elmt_jm_amount(unit = "");
    Real elmt_jm(unit = "") "jm";
    Real elmt_n_conc(unit = "");
    Real elmt_n_amount(unit = "");
    Real elmt_n(unit = "") "n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_er_Ca_equations_conc(unit = "");
    Real elmt_Ca_er_Ca_equations_amount(unit = "");
    Real elmt_Ca_er_Ca_equations(unit = "") "Ca_er_Ca_equations";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_V_membrane_conc(unit = "");
    Real elmt_V_membrane_amount(unit = "");
    Real elmt_V_membrane(unit = "") "V_membrane";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_i_conc(unit = "");
    Real elmt_Ca_i_amount(unit = "");
    Real elmt_Ca_i(unit = "") "Ca_i";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_COMpartment = 1.0;
        elmt_jm_conc = (0.12 / elmt_COMpartment);
        elmt_n_conc = (5.0E-4 / elmt_COMpartment);
        elmt_Ca_er_Ca_equations_conc = (60.0 / elmt_COMpartment);
        elmt_V_membrane_conc = ((-61.0) / elmt_COMpartment);
        elmt_Ca_i_conc = (0.11 / elmt_COMpartment);


    equation
        assert(elmt_COMpartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_COMpartment) = 0;
        elmt_jm = elmt_jm_conc;
        elmt_n = elmt_n_conc;
        elmt_Ca_er_Ca_equations = elmt_Ca_er_Ca_equations_conc;
        elmt_V_membrane = elmt_V_membrane_conc;
        elmt_Ca_i = elmt_Ca_i_conc;
        der(elmt_jm_amount / elmt_COMpartment) = ((elmt_jm_infinity - elmt_jm) / elmt_tau_j);
        der(elmt_n_amount / elmt_COMpartment) = ((elmt_lambda_n * (elmt_n_infinity - elmt_n)) / elmt_tau_n);
        der(elmt_Ca_er_Ca_equations_amount / elmt_COMpartment) = ((- elmt_J_er_tot) / (elmt_lambda_er * elmt_sigma_er));
        der(elmt_V_membrane_amount / elmt_COMpartment) = ((- (elmt_i_Ca + elmt_i_K + elmt_i_K_ATP + elmt_i_K_Ca + elmt_i_CRAC + elmt_i_leak)) / elmt_Cm);
        der(elmt_Ca_i_amount / elmt_COMpartment) = ((elmt_J_er_tot / elmt_lambda_er) + elmt_J_mem_tot);

    algorithm
        elmt_jm_conc := elmt_jm_amount / elmt_COMpartment;
        elmt_n_conc := elmt_n_amount / elmt_COMpartment;
        elmt_Ca_er_Ca_equations_conc := elmt_Ca_er_Ca_equations_amount / elmt_COMpartment;
        elmt_V_membrane_conc := elmt_V_membrane_amount / elmt_COMpartment;
        elmt_Ca_i_conc := elmt_Ca_i_amount / elmt_COMpartment;
end Class_elmt_COMpartment;
