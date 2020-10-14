within BIOMD254;
class Class_elmt_compartment

    input Real elmt_kp;
    input Real elmt_k1;
    input Real elmt_V_in;
    input Real elmt_km;
    input Real elmt_epsilon;

    Real elmt_compartment(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T1_conc(unit = "");
    Real elmt_T1_amount(unit = "");
    Real elmt_T1(unit = "") "ATP_1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T2_conc(unit = "");
    Real elmt_T2_amount(unit = "");
    Real elmt_T2(unit = "") "ATP_2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G2_conc(unit = "");
    Real elmt_G2_amount(unit = "");
    Real elmt_G2(unit = "") "Glucose_2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G1_conc(unit = "");
    Real elmt_G1_amount(unit = "");
    Real elmt_G1(unit = "") "Glucose_1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_T1_conc = 7.6;
        elmt_T2_conc = 0.41;
        elmt_G2_conc = 10.3;
        elmt_G1_conc = 6.6;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_T1 = elmt_T1_conc;
        elmt_T2 = elmt_T2_conc;
        elmt_G2 = elmt_G2_conc;
        elmt_G1 = elmt_G1_conc;
        der(elmt_T1_amount / elmt_compartment) = (((2.0 * elmt_k1 * elmt_T1 * elmt_G1) - ((elmt_kp * elmt_T1) / (elmt_km + elmt_T1))) + (elmt_epsilon * (elmt_T2 - elmt_T1)));
        der(elmt_T2_amount / elmt_compartment) = (((2.0 * elmt_k1 * elmt_G2 * elmt_T2) - ((elmt_kp * elmt_T2) / (elmt_km + elmt_T2))) - (elmt_epsilon * (elmt_T2 - elmt_T1)));
        der(elmt_G2_amount / elmt_compartment) = (elmt_V_in - (elmt_k1 * elmt_G2 * elmt_T2));
        der(elmt_G1_amount / elmt_compartment) = (elmt_V_in - (elmt_k1 * elmt_G1 * elmt_T1));

    algorithm
        elmt_T1_conc := elmt_T1_amount / elmt_compartment;
        elmt_T2_conc := elmt_T2_amount / elmt_compartment;
        elmt_G2_conc := elmt_G2_amount / elmt_compartment;
        elmt_G1_conc := elmt_G1_amount / elmt_compartment;
end Class_elmt_compartment;
