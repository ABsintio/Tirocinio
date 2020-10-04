within BIOMD249;
model restif06 "Restif2006 - Whooping cough" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_env elmt_env;

    equation
        Params.elmt_I_2p = elmt_env.elmt_I_2p;
        Params.elmt_N = elmt_env.elmt_N;
        Params.elmt_I_1p = elmt_env.elmt_I_1p;
        Params.elmt_R_2 = elmt_env.elmt_R_2;
        Params.elmt_R_1 = elmt_env.elmt_R_1;
        Params.elmt_R_p = elmt_env.elmt_R_p;
        Params.elmt_I_1 = elmt_env.elmt_I_1;
        Params.elmt_S = elmt_env.elmt_S;
        Params.elmt_I_2 = elmt_env.elmt_I_2;
        Reacs.elmt_beta_1 = Params.elmt_beta_1;
        Reacs.elmt_N = elmt_env.elmt_N;
        Reacs.elmt_beta_2 = Params.elmt_beta_2;
        Reacs.elmt_gamma_2 = Params.elmt_gamma_2;
        Reacs.elmt_gamma_1 = Params.elmt_gamma_1;
        Reacs.elmt_I_1 = elmt_env.elmt_I_1;
        Reacs.elmt_I_2 = elmt_env.elmt_I_2;
        Reacs.elmt_mu = Params.elmt_mu;
        Reacs.elmt_I_2p = elmt_env.elmt_I_2p;
        Reacs.elmt_psi = Params.elmt_psi;
        Reacs.elmt_I_1p = elmt_env.elmt_I_1p;
        Reacs.elmt_R_2 = elmt_env.elmt_R_2;
        Reacs.elmt_R_1 = elmt_env.elmt_R_1;
        Reacs.elmt_R_p = elmt_env.elmt_R_p;
        Reacs.elmt_sigma = Params.elmt_sigma;
        Reacs.elmt_S = elmt_env.elmt_S;
        elmt_env.elmt_r7 = Reacs.elmt_r7;
        elmt_env.elmt_product30 = Reacs.elmt_product30;
        elmt_env.elmt_r8 = Reacs.elmt_r8;
        elmt_env.elmt_r5 = Reacs.elmt_r5;
        elmt_env.elmt_r6 = Reacs.elmt_r6;
        elmt_env.elmt_r3 = Reacs.elmt_r3;
        elmt_env.elmt_r4 = Reacs.elmt_r4;
        elmt_env.elmt_r1 = Reacs.elmt_r1;
        elmt_env.elmt_r2 = Reacs.elmt_r2;
        elmt_env.elmt_r9 = Reacs.elmt_r9;
        elmt_env.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_env.elmt_product26 = Reacs.elmt_product26;
        elmt_env.elmt_product24 = Reacs.elmt_product24;
        elmt_env.elmt_product28 = Reacs.elmt_product28;
        elmt_env.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_env.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_env.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_env.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_env.elmt_product12 = Reacs.elmt_product12;
        elmt_env.elmt_product10 = Reacs.elmt_product10;
        elmt_env.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_env.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_env.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_env.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_env.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_env.elmt_r17 = Reacs.elmt_r17;
        elmt_env.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_env.elmt_r16 = Reacs.elmt_r16;
        elmt_env.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_env.elmt_r15 = Reacs.elmt_r15;
        elmt_env.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_env.elmt_r14 = Reacs.elmt_r14;
        elmt_env.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_env.elmt_r13 = Reacs.elmt_r13;
        elmt_env.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_env.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_env.elmt_r12 = Reacs.elmt_r12;
        elmt_env.elmt_product22 = Reacs.elmt_product22;
        elmt_env.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_env.elmt_r11 = Reacs.elmt_r11;
        elmt_env.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_env.elmt_product20 = Reacs.elmt_product20;
        elmt_env.elmt_r10 = Reacs.elmt_r10;
        elmt_env.elmt_product0 = Reacs.elmt_product0;
        elmt_env.elmt_r19 = Reacs.elmt_r19;
        elmt_env.elmt_r18 = Reacs.elmt_r18;
        elmt_env.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_env.elmt_product16 = Reacs.elmt_product16;
        elmt_env.elmt_r20 = Reacs.elmt_r20;
        elmt_env.elmt_product14 = Reacs.elmt_product14;
        elmt_env.elmt_product18 = Reacs.elmt_product18;

end restif06;
