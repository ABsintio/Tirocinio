within BIOMD182;
model MODEL8609366518 "Neves2008 - Role of cell shape and size in controlling intracellular signalling" annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://sourceforge.net/projects/vcell\">
        <BioModel KeyValue=\"28512435\" Name=\"Neves2008\"/>
        <SimulationSpec KeyValue=\"28511177\" Name=\"compartmental\"/>
        <Simulation KeyValue=\"28510768\" Name=\"compartmental\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_extra elmt_extra;
    Class_elmt_cyto elmt_cyto;
    Class_elmt_cyto_mem elmt_cyto_mem;

    equation
        Params.elmt_B_Raf_active_cyto = elmt_cyto.elmt_B_Raf_active_cyto;
        Params.elmt_GRK_cyto = elmt_cyto.elmt_GRK_cyto;
        Params.elmt_PTP_PKA_cyto = elmt_cyto.elmt_PTP_PKA_cyto;
        Params.elmt_PP2A_cyto = elmt_cyto.elmt_PP2A_cyto;
        Params.elmt_PDE_high_km_cyto = elmt_cyto.elmt_PDE_high_km_cyto;
        Params.elmt_GRK_bg_cyto = elmt_cyto.elmt_GRK_bg_cyto;
        Params.elmt_PKA_cyto = elmt_cyto.elmt_PKA_cyto;
        Params.elmt_PDE4_cyto = elmt_cyto.elmt_PDE4_cyto;
        Params.elmt_AC_active_cyto_mem = elmt_cyto_mem.elmt_AC_active_cyto_mem;
        Params.elmt_PTP_cyto = elmt_cyto.elmt_PTP_cyto;
        Params.elmt_PDE4_P_cyto = elmt_cyto.elmt_PDE4_P_cyto;
        Params.elmt_PTP_PP_cyto = elmt_cyto.elmt_PTP_PP_cyto;
        Params.elmt_PP_PDE_cyto = elmt_cyto.elmt_PP_PDE_cyto;
        Params.elmt_AC_cyto_mem = elmt_cyto_mem.elmt_AC_cyto_mem;
        Params.elmt_MEK_active_cyto = elmt_cyto.elmt_MEK_active_cyto;
        Reacs.elmt_cAMP_cyto = elmt_cyto.elmt_cAMP_cyto;
        Reacs.elmt_c3_R2C2_cyto = elmt_cyto.elmt_c3_R2C2_cyto;
        Reacs.elmt_Vmax_PKA_P_PDE = Params.elmt_Vmax_PKA_P_PDE;
        Reacs.elmt_Vmax_PPase_mek = Params.elmt_Vmax_PPase_mek;
        Reacs.elmt_Vmax_PKA_P_PTP = Params.elmt_Vmax_PKA_P_PTP;
        Reacs.elmt_PDE4_cyto = elmt_cyto.elmt_PDE4_cyto;
        Reacs.elmt_iso_BAR_G_cyto_mem = elmt_cyto_mem.elmt_iso_BAR_G_cyto_mem;
        Reacs.elmt_AC_active_cyto_mem = elmt_cyto_mem.elmt_AC_active_cyto_mem;
        Reacs.elmt_PTP_cyto = elmt_cyto.elmt_PTP_cyto;
        Reacs.elmt_B_Raf_cyto = elmt_cyto.elmt_B_Raf_cyto;
        Reacs.elmt_Vmax_PPase_MAPK = Params.elmt_Vmax_PPase_MAPK;
        Reacs.elmt_KMOLE = Params.elmt_KMOLE;
        Reacs.elmt_MEK_active_cyto = elmt_cyto.elmt_MEK_active_cyto;
        Reacs.elmt_Vmax_MEK_activates_MAPK = Params.elmt_Vmax_MEK_activates_MAPK;
        Reacs.elmt_BAR_G_cyto_mem = elmt_cyto_mem.elmt_BAR_G_cyto_mem;
        Reacs.elmt_Vmax_PTP_PKA = Params.elmt_Vmax_PTP_PKA;
        Reacs.elmt_PTP_PKA_cyto = elmt_cyto.elmt_PTP_PKA_cyto;
        Reacs.elmt_PKA_cyto = elmt_cyto.elmt_PKA_cyto;
        Reacs.elmt_Vmax_AC_active_AC_active = Params.elmt_Vmax_AC_active_AC_active;
        Reacs.elmt_iso_BAR_cyto_mem = elmt_cyto_mem.elmt_iso_BAR_cyto_mem;
        Reacs.elmt_MAPK_active_cyto = elmt_cyto.elmt_MAPK_active_cyto;
        Reacs.elmt_Vmax_highKM_PDE = Params.elmt_Vmax_highKM_PDE;
        Reacs.elmt_bg_cyto = elmt_cyto.elmt_bg_cyto;
        Reacs.elmt_Vmax_PTP = Params.elmt_Vmax_PTP;
        Reacs.elmt_Vmax_GRK_bg_GRK_bg = Params.elmt_Vmax_GRK_bg_GRK_bg;
        Reacs.elmt_cyto_mem = elmt_cyto_mem.elmt_cyto_mem;
        Reacs.elmt_Vmax_pde4_p_pde4_p = Params.elmt_Vmax_pde4_p_pde4_p;
        Reacs.elmt_GRK_bg_cyto = elmt_cyto.elmt_GRK_bg_cyto;
        Reacs.elmt_Vmax_AC_basal_AC_basal = Params.elmt_Vmax_AC_basal_AC_basal;
        Reacs.elmt_ATP_cyto = elmt_cyto.elmt_ATP_cyto;
        Reacs.elmt_G_a_s_cyto = elmt_cyto.elmt_G_a_s_cyto;
        Reacs.elmt_MEK_cyto = elmt_cyto.elmt_MEK_cyto;
        Reacs.elmt_Vmax_pp2a_4_pp2a_4 = Params.elmt_Vmax_pp2a_4_pp2a_4;
        Reacs.elmt_MAPK_cyto = elmt_cyto.elmt_MAPK_cyto;
        Reacs.elmt_PDE4_P_cyto = elmt_cyto.elmt_PDE4_P_cyto;
        Reacs.elmt_Vmax_PDE4_PDE4 = Params.elmt_Vmax_PDE4_PDE4;
        Reacs.elmt_iso_extra = elmt_extra.elmt_iso_extra;
        Reacs.elmt_Vmax_grk_GRK = Params.elmt_Vmax_grk_GRK;
        Reacs.elmt_c_R2C2_cyto = elmt_cyto.elmt_c_R2C2_cyto;
        Reacs.elmt_c2_R2C2_cyto = elmt_cyto.elmt_c2_R2C2_cyto;
        Reacs.elmt_Vmax_pp_ptp = Params.elmt_Vmax_pp_ptp;
        Reacs.elmt_BAR_cyto_mem = elmt_cyto_mem.elmt_BAR_cyto_mem;
        Reacs.elmt_R2C2_cyto = elmt_cyto.elmt_R2C2_cyto;
        Reacs.elmt_cyto = elmt_cyto.elmt_cyto;
        Reacs.elmt_B_Raf_active_cyto = elmt_cyto.elmt_B_Raf_active_cyto;
        Reacs.elmt_GRK_cyto = elmt_cyto.elmt_GRK_cyto;
        Reacs.elmt_Vmax_PPase_Raf = Params.elmt_Vmax_PPase_Raf;
        Reacs.elmt_Vmax_PKA_activates_Raf = Params.elmt_Vmax_PKA_activates_Raf;
        Reacs.elmt_Vmax_Raf_activates_MEK = Params.elmt_Vmax_Raf_activates_MEK;
        Reacs.elmt_G_GDP_cyto = elmt_cyto.elmt_G_GDP_cyto;
        Reacs.elmt_G_protein_cyto = elmt_cyto.elmt_G_protein_cyto;
        Reacs.elmt_AC_cyto_mem = elmt_cyto_mem.elmt_AC_cyto_mem;
        elmt_extra.elmt_iso_binds_BAR_g = Reacs.elmt_iso_binds_BAR_g;
        elmt_extra.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_extra.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_extra.elmt_iso_binds_BAR = Reacs.elmt_iso_binds_BAR;
        elmt_cyto.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_cyto.elmt_product73 = Reacs.elmt_product73;
        elmt_cyto.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_cyto.elmt_product34 = Reacs.elmt_product34;
        elmt_cyto.elmt_product76 = Reacs.elmt_product76;
        elmt_cyto.elmt_pp2a_4 = Reacs.elmt_pp2a_4;
        elmt_cyto.elmt_product32 = Reacs.elmt_product32;
        elmt_cyto.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_cyto.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_cyto.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_cyto.elmt_Raf_activates_MEK = Reacs.elmt_Raf_activates_MEK;
        elmt_cyto.elmt_product26 = Reacs.elmt_product26;
        elmt_cyto.elmt_trimer = Reacs.elmt_trimer;
        elmt_cyto.elmt_PTP = Reacs.elmt_PTP;
        elmt_cyto.elmt_product41 = Reacs.elmt_product41;
        elmt_cyto.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_cyto.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_cyto.elmt_product44 = Reacs.elmt_product44;
        elmt_cyto.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cyto.elmt_MEK_activates_MAPK = Reacs.elmt_MEK_activates_MAPK;
        elmt_cyto.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cyto.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_cyto.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cyto.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_cyto.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cyto.elmt_A2 = Reacs.elmt_A2;
        elmt_cyto.elmt_A1 = Reacs.elmt_A1;
        elmt_cyto.elmt_pp_ptp = Reacs.elmt_pp_ptp;
        elmt_cyto.elmt_PPase_MAPK = Reacs.elmt_PPase_MAPK;
        elmt_cyto.elmt_product36 = Reacs.elmt_product36;
        elmt_cyto.elmt_AC_activation = Reacs.elmt_AC_activation;
        elmt_cyto.elmt_AC_basal = Reacs.elmt_AC_basal;
        elmt_cyto.elmt_product52 = Reacs.elmt_product52;
        elmt_cyto.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_cyto.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_cyto.elmt_product50 = Reacs.elmt_product50;
        elmt_cyto.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cyto.elmt_PTP_PKA = Reacs.elmt_PTP_PKA;
        elmt_cyto.elmt_product12 = Reacs.elmt_product12;
        elmt_cyto.elmt_pde4_p = Reacs.elmt_pde4_p;
        elmt_cyto.elmt_product55 = Reacs.elmt_product55;
        elmt_cyto.elmt_G_binds_BAR = Reacs.elmt_G_binds_BAR;
        elmt_cyto.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_cyto.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_cyto.elmt_PDE4 = Reacs.elmt_PDE4;
        elmt_cyto.elmt_PKA_activates_Raf = Reacs.elmt_PKA_activates_Raf;
        elmt_cyto.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_cyto.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cyto.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_cyto.elmt_highKM_PDE = Reacs.elmt_highKM_PDE;
        elmt_cyto.elmt_PKA_P_PDE = Reacs.elmt_PKA_P_PDE;
        elmt_cyto.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cyto.elmt_PPase_mek = Reacs.elmt_PPase_mek;
        elmt_cyto.elmt_B1 = Reacs.elmt_B1;
        elmt_cyto.elmt_B2 = Reacs.elmt_B2;
        elmt_cyto.elmt_product48 = Reacs.elmt_product48;
        elmt_cyto.elmt_activate_Gs = Reacs.elmt_activate_Gs;
        elmt_cyto.elmt_GTPase = Reacs.elmt_GTPase;
        elmt_cyto.elmt_PKA_P_PTP = Reacs.elmt_PKA_P_PTP;
        elmt_cyto.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_cyto.elmt_product62 = Reacs.elmt_product62;
        elmt_cyto.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cyto.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cyto.elmt_product7 = Reacs.elmt_product7;
        elmt_cyto.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_cyto.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_cyto.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_cyto.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cyto.elmt_product23 = Reacs.elmt_product23;
        elmt_cyto.elmt_product66 = Reacs.elmt_product66;
        elmt_cyto.elmt_product21 = Reacs.elmt_product21;
        elmt_cyto.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_cyto.elmt_product64 = Reacs.elmt_product64;
        elmt_cyto.elmt_AC_active = Reacs.elmt_AC_active;
        elmt_cyto.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_cyto.elmt_product5 = Reacs.elmt_product5;
        elmt_cyto.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_cyto.elmt_bg_binds_GRK = Reacs.elmt_bg_binds_GRK;
        elmt_cyto.elmt_product3 = Reacs.elmt_product3;
        elmt_cyto.elmt_product2 = Reacs.elmt_product2;
        elmt_cyto.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_cyto.elmt_G_binds_iso_BAR = Reacs.elmt_G_binds_iso_BAR;
        elmt_cyto.elmt_PPase_Raf = Reacs.elmt_PPase_Raf;
        elmt_cyto.elmt_product15 = Reacs.elmt_product15;
        elmt_cyto.elmt_product57 = Reacs.elmt_product57;
        elmt_cyto.elmt_product19 = Reacs.elmt_product19;
        elmt_cyto.elmt_product17 = Reacs.elmt_product17;
        elmt_cyto_mem.elmt_product71 = Reacs.elmt_product71;
        elmt_cyto_mem.elmt_product60 = Reacs.elmt_product60;
        elmt_cyto_mem.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cyto_mem.elmt_iso_binds_BAR_g = Reacs.elmt_iso_binds_BAR_g;
        elmt_cyto_mem.elmt_product10 = Reacs.elmt_product10;
        elmt_cyto_mem.elmt_G_binds_BAR = Reacs.elmt_G_binds_BAR;
        elmt_cyto_mem.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_cyto_mem.elmt_product1 = Reacs.elmt_product1;
        elmt_cyto_mem.elmt_GRK = Reacs.elmt_GRK;
        elmt_cyto_mem.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_cyto_mem.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_cyto_mem.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_cyto_mem.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_cyto_mem.elmt_reactant67 = Reacs.elmt_reactant67;
        elmt_cyto_mem.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cyto_mem.elmt_G_binds_iso_BAR = Reacs.elmt_G_binds_iso_BAR;
        elmt_cyto_mem.elmt_GRK_bg = Reacs.elmt_GRK_bg;
        elmt_cyto_mem.elmt_product46 = Reacs.elmt_product46;
        elmt_cyto_mem.elmt_product68 = Reacs.elmt_product68;
        elmt_cyto_mem.elmt_AC_activation = Reacs.elmt_AC_activation;
        elmt_cyto_mem.elmt_iso_binds_BAR = Reacs.elmt_iso_binds_BAR;
        elmt_cyto_mem.elmt_activate_Gs = Reacs.elmt_activate_Gs;
        elmt_cyto_mem.elmt_product29 = Reacs.elmt_product29;
        elmt_cyto_mem.elmt_product39 = Reacs.elmt_product39;

end MODEL8609366518;
