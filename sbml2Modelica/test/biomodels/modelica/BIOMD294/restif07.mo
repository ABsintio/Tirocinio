within BIOMD294;
model restif07 "Restif2007 - Vaccination invasion" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_env elmt_env;

    equation
        Params.elmt_Iv2 = elmt_env.elmt_Iv2;
        Params.elmt_N = elmt_env.elmt_N;
        Params.elmt_R1 = elmt_env.elmt_R1;
        Params.elmt_R2 = elmt_env.elmt_R2;
        Params.elmt_V = elmt_env.elmt_V;
        Params.elmt_I2 = elmt_env.elmt_I2;
        Params.elmt_S = elmt_env.elmt_S;
        Params.elmt_J1 = elmt_env.elmt_J1;
        Params.elmt_J2 = elmt_env.elmt_J2;
        Params.elmt_I1 = elmt_env.elmt_I1;
        Params.elmt_R = elmt_env.elmt_R;
        Reacs.elmt_p = Params.elmt_p;
        Reacs.elmt_beta = Params.elmt_beta;
        Reacs.elmt_N = elmt_env.elmt_N;
        Reacs.elmt_sigmaV = Params.elmt_sigmaV;
        Reacs.elmt_R1 = elmt_env.elmt_R1;
        Reacs.elmt_eta = Params.elmt_eta;
        Reacs.elmt_R2 = elmt_env.elmt_R2;
        Reacs.elmt_I2 = elmt_env.elmt_I2;
        Reacs.elmt_nu = Params.elmt_nu;
        Reacs.elmt_J1 = elmt_env.elmt_J1;
        Reacs.elmt_mu = Params.elmt_mu;
        Reacs.elmt_I1 = elmt_env.elmt_I1;
        Reacs.elmt_J2 = elmt_env.elmt_J2;
        Reacs.elmt_tau = Params.elmt_tau;
        Reacs.elmt_Iv2 = elmt_env.elmt_Iv2;
        Reacs.elmt_theta = Params.elmt_theta;
        Reacs.elmt_gamma = Params.elmt_gamma;
        Reacs.elmt_sigma = Params.elmt_sigma;
        Reacs.elmt_V = elmt_env.elmt_V;
        Reacs.elmt_S = elmt_env.elmt_S;
        Reacs.elmt_R = elmt_env.elmt_R;
        elmt_env.elmt_r7 = Reacs.elmt_r7;
        elmt_env.elmt_r8 = Reacs.elmt_r8;
        elmt_env.elmt_r26 = Reacs.elmt_r26;
        elmt_env.elmt_r5 = Reacs.elmt_r5;
        elmt_env.elmt_r25 = Reacs.elmt_r25;
        elmt_env.elmt_r6 = Reacs.elmt_r6;
        elmt_env.elmt_r24 = Reacs.elmt_r24;
        elmt_env.elmt_r3 = Reacs.elmt_r3;
        elmt_env.elmt_r23 = Reacs.elmt_r23;
        elmt_env.elmt_r4 = Reacs.elmt_r4;
        elmt_env.elmt_product33 = Reacs.elmt_product33;
        elmt_env.elmt_r22 = Reacs.elmt_r22;
        elmt_env.elmt_r1 = Reacs.elmt_r1;
        elmt_env.elmt_r2 = Reacs.elmt_r2;
        elmt_env.elmt_r21 = Reacs.elmt_r21;
        elmt_env.elmt_product31 = Reacs.elmt_product31;
        elmt_env.elmt_r9 = Reacs.elmt_r9;
        elmt_env.elmt_product27 = Reacs.elmt_product27;
        elmt_env.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_env.elmt_product25 = Reacs.elmt_product25;
        elmt_env.elmt_product29 = Reacs.elmt_product29;
        elmt_env.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_env.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_env.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_env.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_env.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_env.elmt_product37 = Reacs.elmt_product37;
        elmt_env.elmt_product35 = Reacs.elmt_product35;
        elmt_env.elmt_product39 = Reacs.elmt_product39;
        elmt_env.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_env.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_env.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_env.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_env.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_env.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_env.elmt_r17 = Reacs.elmt_r17;
        elmt_env.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_env.elmt_r16 = Reacs.elmt_r16;
        elmt_env.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_env.elmt_r15 = Reacs.elmt_r15;
        elmt_env.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_env.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_env.elmt_r14 = Reacs.elmt_r14;
        elmt_env.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_env.elmt_r13 = Reacs.elmt_r13;
        elmt_env.elmt_product23 = Reacs.elmt_product23;
        elmt_env.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_env.elmt_r12 = Reacs.elmt_r12;
        elmt_env.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_env.elmt_product21 = Reacs.elmt_product21;
        elmt_env.elmt_r11 = Reacs.elmt_r11;
        elmt_env.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_env.elmt_r10 = Reacs.elmt_r10;
        elmt_env.elmt_product1 = Reacs.elmt_product1;
        elmt_env.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_env.elmt_product0 = Reacs.elmt_product0;
        elmt_env.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_env.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_env.elmt_r19 = Reacs.elmt_r19;
        elmt_env.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_env.elmt_r18 = Reacs.elmt_r18;
        elmt_env.elmt_r20 = Reacs.elmt_r20;
        elmt_env.elmt_product15 = Reacs.elmt_product15;
        elmt_env.elmt_product13 = Reacs.elmt_product13;
        elmt_env.elmt_product19 = Reacs.elmt_product19;
        elmt_env.elmt_product17 = Reacs.elmt_product17;

end restif07;
