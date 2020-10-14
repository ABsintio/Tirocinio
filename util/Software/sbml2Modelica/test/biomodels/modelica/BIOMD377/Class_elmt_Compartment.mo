within BIOMD377;
class Class_elmt_Compartment

    input Real elmt_ICa;
    input Real elmt_Is1;
    input Real elmt_Is2;
    input Real elmt_ninf;
    input Real elmt_Il;
    input Real elmt_s2inf;
    input Real elmt_IK;
    input Real elmt_s1inf;
    input Real elmt_taus1;
    input Real elmt_Cm;
    input Real elmt_taus2;
    input Real elmt_taun;

    Real elmt_Compartment(unit = "") "Compartment";
    Real elmt_n_conc(unit = "");
    Real elmt_n_amount(unit = "");
    Real elmt_n(unit = "") "n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s2_conc(unit = "");
    Real elmt_s2_amount(unit = "");
    Real elmt_s2(unit = "") "s2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s1_conc(unit = "");
    Real elmt_s1_amount(unit = "");
    Real elmt_s1(unit = "") "s1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_V_conc(unit = "");
    Real elmt_V_amount(unit = "");
    Real elmt_V(unit = "") "V";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Compartment = 1.0;
        elmt_n_conc = (0.03 / elmt_Compartment);
        elmt_s2_conc = (0.434 / elmt_Compartment);
        elmt_s1_conc = (0.1 / elmt_Compartment);
        elmt_V_conc = ((-43.0) / elmt_Compartment);


    equation
        assert(elmt_Compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment) = 0;
        elmt_n = elmt_n_conc;
        elmt_s2 = elmt_s2_conc;
        elmt_s1 = elmt_s1_conc;
        elmt_V = elmt_V_conc;
        der(elmt_n_amount / elmt_Compartment) = ((elmt_ninf - elmt_n) / elmt_taun);
        der(elmt_s2_amount / elmt_Compartment) = ((elmt_s2inf - elmt_s2) / elmt_taus2);
        der(elmt_s1_amount / elmt_Compartment) = ((elmt_s1inf - elmt_s1) / elmt_taus1);
        der(elmt_V_amount / elmt_Compartment) = ((- (elmt_ICa + elmt_IK + elmt_Il + elmt_Is1 + elmt_Is2)) / elmt_Cm);

    algorithm
        elmt_n_conc := elmt_n_amount / elmt_Compartment;
        elmt_s2_conc := elmt_s2_amount / elmt_Compartment;
        elmt_s1_conc := elmt_s1_amount / elmt_Compartment;
        elmt_V_conc := elmt_V_amount / elmt_Compartment;
end Class_elmt_Compartment;
