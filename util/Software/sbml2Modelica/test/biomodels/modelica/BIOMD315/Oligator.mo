within BIOMD315;
model Oligator "Montagne2011_Oligator_optimised" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_sample elmt_sample;

    equation
        Params.elmt_beta = elmt_sample.elmt_beta;
        Params.elmt_alpha_T1 = elmt_sample.elmt_alpha_T1;
        Params.elmt_T1_alpha = elmt_sample.elmt_T1_alpha;
        Params.elmt_beta_T3 = elmt_sample.elmt_beta_T3;
        Params.elmt_Inh_T1 = elmt_sample.elmt_Inh_T1;
        Params.elmt_alpha_beta_T2 = elmt_sample.elmt_alpha_beta_T2;
        Params.elmt_beta_Inh_T3 = elmt_sample.elmt_beta_Inh_T3;
        Params.elmt_alpha_T1_alpha = elmt_sample.elmt_alpha_T1_alpha;
        Params.elmt_T2_beta = elmt_sample.elmt_T2_beta;
        Params.elmt_alpha_alpha_T1 = elmt_sample.elmt_alpha_alpha_T1;
        Params.elmt_beta_T3_Inh = elmt_sample.elmt_beta_T3_Inh;
        Params.elmt_alpha_T2_beta = elmt_sample.elmt_alpha_T2_beta;
        Params.elmt_Inh = elmt_sample.elmt_Inh;
        Params.elmt_T3_Inh = elmt_sample.elmt_T3_Inh;
        Params.elmt_alpha_T2 = elmt_sample.elmt_alpha_T2;
        Params.elmt_alpha = elmt_sample.elmt_alpha;
        Reacs.elmt_k7d = Params.elmt_k7d;
        Reacs.elmt_k26d = Params.elmt_k26d;
        Reacs.elmt_k14d = Params.elmt_k14d;
        Reacs.elmt_k18d = Params.elmt_k18d;
        Reacs.elmt_Inh_T1 = elmt_sample.elmt_Inh_T1;
        Reacs.elmt_k3d = Params.elmt_k3d;
        Reacs.elmt_k22d = Params.elmt_k22d;
        Reacs.elmt_k10d = Params.elmt_k10d;
        Reacs.elmt_k14r = Params.elmt_k14r;
        Reacs.elmt_k7r = Params.elmt_k7r;
        Reacs.elmt_beta_T3_Inh = elmt_sample.elmt_beta_T3_Inh;
        Reacs.elmt_alpha_T2_beta = elmt_sample.elmt_alpha_T2_beta;
        Reacs.elmt_Inh = elmt_sample.elmt_Inh;
        Reacs.elmt_T3_Inh = elmt_sample.elmt_T3_Inh;
        Reacs.elmt_k22r = Params.elmt_k22r;
        Reacs.elmt_k10r = Params.elmt_k10r;
        Reacs.elmt_k3r = Params.elmt_k3r;
        Reacs.elmt_k17d = Params.elmt_k17d;
        Reacs.elmt_k8d = Params.elmt_k8d;
        Reacs.elmt_k25d = Params.elmt_k25d;
        Reacs.elmt_beta_T3 = elmt_sample.elmt_beta_T3;
        Reacs.elmt_k0d = Params.elmt_k0d;
        Reacs.elmt_alpha_beta_T2 = elmt_sample.elmt_alpha_beta_T2;
        Reacs.elmt_beta_Inh_T3 = elmt_sample.elmt_beta_Inh_T3;
        Reacs.elmt_k13d = Params.elmt_k13d;
        Reacs.elmt_k4d = Params.elmt_k4d;
        Reacs.elmt_T2_beta = elmt_sample.elmt_T2_beta;
        Reacs.elmt_k21d = Params.elmt_k21d;
        Reacs.elmt_k8r = Params.elmt_k8r;
        Reacs.elmt_k17r = Params.elmt_k17r;
        Reacs.elmt_k0r = Params.elmt_k0r;
        Reacs.elmt_k21r = Params.elmt_k21r;
        Reacs.elmt_k16d = Params.elmt_k16d;
        Reacs.elmt_k9d = Params.elmt_k9d;
        Reacs.elmt_alpha_T1 = elmt_sample.elmt_alpha_T1;
        Reacs.elmt_T1_alpha = elmt_sample.elmt_T1_alpha;
        Reacs.elmt_k20d = Params.elmt_k20d;
        Reacs.elmt_k1d = Params.elmt_k1d;
        Reacs.elmt_k24d = Params.elmt_k24d;
        Reacs.elmt_k12d = Params.elmt_k12d;
        Reacs.elmt_k5d = Params.elmt_k5d;
        Reacs.elmt_alpha_alpha_T1 = elmt_sample.elmt_alpha_alpha_T1;
        Reacs.elmt_k9r = Params.elmt_k9r;
        Reacs.elmt_k16r = Params.elmt_k16r;
        Reacs.elmt_alpha_T2 = elmt_sample.elmt_alpha_T2;
        Reacs.elmt_alpha = elmt_sample.elmt_alpha;
        Reacs.elmt_k1r = Params.elmt_k1r;
        Reacs.elmt_beta = elmt_sample.elmt_beta;
        Reacs.elmt_sample = elmt_sample.elmt_sample;
        Reacs.elmt_k15d = Params.elmt_k15d;
        Reacs.elmt_k19d = Params.elmt_k19d;
        Reacs.elmt_T3 = elmt_sample.elmt_T3;
        Reacs.elmt_k2d = Params.elmt_k2d;
        Reacs.elmt_k23d = Params.elmt_k23d;
        Reacs.elmt_k11d = Params.elmt_k11d;
        Reacs.elmt_alpha_T1_alpha = elmt_sample.elmt_alpha_T1_alpha;
        Reacs.elmt_k6d = Params.elmt_k6d;
        Reacs.elmt_k15r = Params.elmt_k15r;
        Reacs.elmt_k23r = Params.elmt_k23r;
        Reacs.elmt_T1 = elmt_sample.elmt_T1;
        Reacs.elmt_T2 = elmt_sample.elmt_T2;
        Reacs.elmt_k2r = Params.elmt_k2r;
        elmt_sample.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_sample.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_sample.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_sample.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_sample.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_sample.elmt_dis_bc = Reacs.elmt_dis_bc;
        elmt_sample.elmt_inh_displ_ac = Reacs.elmt_inh_displ_ac;
        elmt_sample.elmt_pol_ab = Reacs.elmt_pol_ab;
        elmt_sample.elmt_pol_aa = Reacs.elmt_pol_aa;
        elmt_sample.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_sample.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_sample.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_sample.elmt_m_ass_bc_lr = Reacs.elmt_m_ass_bc_lr;
        elmt_sample.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_sample.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_sample.elmt_dis_ab = Reacs.elmt_dis_ab;
        elmt_sample.elmt_dis_aa = Reacs.elmt_dis_aa;
        elmt_sample.elmt_ass_bc_rl = Reacs.elmt_ass_bc_rl;
        elmt_sample.elmt_m_ass_ab_lr = Reacs.elmt_m_ass_ab_lr;
        elmt_sample.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_sample.elmt_product11 = Reacs.elmt_product11;
        elmt_sample.elmt_product10 = Reacs.elmt_product10;
        elmt_sample.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_sample.elmt_ass_ab_l = Reacs.elmt_ass_ab_l;
        elmt_sample.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_sample.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_sample.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_sample.elmt_product8 = Reacs.elmt_product8;
        elmt_sample.elmt_product7 = Reacs.elmt_product7;
        elmt_sample.elmt_m_ass_aa_rl = Reacs.elmt_m_ass_aa_rl;
        elmt_sample.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_sample.elmt_product23 = Reacs.elmt_product23;
        elmt_sample.elmt_product21 = Reacs.elmt_product21;
        elmt_sample.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_sample.elmt_ass_bc_l = Reacs.elmt_ass_bc_l;
        elmt_sample.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_sample.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_sample.elmt_product5 = Reacs.elmt_product5;
        elmt_sample.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_sample.elmt_product4 = Reacs.elmt_product4;
        elmt_sample.elmt_product2 = Reacs.elmt_product2;
        elmt_sample.elmt_product16 = Reacs.elmt_product16;
        elmt_sample.elmt_product15 = Reacs.elmt_product15;
        elmt_sample.elmt_pol_bc = Reacs.elmt_pol_bc;
        elmt_sample.elmt_product13 = Reacs.elmt_product13;
        elmt_sample.elmt_product18 = Reacs.elmt_product18;
        elmt_sample.elmt_product30 = Reacs.elmt_product30;
        elmt_sample.elmt_product34 = Reacs.elmt_product34;
        elmt_sample.elmt_product32 = Reacs.elmt_product32;
        elmt_sample.elmt_ass_aa_l = Reacs.elmt_ass_aa_l;
        elmt_sample.elmt_ass_bc_r = Reacs.elmt_ass_bc_r;
        elmt_sample.elmt_product27 = Reacs.elmt_product27;
        elmt_sample.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_sample.elmt_product26 = Reacs.elmt_product26;
        elmt_sample.elmt_product24 = Reacs.elmt_product24;
        elmt_sample.elmt_product29 = Reacs.elmt_product29;
        elmt_sample.elmt_product40 = Reacs.elmt_product40;
        elmt_sample.elmt_m_ass_aa_r = Reacs.elmt_m_ass_aa_r;
        elmt_sample.elmt_product43 = Reacs.elmt_product43;
        elmt_sample.elmt_product42 = Reacs.elmt_product42;
        elmt_sample.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_sample.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_sample.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_sample.elmt_product37 = Reacs.elmt_product37;
        elmt_sample.elmt_product35 = Reacs.elmt_product35;
        elmt_sample.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_sample.elmt_product51 = Reacs.elmt_product51;
        elmt_sample.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_sample.elmt_nick_bc = Reacs.elmt_nick_bc;
        elmt_sample.elmt_product56 = Reacs.elmt_product56;
        elmt_sample.elmt_product54 = Reacs.elmt_product54;
        elmt_sample.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_sample.elmt_product53 = Reacs.elmt_product53;
        elmt_sample.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_sample.elmt_m_ass_ab_rl = Reacs.elmt_m_ass_ab_rl;
        elmt_sample.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_sample.elmt_product49 = Reacs.elmt_product49;
        elmt_sample.elmt_product46 = Reacs.elmt_product46;
        elmt_sample.elmt_m_ass_aa_lr = Reacs.elmt_m_ass_aa_lr;
        elmt_sample.elmt_product63 = Reacs.elmt_product63;
        elmt_sample.elmt_exo_c = Reacs.elmt_exo_c;
        elmt_sample.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_sample.elmt_exo_b = Reacs.elmt_exo_b;
        elmt_sample.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_sample.elmt_product62 = Reacs.elmt_product62;
        elmt_sample.elmt_m_ass_ab_r = Reacs.elmt_m_ass_ab_r;
        elmt_sample.elmt_exo_a = Reacs.elmt_exo_a;
        elmt_sample.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_sample.elmt_nick_aa = Reacs.elmt_nick_aa;
        elmt_sample.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_sample.elmt_nick_ab = Reacs.elmt_nick_ab;
        elmt_sample.elmt_product67 = Reacs.elmt_product67;
        elmt_sample.elmt_product66 = Reacs.elmt_product66;
        elmt_sample.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_sample.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_sample.elmt_inh_ac = Reacs.elmt_inh_ac;
        elmt_sample.elmt_m_inh_displ_ca = Reacs.elmt_m_inh_displ_ca;
        elmt_sample.elmt_product59 = Reacs.elmt_product59;

end Oligator;
