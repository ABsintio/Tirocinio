within BIOMD245;
model lei2001 "Lei2001_Yeast_Aerobic_Metabolism" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_env elmt_env;

    equation
        Params.elmt_r7 = Reacs.elmt_r7;
        Params.elmt_r8 = Reacs.elmt_r8;
        Params.elmt_r5 = Reacs.elmt_r5;
        Params.elmt_r6 = Reacs.elmt_r6;
        Params.elmt_r3 = Reacs.elmt_r3;
        Params.elmt_r4 = Reacs.elmt_r4;
        Params.elmt_r1 = Reacs.elmt_r1;
        Params.elmt_r11 = Reacs.elmt_r11;
        Params.elmt_r2 = Reacs.elmt_r2;
        Params.elmt_r10 = Reacs.elmt_r10;
        Params.elmt_r9 = Reacs.elmt_r9;
        Params.elmt_x = elmt_env.elmt_x;
        Params.elmt_env = elmt_env.elmt_env;
        Reacs.elmt_K_5e = Params.elmt_K_5e;
        Reacs.elmt_K_9i = Params.elmt_K_9i;
        Reacs.elmt_k_6r = Params.elmt_k_6r;
        Reacs.elmt_AcDH = elmt_env.elmt_AcDH;
        Reacs.elmt_K_9e = Params.elmt_K_9e;
        Reacs.elmt_K_3 = Params.elmt_K_3;
        Reacs.elmt_K_4 = Params.elmt_K_4;
        Reacs.elmt_K_1h = Params.elmt_K_1h;
        Reacs.elmt_K_1i = Params.elmt_K_1i;
        Reacs.elmt_K_2 = Params.elmt_K_2;
        Reacs.elmt_X_a = Params.elmt_X_a;
        Reacs.elmt_a = elmt_env.elmt_a;
        Reacs.elmt_K_5i = Params.elmt_K_5i;
        Reacs.elmt_K_1e = Params.elmt_K_1e;
        Reacs.elmt_K_9 = Params.elmt_K_9;
        Reacs.elmt_K_7 = Params.elmt_K_7;
        Reacs.elmt_K_5 = Params.elmt_K_5;
        Reacs.elmt_K_6 = Params.elmt_K_6;
        Reacs.elmt_K_6e = Params.elmt_K_6e;
        Reacs.elmt_k_1l = Params.elmt_k_1l;
        Reacs.elmt_k_4 = Params.elmt_k_4;
        Reacs.elmt_k_3 = Params.elmt_k_3;
        Reacs.elmt_k_2 = Params.elmt_k_2;
        Reacs.elmt_K_2i = Params.elmt_K_2i;
        Reacs.elmt_D = Params.elmt_D;
        Reacs.elmt_k_9 = Params.elmt_k_9;
        Reacs.elmt_k_8 = Params.elmt_k_8;
        Reacs.elmt_k_7 = Params.elmt_k_7;
        Reacs.elmt_K_10e = Params.elmt_K_10e;
        Reacs.elmt_k_6 = Params.elmt_k_6;
        Reacs.elmt_K_1l = Params.elmt_K_1l;
        Reacs.elmt_k_5 = Params.elmt_k_5;
        Reacs.elmt_env = elmt_env.elmt_env;
        Reacs.elmt_X_AcDH = Params.elmt_X_AcDH;
        Reacs.elmt_k_9c = Params.elmt_k_9c;
        Reacs.elmt_S_f = elmt_env.elmt_S_f;
        Reacs.elmt_k_5e = Params.elmt_k_5e;
        Reacs.elmt_k_9e = Params.elmt_k_9e;
        Reacs.elmt_k_10e = Params.elmt_k_10e;
        Reacs.elmt_k_1h = Params.elmt_k_1h;
        Reacs.elmt_s_glu = elmt_env.elmt_s_glu;
        Reacs.elmt_k_1e = Params.elmt_k_1e;
        Reacs.elmt_s_acetald = elmt_env.elmt_s_acetald;
        Reacs.elmt_k_10 = Params.elmt_k_10;
        Reacs.elmt_k_11 = Params.elmt_k_11;
        Reacs.elmt_s_pyr = elmt_env.elmt_s_pyr;
        Reacs.elmt_s_acetate = elmt_env.elmt_s_acetate;
        Reacs.elmt_s_EtOH = elmt_env.elmt_s_EtOH;
        Reacs.elmt_K_10 = Params.elmt_K_10;
        Reacs.elmt_x = elmt_env.elmt_x;
        elmt_env.elmt_r7 = Reacs.elmt_r7;
        elmt_env.elmt_r8 = Reacs.elmt_r8;
        elmt_env.elmt_r5 = Reacs.elmt_r5;
        elmt_env.elmt_r6 = Reacs.elmt_r6;
        elmt_env.elmt_s_glu_in = Reacs.elmt_s_glu_in;
        elmt_env.elmt_r3 = Reacs.elmt_r3;
        elmt_env.elmt_r4 = Reacs.elmt_r4;
        elmt_env.elmt_r1 = Reacs.elmt_r1;
        elmt_env.elmt_product10 = Reacs.elmt_product10;
        elmt_env.elmt_r2 = Reacs.elmt_r2;
        elmt_env.elmt_product31 = Reacs.elmt_product31;
        elmt_env.elmt_X_AcDH = Params.elmt_X_AcDH;
        elmt_env.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_env.elmt_X_a = Params.elmt_X_a;
        elmt_env.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_env.elmt_s_acetald_out = Reacs.elmt_s_acetald_out;
        elmt_env.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_env.elmt_s_pyr_out = Reacs.elmt_s_pyr_out;
        elmt_env.elmt_product7 = Reacs.elmt_product7;
        elmt_env.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_env.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_env.elmt_product23 = Reacs.elmt_product23;
        elmt_env.elmt_s_acetate_out = Reacs.elmt_s_acetate_out;
        elmt_env.elmt_s_glu_out = Reacs.elmt_s_glu_out;
        elmt_env.elmt_product1 = Reacs.elmt_product1;
        elmt_env.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_env.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_env.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_env.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_env.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_env.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_env.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_env.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_env.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_env.elmt_s_EtOH_out = Reacs.elmt_s_EtOH_out;
        elmt_env.elmt_x_out = Reacs.elmt_x_out;
        elmt_env.elmt_product19 = Reacs.elmt_product19;
        elmt_env.elmt_product17 = Reacs.elmt_product17;

end lei2001;
