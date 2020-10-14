within BIOMD352;
model Vernoux2011_AuxinSignalling_AuxinFluctuating "Vernoux2011_AuxinSignaling_AuxinFluctuating" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_0000001 elmt_compartment_0000001;

    equation
        Reacs.elmt_gamma_I = Params.elmt_gamma_I;
        Reacs.elmt_d_IA = Params.elmt_d_IA;
        Reacs.elmt_K_IA = Params.elmt_K_IA;
        Reacs.elmt_w_D = Params.elmt_w_D;
        Reacs.elmt_d_II = Params.elmt_d_II;
        Reacs.elmt_w_A = Params.elmt_w_A;
        Reacs.elmt_aux = elmt_compartment_0000001.elmt_aux;
        Reacs.elmt_k_Am = Params.elmt_k_Am;
        Reacs.elmt_D_IA = elmt_compartment_0000001.elmt_D_IA;
        Reacs.elmt_w_I = Params.elmt_w_I;
        Reacs.elmt_kprime_II = Params.elmt_kprime_II;
        Reacs.elmt_k_IA = Params.elmt_k_IA;
        Reacs.elmt_f_c = Params.elmt_f_c;
        Reacs.elmt_R = elmt_compartment_0000001.elmt_R;
        Reacs.elmt_D_II = elmt_compartment_0000001.elmt_D_II;
        Reacs.elmt_kprime_IA = Params.elmt_kprime_IA;
        Reacs.elmt_d_r = Params.elmt_d_r;
        Reacs.elmt_k_II = Params.elmt_k_II;
        Reacs.elmt_I = elmt_compartment_0000001.elmt_I;
        Reacs.elmt_K_aux = Params.elmt_K_aux;
        Reacs.elmt_pi_A = Params.elmt_pi_A;
        Reacs.elmt_A = elmt_compartment_0000001.elmt_A;
        Reacs.elmt_B_d = Params.elmt_B_d;
        Reacs.elmt_f_A = Params.elmt_f_A;
        Reacs.elmt_d_A = Params.elmt_d_A;
        Reacs.elmt_pi_I = Params.elmt_pi_I;
        Reacs.elmt_d_I = Params.elmt_d_I;
        elmt_compartment_0000001.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_0000001.elmt_reac_DIIxI = Reacs.elmt_reac_DIIxI;
        elmt_compartment_0000001.elmt_reac_prodR = Reacs.elmt_reac_prodR;
        elmt_compartment_0000001.elmt_reac_DIAxA = Reacs.elmt_reac_DIAxA;
        elmt_compartment_0000001.elmt_reac_degrA = Reacs.elmt_reac_degrA;
        elmt_compartment_0000001.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_0000001.elmt_reac_degrI = Reacs.elmt_reac_degrI;
        elmt_compartment_0000001.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_0000001.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_0000001.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment_0000001.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_0000001.elmt_reac_degrDIA = Reacs.elmt_reac_degrDIA;
        elmt_compartment_0000001.elmt_reac_prodA = Reacs.elmt_reac_prodA;
        elmt_compartment_0000001.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_0000001.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment_0000001.elmt_reac_degrR = Reacs.elmt_reac_degrR;
        elmt_compartment_0000001.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_0000001.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment_0000001.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_0000001.elmt_reac_prodI = Reacs.elmt_reac_prodI;
        elmt_compartment_0000001.elmt_reac_degrDII = Reacs.elmt_reac_degrDII;
        elmt_compartment_0000001.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_0000001.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_0000001.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_0000001.elmt_reac_DIA = Reacs.elmt_reac_DIA;
        elmt_compartment_0000001.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment_0000001.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment_0000001.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment_0000001.elmt_reac_DII = Reacs.elmt_reac_DII;
        elmt_compartment_0000001.elmt_product17 = Reacs.elmt_product17;

end Vernoux2011_AuxinSignalling_AuxinFluctuating;
