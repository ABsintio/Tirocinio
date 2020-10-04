within BIOMD371;
class Class_elmt_Compartment

    input Real elmt_tau_potassium_current_n_gate;
    input Real elmt_i_K_ATP;
    input Real elmt_lamda;
    input Real elmt_i_K;
    input Real elmt_tau_s;
    input Real elmt_n_infinity;
    input Real elmt_i_Ca;
    input Real elmt_i_s;
    input Real elmt_s_infinity;
    input Real elmt_tau_membrane;

    Real elmt_Compartment(unit = "") "Compartment";
    Real elmt_n_conc(unit = "");
    Real elmt_n_amount(unit = "");
    Real elmt_n(unit = "") "n";
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
    Real elmt_s_conc(unit = "");
    Real elmt_s_amount(unit = "");
    Real elmt_s(unit = "") "s";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Compartment = 1.0;
        elmt_n_conc = (0.05 / elmt_Compartment);
        elmt_V_membrane_conc = ((-65.0) / elmt_Compartment);
        elmt_s_conc = (0.025 / elmt_Compartment);


    equation
        assert(elmt_Compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment) = 0;
        elmt_n = elmt_n_conc;
        elmt_V_membrane = elmt_V_membrane_conc;
        elmt_s = elmt_s_conc;
        der(elmt_n_amount / elmt_Compartment) = ((elmt_lamda * (elmt_n_infinity - elmt_n)) / elmt_tau_potassium_current_n_gate);
        der(elmt_V_membrane_amount / elmt_Compartment) = ((- (elmt_i_Ca + elmt_i_K + elmt_i_K_ATP + elmt_i_s)) / elmt_tau_membrane);
        der(elmt_s_amount / elmt_Compartment) = ((elmt_s_infinity - elmt_s) / elmt_tau_s);

    algorithm
        elmt_n_conc := elmt_n_amount / elmt_Compartment;
        elmt_V_membrane_conc := elmt_V_membrane_amount / elmt_Compartment;
        elmt_s_conc := elmt_s_amount / elmt_Compartment;
end Class_elmt_Compartment;
