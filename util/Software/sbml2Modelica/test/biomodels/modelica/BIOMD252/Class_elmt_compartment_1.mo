within BIOMD252;
class Class_elmt_compartment_1

    input Real elmt_beta;
    input Real elmt_k_f;
    input Real elmt_gamma;
    input Real elmt_k_t;
    input Real elmt_k_tl;
    input Real elmt_k_b;
    input Real elmt_S;
    input Real elmt_alpha;
    input Real elmt_delta;

    Real elmt_compartment_1(unit = "") "cell";
    Real elmt_p_conc(unit = "");
    Real elmt_p_amount(unit = "");
    Real elmt_p(unit = "") "p";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_m_conc(unit = "");
    Real elmt_m_amount(unit = "");
    Real elmt_m(unit = "") "m";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mm_conc(unit = "");
    Real elmt_mm_amount(unit = "");
    Real elmt_mm(unit = "") "mm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_pm_conc(unit = "");
    Real elmt_pm_amount(unit = "");
    Real elmt_pm(unit = "") "pm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_1 = 1.0;
        elmt_p_conc = 1.0;
        elmt_m_conc = 1.0;
        elmt_mm_conc = 1.0;
        elmt_pm_conc = 1.0;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_p = elmt_p_conc;
        elmt_m = elmt_m_conc;
        elmt_mm = elmt_mm_conc;
        elmt_pm = elmt_pm_conc;
        der(elmt_p_amount / elmt_compartment_1) = (((elmt_S - (elmt_k_f * elmt_p * elmt_m)) - (elmt_alpha * elmt_p)) + ((elmt_k_b + elmt_gamma) * elmt_pm));
        der(elmt_m_amount / elmt_compartment_1) = ((((elmt_k_tl * elmt_mm) - (elmt_k_f * elmt_p * elmt_m)) + ((elmt_k_b + elmt_delta) * elmt_pm)) - (elmt_gamma * elmt_m));
        der(elmt_mm_amount / elmt_compartment_1) = ((elmt_k_t * Functions.pow(elmt_p, 2.0)) - (elmt_beta * elmt_mm));
        der(elmt_pm_amount / elmt_compartment_1) = (((elmt_k_f * elmt_p * elmt_m) - ((elmt_k_b + elmt_delta) * elmt_pm)) - (elmt_gamma * elmt_pm));

    algorithm
        elmt_p_conc := elmt_p_amount / elmt_compartment_1;
        elmt_m_conc := elmt_m_amount / elmt_compartment_1;
        elmt_mm_conc := elmt_mm_amount / elmt_compartment_1;
        elmt_pm_conc := elmt_pm_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
