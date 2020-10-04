within BIOMD311;
class Class_elmt_env

    input Real elmt_reactant2;
    input Real elmt_r3;
    input Real elmt_r1;
    input Real elmt_Et;
    input Real elmt_r2;
    input Real elmt_product1;
    input Real elmt_product0;
    input Real elmt_k4;
    input Real elmt_J3;
    input Real elmt_J4;
    input Real elmt_k3;

    Real elmt_env(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ep_conc(unit = "");
    Real elmt_Ep_amount(unit = "");
    Real elmt_Ep(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_conc(unit = "");
    Real elmt_E_amount(unit = "");
    Real elmt_E(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_S_conc(unit = "");
    Real elmt_S_amount(unit = "");
    Real elmt_S(unit = "") "";
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_env = 1.0;
        elmt_S_conc = 0.0;
        elmt_R_conc = 0.0;


    equation
        assert(elmt_env >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_env) = 0;
        elmt_Ep = elmt_Ep_conc;
        elmt_E = elmt_E_conc;
        elmt_S = elmt_S_conc;
        elmt_R = elmt_R_conc;
        elmt_Ep_amount = (((2.0 * (elmt_k3 * elmt_R) * elmt_J4) / ((elmt_k4 - (elmt_k3 * elmt_R)) + (elmt_J3 * elmt_k4) + (elmt_J4 * (elmt_k3 * elmt_R)) + Functions.pow((Functions.pow(((elmt_k4 - (elmt_k3 * elmt_R)) + (elmt_J3 * elmt_k4) + (elmt_J4 * (elmt_k3 * elmt_R))), 2.0) - (4.0 * (elmt_k4 - (elmt_k3 * elmt_R)) * (elmt_k3 * elmt_R) * elmt_J4)), (1.0 / 2.0))))) * elmt_env;
        elmt_E_amount = (elmt_Et - elmt_Ep) * elmt_env;
        der(elmt_S_amount) = 0;
        der(elmt_R_amount) = ((- (elmt_r3 * elmt_reactant2)) + (elmt_r1 * elmt_product0) + (elmt_r2 * elmt_product1));

    algorithm
        elmt_Ep_conc := elmt_Ep_amount / elmt_env;
        elmt_E_conc := elmt_E_amount / elmt_env;
        elmt_S_conc := elmt_S_amount / elmt_env;
        elmt_R_conc := elmt_R_amount / elmt_env;
end Class_elmt_env;
