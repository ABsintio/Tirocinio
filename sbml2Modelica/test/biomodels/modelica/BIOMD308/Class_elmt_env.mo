within BIOMD308;
class Class_elmt_env

    input Real elmt_reactant1;
    input Real elmt_r5;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_r6;
    input Real elmt_r3;
    input Real elmt_r4;
    input Real elmt_Rt;
    input Real elmt_reactant8;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_product0;
    input Real elmt_product3;
    input Real elmt_Yt;

    Real elmt_env(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Y_conc(unit = "");
    Real elmt_Y_amount(unit = "");
    Real elmt_Y(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Rp_conc(unit = "");
    Real elmt_Rp_amount(unit = "");
    Real elmt_Rp(unit = "") "";
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
    Real elmt_Yp_conc(unit = "");
    Real elmt_Yp_amount(unit = "");
    Real elmt_Yp(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_env = 1.0;
        elmt_Rp_conc = 0.0;
        elmt_X_conc = 0.0;
        elmt_S_conc = 0.0;
        elmt_Yp_conc = 0.0;


    equation
        assert(elmt_env >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_env) = 0;
        elmt_Y = elmt_Y_conc;
        elmt_Rp = elmt_Rp_conc;
        elmt_X = elmt_X_conc;
        elmt_S = elmt_S_conc;
        elmt_Yp = elmt_Yp_conc;
        elmt_R = elmt_R_conc;
        elmt_Y_amount = (elmt_Yt - elmt_Yp) * elmt_env;
        der(elmt_S_amount) = 0;
        elmt_R_amount = (elmt_Rt - elmt_Rp) * elmt_env;
        der(elmt_Rp_amount) = ((elmt_r5 * elmt_product7) + (- (elmt_r6 * elmt_reactant8)));
        der(elmt_X_amount) = ((elmt_r1 * elmt_product0) + (- (elmt_r2 * elmt_reactant1)));
        der(elmt_Yp_amount) = ((elmt_r3 * elmt_product3) + (- (elmt_r4 * elmt_reactant4)));

    algorithm
        elmt_Y_conc := elmt_Y_amount / elmt_env;
        elmt_Rp_conc := elmt_Rp_amount / elmt_env;
        elmt_X_conc := elmt_X_amount / elmt_env;
        elmt_S_conc := elmt_S_amount / elmt_env;
        elmt_Yp_conc := elmt_Yp_amount / elmt_env;
        elmt_R_conc := elmt_R_amount / elmt_env;
end Class_elmt_env;
