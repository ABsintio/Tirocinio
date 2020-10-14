within BIOMD065;
model Yildirim2003_Lac_operon "Yildirim2003_Lac_Operon" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_gamma_L = Params.elmt_gamma_L;
        Reacs.elmt_tau_B = Params.elmt_tau_B;
        Reacs.elmt_gamma_P = Params.elmt_gamma_P;
        Reacs.elmt_gamma_M = Params.elmt_gamma_M;
        Reacs.elmt_L_e = elmt_cell.elmt_L_e;
        Reacs.elmt_K_Le = Params.elmt_K_Le;
        Reacs.elmt_K_1 = Params.elmt_K_1;
        Reacs.elmt_I2 = elmt_cell.elmt_I2;
        Reacs.elmt_I3 = elmt_cell.elmt_I3;
        Reacs.elmt_I1 = elmt_cell.elmt_I1;
        Reacs.elmt_beta_A = Params.elmt_beta_A;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_beta_L1 = Params.elmt_beta_L1;
        Reacs.elmt_K_A = Params.elmt_K_A;
        Reacs.elmt_P = elmt_cell.elmt_P;
        Reacs.elmt_K_L = Params.elmt_K_L;
        Reacs.elmt_M = elmt_cell.elmt_M;
        Reacs.elmt_gamma_0 = Params.elmt_gamma_0;
        Reacs.elmt_K = Params.elmt_K;
        Reacs.elmt_alpha_A = Params.elmt_alpha_A;
        Reacs.elmt_L = elmt_cell.elmt_L;
        Reacs.elmt_A = elmt_cell.elmt_A;
        Reacs.elmt_mu = Params.elmt_mu;
        Reacs.elmt_B = elmt_cell.elmt_B;
        Reacs.elmt_tau_P = Params.elmt_tau_P;
        Reacs.elmt_alpha_M = Params.elmt_alpha_M;
        Reacs.elmt_alpha_L = Params.elmt_alpha_L;
        Reacs.elmt_alpha_P = Params.elmt_alpha_P;
        Reacs.elmt_gamma_B = Params.elmt_gamma_B;
        Reacs.elmt_gamma_A = Params.elmt_gamma_A;
        Reacs.elmt_alpha_B = Params.elmt_alpha_B;
        Reacs.elmt_K_L1 = Params.elmt_K_L1;
        Reacs.elmt_tau_M = Params.elmt_tau_M;
        elmt_cell.elmt_r_i3 = Reacs.elmt_r_i3;
        elmt_cell.elmt_r_p2_i3 = Reacs.elmt_r_p2_i3;
        elmt_cell.elmt_product12 = Reacs.elmt_product12;
        elmt_cell.elmt_r_a1 = Reacs.elmt_r_a1;
        elmt_cell.elmt_r_m3_i1 = Reacs.elmt_r_m3_i1;
        elmt_cell.elmt_r_a2 = Reacs.elmt_r_a2;
        elmt_cell.elmt_r_m1 = Reacs.elmt_r_m1;
        elmt_cell.elmt_r_m2 = Reacs.elmt_r_m2;
        elmt_cell.elmt_r_i1 = Reacs.elmt_r_i1;
        elmt_cell.elmt_r_a3_l1 = Reacs.elmt_r_a3_l1;
        elmt_cell.elmt_r_i2 = Reacs.elmt_r_i2;
        elmt_cell.elmt_r_p1 = Reacs.elmt_r_p1;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_r_b1 = Reacs.elmt_r_b1;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cell.elmt_r_l2 = Reacs.elmt_r_l2;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_r_l3 = Reacs.elmt_r_l3;
        elmt_cell.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_r_l4 = Reacs.elmt_r_l4;
        elmt_cell.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cell.elmt_r_b2_i2 = Reacs.elmt_r_b2_i2;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product19 = Reacs.elmt_product19;
        elmt_cell.elmt_product18 = Reacs.elmt_product18;

end Yildirim2003_Lac_operon;
