within BIOMD249;
class Class_elmt_env

    input Real elmt_r7;
    input Real elmt_product30;
    input Real elmt_r8;
    input Real elmt_r5;
    input Real elmt_r6;
    input Real elmt_r3;
    input Real elmt_r4;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_r9;
    input Real elmt_reactant9;
    input Real elmt_product26;
    input Real elmt_product24;
    input Real elmt_product28;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_reactant11;
    input Real elmt_reactant13;
    input Real elmt_product12;
    input Real elmt_product10;
    input Real elmt_reactant25;
    input Real elmt_reactant27;
    input Real elmt_reactant21;
    input Real elmt_reactant23;
    input Real elmt_reactant19;
    input Real elmt_r17;
    input Real elmt_reactant2;
    input Real elmt_r16;
    input Real elmt_reactant1;
    input Real elmt_r15;
    input Real elmt_reactant4;
    input Real elmt_r14;
    input Real elmt_reactant3;
    input Real elmt_r13;
    input Real elmt_reactant6;
    input Real elmt_reactant5;
    input Real elmt_r12;
    input Real elmt_product22;
    input Real elmt_reactant8;
    input Real elmt_r11;
    input Real elmt_reactant7;
    input Real elmt_product20;
    input Real elmt_r10;
    input Real elmt_product0;
    input Real elmt_r19;
    input Real elmt_r18;
    input Real elmt_reactant29;
    input Real elmt_product16;
    input Real elmt_r20;
    input Real elmt_product14;
    input Real elmt_product18;

    Real elmt_env(unit = "") "environment";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_2p_amount(unit = "");
    Real elmt_I_2p_conc(unit = "");
    Real elmt_I_2p(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_N_amount(unit = "");
    Real elmt_N_conc(unit = "");
    Real elmt_N(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R_2_amount(unit = "");
    Real elmt_R_2_conc(unit = "");
    Real elmt_R_2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_1p_amount(unit = "");
    Real elmt_I_1p_conc(unit = "");
    Real elmt_I_1p(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R_1_amount(unit = "");
    Real elmt_R_1_conc(unit = "");
    Real elmt_R_1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R_p_amount(unit = "");
    Real elmt_R_p_conc(unit = "");
    Real elmt_R_p(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_S_amount(unit = "");
    Real elmt_S_conc(unit = "");
    Real elmt_S(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_1_amount(unit = "");
    Real elmt_I_1_conc(unit = "");
    Real elmt_I_1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_2_amount(unit = "");
    Real elmt_I_2_conc(unit = "");
    Real elmt_I_2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_env = 1.0;
        elmt_I_2p_amount = (0.0 * elmt_env);
        elmt_N_amount = (1.0 * elmt_env);
        elmt_R_2_amount = (0.0 * elmt_env);
        elmt_I_1p_amount = (0.0 * elmt_env);
        elmt_R_1_amount = (0.93733 * elmt_env);
        elmt_R_p_amount = (0.0 * elmt_env);
        elmt_S_amount = (0.0588912 * elmt_env);
        elmt_I_1_amount = (0.003775 * elmt_env);
        elmt_I_2_amount = (1.0E-6 * elmt_env);


    equation
        assert(elmt_env >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_env) = 0;
        elmt_I_2p = elmt_I_2p_amount;
        elmt_N = elmt_N_amount;
        elmt_R_2 = elmt_R_2_amount;
        elmt_I_1p = elmt_I_1p_amount;
        elmt_R_1 = elmt_R_1_amount;
        elmt_R_p = elmt_R_p_amount;
        elmt_S = elmt_S_amount;
        elmt_I_1 = elmt_I_1_amount;
        elmt_I_2 = elmt_I_2_amount;
        der(elmt_N_amount) = 0;
        der(elmt_I_2p_amount) = ((- (elmt_r17 * elmt_reactant23)) + (- (elmt_r8 * elmt_reactant7)) + (elmt_r13 * elmt_product16));
        der(elmt_R_2_amount) = ((elmt_r15 * elmt_product20) + (- (elmt_r6 * elmt_reactant5)) + (- (elmt_r12 * elmt_reactant13)) + (- (elmt_r19 * elmt_reactant27)));
        der(elmt_I_1p_amount) = ((- (elmt_r7 * elmt_reactant6)) + (- (elmt_r16 * elmt_reactant21)) + (elmt_r12 * elmt_product14));
        der(elmt_R_1_amount) = ((- (elmt_r5 * elmt_reactant4)) + (elmt_r14 * elmt_product18) + (- (elmt_r13 * elmt_reactant15)) + (- (elmt_r18 * elmt_reactant25)));
        der(elmt_R_p_amount) = ((elmt_r17 * elmt_product24) + (elmt_r16 * elmt_product22) + (- (elmt_r9 * elmt_reactant8)) + (- (elmt_r20 * elmt_reactant29)));
        der(elmt_S_amount) = ((elmt_r1 * elmt_product0) + (- (elmt_r11 * elmt_reactant11)) + (- (elmt_r2 * elmt_reactant1)) + (- (elmt_r10 * elmt_reactant9)) + (elmt_r19 * elmt_product28) + (elmt_r18 * elmt_product26) + (elmt_r20 * elmt_product30));
        der(elmt_I_1_amount) = ((- (elmt_r14 * elmt_reactant17)) + (- (elmt_r3 * elmt_reactant2)) + (elmt_r10 * elmt_product10));
        der(elmt_I_2_amount) = ((- (elmt_r15 * elmt_reactant19)) + (- (elmt_r4 * elmt_reactant3)) + (elmt_r11 * elmt_product12));

    algorithm
        elmt_I_2p_conc := elmt_I_2p_amount / elmt_env;
        elmt_N_conc := elmt_N_amount / elmt_env;
        elmt_R_2_conc := elmt_R_2_amount / elmt_env;
        elmt_I_1p_conc := elmt_I_1p_amount / elmt_env;
        elmt_R_1_conc := elmt_R_1_amount / elmt_env;
        elmt_R_p_conc := elmt_R_p_amount / elmt_env;
        elmt_S_conc := elmt_S_amount / elmt_env;
        elmt_I_1_conc := elmt_I_1_amount / elmt_env;
        elmt_I_2_conc := elmt_I_2_amount / elmt_env;
end Class_elmt_env;
