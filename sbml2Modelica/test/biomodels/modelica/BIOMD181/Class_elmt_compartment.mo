within BIOMD181;
class Class_elmt_compartment

    input Real elmt_R16;
    input Real elmt_R17;
    input Real elmt_R14;
    input Real elmt_R15;
    input Real elmt_R12;
    input Real elmt_product12;
    input Real elmt_R13;
    input Real elmt_R10;
    input Real elmt_product10;
    input Real elmt_R11;
    input Real elmt_R18;
    input Real elmt_product9;
    input Real elmt_R7;
    input Real elmt_product8;
    input Real elmt_R8;
    input Real elmt_R5;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_R6;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_reactant7;
    input Real elmt_product1;
    input Real elmt_reactant15;
    input Real elmt_product0;
    input Real elmt_reactant17;
    input Real elmt_product5;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_R9;
    input Real elmt_product2;
    input Real elmt_reactant13;
    input Real elmt_product16;
    input Real elmt_product14;

    Real elmt_compartment(unit = "") "";
    Real elmt_T3_conc(unit = "");
    Real elmt_T3_amount(unit = "");
    Real elmt_T3(unit = "") "T3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C2_conc(unit = "");
    Real elmt_C2_amount(unit = "");
    Real elmt_C2(unit = "") "C2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C3_conc(unit = "");
    Real elmt_C3_amount(unit = "");
    Real elmt_C3(unit = "") "C3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T1_conc(unit = "");
    Real elmt_T1_amount(unit = "");
    Real elmt_T1(unit = "") "T1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T2_conc(unit = "");
    Real elmt_T2_amount(unit = "");
    Real elmt_T2(unit = "") "T2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C1_conc(unit = "");
    Real elmt_C1_amount(unit = "");
    Real elmt_C1(unit = "") "C1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_T3_conc = 1.0;
        elmt_C2_conc = 0.0;
        elmt_C3_conc = 0.0;
        elmt_T1_conc = 6.0;
        elmt_T2_conc = 5.0;
        elmt_C1_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_T3 = elmt_T3_conc;
        elmt_C2 = elmt_C2_conc;
        elmt_C3 = elmt_C3_conc;
        elmt_T1 = elmt_T1_conc;
        elmt_T2 = elmt_T2_conc;
        elmt_C1 = elmt_C1_conc;
        der(elmt_T3_amount) = ((- (elmt_R12 * elmt_reactant11)) + (elmt_R10 * elmt_product9) + (elmt_R11 * elmt_product10) + (elmt_R9 * elmt_product8));
        der(elmt_C2_amount) = ((- (elmt_R16 * elmt_reactant15)) + (elmt_R15 * elmt_product14));
        der(elmt_C3_amount) = ((elmt_R17 * elmt_product16) + (- (elmt_R18 * elmt_reactant17)));
        der(elmt_T1_amount) = ((elmt_R3 * elmt_product2) + (- (elmt_R4 * elmt_reactant3)) + (elmt_R1 * elmt_product0) + (elmt_R2 * elmt_product1));
        der(elmt_T2_amount) = ((elmt_R7 * elmt_product6) + (- (elmt_R8 * elmt_reactant7)) + (elmt_R5 * elmt_product4) + (elmt_R6 * elmt_product5));
        der(elmt_C1_amount) = ((- (elmt_R14 * elmt_reactant13)) + (elmt_R13 * elmt_product12));

    algorithm
        elmt_T3_conc := elmt_T3_amount / elmt_compartment;
        elmt_C2_conc := elmt_C2_amount / elmt_compartment;
        elmt_C3_conc := elmt_C3_amount / elmt_compartment;
        elmt_T1_conc := elmt_T1_amount / elmt_compartment;
        elmt_T2_conc := elmt_T2_amount / elmt_compartment;
        elmt_C1_conc := elmt_C1_amount / elmt_compartment;
end Class_elmt_compartment;
