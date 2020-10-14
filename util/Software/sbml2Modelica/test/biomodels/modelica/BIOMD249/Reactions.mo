within BIOMD249;
class Reactions

    input Real elmt_beta_1;
    input Real elmt_N;
    input Real elmt_beta_2;
    input Real elmt_gamma_2;
    input Real elmt_gamma_1;
    input Real elmt_I_1;
    input Real elmt_I_2;
    input Real elmt_mu;
    input Real elmt_I_2p;
    input Real elmt_psi;
    input Real elmt_I_1p;
    input Real elmt_R_2;
    input Real elmt_R_1;
    input Real elmt_R_p;
    input Real elmt_sigma;
    input Real elmt_S;

    Real elmt_r7(unit = "") "Death in I_1p";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant6 "";
    Real elmt_r17(unit = "") "Recovery (I_2p)";
    Real elmt_product24 "";
    Real elmt_reactant23 "";
    Real elmt_r8(unit = "") "Death in I_2p";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant7 "";
    Real elmt_r16(unit = "") "Recovery (I_1p)";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_r5(unit = "") "Death in R_1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_r15(unit = "") "Recovery (I_2)";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_r6(unit = "") "Death in R_2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant5 "";
    Real elmt_r14(unit = "") "Recovery (I_1)";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_r3(unit = "") "Death in I_1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_r13(unit = "") "Secondary Infection with strain 2";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_r4(unit = "") "Death in I_2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_r12(unit = "") "Secondary Infection with strain 1";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_r1(unit = "") "Birth";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_r11(unit = "") "Primary Infection with strain 2";
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_r2(unit = "") "Death in S";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_r10(unit = "") "Primary Infection with strain 1";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_r9(unit = "") "Death in R_p";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant8 "";
    Real elmt_r19(unit = "") "Loss of Immunity (R_2)";
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_r18(unit = "") "Loss of Immunity (R_1)";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_r20(unit = "") "Loss of Immunity (R_p)";
    Real elmt_product30 "";
    Real elmt_reactant29 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_product12 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_product24 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product14 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_r7 = (elmt_mu * elmt_I_1p);
        elmt_r17 = (elmt_gamma_2 * elmt_I_2p);
        elmt_r8 = (elmt_mu * elmt_I_2p);
        elmt_r16 = (elmt_gamma_1 * elmt_I_1p);
        elmt_r5 = (elmt_mu * elmt_R_1);
        elmt_r15 = (elmt_gamma_2 * elmt_I_2);
        elmt_r6 = (elmt_mu * elmt_R_2);
        elmt_r14 = (elmt_gamma_1 * elmt_I_1);
        elmt_r3 = (elmt_mu * elmt_I_1);
        elmt_r13 = ((((1.0 - elmt_psi) * elmt_beta_2 * (elmt_I_2 + elmt_I_2p)) / elmt_N) * elmt_R_1);
        elmt_r4 = (elmt_mu * elmt_I_2);
        elmt_r12 = ((((1.0 - elmt_psi) * elmt_beta_1 * (elmt_I_1 + elmt_I_1p)) / elmt_N) * elmt_R_2);
        elmt_r1 = (elmt_mu * elmt_N);
        elmt_r11 = (elmt_beta_2 * ((elmt_I_2 + elmt_I_2p) / elmt_N) * elmt_S);
        elmt_r2 = (elmt_mu * elmt_S);
        elmt_r10 = (elmt_beta_1 * ((elmt_I_1 + elmt_I_1p) / elmt_N) * elmt_S);
        elmt_r9 = (elmt_mu * elmt_R_p);
        elmt_r19 = (elmt_sigma * elmt_R_2);
        elmt_r18 = (elmt_sigma * elmt_R_1);
        elmt_r20 = (elmt_sigma * elmt_R_p);
        der(elmt_product30) = 0;
        der(elmt_product12) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_product24) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;
        der(elmt_product18) = 0;

end Reactions;
