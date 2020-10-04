within BIOMD312;
class Class_elmt_env

    input Real elmt_k1;
    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_r3;
    input Real elmt_r4;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_product0;
    input Real elmt_k4;
    input Real elmt_k2;
    input Real elmt_product2;
    input Real elmt_k3;
    input Real elmt_tau;

    Real elmt_env(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "";
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
        elmt_X_conc = 0.0;
        elmt_R_conc = ((elmt_k1 * elmt_k4) / (elmt_k2 * elmt_k3));


    equation
        assert(elmt_env >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_env) = 0;
        elmt_X = elmt_X_conc;
        elmt_S = elmt_S_conc;
        elmt_R = elmt_R_conc;
        elmt_S_amount = (1.0 * floor((time / elmt_tau))) * elmt_env;
        der(elmt_X_amount) = ((elmt_r3 * elmt_product2) + (- (elmt_r4 * elmt_reactant3)));
        der(elmt_R_amount) = ((elmt_r1 * elmt_product0) + (- (elmt_r2 * elmt_reactant1)));

    algorithm
        elmt_X_conc := elmt_X_amount / elmt_env;
        elmt_S_conc := elmt_S_amount / elmt_env;
        elmt_R_conc := elmt_R_amount / elmt_env;
end Class_elmt_env;
