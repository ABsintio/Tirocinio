within BIOMD627;
model Brain_Energy_Metabolism_with_PPP "Winter2017 - Brain Energy Metabolism with PPP" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"urn:miriam:doi:10.1177/0271678X17693024\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2013-07-30T11:50:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>felix.winter@asd-online.com</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Winter</vCard:Family>
                    <vCard:Given>Felix</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>ASD GmbH</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:modified>
              <rdf:Description>
                <dcterms:W3CDTF>2014-10-22T09:29:38</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:modified>
            <CopasiMT:is rdf:resource=\"urn:miriam:biomodels.db:MODEL1603240000\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;
    Class_elmt_venous_balloon elmt_venous_balloon;
    Class_elmt_compartment_4 elmt_compartment_4;
    Class_elmt_compartment_3 elmt_compartment_3;
    Class_elmt_artery elmt_artery;
    Class_elmt_compartment_2 elmt_compartment_2;

    equation
        Params.elmt_dHb = elmt_compartment_1.elmt_dHb;
        Params.elmt_O2_artery = elmt_artery.elmt_O2_artery;
        Params.elmt_artery = elmt_artery.elmt_artery;
        Params.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Params.elmt_species_21 = elmt_compartment_2.elmt_species_21;
        Params.elmt_species_11 = elmt_compartment_2.elmt_species_11;
        Params.elmt_species_22 = elmt_compartment_3.elmt_species_22;
        Params.elmt_venous_balloon = elmt_venous_balloon.elmt_venous_balloon;
        Params.elmt_compartment_4 = elmt_compartment_4.elmt_compartment_4;
        Params.elmt_species_23 = elmt_compartment_1.elmt_species_23;
        Params.elmt_species_13 = elmt_compartment_3.elmt_species_13;
        Params.elmt_compartment_3 = elmt_compartment_3.elmt_compartment_3;
        Params.elmt_compartment_2 = elmt_compartment_2.elmt_compartment_2;
        Reacs.elmt_K_T_GLC_eg__Aubert = Params.elmt_K_T_GLC_eg__Aubert;
        Reacs.elmt_Ru5P_neurons = elmt_compartment_2.elmt_Ru5P_neurons;
        Reacs.elmt_parameter_18 = Params.elmt_parameter_18;
        Reacs.elmt_parameter_17 = Params.elmt_parameter_17;
        Reacs.elmt_parameter_16 = Params.elmt_parameter_16;
        Reacs.elmt_parameter_14 = Params.elmt_parameter_14;
        Reacs.elmt_Vmax_en_GLC__wrt_neurons___Aubert = Params.elmt_Vmax_en_GLC__wrt_neurons___Aubert;
        Reacs.elmt_K_T_LAC_ge__Aubert = Params.elmt_K_T_LAC_ge__Aubert;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_X5P_astrocytes = elmt_compartment_3.elmt_X5P_astrocytes;
        Reacs.elmt_compartment_4 = elmt_compartment_4.elmt_compartment_4;
        Reacs.elmt_NADP_neurons = elmt_compartment_2.elmt_NADP_neurons;
        Reacs.elmt_compartment_3 = elmt_compartment_3.elmt_compartment_3;
        Reacs.elmt_compartment_2 = elmt_compartment_2.elmt_compartment_2;
        Reacs.elmt_R_Na_GLU = Params.elmt_R_Na_GLU;
        Reacs.elmt_artery = elmt_artery.elmt_artery;
        Reacs.elmt_S7P_astrocytes = elmt_compartment_3.elmt_S7P_astrocytes;
        Reacs.elmt_species_2 = elmt_compartment_2.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_2.elmt_species_3;
        Reacs.elmt_K_T_LAC_ec__Aubert = Params.elmt_K_T_LAC_ec__Aubert;
        Reacs.elmt_species_1 = elmt_compartment_2.elmt_species_1;
        Reacs.elmt_ADP_neurons = elmt_compartment_2.elmt_ADP_neurons;
        Reacs.elmt_NAD_neurons = elmt_compartment_2.elmt_NAD_neurons;
        Reacs.elmt_K_T_GLC_ce__Aubert = Params.elmt_K_T_GLC_ce__Aubert;
        Reacs.elmt_Cr_astrocytes = elmt_compartment_3.elmt_Cr_astrocytes;
        Reacs.elmt__sf = Params.elmt__sf;
        Reacs.elmt_GLU_neurons = elmt_compartment_2.elmt_GLU_neurons;
        Reacs.elmt_AMP_neurons = elmt_compartment_2.elmt_AMP_neurons;
        Reacs.elmt_species_15 = elmt_compartment_2.elmt_species_15;
        Reacs.elmt_R5P_neurons = elmt_compartment_2.elmt_R5P_neurons;
        Reacs.elmt_species_16 = elmt_compartment_2.elmt_species_16;
        Reacs.elmt_species_17 = elmt_compartment_3.elmt_species_17;
        Reacs.elmt_species_18 = elmt_compartment_2.elmt_species_18;
        Reacs.elmt_species_19 = elmt_compartment_3.elmt_species_19;
        Reacs.elmt_P6G_astrocytes = elmt_compartment_3.elmt_P6G_astrocytes;
        Reacs.elmt_P6G_neurons = elmt_compartment_2.elmt_P6G_neurons;
        Reacs.elmt_NAD_astrocytes = elmt_compartment_3.elmt_NAD_astrocytes;
        Reacs.elmt_NADPH_neurons = elmt_compartment_2.elmt_NADPH_neurons;
        Reacs.elmt_k_pump = Params.elmt_k_pump;
        Reacs.elmt_species_10 = elmt_compartment_3.elmt_species_10;
        Reacs.elmt_species_11 = elmt_compartment_2.elmt_species_11;
        Reacs.elmt_species_12 = elmt_compartment_2.elmt_species_12;
        Reacs.elmt_species_13 = elmt_compartment_3.elmt_species_13;
        Reacs.elmt_species_14 = elmt_compartment_3.elmt_species_14;
        Reacs.elmt_O2_artery = elmt_artery.elmt_O2_artery;
        Reacs.elmt_species_26 = elmt_compartment_1.elmt_species_26;
        Reacs.elmt_species_27 = elmt_compartment_4.elmt_species_27;
        Reacs.elmt_species_28 = elmt_compartment_4.elmt_species_28;
        Reacs.elmt_Cr_neurons = elmt_compartment_2.elmt_Cr_neurons;
        Reacs.elmt_GLU_astrocytes = elmt_compartment_3.elmt_GLU_astrocytes;
        Reacs.elmt_Hb_OP = Params.elmt_Hb_OP;
        Reacs.elmt_species_20 = elmt_compartment_3.elmt_species_20;
        Reacs.elmt_species_21 = elmt_compartment_2.elmt_species_21;
        Reacs.elmt_species_22 = elmt_compartment_3.elmt_species_22;
        Reacs.elmt_species_23 = elmt_compartment_1.elmt_species_23;
        Reacs.elmt_K_T_LAC_ne__Aubert = Params.elmt_K_T_LAC_ne__Aubert;
        Reacs.elmt_Vm = Params.elmt_Vm;
        Reacs.elmt_species_24 = elmt_compartment_1.elmt_species_24;
        Reacs.elmt_K_m_ATP_ATPase = Params.elmt_K_m_ATP_ATPase;
        Reacs.elmt_species_25 = elmt_compartment_1.elmt_species_25;
        Reacs.elmt_GLC_artery = elmt_artery.elmt_GLC_artery;
        Reacs.elmt_ADP_astrocytes = elmt_compartment_3.elmt_ADP_astrocytes;
        Reacs.elmt_nh_O2__Aubert = Params.elmt_nh_O2__Aubert;
        Reacs.elmt_Vmax_ce_GLC__wrt_capillaries___Aubert = Params.elmt_Vmax_ce_GLC__wrt_capillaries___Aubert;
        Reacs.elmt_V_gn_max_GLU = Params.elmt_V_gn_max_GLU;
        Reacs.elmt_X5P_neurons = elmt_compartment_2.elmt_X5P_neurons;
        Reacs.elmt_R5P_astrocytes = elmt_compartment_3.elmt_R5P_astrocytes;
        Reacs.elmt_Vmax_ge_LAC__wrt_astrocytes___Aubert = Params.elmt_Vmax_ge_LAC__wrt_astrocytes___Aubert;
        Reacs.elmt_Ru5P_astrocytes = elmt_compartment_3.elmt_Ru5P_astrocytes;
        Reacs.elmt_G6L_astrocytes = elmt_compartment_3.elmt_G6L_astrocytes;
        Reacs.elmt_K_T_LAC_gc__Aubert = Params.elmt_K_T_LAC_gc__Aubert;
        Reacs.elmt_parameter_6 = Params.elmt_parameter_6;
        Reacs.elmt_parameter_5 = Params.elmt_parameter_5;
        Reacs.elmt_F_in = Params.elmt_F_in;
        Reacs.elmt_NADP_astrocytes = elmt_compartment_3.elmt_NADP_astrocytes;
        Reacs.elmt_CO2_artery = elmt_artery.elmt_CO2_artery;
        Reacs.elmt_Sm_n = Params.elmt_Sm_n;
        Reacs.elmt_v_stim = Params.elmt_v_stim;
        Reacs.elmt_E4P_astrocytes = elmt_compartment_3.elmt_E4P_astrocytes;
        Reacs.elmt_Vmax_gc_LAC__wrt_astrocytes___Aubert = Params.elmt_Vmax_gc_LAC__wrt_astrocytes___Aubert;
        Reacs.elmt_NADPH_astrocytes = elmt_compartment_3.elmt_NADPH_astrocytes;
        Reacs.elmt_Sm_g = Params.elmt_Sm_g;
        Reacs.elmt_F = Params.elmt_F;
        Reacs.elmt_PS_cap_neuron__wrt_capillaries___Aubert = Params.elmt_PS_cap_neuron__wrt_capillaries___Aubert;
        Reacs.elmt_Vmax_ne_LAC__wrt_neurons___Aubert = Params.elmt_Vmax_ne_LAC__wrt_neurons___Aubert;
        Reacs.elmt_LAC_artery = elmt_artery.elmt_LAC_artery;
        Reacs.elmt_K_T_GLC_cg__Aubert = Params.elmt_K_T_GLC_cg__Aubert;
        Reacs.elmt_AMP_astrocytes = elmt_compartment_3.elmt_AMP_astrocytes;
        Reacs.elmt_K_m_Na_pump = Params.elmt_K_m_Na_pump;
        Reacs.elmt_venous_balloon = elmt_venous_balloon.elmt_venous_balloon;
        Reacs.elmt_Na__extracellular_space = elmt_compartment_4.elmt_Na__extracellular_space;
        Reacs.elmt_K_m_GLU = Params.elmt_K_m_GLU;
        Reacs.elmt_Vmax_eg_GLU__wrt_extracellular_space = Params.elmt_Vmax_eg_GLU__wrt_extracellular_space;
        Reacs.elmt_RT = Params.elmt_RT;
        Reacs.elmt_Na__astrocytes = elmt_compartment_3.elmt_Na__astrocytes;
        Reacs.elmt_species_6 = elmt_compartment_3.elmt_species_6;
        Reacs.elmt_species_7 = elmt_compartment_2.elmt_species_7;
        Reacs.elmt_species_4 = elmt_compartment_3.elmt_species_4;
        Reacs.elmt_dHb = elmt_compartment_1.elmt_dHb;
        Reacs.elmt_species_5 = elmt_compartment_3.elmt_species_5;
        Reacs.elmt_F_out = Params.elmt_F_out;
        Reacs.elmt_species_8 = elmt_compartment_3.elmt_species_8;
        Reacs.elmt_species_9 = elmt_compartment_2.elmt_species_9;
        Reacs.elmt_NULL = Params.elmt_NULL;
        Reacs.elmt_GLU_extracellular_space = elmt_compartment_4.elmt_GLU_extracellular_space;
        Reacs.elmt_K_O2__Aubert = Params.elmt_K_O2__Aubert;
        Reacs.elmt_E4P_neurons = elmt_compartment_2.elmt_E4P_neurons;
        Reacs.elmt_S7P_neurons = elmt_compartment_2.elmt_S7P_neurons;
        Reacs.elmt_G6L_neurons = elmt_compartment_2.elmt_G6L_neurons;
        Reacs.elmt_g_Na_neurons = Params.elmt_g_Na_neurons;
        Reacs.elmt_Na__neurons = elmt_compartment_2.elmt_Na__neurons;
        Reacs.elmt_Vmax_ec_LAC__wrt_extracellular_space___Aubert = Params.elmt_Vmax_ec_LAC__wrt_extracellular_space___Aubert;
        Reacs.elmt_Vmax_eg_GLC__wrt_astrocytes___Aubert_ = Params.elmt_Vmax_eg_GLC__wrt_astrocytes___Aubert_;
        Reacs.elmt_Vmax_cg_GLC__wrt_capillaries___Aubert = Params.elmt_Vmax_cg_GLC__wrt_capillaries___Aubert;
        Reacs.elmt_K_T_GLC_en__Aubert = Params.elmt_K_T_GLC_en__Aubert;
        elmt_compartment_4.elmt_product51 = Reacs.elmt_product51;
        elmt_compartment_4.elmt_product87 = Reacs.elmt_product87;
        elmt_compartment_4.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_compartment_4.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_compartment_4.elmt_vGLU_ne = Reacs.elmt_vGLU_ne;
        elmt_compartment_4.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt_compartment_4.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_compartment_4.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_compartment_4.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_compartment_4.elmt_vGLU_eg = Reacs.elmt_vGLU_eg;
        elmt_compartment_4.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_compartment_4.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_compartment_4.elmt_product59 = Reacs.elmt_product59;
        elmt_compartment_4.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_compartment_4.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_compartment_4.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_venous_balloon.elmt_F_in = Params.elmt_F_in;
        elmt_venous_balloon.elmt_F_out = Params.elmt_F_out;
        elmt_compartment_3.elmt_parameter_11 = Params.elmt_parameter_11;
        elmt_compartment_3.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_compartment_3.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_compartment_3.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_compartment_3.elmt_reactant108 = Reacs.elmt_reactant108;
        elmt_compartment_3.elmt_parameter_19 = Params.elmt_parameter_19;
        elmt_compartment_3.elmt_product170 = Reacs.elmt_product170;
        elmt_compartment_3.elmt_product178 = Reacs.elmt_product178;
        elmt_compartment_3.elmt_reactant116 = Reacs.elmt_reactant116;
        elmt_compartment_3.elmt_reactant115 = Reacs.elmt_reactant115;
        elmt_compartment_3.elmt_AK_astrocytes = Reacs.elmt_AK_astrocytes;
        elmt_compartment_3.elmt_product83 = Reacs.elmt_product83;
        elmt_compartment_3.elmt_product89 = Reacs.elmt_product89;
        elmt_compartment_3.elmt_product182 = Reacs.elmt_product182;
        elmt_compartment_3.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_compartment_3.elmt_product100 = Reacs.elmt_product100;
        elmt_compartment_3.elmt_LDH_astrocytes_forward__R00703 = Reacs.elmt_LDH_astrocytes_forward__R00703;
        elmt_compartment_3.elmt_product109 = Reacs.elmt_product109;
        elmt_compartment_3.elmt_product79 = Reacs.elmt_product79;
        elmt_compartment_3.elmt_product106 = Reacs.elmt_product106;
        elmt_compartment_3.elmt_product105 = Reacs.elmt_product105;
        elmt_compartment_3.elmt_reactant124 = Reacs.elmt_reactant124;
        elmt_compartment_3.elmt_reactant123 = Reacs.elmt_reactant123;
        elmt_compartment_3.elmt_product94 = Reacs.elmt_product94;
        elmt_compartment_3.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_compartment_3.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_3.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_3.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment_3.elmt_product90 = Reacs.elmt_product90;
        elmt_compartment_3.elmt_product153 = Reacs.elmt_product153;
        elmt_compartment_3.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment_3.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment_3.elmt_product154 = Reacs.elmt_product154;
        elmt_compartment_3.elmt_R5P_sink_astrocytes__n_a_ = Reacs.elmt_R5P_sink_astrocytes__n_a_;
        elmt_compartment_3.elmt_reactant179 = Reacs.elmt_reactant179;
        elmt_compartment_3.elmt_vPUMP_astrocytes = Reacs.elmt_vPUMP_astrocytes;
        elmt_compartment_3.elmt_reactant177 = Reacs.elmt_reactant177;
        elmt_compartment_3.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment_3.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment_3.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment_3.elmt_product162 = Reacs.elmt_product162;
        elmt_compartment_3.elmt_product161 = Reacs.elmt_product161;
        elmt_compartment_3.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_compartment_3.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_3.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_3.elmt_vGLU_eg = Reacs.elmt_vGLU_eg;
        elmt_compartment_3.elmt_product169 = Reacs.elmt_product169;
        elmt_compartment_3.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment_3.elmt_SOL_astrocytes__R02035 = Reacs.elmt_SOL_astrocytes__R02035;
        elmt_compartment_3.elmt_reactant181 = Reacs.elmt_reactant181;
        elmt_compartment_3.elmt_reactant107 = Reacs.elmt_reactant107;
        elmt_compartment_3.elmt_reactant104 = Reacs.elmt_reactant104;
        elmt_compartment_3.elmt_PGI_astrocytes__R02740___HS = Reacs.elmt_PGI_astrocytes__R02740___HS;
        elmt_compartment_3.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment_3.elmt_parameter_8 = Params.elmt_parameter_8;
        elmt_compartment_3.elmt_product31 = Reacs.elmt_product31;
        elmt_compartment_3.elmt_vLEAK_Na_astrocytes = Reacs.elmt_vLEAK_Na_astrocytes;
        elmt_compartment_3.elmt_ATPase_astrocytes = Reacs.elmt_ATPase_astrocytes;
        elmt_compartment_3.elmt_product134 = Reacs.elmt_product134;
        elmt_compartment_3.elmt_reactant152 = Reacs.elmt_reactant152;
        elmt_compartment_3.elmt_TKL_1_astrocytes__R01641 = Reacs.elmt_TKL_1_astrocytes__R01641;
        elmt_compartment_3.elmt_reactant151 = Reacs.elmt_reactant151;
        elmt_compartment_3.elmt_ZWF_astrocytes__R02736 = Reacs.elmt_ZWF_astrocytes__R02736;
        elmt_compartment_3.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_compartment_3.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_3.elmt_NADPH_oxidase_astrocytes__R07172 = Reacs.elmt_NADPH_oxidase_astrocytes__R07172;
        elmt_compartment_3.elmt_reactant159 = Reacs.elmt_reactant159;
        elmt_compartment_3.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_compartment_3.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_compartment_3.elmt_O2_exchange_capillary_astrocytes = Reacs.elmt_O2_exchange_capillary_astrocytes;
        elmt_compartment_3.elmt_product45 = Reacs.elmt_product45;
        elmt_compartment_3.elmt_reactant91 = Reacs.elmt_reactant91;
        elmt_compartment_3.elmt_product43 = Reacs.elmt_product43;
        elmt_compartment_3.elmt_reactant92 = Reacs.elmt_reactant92;
        elmt_compartment_3.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_3.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt_compartment_3.elmt_product146 = Reacs.elmt_product146;
        elmt_compartment_3.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_compartment_3.elmt_product148 = Reacs.elmt_product148;
        elmt_compartment_3.elmt_product142 = Reacs.elmt_product142;
        elmt_compartment_3.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_3.elmt_product141 = Reacs.elmt_product141;
        elmt_compartment_3.elmt_reactant160 = Reacs.elmt_reactant160;
        elmt_compartment_3.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_compartment_3.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_3.elmt_RPE_astrocytes__R01529 = Reacs.elmt_RPE_astrocytes__R01529;
        elmt_compartment_3.elmt_vGLU_gn = Reacs.elmt_vGLU_gn;
        elmt_compartment_3.elmt_reactant168 = Reacs.elmt_reactant168;
        elmt_compartment_3.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_3.elmt_reactant167 = Reacs.elmt_reactant167;
        elmt_compartment_3.elmt_RKI_astrocytes__R01056 = Reacs.elmt_RKI_astrocytes__R01056;
        elmt_compartment_3.elmt_product53 = Reacs.elmt_product53;
        elmt_compartment_3.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_compartment_3.elmt_TAL_astrocytes__R01827 = Reacs.elmt_TAL_astrocytes__R01827;
        elmt_compartment_3.elmt_product110 = Reacs.elmt_product110;
        elmt_compartment_3.elmt_product49 = Reacs.elmt_product49;
        elmt_compartment_3.elmt_reactant139 = Reacs.elmt_reactant139;
        elmt_compartment_3.elmt_product117 = Reacs.elmt_product117;
        elmt_compartment_3.elmt_reactant133 = Reacs.elmt_reactant133;
        elmt_compartment_3.elmt_product118 = Reacs.elmt_product118;
        elmt_compartment_3.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_3.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_3.elmt_product65 = Reacs.elmt_product65;
        elmt_compartment_3.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_compartment_3.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_compartment_3.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_3.elmt_TKL_2_astrocytes__R01830 = Reacs.elmt_TKL_2_astrocytes__R01830;
        elmt_compartment_3.elmt_product126 = Reacs.elmt_product126;
        elmt_compartment_3.elmt_product125 = Reacs.elmt_product125;
        elmt_compartment_3.elmt_reactant140 = Reacs.elmt_reactant140;
        elmt_compartment_3.elmt_CK_astrocytes_forward__R01881 = Reacs.elmt_CK_astrocytes_forward__R01881;
        elmt_compartment_3.elmt_GND_astrocytes__R01528 = Reacs.elmt_GND_astrocytes__R01528;
        elmt_compartment_3.elmt_reactant147 = Reacs.elmt_reactant147;
        elmt_compartment_3.elmt_reactant145 = Reacs.elmt_reactant145;
        elmt_compartment_1.elmt_product95 = Reacs.elmt_product95;
        elmt_compartment_1.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_compartment_1.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_compartment_1.elmt_product55 = Reacs.elmt_product55;
        elmt_compartment_1.elmt_O2_exchange_capillary_neurons = Reacs.elmt_O2_exchange_capillary_neurons;
        elmt_compartment_1.elmt_Blood_flow_contribution_to_capillary_GLC = Reacs.elmt_Blood_flow_contribution_to_capillary_GLC;
        elmt_compartment_1.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_compartment_1.elmt_product69 = Reacs.elmt_product69;
        elmt_compartment_1.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_compartment_1.elmt_O2_exchange_capillary_astrocytes = Reacs.elmt_O2_exchange_capillary_astrocytes;
        elmt_compartment_1.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_compartment_1.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_compartment_1.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_compartment_1.elmt_product61 = Reacs.elmt_product61;
        elmt_compartment_1.elmt_reactant96 = Reacs.elmt_reactant96;
        elmt_compartment_1.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_compartment_1.elmt_Blood_flow_contribution_to_capillary_LAC = Reacs.elmt_Blood_flow_contribution_to_capillary_LAC;
        elmt_compartment_1.elmt_product67 = Reacs.elmt_product67;
        elmt_compartment_1.elmt_product44 = Reacs.elmt_product44;
        elmt_compartment_1.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_compartment_1.elmt_inflow_of_dHb = Reacs.elmt_inflow_of_dHb;
        elmt_compartment_1.elmt_Blood_flow_contribution_to_capillary_O2 = Reacs.elmt_Blood_flow_contribution_to_capillary_O2;
        elmt_compartment_1.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_compartment_1.elmt_outflow_of_dHb = Reacs.elmt_outflow_of_dHb;
        elmt_compartment_1.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_compartment_1.elmt_product37 = Reacs.elmt_product37;
        elmt_compartment_1.elmt_Flow_of_CO2_between_capillary_and_vessel__artery_ = Reacs.elmt_Flow_of_CO2_between_capillary_and_vessel__artery_;
        elmt_compartment_1.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_2.elmt_parameter_11 = Params.elmt_parameter_11;
        elmt_compartment_2.elmt_product76 = Reacs.elmt_product76;
        elmt_compartment_2.elmt_vSTIM = Reacs.elmt_vSTIM;
        elmt_compartment_2.elmt_parameter_19 = Params.elmt_parameter_19;
        elmt_compartment_2.elmt_NADPH_oxidase_neurons__R07172 = Reacs.elmt_NADPH_oxidase_neurons__R07172;
        elmt_compartment_2.elmt_TKL_1_neurons__R01641 = Reacs.elmt_TKL_1_neurons__R01641;
        elmt_compartment_2.elmt_product173 = Reacs.elmt_product173;
        elmt_compartment_2.elmt_O2_exchange_capillary_neurons = Reacs.elmt_O2_exchange_capillary_neurons;
        elmt_compartment_2.elmt_product174 = Reacs.elmt_product174;
        elmt_compartment_2.elmt_product176 = Reacs.elmt_product176;
        elmt_compartment_2.elmt_reactant112 = Reacs.elmt_reactant112;
        elmt_compartment_2.elmt_reactant111 = Reacs.elmt_reactant111;
        elmt_compartment_2.elmt_product85 = Reacs.elmt_product85;
        elmt_compartment_2.elmt_TAL_neurons__R01827 = Reacs.elmt_TAL_neurons__R01827;
        elmt_compartment_2.elmt_reactant119 = Reacs.elmt_reactant119;
        elmt_compartment_2.elmt_GND_neurons___R01528 = Reacs.elmt_GND_neurons___R01528;
        elmt_compartment_2.elmt_product81 = Reacs.elmt_product81;
        elmt_compartment_2.elmt_product102 = Reacs.elmt_product102;
        elmt_compartment_2.elmt_reactant120 = Reacs.elmt_reactant120;
        elmt_compartment_2.elmt_product103 = Reacs.elmt_product103;
        elmt_compartment_2.elmt_ZWF_neurons__R02736 = Reacs.elmt_ZWF_neurons__R02736;
        elmt_compartment_2.elmt_product186 = Reacs.elmt_product186;
        elmt_compartment_2.elmt_product185 = Reacs.elmt_product185;
        elmt_compartment_2.elmt_product188 = Reacs.elmt_product188;
        elmt_compartment_2.elmt_reactant128 = Reacs.elmt_reactant128;
        elmt_compartment_2.elmt_reactant127 = Reacs.elmt_reactant127;
        elmt_compartment_2.elmt_product93 = Reacs.elmt_product93;
        elmt_compartment_2.elmt_LDH_neurons_forward__R00703 = Reacs.elmt_LDH_neurons_forward__R00703;
        elmt_compartment_2.elmt_product98 = Reacs.elmt_product98;
        elmt_compartment_2.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_compartment_2.elmt_product150 = Reacs.elmt_product150;
        elmt_compartment_2.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment_2.elmt_product157 = Reacs.elmt_product157;
        elmt_compartment_2.elmt_reactant175 = Reacs.elmt_reactant175;
        elmt_compartment_2.elmt_product158 = Reacs.elmt_product158;
        elmt_compartment_2.elmt_reactant172 = Reacs.elmt_reactant172;
        elmt_compartment_2.elmt_reactant171 = Reacs.elmt_reactant171;
        elmt_compartment_2.elmt_ATPase_neurons = Reacs.elmt_ATPase_neurons;
        elmt_compartment_2.elmt_HK_neurons__R01786___HeinrichSchuster = Reacs.elmt_HK_neurons__R01786___HeinrichSchuster;
        elmt_compartment_2.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_2.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment_2.elmt_R5P_sink_neurons__n_a_ = Reacs.elmt_R5P_sink_neurons__n_a_;
        elmt_compartment_2.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_compartment_2.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_compartment_2.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_compartment_2.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_compartment_2.elmt_reactant187 = Reacs.elmt_reactant187;
        elmt_compartment_2.elmt_reactant184 = Reacs.elmt_reactant184;
        elmt_compartment_2.elmt_reactant183 = Reacs.elmt_reactant183;
        elmt_compartment_2.elmt_product166 = Reacs.elmt_product166;
        elmt_compartment_2.elmt_product165 = Reacs.elmt_product165;
        elmt_compartment_2.elmt_reactant180 = Reacs.elmt_reactant180;
        elmt_compartment_2.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment_2.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment_2.elmt_TKL_2_neurons__R01830 = Reacs.elmt_TKL_2_neurons__R01830;
        elmt_compartment_2.elmt_reactant101 = Reacs.elmt_reactant101;
        elmt_compartment_2.elmt_product17 = Reacs.elmt_product17;
        elmt_compartment_2.elmt_RKI_neurons__R01056 = Reacs.elmt_RKI_neurons__R01056;
        elmt_compartment_2.elmt_reactant86 = Reacs.elmt_reactant86;
        elmt_compartment_2.elmt_parameter_7 = Params.elmt_parameter_7;
        elmt_compartment_2.elmt_vGLU_ne = Reacs.elmt_vGLU_ne;
        elmt_compartment_2.elmt_product137 = Reacs.elmt_product137;
        elmt_compartment_2.elmt_product130 = Reacs.elmt_product130;
        elmt_compartment_2.elmt_product132 = Reacs.elmt_product132;
        elmt_compartment_2.elmt_product27 = Reacs.elmt_product27;
        elmt_compartment_2.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment_2.elmt_product138 = Reacs.elmt_product138;
        elmt_compartment_2.elmt_reactant156 = Reacs.elmt_reactant156;
        elmt_compartment_2.elmt_reactant155 = Reacs.elmt_reactant155;
        elmt_compartment_2.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_compartment_2.elmt_reactant97 = Reacs.elmt_reactant97;
        elmt_compartment_2.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_2.elmt_PGI_neurons__R02740___HS = Reacs.elmt_PGI_neurons__R02740___HS;
        elmt_compartment_2.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_2.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment_2.elmt_reactant164 = Reacs.elmt_reactant164;
        elmt_compartment_2.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_compartment_2.elmt_reactant163 = Reacs.elmt_reactant163;
        elmt_compartment_2.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_2.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_2.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_2.elmt_product144 = Reacs.elmt_product144;
        elmt_compartment_2.elmt_product38 = Reacs.elmt_product38;
        elmt_compartment_2.elmt_product36 = Reacs.elmt_product36;
        elmt_compartment_2.elmt_vGLU_gn = Reacs.elmt_vGLU_gn;
        elmt_compartment_2.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_2.elmt_vLEAK_Na_neurons = Reacs.elmt_vLEAK_Na_neurons;
        elmt_compartment_2.elmt_product113 = Reacs.elmt_product113;
        elmt_compartment_2.elmt_reactant131 = Reacs.elmt_reactant131;
        elmt_compartment_2.elmt_product114 = Reacs.elmt_product114;
        elmt_compartment_2.elmt_CK_neurons_forward__R01881 = Reacs.elmt_CK_neurons_forward__R01881;
        elmt_compartment_2.elmt_vPUMP_neurons = Reacs.elmt_vPUMP_neurons;
        elmt_compartment_2.elmt_product47 = Reacs.elmt_product47;
        elmt_compartment_2.elmt_reactant136 = Reacs.elmt_reactant136;
        elmt_compartment_2.elmt_reactant135 = Reacs.elmt_reactant135;
        elmt_compartment_2.elmt_product63 = Reacs.elmt_product63;
        elmt_compartment_2.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_2.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_compartment_2.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_compartment_2.elmt_AK_neurons = Reacs.elmt_AK_neurons;
        elmt_compartment_2.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment_2.elmt_RPE_neurons__R01529 = Reacs.elmt_RPE_neurons__R01529;
        elmt_compartment_2.elmt_reactant143 = Reacs.elmt_reactant143;
        elmt_compartment_2.elmt_SOL_neurons__R02035 = Reacs.elmt_SOL_neurons__R02035;
        elmt_compartment_2.elmt_product122 = Reacs.elmt_product122;
        elmt_compartment_2.elmt_product121 = Reacs.elmt_product121;
        elmt_compartment_2.elmt_reactant149 = Reacs.elmt_reactant149;
        elmt_compartment_2.elmt_product57 = Reacs.elmt_product57;
        elmt_compartment_2.elmt_product129 = Reacs.elmt_product129;

end Brain_Energy_Metabolism_with_PPP;
