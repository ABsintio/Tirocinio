within BIOMD378;
class Class_elmt_Compartment

    input Real elmt_i_K_ATP;
    input Real elmt_d_infinity;
    input Real elmt_tau_d;
    input Real elmt_n_infinity;
    input Real elmt_i_K_Ca;
    input Real elmt_i_Ca;
    input Real elmt_h_infinity;
    input Real elmt_omega;
    input Real elmt_k_Ca;
    input Real elmt_i_NaL;
    input Real elmt_i_fast;
    input Real elmt_k_rel;
    input Real elmt_Cm;
    input Real elmt_i_NS;
    input Real elmt_i_K_dr;
    input Real elmt_tau_h;
    input Real elmt_k_pump;
    input Real elmt_tau_n;

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
    Real elmt_h_conc(unit = "");
    Real elmt_h_amount(unit = "");
    Real elmt_h(unit = "") "h";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_d_conc(unit = "");
    Real elmt_d_amount(unit = "");
    Real elmt_d(unit = "") "d";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_i_cytosolic_calcium_conc(unit = "");
    Real elmt_Ca_i_cytosolic_calcium_amount(unit = "");
    Real elmt_Ca_i_cytosolic_calcium(unit = "") "Ca_i_cytosolic_calcium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_lum_conc(unit = "");
    Real elmt_Ca_lum_amount(unit = "");
    Real elmt_Ca_lum(unit = "") "Ca_lum";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Compartment = 1.0;
        elmt_n_conc = (0.1836403 / elmt_Compartment);
        elmt_V_membrane_conc = ((-38.34146) / elmt_Compartment);
        elmt_h_conc = (0.214723 / elmt_Compartment);
        elmt_d_conc = (0.0031711238 / elmt_Compartment);
        elmt_Ca_i_cytosolic_calcium_conc = (0.6959466 / elmt_Compartment);
        elmt_Ca_lum_conc = (102.686 / elmt_Compartment);


    equation
        assert(elmt_Compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment) = 0;
        elmt_n = elmt_n_conc;
        elmt_V_membrane = elmt_V_membrane_conc;
        elmt_h = elmt_h_conc;
        elmt_d = elmt_d_conc;
        elmt_Ca_i_cytosolic_calcium = elmt_Ca_i_cytosolic_calcium_conc;
        elmt_Ca_lum = elmt_Ca_lum_conc;
        der(elmt_n_amount / elmt_Compartment) = ((elmt_n_infinity - elmt_n) / elmt_tau_n);
        der(elmt_V_membrane_amount / elmt_Compartment) = ((- (elmt_i_K_dr + elmt_i_K_Ca + elmt_i_K_ATP + elmt_i_fast + elmt_i_Ca + elmt_i_NS + elmt_i_NaL)) / elmt_Cm);
        der(elmt_h_amount / elmt_Compartment) = ((elmt_h_infinity - elmt_h) / elmt_tau_h);
        der(elmt_d_amount / elmt_Compartment) = ((elmt_d_infinity - elmt_d) / elmt_tau_d);
        der(elmt_Ca_i_cytosolic_calcium_amount / elmt_Compartment) = ((elmt_k_rel * (elmt_Ca_lum - elmt_Ca_i_cytosolic_calcium)) - ((elmt_omega * elmt_i_Ca) + (elmt_k_Ca * elmt_Ca_i_cytosolic_calcium) + (elmt_k_pump * elmt_Ca_i_cytosolic_calcium)));
        der(elmt_Ca_lum_amount / elmt_Compartment) = (((- elmt_k_rel) * (elmt_Ca_lum - elmt_Ca_i_cytosolic_calcium)) + (elmt_k_pump * elmt_Ca_i_cytosolic_calcium));

    algorithm
        elmt_n_conc := elmt_n_amount / elmt_Compartment;
        elmt_V_membrane_conc := elmt_V_membrane_amount / elmt_Compartment;
        elmt_h_conc := elmt_h_amount / elmt_Compartment;
        elmt_d_conc := elmt_d_amount / elmt_Compartment;
        elmt_Ca_i_cytosolic_calcium_conc := elmt_Ca_i_cytosolic_calcium_amount / elmt_Compartment;
        elmt_Ca_lum_conc := elmt_Ca_lum_amount / elmt_Compartment;
end Class_elmt_Compartment;
