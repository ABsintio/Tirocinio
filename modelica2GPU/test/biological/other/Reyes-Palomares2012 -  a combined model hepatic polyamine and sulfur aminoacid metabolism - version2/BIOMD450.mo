
model BIOMD450 "Reyes-Palomares2012 -  a combined model hepatic polyamine and sulfur aminoacid metabolism - version2"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;


    function function_4_b_glu_loss_1
        	input Real b_glu;
        output Real y;
    algorithm
        y :=  0.1 * b_glu;
    end function_4_b_glu_loss_1;


    function function_1
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end function_1;


    function function_4_VmHCOOHc_1
        	input Real c_coo;
	input Real cytosol;
	input Real k_in_coo;
	input Real k_out_coo;
	input Real m_coo;
	input Real mito;
        output Real y;
    algorithm
        y :=  k_in_coo * m_coo * mito / 3 - k_out_coo * c_coo * cytosol;
    end function_4_VmHCOOHc_1;


    function function_4_b_cys_cystine_conv_1
        	input Real b_cys;
        output Real y;
    algorithm
        y :=  0.25 * b_cys;
    end function_4_b_cys_cystine_conv_1;


    function function_4_b_gsg_decomp_1
        	input Real b_gsg;
        output Real y;
    algorithm
        y :=  67.5 * b_gsg;
    end function_4_b_gsg_decomp_1;


    function function_4_b_cys_loss_1
        	input Real b_cys;
        output Real y;
    algorithm
        y :=  0.1 * b_cys;
    end function_4_b_cys_loss_1;


    function function_4_b_gsh_decomp_1
        	input Real b_gsh;
        output Real y;
    algorithm
        y :=  90 * b_gsh;
    end function_4_b_gsh_decomp_1;


    function function_4_V_GDC_1
        	input Real K_gly_GDC;
	input Real K_thf_GDC;
	input Real Vm_GDC;
	input Real m_gly;
	input Real m_thf;
        output Real y;
    algorithm
        y :=  Vm_GDC * m_thf * m_gly / ((K_thf_GDC + m_thf) * (K_gly_GDC + m_gly));
    end function_4_V_GDC_1;


    function function_4_b_gsg_loss_1
        	input Real b_gsg;
        output Real y;
    algorithm
        y :=  7.5 * b_gsg;
    end function_4_b_gsg_loss_1;


    function function_4_VmNE_1
        	input Real HCHO;
	input Real k1_mNE;
	input Real k2_mNE;
	input Real m_2cf;
	input Real m_thf;
	input Real mito;
        output Real y;
    algorithm
        y :=  mito * (k1_mNE * m_thf * HCHO - k2_mNE * m_2cf);
    end function_4_VmNE_1;


    function function_4_b_gsh_loss_1
        	input Real b_gsh;
        output Real y;
    algorithm
        y :=  0.7 * b_gsh;
    end function_4_b_gsh_loss_1;


    function function_4_b_gly_loss_1
        	input Real b_gly;
        output Real y;
    algorithm
        y :=  0.1 * b_gly;
    end function_4_b_gly_loss_1;


    function function_4_VmFTD_1
        	input Real K_10f_FTD;
	input Real Vm_mFTD;
	input Real m_10f;
        output Real y;
    algorithm
        y :=  Vm_mFTD * m_10f / (K_10f_FTD + m_10f);
    end function_4_VmFTD_1;


    function MM_twosubst
        	input Real Vmax;
	input Real Km1;
	input Real Km2;
	input Real S1;
	input Real S2;
        output Real y;
    algorithm
        y :=  Vmax * S1 * S2 / ((Km1 + S1) * (Km2 + S2));
    end MM_twosubst;


    function MM
        	input Real Vmax;
	input Real Km;
	input Real S;
        output Real y;
    algorithm
        y :=  Vmax * S / (Km + S);
    end MM;


    function function_4_V_c_gshLb_1
        	input Real K_gshLb;
	input Real V_gshLb;
	input Real c_gsh;
	input Real cytosol;
	input Real h_gshLb;
        output Real y;
    algorithm
        y :=  cytosol * V_gshLb * c_gsh^h_gshLb / (K_gshLb^h_gshLb + c_gsh^h_gshLb);
    end function_4_V_c_gshLb_1;


    function function_4_V_MS_1
        	input Real H2O2;
	input Real K_5mf_MS;
	input Real K_hcy_MS;
	input Real Ki_MS;
	input Real Vm_MS;
	input Real c_5mf;
	input Real hcy;
	input Real ssH2O2;
	input Real MM_twosubst(Vm_MS;
	input Real K_5mf_MS;
	input Real K_hcy_MS;
	input Real c_5mf;
        output Real y;
    algorithm
        y :=  hcy) * (ssH2O2 + Ki_MS) / (H2O2 + Ki_MS);
    end function_4_V_MS_1;


    function function_4_V_DHFR_1
        	input Real K_NADPH_DHFR;
	input Real K_dhf_DHFR;
	input Real NADPH;
	input Real Vm_DHFR;
	input Real c_dhf;
        output Real y;
    algorithm
        y :=  Vm_DHFR * c_dhf * NADPH / ((K_dhf_DHFR + c_dhf) * (K_NADPH_DHFR + NADPH));
    end function_4_V_DHFR_1;


    function function_4_VcFTD_1
        	input Real K_10f_FTD;
	input Real Vm_cFTD;
	input Real c_10f;
        output Real y;
    algorithm
        y :=  Vm_cFTD * c_10f / (K_10f_FTD + c_10f);
    end function_4_VcFTD_1;


    function function_4_V_PGT_1
        	input Real GAR;
	input Real K_10f_PGT;
	input Real K_GAR_PGT;
	input Real Vm_PGT;
	input Real c_10f;
        output Real y;
    algorithm
        y :=  Vm_PGT * c_10f * GAR / ((K_10f_PGT + c_10f) * (K_GAR_PGT + GAR));
    end function_4_V_PGT_1;


    function function_4_VcFTS_1
        	input Real K_coo_cFTS;
	input Real K_thf_cFTS;
	input Real Vm_cFTS;
	input Real c_coo;
	input Real c_thf;
        output Real y;
    algorithm
        y :=  Vm_cFTS * c_thf * c_coo / ((K_thf_cFTS + c_thf) * (K_coo_cFTS + c_coo));
    end function_4_VcFTS_1;


    function function_4_VcSHMT_1
        	input Real K_2cf_SHMT;
	input Real K_gly_SHMT;
	input Real K_ser_SHMT;
	input Real K_thf_SHMT;
	input Real Vf_cSHMT;
	input Real Vr_cSHMT;
	input Real c_2cf;
	input Real c_gly;
	input Real c_ser;
	input Real c_thf;
	input Real MM_twosubst(Vf_cSHMT;
	input Real K_thf_SHMT;
	input Real K_ser_SHMT;
	input Real c_thf;
	input Real c_ser) - MM_twosubst(Vr_cSHMT;
	input Real K_gly_SHMT;
	input Real K_2cf_SHMT;
	input Real c_gly;
        output Real y;
    algorithm
        y :=  c_2cf);
    end function_4_VcSHMT_1;


    function function_4_VcNE_1
        	input Real HCHO;
	input Real c_2cf;
	input Real c_thf;
	input Real cytosol;
	input Real k1_cNE;
	input Real k2_cNE;
        output Real y;
    algorithm
        y :=  cytosol * (k1_cNE * c_thf * HCHO - k2_cNE * c_2cf);
    end function_4_VcNE_1;


    function function_4_V_TS_1
        	input Real DUMP;
	input Real K_2cf_TS;
	input Real K_DUMP_TS;
	input Real Vm_TS;
	input Real c_2cf;
        output Real y;
    algorithm
        y :=  Vm_TS * DUMP * c_2cf / ((K_DUMP_TS + DUMP) * (K_2cf_TS + c_2cf));
    end function_4_V_TS_1;


    function function_4_V_MTHFR_1
        	input Real K_2cf_MTHFR;
	input Real K_NADPH_MTHFR;
	input Real NADPH;
	input Real Vm_MTHFR;
	input Real c_2cf;
	input Real sah;
	input Real sam;
	input Real MM_twosubst(Vm_MTHFR;
	input Real K_2cf_MTHFR;
	input Real K_NADPH_MTHFR;
	input Real c_2cf;
        output Real y;
    algorithm
        y :=  NADPH) * 72 / (10 + sam - sah);
    end function_4_V_MTHFR_1;


    function function_4_VcMTD_1
        	input Real K_1cf_MTD;
	input Real K_2cf_MTD;
	input Real Vf_cMTD;
	input Real Vr_cMTD;
	input Real c_1cf;
	input Real c_2cf;
	input Real MM(Vf_cMTD;
	input Real K_2cf_MTD;
	input Real c_2cf) - MM(Vr_cMTD;
	input Real K_1cf_MTD;
        output Real y;
    algorithm
        y :=  c_1cf);
    end function_4_VcMTD_1;


    function function_4_VcMTCH_1
        	input Real K_10f_MTCH;
	input Real K_1cf_MTCH;
	input Real Vf_cMTCH;
	input Real Vr_MTCH;
	input Real c_10f;
	input Real c_1cf;
	input Real MM(Vf_cMTCH;
	input Real K_1cf_MTCH;
	input Real c_1cf) - MM(Vr_MTCH;
	input Real K_10f_MTCH;
        output Real y;
    algorithm
        y :=  c_10f);
    end function_4_VcMTCH_1;


    function function_4_V_ART_1
        	input Real K_10f_ART;
	input Real K_aic_ART;
	input Real Vm_ART;
	input Real aic;
	input Real c_10f;
        output Real y;
    algorithm
        y :=  Vm_ART * c_10f * aic / ((K_10f_ART + c_10f) * (K_aic_ART + aic));
    end function_4_V_ART_1;


    function function_4_V_BHMT_1
        	input Real BET;
	input Real H2O2;
	input Real K_bet_BHMT;
	input Real K_hcy_BHMT;
	input Real Ki_BHMT;
	input Real Vm_BHMT;
	input Real cytosol;
	input Real hcy;
	input Real sah;
	input Real sam;
	input Real ssH2O2;
	input Real cytosol * exp(-0.0021 * (sam + sah)) * exp(0.0021 * 102.6) * MM_twosubst(Vm_BHMT;
	input Real K_hcy_BHMT;
	input Real K_bet_BHMT;
	input Real hcy;
        output Real y;
    algorithm
        y :=  BET) * ((ssH2O2 + Ki_BHMT) / (H2O2 + Ki_BHMT));
    end function_4_V_BHMT_1;


    function function_4_V_MATI_1
        	input Real Ki_MAT1;
	input Real Km_MAT1;
	input Real Vm_MAT1;
	input Real c_gsg;
	input Real met;
	input Real sam;
        output Real y;
    algorithm
        y :=  Vm_MAT1 * (met / (Km_MAT1 + met)) * (0.23 + 0.8 * exp(-0.0026 * sam)) * ((Ki_MAT1 + 66.71) / (Ki_MAT1 + c_gsg));
    end function_4_V_MATI_1;


    function function_4_V_MATIII_1
        	input Real Ka_MAT3;
	input Real Ki_MAT3;
	input Real Km_MAT3;
	input Real Vm_MAT3;
	input Real c_gsg;
	input Real met;
	input Real sam;
        output Real y;
    algorithm
        y :=  Vm_MAT3 * (met^1.21 / (Km_MAT3 + met^1.21)) * (1 + 7.2 * sam^2 / (Ka_MAT3^2 + sam^2)) * ((Ki_MAT3 + 66.71) / (Ki_MAT3 + c_gsg));
    end function_4_V_MATIII_1;


    function function_4_V_GNMT_1
        	input Real K_gly_GNMT;
	input Real K_sam_GNMT;
	input Real Ki_GNMT;
	input Real Vm_GNMT;
	input Real c_5mf;
	input Real c_gly;
	input Real cytosol;
	input Real sah;
	input Real sam;
	input Real cytosol * MM_twosubst(Vm_GNMT;
	input Real K_sam_GNMT;
	input Real K_gly_GNMT;
	input Real sam;
        output Real y;
    algorithm
        y :=  c_gly) * (1 / (1 + sah / Ki_GNMT)) * (4.8 / (0.35 + c_5mf));
    end function_4_V_GNMT_1;


    function function_4_V_DNMT_1
        	input Real Ki_DNMT;
	input Real Km_DNMT;
	input Real Vm_DNMT;
	input Real sah;
	input Real sam;
        output Real y;
    algorithm
        y :=  Vm_DNMT * (sam / (Km_DNMT * (1 + sah / Ki_DNMT) + sam));
    end function_4_V_DNMT_1;


    function function_4_V_SAHH_1
        	input Real K_hcy_SAHH;
	input Real K_sah_SAHH;
	input Real Vf_SAHH;
	input Real Vr_SAHH;
	input Real hcy;
	input Real sah;
	input Real MM(Vf_SAHH;
	input Real K_sah_SAHH;
	input Real sah) - MM(Vr_SAHH;
	input Real K_hcy_SAHH;
        output Real y;
    algorithm
        y :=  hcy);
    end function_4_V_SAHH_1;


    function function_4_gluconeogenesis_ser_1
        	input Real c_ser;
        output Real y;
    algorithm
        y :=  1.2 * c_ser;
    end function_4_gluconeogenesis_ser_1;


    function function_4_V_CBS_1
        	input Real H2O2;
	input Real K_hcy_CBS;
	input Real K_ser_CBS;
	input Real Ka_CBS;
	input Real Vm_CBS;
	input Real c_ser;
	input Real hcy;
	input Real sah;
	input Real sam;
	input Real ssH2O2;
	input Real MM_twosubst(Vm_CBS;
	input Real K_hcy_CBS;
	input Real K_ser_CBS;
	input Real hcy;
        output Real y;
    algorithm
        y :=  c_ser) * (((30 / 102.59)^2 + 1) / ((30 / (sam + sah))^2 + 1)) * ((H2O2 + Ka_CBS) / (ssH2O2 + Ka_CBS));
    end function_4_V_CBS_1;


    function function_4_V_CTGL_1
        	input Real K_cyt_CTGL;
	input Real Vm_CTGL;
	input Real cyt;
        output Real y;
    algorithm
        y :=  Vm_CTGL * cyt / (K_cyt_CTGL + cyt);
    end function_4_V_CTGL_1;


    function function_4_V_GCS_1
        	input Real H2O2;
	input Real K_cys_GCS;
	input Real K_glu_GCS;
	input Real Ka_GCS;
	input Real Ke_GCS;
	input Real Ki_GCS;
	input Real Kp_GCS;
	input Real Vm_GCS;
	input Real c_cys;
	input Real c_glu;
	input Real c_gsh;
	input Real glc;
	input Real ssH2O2;
        output Real y;
    algorithm
        y :=  (Vm_GCS * (c_cys * c_glu - glc / Ke_GCS) / (K_cys_GCS * K_glu_GCS + c_glu * K_cys_GCS + c_cys * (K_glu_GCS * (1 + c_gsh / Ki_GCS) + c_glu) + glc / Kp_GCS + c_gsh / Ki_GCS)) * ((H2O2 + Ka_GCS) / (ssH2O2 + Ka_GCS));
    end function_4_V_GCS_1;


    function function_4_V_GS_1
        	input Real K_glc_GS;
	input Real K_gly_GS;
	input Real Ke_GS;
	input Real Kp_GS;
	input Real Vm_GS;
	input Real c_gly;
	input Real c_gsh;
	input Real glc;
        output Real y;
    algorithm
        y :=  Vm_GS * (c_gly * glc - c_gsh / Ke_GS) / (K_gly_GS * K_glc_GS + glc * K_gly_GS + c_gly * (K_glc_GS + glc) + c_gsh / Kp_GS);
    end function_4_V_GS_1;


    function function_4_c_glu_usage_1
        	input Real c_glu;
        output Real y;
    algorithm
        y :=  0.07 * c_glu;
    end function_4_c_glu_usage_1;


    function function_4_cys_usage_1
        	input Real c_cys;
        output Real y;
    algorithm
        y :=  0.35 * c_cys^2 / 200;
    end function_4_cys_usage_1;


    function function_4_V_GPX_1
        	input Real H2O2;
	input Real K_H2O2_GPX;
	input Real K_gsh_GPX;
	input Real Vm_GPX;
	input Real c_gsh;
        output Real y;
    algorithm
        y :=  Vm_GPX * (c_gsh / (K_gsh_GPX + c_gsh))^2 * (H2O2 / (K_H2O2_GPX + H2O2));
    end function_4_V_GPX_1;


    function function_4_V_GR_1
        	input Real K_NADPH_GR;
	input Real K_gsg_GR;
	input Real NADPH;
	input Real Vm_GR;
	input Real c_gsg;
        output Real y;
    algorithm
        y :=  Vm_GR * c_gsg * NADPH / ((K_gsg_GR + c_gsg) * (K_NADPH_GR + NADPH));
    end function_4_V_GR_1;


    function function_4_c_gsh_degr_1
        	input Real c_gsh;
        output Real y;
    algorithm
        y :=  0.002 * c_gsh;
    end function_4_c_gsh_degr_1;


    function function_4_c_gsg_degr_1
        	input Real c_gsg;
        output Real y;
    algorithm
        y :=  0.1 * c_gsg;
    end function_4_c_gsg_degr_1;


    function function_4_V_ODC_1
        	input Real Kipodc;
	input Real Kmodc;
	input Real parameter_1;
	input Real species_2;
	input Real species_7;
        output Real y;
    algorithm
        y :=  parameter_1 * species_7 / (Kmodc * (1 + species_2 / Kipodc) + species_7);
    end function_4_V_ODC_1;


    function function_4_V_SAMDC_1
        	input Real Kapsamdc;
	input Real Kiasamdc;
	input Real Kissamdc;
	input Real Kmsamdc;
	input Real parameter_3;
	input Real sam;
	input Real species_1;
	input Real species_2;
	input Real species_3;
        output Real y;
    algorithm
        y :=  (parameter_3 / (1 + species_3 / Kissamdc)) * sam / (Kmsamdc * (1 + Kapsamdc / species_2 + species_1 / Kiasamdc) + sam);
    end function_4_V_SAMDC_1;


    function function_4_V_SSAT_S_1
        	input Real C;
	input Real Kmaccoassat;
	input Real Kmcoassat;
	input Real Kmdssat;
	input Real Kmsssat;
	input Real parameter_2;
	input Real species_3;
	input Real species_4;
	input Real species_8;
	input Real species_9;
        output Real y;
    algorithm
        y :=  (1 / C) * parameter_2 * species_3 * species_8 / (Kmsssat * (1 + species_4 / Kmdssat) * Kmaccoassat * (1 + species_9 / Kmcoassat) + Kmaccoassat * (1 + species_9 / Kmcoassat) * species_3 + Kmsssat * (1 + species_4 / Kmdssat) * species_8 + species_3 * species_8);
    end function_4_V_SSAT_S_1;


    function function_4_V_SSAT_D_1
        	input Real Kmaccoassat;
	input Real Kmcoassat;
	input Real Kmdssat;
	input Real Kmsssat;
	input Real parameter_2;
	input Real species_3;
	input Real species_4;
	input Real species_8;
	input Real species_9;
        output Real y;
    algorithm
        y :=  parameter_2 * species_4 * species_8 / (Kmdssat * (1 + species_3 / Kmsssat) * Kmaccoassat * (1 + species_9 / Kmcoassat) + Kmaccoassat * (1 + species_9 / Kmcoassat) * species_4 + Kmdssat * (1 + species_3 / Kmsssat) * species_8 + species_4 * species_8);
    end function_4_V_SSAT_D_1;


    function function_4_V_PAO_AS_1
        	input Real Kmadpao;
	input Real Kmaspao;
	input Real Kmdpao;
	input Real Kmspao;
	input Real Vmpao;
	input Real species_3;
	input Real species_4;
	input Real species_5;
	input Real species_6;
        output Real y;
    algorithm
        y :=  Vmpao * species_5 / (Kmaspao * (1 + species_6 / Kmadpao + species_5 / Kmaspao + species_4 / Kmdpao + species_3 / Kmspao));
    end function_4_V_PAO_AS_1;


    function function_4_V_PAO_AD_1
        	input Real Kmadpao;
	input Real Kmaspao;
	input Real Kmdpao;
	input Real Kmspao;
	input Real Vmpao;
	input Real species_3;
	input Real species_4;
	input Real species_5;
	input Real species_6;
        output Real y;
    algorithm
        y :=  Vmpao * species_6 / (Kmadpao * (1 + species_6 / Kmadpao + species_5 / Kmaspao + species_4 / Kmdpao + species_3 / Kmspao));
    end function_4_V_PAO_AD_1;


    function function_4_V_SPDS_1
        	input Real KaSpds;
	input Real Kiaspds;
	input Real Kidspds;
	input Real Kpspds;
	input Real Vmspds;
	input Real species_1;
	input Real species_2;
	input Real species_4;
        output Real y;
    algorithm
        y :=  Vmspds * species_1 * species_2 / (Kiaspds * Kpspds * (1 + species_4 / Kidspds) + Kpspds * species_1 + KaSpds * (1 + species_4 / Kidspds) * species_2 + species_1 * species_2);
    end function_4_V_SPDS_1;


    function function_4_V_SPMS_1
        	input Real Kaspms;
	input Real Kdspms;
	input Real Kiaspms;
	input Real Kisspms;
	input Real Vmspms;
	input Real species_1;
	input Real species_3;
	input Real species_4;
        output Real y;
    algorithm
        y :=  Vmspms * species_1 * species_4 / (Kiaspms * Kdspms * (1 + species_3 / Kisspms) + Kdspms * species_1 + Kaspms * (1 + species_3 / Kisspms) * species_4 + species_1 * species_4);
    end function_4_V_SPMS_1;


    function function_4_V_MATII
        	input Real Ki;
	input Real Km;
	input Real met;
	input Real parameter_19;
	input Real sam;
        output Real y;
    algorithm
        y :=  parameter_19 / (1 + (Km * (1 + sam / Ki) / met)^0.76);
    end function_4_V_MATII;


    function function_4_V_SDH_1
        	input Real K_src_SDH;
	input Real K_thf_SDH;
	input Real Vm_SDH;
	input Real m_thf;
	input Real mito;
	input Real src;
	input Real mito * MM_twosubst(Vm_SDH;
	input Real K_thf_SDH;
	input Real K_src_SDH;
	input Real m_thf;
        output Real y;
    algorithm
        y :=  src);
    end function_4_V_SDH_1;


    function function_4_V_b_GLU_c_1
        	input Real K_bglutc;
	input Real V_bglutc;
	input Real b_glu;
	input Real c_glu;
	input Real cytosol;
	input Real k_out_glu;
	input Real cytosol * (MM(V_bglutc;
	input Real K_bglutc;
        output Real y;
    algorithm
        y :=  b_glu) - k_out_glu * c_glu);
    end function_4_V_b_GLU_c_1;


    function function_4_VmGLYc_1
        	input Real K_cgly;
	input Real K_mgly;
	input Real V_cgly;
	input Real V_mgly;
	input Real c_gly;
	input Real cytosol;
	input Real m_gly;
	input Real mito;
	input Real MM(V_mgly;
	input Real K_mgly;
	input Real m_gly) * mito * (1 / 3) - MM(V_cgly;
	input Real K_cgly;
        output Real y;
    algorithm
        y :=  c_gly) * cytosol;
    end function_4_VmGLYc_1;


    function function_4_V_b_SER_c_1
        	input Real K_bserc;
	input Real V_bserc;
	input Real b_ser;
	input Real c_ser;
	input Real cytosol;
	input Real k_out_ser;
	input Real cytosol * (MM(V_bserc;
	input Real K_bserc;
        output Real y;
    algorithm
        y :=  b_ser) - k_out_ser * c_ser);
    end function_4_V_b_SER_c_1;


    function function_4_VmSHMT_1
        	input Real K_2cf_SHMT;
	input Real K_gly_SHMT;
	input Real K_ser_SHMT;
	input Real K_thf_SHMT;
	input Real Vf_mSHMT;
	input Real Vr_mSHMT;
	input Real m_2cf;
	input Real m_gly;
	input Real m_ser;
	input Real m_thf;
	input Real MM_twosubst(Vf_mSHMT;
	input Real K_thf_SHMT;
	input Real K_ser_SHMT;
	input Real m_thf;
	input Real m_ser) - MM_twosubst(Vr_mSHMT;
	input Real K_gly_SHMT;
	input Real K_2cf_SHMT;
	input Real m_gly;
        output Real y;
    algorithm
        y :=  m_2cf);
    end function_4_VmSHMT_1;


    function function_4_V_c_gshHb_1
        	input Real K_gshHb;
	input Real V_gshHb;
	input Real c_gsh;
	input Real cytosol;
	input Real cytosol * MM(V_gshHb;
	input Real K_gshHb;
        output Real y;
    algorithm
        y :=  c_gsh);
    end function_4_V_c_gshHb_1;


    function function_4_V_b_MET_c_1
        	input Real K_bmetc;
	input Real V_bmetc;
	input Real b_met;
	input Real cytosol;
	input Real k_out_met;
	input Real met;
	input Real cytosol * (MM(V_bmetc;
	input Real K_bmetc;
        output Real y;
    algorithm
        y :=  b_met) - k_out_met * met);
    end function_4_V_b_MET_c_1;


    function function_4_V_b_GLY_c_1
        	input Real K_bglyc;
	input Real V_bglyc;
	input Real b_gly;
	input Real c_gly;
	input Real cytosol;
	input Real k_out_gly;
	input Real cytosol * (MM(V_bglyc;
	input Real K_bglyc;
        output Real y;
    algorithm
        y :=  b_gly) - k_out_gly * c_gly);
    end function_4_V_b_GLY_c_1;


    function function_4_VmFTS_1
        	input Real K_10f_mFTS;
	input Real K_coo_mFTS;
	input Real K_thf_mFTS;
	input Real Vf_mFTS;
	input Real Vr_mFTS;
	input Real m_10f;
	input Real m_coo;
	input Real m_thf;
	input Real MM_twosubst(Vf_mFTS;
	input Real K_thf_mFTS;
	input Real K_coo_mFTS;
	input Real m_thf;
	input Real m_coo) - MM(Vr_mFTS;
	input Real K_10f_mFTS;
        output Real y;
    algorithm
        y :=  m_10f);
    end function_4_VmFTS_1;


    function function_4_VmMTD_1
        	input Real K_1cf_MTD;
	input Real K_2cf_MTD;
	input Real Vf_mMTD;
	input Real Vr_MTD;
	input Real m_1cf;
	input Real m_2cf;
	input Real MM(Vf_mMTD;
	input Real K_2cf_MTD;
	input Real m_2cf) - MM(Vr_MTD;
	input Real K_1cf_MTD;
        output Real y;
    algorithm
        y :=  m_1cf);
    end function_4_VmMTD_1;


    function function_4_V_DMGD_1
        	input Real K_dmg_DMGD;
	input Real K_thf_DMGD;
	input Real Vm_DMGD;
	input Real dmg;
	input Real m_thf;
	input Real mito;
	input Real mito * MM_twosubst(Vm_DMGD;
	input Real K_thf_DMGD;
	input Real K_dmg_DMGD;
	input Real m_thf;
        output Real y;
    algorithm
        y :=  dmg);
    end function_4_V_DMGD_1;


    function function_4_VmMTCH_1
        	input Real K_10f_MTCH;
	input Real K_1cf_MTCH;
	input Real Vf_mMTCH;
	input Real Vr_MTCH;
	input Real m_10f;
	input Real m_1cf;
	input Real MM(Vf_mMTCH;
	input Real K_1cf_MTCH;
	input Real m_1cf) - MM(Vr_MTCH;
	input Real K_10f_MTCH;
        output Real y;
    algorithm
        y :=  m_10f);
    end function_4_VmMTCH_1;


    function function_4_V_b_CYS_c_1
        	input Real K_bcysc;
	input Real V_bcysc;
	input Real b_cys;
	input Real cytosol;
	input Real cytosol * MM(V_bcysc;
	input Real K_bcysc;
        output Real y;
    algorithm
        y :=  b_cys);
    end function_4_V_b_CYS_c_1;


    function function_4_V_c_gsgLb_1
        	input Real K_gsgLb;
	input Real V_gsgLb;
	input Real c_gsg;
	input Real cytosol;
	input Real cytosol * MM(V_gsgLb;
	input Real K_gsgLb;
        output Real y;
    algorithm
        y :=  c_gsg);
    end function_4_V_c_gsgLb_1;


    function function_4_VmSERc_1
        	input Real K_cser;
	input Real K_mser;
	input Real V_cser;
	input Real V_mser;
	input Real c_ser;
	input Real cytosol;
	input Real m_ser;
	input Real mito;
	input Real (MM(V_mser;
	input Real K_mser;
	input Real m_ser) * mito / 3 - MM(V_cser;
	input Real K_cser;
        output Real y;
    algorithm
        y :=  c_ser)) * cytosol;
    end function_4_VmSERc_1;


    function function_4_V_c_gsgHb_1
        	input Real K_gsgHb;
	input Real V_gsgHb;
	input Real c_gsg;
	input Real cytosol;
	input Real cytosol * MM(V_gsgHb;
	input Real K_gsgHb;
        output Real y;
    algorithm
        y :=  c_gsg);
    end function_4_V_c_gsgHb_1;


    parameter Real V_gshHb = 150.0;
    parameter Real K_gshHb = 150.0;
    parameter Real V_gshLb = 1100.0;
    parameter Real h_gshLb = 3.0;
    parameter Real K_gshLb = 3000.0;
    parameter Real V_gsgHb = 40.0;
    parameter Real K_gsgHb = 1250.0;
    parameter Real V_gsgLb = 4025.0;
    parameter Real K_gsgLb = 7100.0;
    parameter Real V_bcysc = 14950.0;
    parameter Real K_bcysc = 2100.0;
    parameter Real V_bglutc = 28000.0;
    parameter Real K_bglutc = 300.0;
    parameter Real k_out_glu = 1.0;
    parameter Real V_bglyc = 4600.0;
    parameter Real K_bglyc = 150.0;
    parameter Real k_out_gly = 1.0;
    parameter Real V_bserc = 2700.0;
    parameter Real K_bserc = 150.0;
    parameter Real k_out_ser = 1.0;
    parameter Real V_bmetc = 913.4;
    parameter Real K_bmetc = 150.0;
    parameter Real k_out_met = 1.0;
    parameter Real Vm_mFTD = 1050.0;
    parameter Real K_10f_FTD = 20.0;
    parameter Real Vf_mSHMT = 11440.0;
    parameter Real K_thf_SHMT = 50.0;
    parameter Real K_ser_SHMT = 600.0;
    parameter Real Vr_mSHMT = 30000000.0;
    parameter Real K_gly_SHMT = 10000.0;
    parameter Real K_2cf_SHMT = 3200.0;
    parameter Real Vf_mFTS = 2000.0;
    parameter Real K_thf_mFTS = 3.0;
    parameter Real K_coo_mFTS = 43.0;
    parameter Real Vr_mFTS = 6300.0;
    parameter Real K_10f_mFTS = 22.0;
    parameter Real k1_mNE = 0.03;
    parameter Real k2_mNE = 20.0;
    parameter Real Vm_GDC = 15000.0;
    parameter Real K_thf_GDC = 50.0;
    parameter Real K_gly_GDC = 3400.0;
    parameter Real Vm_SDH = 15000.0;
    parameter Real K_thf_SDH = 50.0;
    parameter Real K_src_SDH = 320.0;
    parameter Real Vm_DMGD = 15000.0;
    parameter Real K_thf_DMGD = 50.0;
    parameter Real K_dmg_DMGD = 50.0;
    parameter Real Vf_mMTD = 180000.0;
    parameter Real K_2cf_MTD = 2.0;
    parameter Real Vr_MTD = 594000.0;
    parameter Real K_1cf_MTD = 10.0;
    parameter Real Vf_mMTCH = 790000.0;
    parameter Real K_1cf_MTCH = 250.0;
    parameter Real Vr_MTCH = 20000.0;
    parameter Real K_10f_MTCH = 100.0;
    parameter Real V_mser = 10000.0;
    parameter Real K_mser = 5700.0;
    parameter Real V_cser = 10000.0;
    parameter Real K_cser = 5700.0;
    parameter Real k_in_coo = 100.0;
    parameter Real k_out_coo = 100.0;
    parameter Real V_mgly = 10000.0;
    parameter Real K_mgly = 5700.0;
    parameter Real V_cgly = 10000.0;
    parameter Real K_cgly = 5700.0;
    parameter Real Vm_MS = 500.0;
    parameter Real K_5mf_MS = 25.0;
    parameter Real K_hcy_MS = 1.0;
    parameter Real ssH2O2 = 0.01;
    parameter Real Ki_MS = 0.01;
    parameter Real Vm_DHFR = 2000.0;
    parameter Real K_dhf_DHFR = 0.5;
    parameter Real K_NADPH_DHFR = 4.0;
    parameter Real Vm_cFTD = 500.0;
    parameter Real Vm_PGT = 24300.0;
    parameter Real K_10f_PGT = 4.9;
    parameter Real K_GAR_PGT = 520.0;
    parameter Real Vm_cFTS = 3900.0;
    parameter Real K_thf_cFTS = 3.0;
    parameter Real K_coo_cFTS = 43.0;
    parameter Real Vf_cSHMT = 5200.0;
    parameter Real Vr_cSHMT = 15000000.0;
    parameter Real k1_cNE = 0.03;
    parameter Real k2_cNE = 22.0;
    parameter Real Vm_TS = 5000.0;
    parameter Real K_DUMP_TS = 6.3;
    parameter Real K_2cf_TS = 14.0;
    parameter Real Vm_MTHFR = 5300.0;
    parameter Real K_2cf_MTHFR = 50.0;
    parameter Real K_NADPH_MTHFR = 16.0;
    parameter Real Vf_cMTD = 80000.0;
    parameter Real Vr_cMTD = 600000.0;
    parameter Real Vf_cMTCH = 500000.0;
    parameter Real Vm_ART = 55000.0;
    parameter Real K_10f_ART = 5.9;
    parameter Real K_aic_ART = 100.0;
    parameter Real Vm_BHMT = 2160.0;
    parameter Real K_hcy_BHMT = 12.0;
    parameter Real K_bet_BHMT = 100.0;
    parameter Real Ki_BHMT = 0.01;
    parameter Real Vm_MAT1 = 0.0;
    parameter Real Km_MAT1 = 41.0;
    parameter Real Ki_MAT1 = 2140.0;
    parameter Real Vm_MAT3 = 0.0;
    parameter Real Km_MAT3 = 300.0;
    parameter Real Ka_MAT3 = 360.0;
    parameter Real Ki_MAT3 = 4030.0;
    parameter Real Vm_GNMT = 260.0;
    parameter Real K_sam_GNMT = 63.0;
    parameter Real K_gly_GNMT = 130.0;
    parameter Real Ki_GNMT = 18.0;
    parameter Real Vm_DNMT = 180.0;
    parameter Real Km_DNMT = 1.4;
    parameter Real Ki_DNMT = 1.4;
    parameter Real Vf_SAHH = 320.0;
    parameter Real K_sah_SAHH = 6.5;
    parameter Real Vr_SAHH = 4530.0;
    parameter Real K_hcy_SAHH = 150.0;
    parameter Real Vm_CBS = 420000.0;
    parameter Real K_hcy_CBS = 1000.0;
    parameter Real K_ser_CBS = 2000.0;
    parameter Real Ka_CBS = 0.035;
    parameter Real Vm_CTGL = 1500.0;
    parameter Real K_cyt_CTGL = 500.0;
    parameter Real Vm_GCS = 3600.0;
    parameter Real Ke_GCS = 5597.0;
    parameter Real K_cys_GCS = 100.0;
    parameter Real K_glu_GCS = 1900.0;
    parameter Real Ki_GCS = 8200.0;
    parameter Real Kp_GCS = 300.0;
    parameter Real Ka_GCS = 0.01;
    parameter Real Vm_GS = 5400.0;
    parameter Real Ke_GS = 5600.0;
    parameter Real K_gly_GS = 300.0;
    parameter Real K_glc_GS = 22.0;
    parameter Real Kp_GS = 30.0;
    parameter Real Vm_GPX = 4500.0;
    parameter Real K_gsh_GPX = 1330.0;
    parameter Real K_H2O2_GPX = 0.09;
    parameter Real Vm_GR = 892.5;
    parameter Real K_gsg_GR = 107.0;
    parameter Real K_NADPH_GR = 10.4;
    parameter Real dinner = 1.0;
    parameter Real lunch = 1.0;
    parameter Real breakfast = 1.0;
    parameter Real fasting = 1.0;
    parameter Real b_met_basal = 30.0;
    parameter Real b_ser_basal = 150.0;
    parameter Real V_oGly_b_basal = 630.0;
    parameter Real V_oGlu_b_basal = 273.0;
    parameter Real V_oCys_b_basal = 70.0;
    parameter Real k_out_cys = 1.0;
    parameter Real parameter_5 = 1.0;
    parameter Real parameter_6 = 3.0;
    parameter Real parameter_7 = 300.0;
    parameter Real parameter_8 = 12.0;
    parameter Real parameter_9 = 0.06;
    parameter Real parameter_10 = 1.2;
    parameter Real parameter_11 = 60.0;
    parameter Real parameter_12 = 0.02;
    parameter Real parameter_13 = 0.02;
    parameter Real parameter_16 = 0.24;
    parameter Real parameter_19 = 220.0;
    parameter Real Kipodc_61 = 1300.0;
    parameter Real Kmodc_61 = 60.0;
    parameter Real Kapsamdc_62 = 0.5;
    parameter Real Kiasamdc_62 = 2.5;
    parameter Real Kissamdc_62 = 500.0;
    parameter Real Kmsamdc_62 = 50.0;
    parameter Real C_63 = 4.44;
    parameter Real Kmaccoassat_63 = 1.5;
    parameter Real Kmcoassat_63 = 40.0;
    parameter Real Kmdssat_63 = 130.0;
    parameter Real Kmsssat_63 = 35.0;
    parameter Real Kmaccoassat_64 = 1.5;
    parameter Real Kmcoassat_64 = 40.0;
    parameter Real Kmdssat_64 = 130.0;
    parameter Real Kmsssat_64 = 35.0;
    parameter Real Kmadpao_65 = 14.0;
    parameter Real Kmaspao_65 = 0.6;
    parameter Real Kmdpao_65 = 50.0;
    parameter Real Kmspao_65 = 15.0;
    parameter Real Vmpao_65 = 621.0;
    parameter Real Kmadpao_66 = 14.0;
    parameter Real Kmaspao_66 = 0.6;
    parameter Real Kmdpao_66 = 50.0;
    parameter Real Kmspao_66 = 15.0;
    parameter Real Vmpao_66 = 621.0;
    parameter Real KaSpds_67 = 0.3;
    parameter Real Kiaspds_67 = 0.8;
    parameter Real Kidspds_67 = 100.0;
    parameter Real Kpspds_67 = 40.0;
    parameter Real Vmspds_67 = 657.0;
    parameter Real Kaspms_68 = 0.1;
    parameter Real Kdspms_68 = 60.0;
    parameter Real Kiaspms_68 = 0.06;
    parameter Real Kisspms_68 = 25.0;
    parameter Real Vmspms_68 = 193.8;
    parameter Real k1_71 = 0.6;
    parameter Real k1_72 = 0.6;
    parameter Real Ki_73 = 50.0;
    parameter Real Km_73 = 4.0;
    parameter Real blood = 1.0;
    parameter Real cytosol = 1.0;
    parameter Real mito = 1.0;
    parameter Real cell = 1.0;

    Real tot_cfol(start=13.4);
    Real tot_mfol(start=40.2);
    Real V_oCys_b(start=70.0);
    Real V_oGly_b(start=630.0);
    Real V_oGlu_b(start=273.0);
    Real daytime(start=0.0);
    Real aa_input(start=1.0);
    Real parameter_1(start=72.2557178994351);
    Real parameter_2(start=42.2853792055417);
    Real parameter_3(start=21.1340139923629);
    Real parameter_4(start=0.58497831332261);
    Real parameter_14(start=0.24);
    Real parameter_15(start=0.72);
    Real parameter_17(start=140.951264018472);
    Real parameter_18(start=100.0);

    Real b_met;
    Real b_ser;
    Real b_gly;
    Real b_glu;
    Real b_cys;
    Real b_gsg;
    Real b_gsh;
    Real GAR;
    Real NADPH;
    Real BET;
    Real DUMP;
    Real H2O2;
    Real c_thf;
    Real c_5mf;
    Real c_2cf;
    Real c_1cf;
    Real c_10f;
    Real c_dhf;
    Real aic;
    Real c_glu;
    Real c_cys;
    Real glc;
    Real c_gly;
    Real c_gsg;
    Real c_gsh;
    Real cyt;
    Real hcy;
    Real c_ser;
    Real sah;
    Real sam;
    Real met;
    Real c_coo;
    Real species_1;
    Real species_2;
    Real species_3;
    Real species_4;
    Real species_5;
    Real species_6;
    Real species_7;
    Real species_8;
    Real species_9;
    Real CO;
    Real m_thf;
    Real m_2cf;
    Real m_1cf;
    Real m_10f;
    Real m_ser;
    Real m_gly;
    Real m_coo;
    Real Fol;
    Real HCHO;
    Real src;
    Real dmg;

