within BIOMD057;
class Class_elmt_compartment

    input Real elmt_product9;
    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_v5;
    input Real elmt_reactant8;
    input Real elmt_product1;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_v1;
    input Real elmt_v2;

    Real elmt_compartment(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_O_conc(unit = "");
    Real elmt_O_amount(unit = "");
    Real elmt_O(unit = "") "Open State";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_S_conc(unit = "");
    Real elmt_S_amount(unit = "");
    Real elmt_S(unit = "") "Shut State";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I2_conc(unit = "");
    Real elmt_I2_amount(unit = "");
    Real elmt_I2(unit = "") "Inactivated State 2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "Activated State";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "Receptor";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I1_conc(unit = "");
    Real elmt_I1_amount(unit = "");
    Real elmt_I1(unit = "") "Inactivated State 1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_O_conc = 0.0;
        elmt_S_conc = 0.0;
        elmt_I2_conc = 0.0;
        elmt_A_conc = 0.0;
        elmt_R_conc = 1.0;
        elmt_I1_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_O = elmt_O_conc;
        elmt_S = elmt_S_conc;
        elmt_I2 = elmt_I2_conc;
        elmt_A = elmt_A_conc;
        elmt_R = elmt_R_conc;
        elmt_I1 = elmt_I1_conc;
        der(elmt_O_amount) = ((- (elmt_v3 * elmt_reactant4)) + (- (elmt_v4 * elmt_reactant6)) + (elmt_v1 * elmt_product1));
        der(elmt_S_amount) = (elmt_v3 * elmt_product5);
        der(elmt_I2_amount) = (elmt_v5 * elmt_product9);
        der(elmt_A_amount) = ((- (elmt_v5 * elmt_reactant8)) + (elmt_v4 * elmt_product7));
        der(elmt_R_amount) = ((- (elmt_v1 * elmt_reactant0)) + (- (elmt_v2 * elmt_reactant2)));
        der(elmt_I1_amount) = (elmt_v2 * elmt_product3);

    algorithm
        elmt_O_conc := elmt_O_amount / elmt_compartment;
        elmt_S_conc := elmt_S_amount / elmt_compartment;
        elmt_I2_conc := elmt_I2_amount / elmt_compartment;
        elmt_A_conc := elmt_A_amount / elmt_compartment;
        elmt_R_conc := elmt_R_amount / elmt_compartment;
        elmt_I1_conc := elmt_I1_amount / elmt_compartment;
end Class_elmt_compartment;
