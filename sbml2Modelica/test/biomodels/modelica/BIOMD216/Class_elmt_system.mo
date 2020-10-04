within BIOMD216;
class Class_elmt_system

    input Real elmt_r7;
    input Real elmt_r8;
    input Real elmt_r5;
    input Real elmt_r6;
    input Real elmt_reactant20;
    input Real elmt_r3;
    input Real elmt_product12;
    input Real elmt_r4;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_reactant22;
    input Real elmt_r9;
    input Real elmt_reactant24;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_reactant9;
    input Real elmt_product25;
    input Real elmt_reactant2;
    input Real elmt_r17;
    input Real elmt_r16;
    input Real elmt_product8;
    input Real elmt_r15;
    input Real elmt_reactant4;
    input Real elmt_product6;
    input Real elmt_r14;
    input Real elmt_r13;
    input Real elmt_product23;
    input Real elmt_r12;
    input Real elmt_reactant5;
    input Real elmt_r11;
    input Real elmt_product21;
    input Real elmt_reactant7;
    input Real elmt_r10;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_product0;
    input Real elmt_reactant15;
    input Real elmt_reactant16;
    input Real elmt_reactant10;
    input Real elmt_reactant11;
    input Real elmt_product3;
    input Real elmt_product13;
    input Real elmt_product17;

    Real elmt_system(unit = "") "system";
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
    Real elmt_CP2_conc(unit = "");
    Real elmt_CP2_amount(unit = "");
    Real elmt_CP2(unit = "") "CP2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TF_conc(unit = "");
    Real elmt_TF_amount(unit = "");
    Real elmt_TF(unit = "") "TF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CPtot_conc(unit = "");
    Real elmt_CPtot_amount(unit = "");
    Real elmt_CPtot(unit = "") "CPtot";
    Real elmt_CP_conc(unit = "");
    Real elmt_CP_amount(unit = "");
    Real elmt_CP(unit = "") "CP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IC_conc(unit = "");
    Real elmt_IC_amount(unit = "");
    Real elmt_IC(unit = "") "IC";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_system = 1.0;
        elmt_M_conc = 1.4;
        elmt_CP2_conc = 0.046;
        elmt_TF_conc = 0.13;
        elmt_CP_conc = 0.037;
        elmt_IC_conc = 0.37;


    equation
        assert(elmt_system >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_system) = 0;
        elmt_M = elmt_M_conc;
        elmt_CP2 = elmt_CP2_conc;
        elmt_TF = elmt_TF_conc;
        elmt_CPtot = elmt_CPtot_conc;
        elmt_CP = elmt_CP_conc;
        elmt_IC = elmt_IC_conc;
        elmt_CPtot_amount = (elmt_CP + (2.0 * elmt_CP2) + (2.0 * elmt_IC)) * elmt_system;
        der(elmt_M_amount) = ((- (elmt_r3 * elmt_reactant2)) + (elmt_r1 * elmt_product0) + (elmt_r2 * elmt_product1));
        der(elmt_CP2_amount) = ((- (elmt_r7 * elmt_reactant7)) + (elmt_r6 * elmt_product6) + (- (elmt_r14 * elmt_reactant19)) + (- (elmt_r13 * elmt_reactant18)) + (- (elmt_r12 * elmt_reactant15)) + (- (elmt_r11 * elmt_reactant14)) + (elmt_r10 * elmt_product12));
        der(elmt_TF_amount) = ((elmt_r17 * elmt_product25) + (elmt_r16 * elmt_product23) + (elmt_r15 * elmt_product21) + (- (elmt_r12 * elmt_reactant16)) + (elmt_r10 * elmt_product13));
        der(elmt_CP_amount) = ((elmt_r7 * elmt_product8) + (- (elmt_r8 * elmt_reactant9)) + (- (elmt_r5 * elmt_reactant4)) + (- (elmt_r6 * elmt_reactant5)) + (elmt_r4 * elmt_product3) + (- (elmt_r9 * elmt_reactant10)));
        der(elmt_IC_amount) = ((- (elmt_r17 * elmt_reactant24)) + (- (elmt_r16 * elmt_reactant22)) + (- (elmt_r15 * elmt_reactant20)) + (elmt_r12 * elmt_product17) + (- (elmt_r10 * elmt_reactant11)));

    algorithm
        elmt_M_conc := elmt_M_amount / elmt_system;
        elmt_CP2_conc := elmt_CP2_amount / elmt_system;
        elmt_TF_conc := elmt_TF_amount / elmt_system;
        elmt_CPtot_conc := elmt_CPtot_amount / elmt_system;
        elmt_CP_conc := elmt_CP_amount / elmt_system;
        elmt_IC_conc := elmt_IC_amount / elmt_system;
end Class_elmt_system;