initial equation
    b_gly = 218.733171504338;
    b_glu = 60.4651616225031;
    b_cys = 183.099466381356;
    b_gsg = 0.472632922783833;
    b_gsh = 12.5470655822207;
    GAR = 10.0;
    NADPH = 50.0;
    BET = 50.0;
    DUMP = 20.0;
    H2O2 = 0.015;
    c_thf = Fol / (2 * 3 / 4) - (c_5mf + c_2cf + c_1cf + c_10f + c_dhf);
    c_5mf = 5.36079859230553;
    c_2cf = 0.463962655701761;
    c_1cf = 0.259497676806752;
    c_10f = 3.25539505319571;
    c_dhf = 0.0352527196984464;
    aic = 0.944676738309717;
    c_glu = 3236.78229408139;
    c_cys = 179.792196767939;
    glc = 9.60706615144005;
    c_gly = 927.56013101536;
    c_gsg = 59.8062682413464;
    c_gsh = 6272.51492720171;
    cyt = 32.3047581589977;
    hcy = 1.02425194863179;
    c_ser = 571.225285800751;
    sah = 15.5626693211634;
    sam = 65.0613824844853;
    met = 50.6006924474774;
    c_coo = 13.9758110645557;
    species_1 = 0.011178638638793;
    species_2 = 98.2036296721139;
    species_3 = 61.3595114874529;
    species_4 = 79.5917525310194;
    species_5 = 0.0272742537826481;
    species_6 = 0.903751442137693;
    species_7 = 300.0;
    species_8 = 38.833390762794;
    species_9 = 160.666609237206;
    CO = 0.0;
    m_thf = Fol / (2 * 1 / 4) - (m_2cf + m_1cf + m_10f);
    m_2cf = 1.66729681864136;
    m_1cf = 1.55022131198345;
    m_10f = 15.9931179032642;
    m_ser = 2150.05782513217;
    m_gly = 2043.470284255;
    m_coo = 58.3710073680041;
    Fol = 20.1;
    HCHO = 500.0;
    src = 8.25411023033989;
    dmg = 0.677559463168903;

