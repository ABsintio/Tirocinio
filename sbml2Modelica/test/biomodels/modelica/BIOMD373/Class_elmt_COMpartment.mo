within BIOMD373;
class Class_elmt_COMpartment

    input Real elmt_Jer;
    input Real elmt_ninf;
    input Real elmt_Rgk;
    input Real elmt_pfk;
    input Real elmt_taua;
    input Real elmt_IKCa;
    input Real elmt_fer;
    input Real elmt_sigmaV;
    input Real elmt_IK;
    input Real elmt_IKATP;
    input Real elmt_r1;
    input Real elmt_Jmem;
    input Real elmt_atp;
    input Real elmt_fcyt;
    input Real elmt_Cm;
    input Real elmt_fback;
    input Real elmt_rgpdh;
    input Real elmt_ICa;
    input Real elmt_taun;
    input Real elmt_lambda;

    Real elmt_COMpartment(unit = "") "COMpartment";
    Real elmt_n_conc(unit = "");
    Real elmt_n_amount(unit = "");
    Real elmt_n(unit = "") "n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_fbp_conc(unit = "");
    Real elmt_fbp_amount(unit = "");
    Real elmt_fbp(unit = "") "fbp";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_g6p_conc(unit = "");
    Real elmt_g6p_amount(unit = "");
    Real elmt_g6p(unit = "") "g6p";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_cer_conc(unit = "");
    Real elmt_cer_amount(unit = "");
    Real elmt_cer(unit = "") "cer";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_V_conc(unit = "");
    Real elmt_V_amount(unit = "");
    Real elmt_V(unit = "") "V";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_adp_conc(unit = "");
    Real elmt_adp_amount(unit = "");
    Real elmt_adp(unit = "") "adp";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_c_conc(unit = "");
    Real elmt_c_amount(unit = "");
    Real elmt_c(unit = "") "c";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_COMpartment = 1.0;
        elmt_n_conc = (0.025 / elmt_COMpartment);
        elmt_fbp_conc = (40.0 / elmt_COMpartment);
        elmt_g6p_conc = (200.0 / elmt_COMpartment);
        elmt_cer_conc = (185.0 / elmt_COMpartment);
        elmt_V_conc = ((-60.0) / elmt_COMpartment);
        elmt_adp_conc = (780.0 / elmt_COMpartment);
        elmt_c_conc = (0.25 / elmt_COMpartment);


    equation
        assert(elmt_COMpartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_COMpartment) = 0;
        elmt_n = elmt_n_conc;
        elmt_fbp = elmt_fbp_conc;
        elmt_g6p = elmt_g6p_conc;
        elmt_cer = elmt_cer_conc;
        elmt_V = elmt_V_conc;
        elmt_adp = elmt_adp_conc;
        elmt_c = elmt_c_conc;
        der(elmt_n_amount / elmt_COMpartment) = ((elmt_ninf - elmt_n) / elmt_taun);
        der(elmt_fbp_amount / elmt_COMpartment) = (elmt_lambda * ((elmt_pfk / 1.0) - (0.5 * elmt_rgpdh)));
        der(elmt_g6p_amount / elmt_COMpartment) = (elmt_lambda * (elmt_Rgk - elmt_pfk));
        der(elmt_cer_amount / elmt_COMpartment) = ((- elmt_fer) * elmt_sigmaV * elmt_Jer);
        der(elmt_V_amount / elmt_COMpartment) = ((- (elmt_IK + elmt_ICa + elmt_IKCa + elmt_IKATP)) / elmt_Cm);
        der(elmt_adp_amount / elmt_COMpartment) = ((elmt_atp - (elmt_adp * exp((elmt_fback * (1.0 - (elmt_c / elmt_r1)))))) / (elmt_taua * 1.0));
        der(elmt_c_amount / elmt_COMpartment) = (elmt_fcyt * (elmt_Jmem + elmt_Jer));

    algorithm
        elmt_n_conc := elmt_n_amount / elmt_COMpartment;
        elmt_fbp_conc := elmt_fbp_amount / elmt_COMpartment;
        elmt_g6p_conc := elmt_g6p_amount / elmt_COMpartment;
        elmt_cer_conc := elmt_cer_amount / elmt_COMpartment;
        elmt_V_conc := elmt_V_amount / elmt_COMpartment;
        elmt_adp_conc := elmt_adp_amount / elmt_COMpartment;
        elmt_c_conc := elmt_c_amount / elmt_COMpartment;
end Class_elmt_COMpartment;
