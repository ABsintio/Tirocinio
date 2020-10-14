within BIOMD357;
class Reactions

    input Real elmt_k4a;
    input Real elmt_j3a;
    input Real elmt_P;
    input Real elmt_k1;
    input Real elmt_M;
    input Real elmt_compartment;
    input Real elmt_k7a;
    input Real elmt_E_M;
    input Real elmt_k8a;
    input Real elmt_j7a;
    input Real elmt_P2;
    input Real elmt_E;
    input Real elmt_j5;
    input Real elmt_k6;
    input Real elmt_k5;
    input Real elmt_j1;
    input Real elmt_k2;
    input Real elmt_k3a;
    input Real elmt_E_P_1;
    input Real elmt_E_P_2;
    input Real elmt_E_P2;

    Real elmt_r7(unit = "") "r7";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product11 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_r8(unit = "") "r8";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_r5(unit = "") "r5";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_r14(unit = "") "r14";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product23 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_r12(unit = "") "r12";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_r1(unit = "") "r1";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_r2(unit = "") "r2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_r9(unit = "") "r9";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";


    initial equation
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_product11 = 1.0;
        elmt_product22 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product16 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product14 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_r7 = (elmt_compartment * elmt_k4a * elmt_E_M);
        elmt_r8 = (elmt_compartment * ((elmt_k5 * elmt_E * elmt_P) - (elmt_j5 * elmt_E_P_2)));
        elmt_r5 = (elmt_compartment * ((elmt_k3a * elmt_E * elmt_M) - (elmt_j3a * elmt_E_M)));
        elmt_r14 = (elmt_compartment * elmt_k8a * elmt_E_P2);
        elmt_r12 = (elmt_compartment * ((elmt_k7a * elmt_E * elmt_P2) - (elmt_j7a * elmt_E_P2)));
        elmt_r1 = (elmt_compartment * ((elmt_k1 * elmt_E * elmt_P) - (elmt_j1 * elmt_E_P_1)));
        elmt_r2 = (elmt_compartment * elmt_k2 * elmt_E_P_1);
        elmt_r9 = (elmt_compartment * elmt_k6 * elmt_E_P_2);
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product11) = 0;
        der(elmt_product22) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product16) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product14) = 0;
        der(elmt_product17) = 0;

end Reactions;
