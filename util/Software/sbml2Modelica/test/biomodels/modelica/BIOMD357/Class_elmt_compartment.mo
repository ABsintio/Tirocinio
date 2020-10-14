within BIOMD357;
class Class_elmt_compartment

    input Real elmt_r7;
    input Real elmt_r8;
    input Real elmt_r5;
    input Real elmt_product11;
    input Real elmt_r1;
    input Real elmt_product10;
    input Real elmt_r2;
    input Real elmt_reactant21;
    input Real elmt_r9;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_reactant9;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_reactant3;
    input Real elmt_r14;
    input Real elmt_reactant6;
    input Real elmt_product23;
    input Real elmt_r12;
    input Real elmt_product22;
    input Real elmt_reactant7;
    input Real elmt_product20;
    input Real elmt_reactant15;
    input Real elmt_product5;
    input Real elmt_product4;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_reactant13;
    input Real elmt_product2;
    input Real elmt_product16;
    input Real elmt_product14;
    input Real elmt_product17;

    Real elmt_compartment(unit = "") "compartment";
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "M";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_M_conc(unit = "");
    Real elmt_E_M_amount(unit = "");
    Real elmt_E_M(unit = "") "E_M";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P2_conc(unit = "");
    Real elmt_P2_amount(unit = "");
    Real elmt_P2(unit = "") "P2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_P_1_conc(unit = "");
    Real elmt_E_P_1_amount(unit = "");
    Real elmt_E_P_1(unit = "") "E_P_1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_P_2_conc(unit = "");
    Real elmt_E_P_2_amount(unit = "");
    Real elmt_E_P_2(unit = "") "E_P_2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_conc(unit = "");
    Real elmt_E_amount(unit = "");
    Real elmt_E(unit = "") "E";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T_conc(unit = "");
    Real elmt_T_amount(unit = "");
    Real elmt_T(unit = "") "T";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_P2_conc(unit = "");
    Real elmt_E_P2_amount(unit = "");
    Real elmt_E_P2(unit = "") "E_P2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_P_conc = 1.0;
        elmt_M_conc = 0.0;
        elmt_E_M_conc = 0.0;
        elmt_P2_conc = 0.0;
        elmt_E_P_1_conc = 0.0;
        elmt_E_P_2_conc = 0.0;
        elmt_E_conc = 1.5E-4;
        elmt_T_conc = 0.0;
        elmt_E_P2_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_P = elmt_P_conc;
        elmt_M = elmt_M_conc;
        elmt_E_M = elmt_E_M_conc;
        elmt_P2 = elmt_P2_conc;
        elmt_E_P_1 = elmt_E_P_1_conc;
        elmt_E_P_2 = elmt_E_P_2_conc;
        elmt_E = elmt_E_conc;
        elmt_T = elmt_T_conc;
        elmt_E_P2 = elmt_E_P2_conc;
        der(elmt_P_amount) = ((- (elmt_r8 * elmt_reactant13)) + (- (elmt_r1 * elmt_reactant1)));
        der(elmt_M_amount) = ((- (elmt_r5 * elmt_reactant7)) + (elmt_r2 * elmt_product5));
        der(elmt_E_M_amount) = ((- (elmt_r7 * elmt_reactant9)) + (elmt_r5 * elmt_product8));
        der(elmt_P2_amount) = ((- (elmt_r12 * elmt_reactant19)) + (elmt_r9 * elmt_product17));
        der(elmt_E_P_1_amount) = ((elmt_r1 * elmt_product2) + (- (elmt_r2 * elmt_reactant3)));
        der(elmt_E_P_2_amount) = ((elmt_r8 * elmt_product14) + (- (elmt_r9 * elmt_reactant15)));
        der(elmt_E_amount) = ((elmt_r7 * elmt_product10) + (- (elmt_r8 * elmt_reactant12)) + (- (elmt_r5 * elmt_reactant6)) + (elmt_r14 * elmt_product22) + (- (elmt_r12 * elmt_reactant18)) + (- (elmt_r1 * elmt_reactant0)) + (elmt_r2 * elmt_product4) + (elmt_r9 * elmt_product16));
        der(elmt_T_amount) = ((elmt_r7 * elmt_product11) + (elmt_r14 * elmt_product23));
        der(elmt_E_P2_amount) = ((- (elmt_r14 * elmt_reactant21)) + (elmt_r12 * elmt_product20));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_compartment;
        elmt_M_conc := elmt_M_amount / elmt_compartment;
        elmt_E_M_conc := elmt_E_M_amount / elmt_compartment;
        elmt_P2_conc := elmt_P2_amount / elmt_compartment;
        elmt_E_P_1_conc := elmt_E_P_1_amount / elmt_compartment;
        elmt_E_P_2_conc := elmt_E_P_2_amount / elmt_compartment;
        elmt_E_conc := elmt_E_amount / elmt_compartment;
        elmt_T_conc := elmt_T_amount / elmt_compartment;
        elmt_E_P2_conc := elmt_E_P2_amount / elmt_compartment;
end Class_elmt_compartment;