equation
    tot_cfol = c_5mf + c_2cf + c_1cf + c_10f + c_dhf + c_thf;
    tot_mfol = m_thf + m_2cf + m_1cf + m_10f;
    daytime = time - 24 * floor(time / 24);
    aa_input = piecewise(breakfast, and(leq(7, daytime), leq(daytime, 10)), piecewise(lunch, and(leq(12, daytime), leq(daytime, 15)), piecewise(dinner, and(leq(18, daytime), leq(daytime, 21)), fasting)));
    b_met = aa_input * b_met_basal;
    b_ser = aa_input * b_ser_basal;
    V_oGly_b = aa_input * V_oGly_b_basal;
    V_oCys_b = aa_input * V_oCys_b_basal;
    V_oGlu_b = aa_input * V_oGlu_b_basal;
    parameter_14 = parameter_16;
    parameter_15 = 3 * parameter_16;
    parameter_17 = species_3 + species_4;
    parameter_18 = 100 * (parameter_16 / 0.24);
    der(parameter_1) = 60 * (65.06 / sam) * parameter_7 * (1 / (1 + parameter_5 * (species_4 + species_3))) - parameter_6 * parameter_4 * parameter_1;
    der(parameter_2) = 60 * parameter_9 * (1 - 1 / (1 + parameter_5 * (species_4 + species_3))) - parameter_8 * (1 / (1 + parameter_5 * (species_4 + species_3))) * parameter_2;
    der(parameter_3) = 60 * (65.06 / sam) * parameter_11 * (1 / (1 + parameter_5 * (species_4 + species_3))) - parameter_10 * parameter_3;
    der(parameter_4) = 1 * parameter_13 * (1 - 1 / (1 + parameter_5 * 0.01 * (species_4 + species_3))) - parameter_12 * parameter_4;
    der(b_gly) = (blood * function_4_b_gsh_decomp_1(b_gsh)) + (2.0 * blood * function_4_b_gsg_decomp_1(b_gsg)) + (blood * function_1(V_oGly_b)) - (blood * function_4_b_gly_loss_1(b_gly)) - (function_4_V_b_GLY_c_1(K_bglyc, V_bglyc, b_gly, c_gly, cytosol, k_out_gly));
    der(b_glu) = (blood * function_4_b_gsh_decomp_1(b_gsh)) + (2.0 * blood * function_4_b_gsg_decomp_1(b_gsg)) + (blood * function_1(V_oGlu_b)) - (blood * function_4_b_glu_loss_1(b_glu)) - (function_4_V_b_GLU_c_1(K_bglutc, V_bglutc, b_glu, c_glu, cytosol, k_out_glu));
    der(b_cys) = (blood * function_4_b_gsh_decomp_1(b_gsh)) + (2.0 * blood * function_4_b_gsg_decomp_1(b_gsg)) + (blood * function_1(V_oCys_b)) - (blood * function_4_b_cys_cystine_conv_1(b_cys)) - (blood * function_4_b_cys_loss_1(b_cys)) - (function_4_V_b_CYS_c_1(K_bcysc, V_bcysc, b_cys, cytosol));
    der(b_gsg) = (function_4_V_c_gsgHb_1(K_gsgHb, V_gsgHb, c_gsg, cytosol)) + (function_4_V_c_gsgLb_1(K_gsgLb, V_gsgLb, c_gsg, cytosol)) - (blood * function_4_b_gsg_decomp_1(b_gsg)) - (blood * function_4_b_gsg_loss_1(b_gsg));
    der(b_gsh) = (function_4_V_c_gshHb_1(K_gshHb, V_gshHb, c_gsh, cytosol)) + (function_4_V_c_gshLb_1(K_gshLb, V_gshLb, c_gsh, cytosol, h_gshLb)) - (blood * function_4_b_gsh_decomp_1(b_gsh)) - (blood * function_4_b_gsh_loss_1(b_gsh));
    der(GAR) = 0.0;
    der(NADPH) = 0.0;
    der(BET) = 0.0;
    der(DUMP) = 0.0;
    der(H2O2) = 0.0;
    der(c_thf) = (cytosol * function_4_V_MS_1(H2O2, K_5mf_MS, K_hcy_MS, Ki_MS, Vm_MS, c_5mf, hcy, ssH2O2)) + (cytosol * function_4_V_DHFR_1(K_NADPH_DHFR, K_dhf_DHFR, NADPH, Vm_DHFR, c_dhf)) + (cytosol * function_4_VcFTD_1(K_10f_FTD, Vm_cFTD, c_10f)) + (cytosol * function_4_V_PGT_1(GAR, K_10f_PGT, K_GAR_PGT, Vm_PGT, c_10f)) + (cytosol * function_4_V_ART_1(K_10f_ART, K_aic_ART, Vm_ART, aic, c_10f)) - (cytosol * function_4_VcFTS_1(K_coo_cFTS, K_thf_cFTS, Vm_cFTS, c_coo, c_thf)) - (cytosol * function_4_VcSHMT_1(K_2cf_SHMT, K_gly_SHMT, K_ser_SHMT, K_thf_SHMT, Vf_cSHMT, Vr_cSHMT, c_2cf, c_gly, c_ser, c_thf)) - (function_4_VcNE_1(HCHO, c_2cf, c_thf, cytosol, k1_cNE, k2_cNE));
    der(c_5mf) = (cytosol * function_4_V_MTHFR_1(K_2cf_MTHFR, K_NADPH_MTHFR, NADPH, Vm_MTHFR, c_2cf, sah, sam)) - (cytosol * function_4_V_MS_1(H2O2, K_5mf_MS, K_hcy_MS, Ki_MS, Vm_MS, c_5mf, hcy, ssH2O2));
    der(c_2cf) = (cytosol * function_4_VcSHMT_1(K_2cf_SHMT, K_gly_SHMT, K_ser_SHMT, K_thf_SHMT, Vf_cSHMT, Vr_cSHMT, c_2cf, c_gly, c_ser, c_thf)) + (function_4_VcNE_1(HCHO, c_2cf, c_thf, cytosol, k1_cNE, k2_cNE)) - (cytosol * function_4_V_TS_1(DUMP, K_2cf_TS, K_DUMP_TS, Vm_TS, c_2cf)) - (cytosol * function_4_V_MTHFR_1(K_2cf_MTHFR, K_NADPH_MTHFR, NADPH, Vm_MTHFR, c_2cf, sah, sam)) - (cytosol * function_4_VcMTD_1(K_1cf_MTD, K_2cf_MTD, Vf_cMTD, Vr_cMTD, c_1cf, c_2cf));
    der(c_1cf) = (cytosol * function_4_VcMTD_1(K_1cf_MTD, K_2cf_MTD, Vf_cMTD, Vr_cMTD, c_1cf, c_2cf)) - (cytosol * function_4_VcMTCH_1(K_10f_MTCH, K_1cf_MTCH, Vf_cMTCH, Vr_MTCH, c_10f, c_1cf));
    der(c_10f) = (cytosol * function_4_VcFTS_1(K_coo_cFTS, K_thf_cFTS, Vm_cFTS, c_coo, c_thf)) + (cytosol * function_4_VcMTCH_1(K_10f_MTCH, K_1cf_MTCH, Vf_cMTCH, Vr_MTCH, c_10f, c_1cf)) - (cytosol * function_4_VcFTD_1(K_10f_FTD, Vm_cFTD, c_10f)) - (cytosol * function_4_V_PGT_1(GAR, K_10f_PGT, K_GAR_PGT, Vm_PGT, c_10f)) - (cytosol * function_4_V_ART_1(K_10f_ART, K_aic_ART, Vm_ART, aic, c_10f));
    der(c_dhf) = (cytosol * function_4_V_TS_1(DUMP, K_2cf_TS, K_DUMP_TS, Vm_TS, c_2cf)) - (cytosol * function_4_V_DHFR_1(K_NADPH_DHFR, K_dhf_DHFR, NADPH, Vm_DHFR, c_dhf));
    der(aic) = (cytosol * function_4_V_PGT_1(GAR, K_10f_PGT, K_GAR_PGT, Vm_PGT, c_10f)) - (cytosol * function_4_V_ART_1(K_10f_ART, K_aic_ART, Vm_ART, aic, c_10f));
    der(c_glu) = (function_4_V_b_GLU_c_1(K_bglutc, V_bglutc, b_glu, c_glu, cytosol, k_out_glu)) - (cytosol * function_4_V_GCS_1(H2O2, K_cys_GCS, K_glu_GCS, Ka_GCS, Ke_GCS, Ki_GCS, Kp_GCS, Vm_GCS, c_cys, c_glu, c_gsh, glc, ssH2O2)) - (cytosol * function_4_c_glu_usage_1(c_glu));
    der(c_cys) = (function_4_V_b_CYS_c_1(K_bcysc, V_bcysc, b_cys, cytosol)) + (cytosol * function_4_V_CTGL_1(K_cyt_CTGL, Vm_CTGL, cyt)) - (cytosol * function_4_V_GCS_1(H2O2, K_cys_GCS, K_glu_GCS, Ka_GCS, Ke_GCS, Ki_GCS, Kp_GCS, Vm_GCS, c_cys, c_glu, c_gsh, glc, ssH2O2)) - (cytosol * function_4_cys_usage_1(c_cys));
    der(glc) = (cytosol * function_4_V_GCS_1(H2O2, K_cys_GCS, K_glu_GCS, Ka_GCS, Ke_GCS, Ki_GCS, Kp_GCS, Vm_GCS, c_cys, c_glu, c_gsh, glc, ssH2O2)) - (cytosol * function_4_V_GS_1(K_glc_GS, K_gly_GS, Ke_GS, Kp_GS, Vm_GS, c_gly, c_gsh, glc));
    der(c_gly) = (function_4_V_b_GLY_c_1(K_bglyc, V_bglyc, b_gly, c_gly, cytosol, k_out_gly)) + (function_4_VmGLYc_1(K_cgly, K_mgly, V_cgly, V_mgly, c_gly, cytosol, m_gly, mito)) + (cytosol * function_4_VcSHMT_1(K_2cf_SHMT, K_gly_SHMT, K_ser_SHMT, K_thf_SHMT, Vf_cSHMT, Vr_cSHMT, c_2cf, c_gly, c_ser, c_thf)) - (function_4_V_GNMT_1(K_gly_GNMT, K_sam_GNMT, Ki_GNMT, Vm_GNMT, c_5mf, c_gly, cytosol, sah, sam)) - (cytosol * function_4_V_GS_1(K_glc_GS, K_gly_GS, Ke_GS, Kp_GS, Vm_GS, c_gly, c_gsh, glc));
    der(c_gsg) = (cytosol * function_4_V_GPX_1(H2O2, K_H2O2_GPX, K_gsh_GPX, Vm_GPX, c_gsh)) - (function_4_V_c_gsgHb_1(K_gsgHb, V_gsgHb, c_gsg, cytosol)) - (function_4_V_c_gsgLb_1(K_gsgLb, V_gsgLb, c_gsg, cytosol)) - (cytosol * function_4_V_GR_1(K_NADPH_GR, K_gsg_GR, NADPH, Vm_GR, c_gsg)) - (cytosol * function_4_c_gsg_degr_1(c_gsg));
    der(c_gsh) = (cytosol * function_4_V_GS_1(K_glc_GS, K_gly_GS, Ke_GS, Kp_GS, Vm_GS, c_gly, c_gsh, glc)) + (2.0 * cytosol * function_4_V_GR_1(K_NADPH_GR, K_gsg_GR, NADPH, Vm_GR, c_gsg)) - (function_4_V_c_gshHb_1(K_gshHb, V_gshHb, c_gsh, cytosol)) - (function_4_V_c_gshLb_1(K_gshLb, V_gshLb, c_gsh, cytosol, h_gshLb)) - (2.0 * cytosol * function_4_V_GPX_1(H2O2, K_H2O2_GPX, K_gsh_GPX, Vm_GPX, c_gsh)) - (cytosol * function_4_c_gsh_degr_1(c_gsh));
    der(cyt) = (cytosol * function_4_V_CBS_1(H2O2, K_hcy_CBS, K_ser_CBS, Ka_CBS, Vm_CBS, c_ser, hcy, sah, sam, ssH2O2)) - (cytosol * function_4_V_CTGL_1(K_cyt_CTGL, Vm_CTGL, cyt));
    der(hcy) = (cytosol * function_4_V_SAHH_1(K_hcy_SAHH, K_sah_SAHH, Vf_SAHH, Vr_SAHH, hcy, sah)) - (cytosol * function_4_V_MS_1(H2O2, K_5mf_MS, K_hcy_MS, Ki_MS, Vm_MS, c_5mf, hcy, ssH2O2)) - (function_4_V_BHMT_1(BET, H2O2, K_bet_BHMT, K_hcy_BHMT, Ki_BHMT, Vm_BHMT, cytosol, hcy, sah, sam, ssH2O2)) - (cytosol * function_4_V_CBS_1(H2O2, K_hcy_CBS, K_ser_CBS, Ka_CBS, Vm_CBS, c_ser, hcy, sah, sam, ssH2O2));
    der(c_ser) = (function_4_V_b_SER_c_1(K_bserc, V_bserc, b_ser, c_ser, cytosol, k_out_ser)) + (function_4_VmSERc_1(K_cser, K_mser, V_cser, V_mser, c_ser, cytosol, m_ser, mito)) - (cytosol * function_4_VcSHMT_1(K_2cf_SHMT, K_gly_SHMT, K_ser_SHMT, K_thf_SHMT, Vf_cSHMT, Vr_cSHMT, c_2cf, c_gly, c_ser, c_thf)) - (cytosol * function_4_gluconeogenesis_ser_1(c_ser)) - (cytosol * function_4_V_CBS_1(H2O2, K_hcy_CBS, K_ser_CBS, Ka_CBS, Vm_CBS, c_ser, hcy, sah, sam, ssH2O2));
    der(sah) = (function_4_V_GNMT_1(K_gly_GNMT, K_sam_GNMT, Ki_GNMT, Vm_GNMT, c_5mf, c_gly, cytosol, sah, sam)) + (cytosol * function_4_V_DNMT_1(Ki_DNMT, Km_DNMT, Vm_DNMT, sah, sam)) - (cytosol * function_4_V_SAHH_1(K_hcy_SAHH, K_sah_SAHH, Vf_SAHH, Vr_SAHH, hcy, sah));
    der(sam) = (cytosol * function_4_V_MATI_1(Ki_MAT1, Km_MAT1, Vm_MAT1, c_gsg, met, sam)) + (cytosol * function_4_V_MATIII_1(Ka_MAT3, Ki_MAT3, Km_MAT3, Vm_MAT3, c_gsg, met, sam)) + (cytosol * function_4_V_MATII(Ki_73, Km_73, met, parameter_19, sam)) - (function_4_V_GNMT_1(K_gly_GNMT, K_sam_GNMT, Ki_GNMT, Vm_GNMT, c_5mf, c_gly, cytosol, sah, sam)) - (cytosol * function_4_V_DNMT_1(Ki_DNMT, Km_DNMT, Vm_DNMT, sah, sam)) - (cytosol * function_4_V_SAMDC_1(Kapsamdc_62, Kiasamdc_62, Kissamdc_62, Kmsamdc_62, parameter_3, sam, species_1, species_2, species_3));
    der(met) = (function_4_V_b_MET_c_1(K_bmetc, V_bmetc, b_met, cytosol, k_out_met, met)) + (cytosol * function_4_V_MS_1(H2O2, K_5mf_MS, K_hcy_MS, Ki_MS, Vm_MS, c_5mf, hcy, ssH2O2)) + (function_4_V_BHMT_1(BET, H2O2, K_bet_BHMT, K_hcy_BHMT, Ki_BHMT, Vm_BHMT, cytosol, hcy, sah, sam, ssH2O2)) - (cytosol * function_4_V_MATI_1(Ki_MAT1, Km_MAT1, Vm_MAT1, c_gsg, met, sam)) - (cytosol * function_4_V_MATIII_1(Ka_MAT3, Ki_MAT3, Km_MAT3, Vm_MAT3, c_gsg, met, sam)) - (cytosol * function_4_V_MATII(Ki_73, Km_73, met, parameter_19, sam));
    der(c_coo) = (function_4_VmHCOOHc_1(c_coo, cytosol, k_in_coo, k_out_coo, m_coo, mito)) - (cytosol * function_4_VcFTS_1(K_coo_cFTS, K_thf_cFTS, Vm_cFTS, c_coo, c_thf));
    der(species_1) = (cytosol * function_4_V_SAMDC_1(Kapsamdc_62, Kiasamdc_62, Kissamdc_62, Kmsamdc_62, parameter_3, sam, species_1, species_2, species_3)) - (cytosol * function_4_V_SPDS_1(KaSpds_67, Kiaspds_67, Kidspds_67, Kpspds_67, Vmspds_67, species_1, species_2, species_4)) - (cytosol * function_4_V_SPMS_1(Kaspms_68, Kdspms_68, Kiaspms_68, Kisspms_68, Vmspms_68, species_1, species_3, species_4));
    der(species_2) = (cytosol * function_4_V_ODC_1(Kipodc_61, Kmodc_61, parameter_1, species_2, species_7)) + (cytosol * function_4_V_PAO_AD_1(Kmadpao_65, Kmaspao_65, Kmdpao_65, Kmspao_65, Vmpao_65, species_3, species_4, species_5, species_6)) - (cytosol * function_4_V_SPDS_1(KaSpds_67, Kiaspds_67, Kidspds_67, Kpspds_67, Vmspds_67, species_1, species_2, species_4)) - (cytosol * k1_71 * species_2);
    der(species_3) = (cytosol * function_4_V_SPMS_1(Kaspms_68, Kdspms_68, Kiaspms_68, Kisspms_68, Vmspms_68, species_1, species_3, species_4)) - (cytosol * function_4_V_SSAT_S_1(C_63, Kmaccoassat_63, Kmcoassat_63, Kmdssat_63, Kmsssat_63, parameter_2, species_3, species_4, species_8, species_9));
    der(species_4) = (cytosol * function_4_V_PAO_AS_1(Kmadpao_66, Kmaspao_66, Kmdpao_66, Kmspao_66, Vmpao_66, species_3, species_4, species_5, species_6)) + (cytosol * function_4_V_SPDS_1(KaSpds_67, Kiaspds_67, Kidspds_67, Kpspds_67, Vmspds_67, species_1, species_2, species_4)) - (cytosol * function_4_V_SSAT_D_1(Kmaccoassat_64, Kmcoassat_64, Kmdssat_64, Kmsssat_64, parameter_2, species_3, species_4, species_8, species_9)) - (cytosol * function_4_V_SPMS_1(Kaspms_68, Kdspms_68, Kiaspms_68, Kisspms_68, Vmspms_68, species_1, species_3, species_4));
    der(species_5) = (cytosol * function_4_V_SSAT_S_1(C_63, Kmaccoassat_63, Kmcoassat_63, Kmdssat_63, Kmsssat_63, parameter_2, species_3, species_4, species_8, species_9)) - (cytosol * function_4_V_PAO_AS_1(Kmadpao_66, Kmaspao_66, Kmdpao_66, Kmspao_66, Vmpao_66, species_3, species_4, species_5, species_6));
    der(species_6) = (cytosol * function_4_V_SSAT_D_1(Kmaccoassat_64, Kmcoassat_64, Kmdssat_64, Kmsssat_64, parameter_2, species_3, species_4, species_8, species_9)) - (cytosol * function_4_V_PAO_AD_1(Kmadpao_65, Kmaspao_65, Kmdpao_65, Kmspao_65, Vmpao_65, species_3, species_4, species_5, species_6)) - (cytosol * k1_72 * species_6);
    der(species_7) = 0.0;
    der(species_8) = (cytosol * parameter_14 * species_9) - (cytosol * function_4_V_SSAT_S_1(C_63, Kmaccoassat_63, Kmcoassat_63, Kmdssat_63, Kmsssat_63, parameter_2, species_3, species_4, species_8, species_9)) - (cytosol * function_4_V_SSAT_D_1(Kmaccoassat_64, Kmcoassat_64, Kmdssat_64, Kmsssat_64, parameter_2, species_3, species_4, species_8, species_9)) - (cytosol * parameter_15 * species_8);
    der(species_9) = (cytosol * function_4_V_SSAT_S_1(C_63, Kmaccoassat_63, Kmcoassat_63, Kmdssat_63, Kmsssat_63, parameter_2, species_3, species_4, species_8, species_9)) + (cytosol * function_4_V_SSAT_D_1(Kmaccoassat_64, Kmcoassat_64, Kmdssat_64, Kmsssat_64, parameter_2, species_3, species_4, species_8, species_9)) + (cytosol * parameter_15 * species_8) - (cytosol * parameter_14 * species_9);
    der(CO) = 0.0;
    der(m_thf) = (mito * function_4_VmFTD_1(K_10f_FTD, Vm_mFTD, m_10f)) - (mito * function_4_VmSHMT_1(K_2cf_SHMT, K_gly_SHMT, K_ser_SHMT, K_thf_SHMT, Vf_mSHMT, Vr_mSHMT, m_2cf, m_gly, m_ser, m_thf)) - (mito * function_4_VmFTS_1(K_10f_mFTS, K_coo_mFTS, K_thf_mFTS, Vf_mFTS, Vr_mFTS, m_10f, m_coo, m_thf)) - (function_4_VmNE_1(HCHO, k1_mNE, k2_mNE, m_2cf, m_thf, mito)) - (mito * function_4_V_GDC_1(K_gly_GDC, K_thf_GDC, Vm_GDC, m_gly, m_thf)) - (function_4_V_SDH_1(K_src_SDH, K_thf_SDH, Vm_SDH, m_thf, mito, src)) - (function_4_V_DMGD_1(K_dmg_DMGD, K_thf_DMGD, Vm_DMGD, dmg, m_thf, mito));
    der(m_2cf) = (mito * function_4_VmSHMT_1(K_2cf_SHMT, K_gly_SHMT, K_ser_SHMT, K_thf_SHMT, Vf_mSHMT, Vr_mSHMT, m_2cf, m_gly, m_ser, m_thf)) + (function_4_VmNE_1(HCHO, k1_mNE, k2_mNE, m_2cf, m_thf, mito)) + (mito * function_4_V_GDC_1(K_gly_GDC, K_thf_GDC, Vm_GDC, m_gly, m_thf)) + (function_4_V_SDH_1(K_src_SDH, K_thf_SDH, Vm_SDH, m_thf, mito, src)) + (function_4_V_DMGD_1(K_dmg_DMGD, K_thf_DMGD, Vm_DMGD, dmg, m_thf, mito)) - (mito * function_4_VmMTD_1(K_1cf_MTD, K_2cf_MTD, Vf_mMTD, Vr_MTD, m_1cf, m_2cf));
    der(m_1cf) = (mito * function_4_VmMTD_1(K_1cf_MTD, K_2cf_MTD, Vf_mMTD, Vr_MTD, m_1cf, m_2cf)) - (mito * function_4_VmMTCH_1(K_10f_MTCH, K_1cf_MTCH, Vf_mMTCH, Vr_MTCH, m_10f, m_1cf));
    der(m_10f) = (mito * function_4_VmFTS_1(K_10f_mFTS, K_coo_mFTS, K_thf_mFTS, Vf_mFTS, Vr_mFTS, m_10f, m_coo, m_thf)) + (mito * function_4_VmMTCH_1(K_10f_MTCH, K_1cf_MTCH, Vf_mMTCH, Vr_MTCH, m_10f, m_1cf)) - (mito * function_4_VmFTD_1(K_10f_FTD, Vm_mFTD, m_10f));
    der(m_ser) =  - (mito * function_4_VmSHMT_1(K_2cf_SHMT, K_gly_SHMT, K_ser_SHMT, K_thf_SHMT, Vf_mSHMT, Vr_mSHMT, m_2cf, m_gly, m_ser, m_thf)) - (3.0 * function_4_VmSERc_1(K_cser, K_mser, V_cser, V_mser, c_ser, cytosol, m_ser, mito));
    der(m_gly) = (mito * function_4_VmSHMT_1(K_2cf_SHMT, K_gly_SHMT, K_ser_SHMT, K_thf_SHMT, Vf_mSHMT, Vr_mSHMT, m_2cf, m_gly, m_ser, m_thf)) + (function_4_V_SDH_1(K_src_SDH, K_thf_SDH, Vm_SDH, m_thf, mito, src)) - (mito * function_4_V_GDC_1(K_gly_GDC, K_thf_GDC, Vm_GDC, m_gly, m_thf)) - (3.0 * function_4_VmGLYc_1(K_cgly, K_mgly, V_cgly, V_mgly, c_gly, cytosol, m_gly, mito));
    der(m_coo) =  - (mito * function_4_VmFTS_1(K_10f_mFTS, K_coo_mFTS, K_thf_mFTS, Vf_mFTS, Vr_mFTS, m_10f, m_coo, m_thf)) - (3.0 * function_4_VmHCOOHc_1(c_coo, cytosol, k_in_coo, k_out_coo, m_coo, mito));
    der(Fol) = 0.0;
    der(HCHO) = 0.0;
    der(src) = (function_4_V_DMGD_1(K_dmg_DMGD, K_thf_DMGD, Vm_DMGD, dmg, m_thf, mito)) + (function_4_V_GNMT_1(K_gly_GNMT, K_sam_GNMT, Ki_GNMT, Vm_GNMT, c_5mf, c_gly, cytosol, sah, sam)) - (function_4_V_SDH_1(K_src_SDH, K_thf_SDH, Vm_SDH, m_thf, mito, src));
    der(dmg) = (function_4_V_BHMT_1(BET, H2O2, K_bet_BHMT, K_hcy_BHMT, Ki_BHMT, Vm_BHMT, cytosol, hcy, sah, sam, ssH2O2)) - (function_4_V_DMGD_1(K_dmg_DMGD, K_thf_DMGD, Vm_DMGD, dmg, m_thf, mito));




end BIOMD450;
