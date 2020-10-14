within BIOMD304;
class Class_elmt_COMpartment

    input Real elmt_i_L;
    input Real elmt_i_K;
    input Real elmt_V_Ca;
    input Real elmt_n_infinity;
    input Real elmt_i_K_Ca;
    input Real elmt_i_Ca;
    input Real elmt_h_infinity;
    input Real elmt_tau_x;
    input Real elmt_f;
    input Real elmt_x_infinity;
    input Real elmt_tau_h;
    input Real elmt_K_c;
    input Real elmt_i_Na;
    input Real elmt_tau_n;

    Real elmt_COMpartment(unit = "") "";
    Real elmt_n1_conc(unit = "");
    Real elmt_n1_amount(unit = "");
    Real elmt_n1(unit = "") "n1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_V_membrane_conc(unit = "");
    Real elmt_V_membrane_amount(unit = "");
    Real elmt_V_membrane(unit = "") "V";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_h1_conc(unit = "");
    Real elmt_h1_amount(unit = "");
    Real elmt_h1(unit = "") "h1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x1_conc(unit = "");
    Real elmt_x1_amount(unit = "");
    Real elmt_x1(unit = "") "x1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_c_conc(unit = "");
    Real elmt_c_amount(unit = "");
    Real elmt_c(unit = "") "c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_COMpartment = 1.0;
        elmt_n1_conc = 0.03;
        elmt_V_membrane_conc = (-55.0);
        elmt_h1_conc = 0.9;
        elmt_x1_conc = 0.27;
        elmt_c_conc = 0.4;


    equation
        assert(elmt_COMpartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_COMpartment) = 0;
        elmt_n1 = elmt_n1_conc;
        elmt_V_membrane = elmt_V_membrane_conc;
        elmt_h1 = elmt_h1_conc;
        elmt_x1 = elmt_x1_conc;
        elmt_c = elmt_c_conc;
        der(elmt_n1_amount / elmt_COMpartment) = ((elmt_n_infinity - elmt_n1) / elmt_tau_n);
        der(elmt_V_membrane_amount / elmt_COMpartment) = (elmt_i_Na + elmt_i_Ca + elmt_i_K + elmt_i_K_Ca + elmt_i_L);
        der(elmt_h1_amount / elmt_COMpartment) = ((elmt_h_infinity - elmt_h1) / elmt_tau_h);
        der(elmt_x1_amount / elmt_COMpartment) = ((elmt_x_infinity - elmt_x1) / elmt_tau_x);
        der(elmt_c_amount / elmt_COMpartment) = (elmt_f * ((elmt_K_c * elmt_x1 * (elmt_V_Ca - elmt_V_membrane)) - elmt_c));

    algorithm
        elmt_n1_conc := elmt_n1_amount / elmt_COMpartment;
        elmt_V_membrane_conc := elmt_V_membrane_amount / elmt_COMpartment;
        elmt_h1_conc := elmt_h1_amount / elmt_COMpartment;
        elmt_x1_conc := elmt_x1_amount / elmt_COMpartment;
        elmt_c_conc := elmt_c_amount / elmt_COMpartment;
end Class_elmt_COMpartment;
