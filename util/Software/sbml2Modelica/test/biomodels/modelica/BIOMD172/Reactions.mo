within BIOMD172;
class Reactions

    input Real elmt_GAP;
    input Real elmt_NAD;
    input Real elmt_GLCi;
    input Real elmt_F6P;
    input Real elmt_ATP;
    input Real elmt_EtOH;
    input Real elmt_Glycerol;
    input Real elmt_PEP;
    input Real elmt_BPG;
    input Real elmt_AcAld;
    input Real elmt_F16bP;
    input Real elmt_cell;
    input Real elmt_P2G;
    input Real elmt_AMP;
    input Real elmt_P3G;
    input Real elmt_G6P;
    input Real elmt_DHAP;
    input Real elmt_GLCo;
    input Real elmt_ADP;
    input Real elmt_F26bP;
    input Real elmt_PYR;
    input Real elmt_NADH;

    Real elmt_HK(unit = "") "hexokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_HK_elmt_Keq_2(unit "") = 2000.0 "";
    parameter Real elmt_HK_elmt_Vmax_2(unit "") = 236.7 "";
    parameter Real elmt_HK_elmt_Kadp_2(unit "") = 0.23 "";
    parameter Real elmt_HK_elmt_Kg6p_2(unit "") = 30.0 "";
    parameter Real elmt_HK_elmt_Kglc_2(unit "") = 0.08 "";
    parameter Real elmt_HK_elmt_Katp_2(unit "") = 0.15 "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_PFK(unit = "") "phosphofructosekinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PFK_elmt_Katp_4(unit "") = 0.71 "";
    parameter Real elmt_PFK_elmt_Kf26_4(unit "") = 6.82E-4 "";
    parameter Real elmt_PFK_elmt_Kf16_4(unit "") = 0.111 "";
    parameter Real elmt_PFK_elmt_Kamp_4(unit "") = 0.0995 "";
    parameter Real elmt_PFK_elmt_gR_4(unit "") = 5.12 "";
    parameter Real elmt_PFK_elmt_Catp_4(unit "") = 3.0 "";
    parameter Real elmt_PFK_elmt_Vmax_4(unit "") = 110.0 "";
    parameter Real elmt_PFK_elmt_Kiatp_4(unit "") = 0.65 "";
    parameter Real elmt_PFK_elmt_Cf16_4(unit "") = 0.397 "";
    parameter Real elmt_PFK_elmt_Cf26_4(unit "") = 0.0174 "";
    parameter Real elmt_PFK_elmt_Camp_4(unit "") = 0.0845 "";
    parameter Real elmt_PFK_elmt_L0_4(unit "") = 0.66 "";
    parameter Real elmt_PFK_elmt_Kf6p_4(unit "") = 0.1 "";
    parameter Real elmt_PFK_elmt_Ciatp_4(unit "") = 100.0 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_PGM(unit = "") "phosphoglyceromutase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PGM_elmt_Kp3g_9(unit "") = 1.2 "";
    parameter Real elmt_PGM_elmt_Keq_9(unit "") = 0.19 "";
    parameter Real elmt_PGM_elmt_Vmax_9(unit "") = 2585.0 "";
    parameter Real elmt_PGM_elmt_Kp2g_9(unit "") = 0.08 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_Succinate_Branch(unit = "") "Succinate_Branch";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Succinate_Branch_elmt_k_19(unit "") = 21.4 "";
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_product59 "";
    Real elmt_reactant57 "";
    Real elmt_PGK(unit = "") "3-phosphoglycerate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PGK_elmt_Kp3g_8(unit "") = 0.53 "";
    parameter Real elmt_PGK_elmt_Katp_8(unit "") = 0.3 "";
    parameter Real elmt_PGK_elmt_Keq_8(unit "") = 3200.0 "";
    parameter Real elmt_PGK_elmt_Vmax_8(unit "") = 1288.0 "";
    parameter Real elmt_PGK_elmt_Kbpg_8(unit "") = 0.003 "";
    parameter Real elmt_PGK_elmt_Kadp_8(unit "") = 0.2 "";
    Real elmt_product23 "";
    Real elmt_product24 "";
    Real elmt_reactant21 "";
    Real elmt_reactant22 "";
    Real elmt_ATPase(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ATPase_elmt_Katpase_14(unit "") = 39.5 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_GAPDH(unit = "") "glyceraldehyde phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_GAPDH_elmt_Vmaxf_7(unit "") = 1152.0 "";
    parameter Real elmt_GAPDH_elmt_Kbpg_7(unit "") = 0.0098 "";
    parameter Real elmt_GAPDH_elmt_Kgap_7(unit "") = 0.21 "";
    parameter Real elmt_GAPDH_elmt_Knad_7(unit "") = 0.09 "";
    parameter Real elmt_GAPDH_elmt_Vmaxr_7(unit "") = 6719.0 "";
    parameter Real elmt_GAPDH_elmt_C_7(unit "") = 1.0 "";
    parameter Real elmt_GAPDH_elmt_Knadh_7(unit "") = 0.06 "";
    Real elmt_reactant18 "";
    Real elmt_product20 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_PGI(unit = "") "phosphoglucose isomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PGI_elmt_Keq_3(unit "") = 0.29 "";
    parameter Real elmt_PGI_elmt_Vmax_3(unit "") = 1056.0 "";
    parameter Real elmt_PGI_elmt_Kg6p_3(unit "") = 1.4 "";
    parameter Real elmt_PGI_elmt_Kf6p_3(unit "") = 0.3 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_Trehalose_Branch(unit = "") "Trehalose_Branch";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Trehalose_Branch_elmt_Ktrehalose_18(unit "") = 2.4 "";
    Real elmt_reactant53 "";
    Real elmt_product56 "";
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_AK(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_AK_elmt_k2_15(unit "") = 100.0 "";
    parameter Real elmt_AK_elmt_k1_15(unit "") = 45.0 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_product43 "";
    Real elmt_ALD(unit = "") "fructosebisphosphate aldolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ALD_elmt_Keq_5(unit "") = 0.069 "";
    parameter Real elmt_ALD_elmt_Kgap_5(unit "") = 2.4 "";
    parameter Real elmt_ALD_elmt_Vmax_5(unit "") = 94.69 "";
    parameter Real elmt_ALD_elmt_Kdhap_5(unit "") = 2.0 "";
    parameter Real elmt_ALD_elmt_Kf16bp_5(unit "") = 0.3 "";
    parameter Real elmt_ALD_elmt_Kigap_5(unit "") = 10.0 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_ADH(unit = "") "alcohol dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ADH_elmt_Kinadh_13(unit "") = 0.031 "";
    parameter Real elmt_ADH_elmt_Ketoh_13(unit "") = 17.0 "";
    parameter Real elmt_ADH_elmt_Kietoh_13(unit "") = 90.0 "";
    parameter Real elmt_ADH_elmt_Kiacald_13(unit "") = 1.1 "";
    parameter Real elmt_ADH_elmt_Keq_13(unit "") = 6.9E-5 "";
    parameter Real elmt_ADH_elmt_Knad_13(unit "") = 0.17 "";
    parameter Real elmt_ADH_elmt_Vmax_13(unit "") = 209.5 "";
    parameter Real elmt_ADH_elmt_Knadh_13(unit "") = 0.11 "";
    parameter Real elmt_ADH_elmt_Kinad_13(unit "") = 0.92 "";
    parameter Real elmt_ADH_elmt_Kacald_13(unit "") = 1.11 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_product39 "";
    Real elmt_ENO(unit = "") "enolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ENO_elmt_Vmax_10(unit "") = 201.6 "";
    parameter Real elmt_ENO_elmt_Kpep_10(unit "") = 0.5 "";
    parameter Real elmt_ENO_elmt_Kp2g_10(unit "") = 0.04 "";
    parameter Real elmt_ENO_elmt_Keq_10(unit "") = 6.7 "";
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_HXT(unit = "") "glucose transport";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_HXT_elmt_Vmax_1(unit "") = 97.24 "";
    parameter Real elmt_HXT_elmt_Ki_1(unit "") = 0.91 "";
    parameter Real elmt_HXT_elmt_Kglc_1(unit "") = 1.1918 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_PYK(unit = "") "pyruvate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PYK_elmt_Kpep_11(unit "") = 0.14 "";
    parameter Real elmt_PYK_elmt_Katp_11(unit "") = 1.5 "";
    parameter Real elmt_PYK_elmt_Keq_11(unit "") = 6500.0 "";
    parameter Real elmt_PYK_elmt_Kpyr_11(unit "") = 21.0 "";
    parameter Real elmt_PYK_elmt_Kadp_11(unit "") = 0.53 "";
    parameter Real elmt_PYK_elmt_Vmax_11(unit "") = 1000.0 "";
    Real elmt_reactant30 "";
    Real elmt_reactant29 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_PDC(unit = "") "pyruvate decarboxylase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PDC_elmt_Kpyr_12(unit "") = 4.33 "";
    parameter Real elmt_PDC_elmt_nH_12(unit "") = 1.9 "";
    parameter Real elmt_PDC_elmt_Vmax_12(unit "") = 857.8 "";
    Real elmt_product34 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_Glycogen_Branch(unit = "") "Glycogen_Branch";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Glycogen_Branch_elmt_KGLYCOGEN_17(unit "") = 6.0 "";
    Real elmt_reactant50 "";
    Real elmt_product52 "";
    Real elmt_product51 "";
    Real elmt_reactant49 "";
    Real elmt_TPI(unit = "") "triosephosphate isomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TPI_elmt_k1_6(unit "") = 450000.0 "";
    parameter Real elmt_TPI_elmt_k2_6(unit "") = 1.0E7 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_G3PDH(unit = "") "glycerol-3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G3PDH_elmt_Vmax_16(unit "") = 47.11 "";
    parameter Real elmt_G3PDH_elmt_Knad_16(unit "") = 0.93 "";
    parameter Real elmt_G3PDH_elmt_Kglycerol_16(unit "") = 1.0 "";
    parameter Real elmt_G3PDH_elmt_Kdhap_16(unit "") = 0.4 "";
    parameter Real elmt_G3PDH_elmt_Knadh_16(unit "") = 0.023 "";
    parameter Real elmt_G3PDH_elmt_Keq_16(unit "") = 4300.0 "";
    Real elmt_product48 "";
    Real elmt_product47 "";
    Real elmt_reactant45 "";
    Real elmt_reactant46 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_reactant42 = 2.0;
        elmt_product34 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_product24 = 1.0;
        elmt_product28 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product44 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant58 = 2.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant54 = 2.0;
        elmt_reactant12 = 1.0;
        elmt_reactant57 = 3.0;
        elmt_product38 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_product52 = 1.0;
        elmt_product51 = 1.0;
        elmt_product56 = 1.0;
        elmt_product11 = 1.0;
        elmt_product55 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product48 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product60 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product59 = 3.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;


    equation
        elmt_HK = ((elmt_cell * elmt_HK_elmt_Vmax_2 * (((elmt_GLCi * elmt_ATP) / (elmt_HK_elmt_Kglc_2 * elmt_HK_elmt_Katp_2)) - ((elmt_G6P * elmt_ADP) / (elmt_HK_elmt_Kglc_2 * elmt_HK_elmt_Katp_2 * elmt_HK_elmt_Keq_2)))) / ((1.0 + (elmt_GLCi / elmt_HK_elmt_Kglc_2) + (elmt_G6P / elmt_HK_elmt_Kg6p_2)) * (1.0 + (elmt_ATP / elmt_HK_elmt_Katp_2) + (elmt_ADP / elmt_HK_elmt_Kadp_2))));
        elmt_PFK = (elmt_cell * elmt_PFK_elmt_Vmax_4 * ((elmt_PFK_elmt_gR_4 * (elmt_F6P / elmt_PFK_elmt_Kf6p_4) * (elmt_ATP / elmt_PFK_elmt_Katp_4) * (1.0 + (elmt_F6P / elmt_PFK_elmt_Kf6p_4) + (elmt_ATP / elmt_PFK_elmt_Katp_4) + ((((elmt_PFK_elmt_gR_4 * elmt_F6P) / elmt_PFK_elmt_Kf6p_4) * elmt_ATP) / elmt_PFK_elmt_Katp_4))) / (Functions.pow((1.0 + (elmt_F6P / elmt_PFK_elmt_Kf6p_4) + (elmt_ATP / elmt_PFK_elmt_Katp_4) + ((((elmt_PFK_elmt_gR_4 * elmt_F6P) / elmt_PFK_elmt_Kf6p_4) * elmt_ATP) / elmt_PFK_elmt_Katp_4)), 2.0) + (elmt_PFK_elmt_L0_4 * Functions.pow(((1.0 + ((elmt_PFK_elmt_Ciatp_4 * elmt_ATP) / elmt_PFK_elmt_Kiatp_4)) / (1.0 + (elmt_ATP / elmt_PFK_elmt_Kiatp_4))), 2.0) * Functions.pow(((1.0 + ((elmt_PFK_elmt_Camp_4 * elmt_AMP) / elmt_PFK_elmt_Kamp_4)) / (1.0 + (elmt_AMP / elmt_PFK_elmt_Kamp_4))), 2.0) * Functions.pow(((1.0 + ((elmt_PFK_elmt_Cf26_4 * elmt_F26bP) / elmt_PFK_elmt_Kf26_4) + ((elmt_PFK_elmt_Cf16_4 * elmt_F16bP) / elmt_PFK_elmt_Kf16_4)) / (1.0 + (elmt_F26bP / elmt_PFK_elmt_Kf26_4) + (elmt_F16bP / elmt_PFK_elmt_Kf16_4))), 2.0) * Functions.pow((1.0 + ((elmt_PFK_elmt_Catp_4 * elmt_ATP) / elmt_PFK_elmt_Katp_4)), 2.0)))));
        elmt_PGM = ((elmt_cell * elmt_PGM_elmt_Vmax_9 * ((elmt_P3G / elmt_PGM_elmt_Kp3g_9) - (elmt_P2G / (elmt_PGM_elmt_Kp3g_9 * elmt_PGM_elmt_Keq_9)))) / (1.0 + (elmt_P3G / elmt_PGM_elmt_Kp3g_9) + (elmt_P2G / elmt_PGM_elmt_Kp2g_9)));
        elmt_Succinate_Branch = (elmt_cell * elmt_Succinate_Branch_elmt_k_19 * elmt_AcAld);
        elmt_PGK = ((elmt_cell * elmt_PGK_elmt_Vmax_8 * (((elmt_PGK_elmt_Keq_8 * elmt_BPG * elmt_ADP) - (elmt_P3G * elmt_ATP)) / (elmt_PGK_elmt_Kp3g_8 * elmt_PGK_elmt_Katp_8))) / ((1.0 + (elmt_BPG / elmt_PGK_elmt_Kbpg_8) + (elmt_P3G / elmt_PGK_elmt_Kp3g_8)) * (1.0 + (elmt_ADP / elmt_PGK_elmt_Kadp_8) + (elmt_ATP / elmt_PGK_elmt_Katp_8))));
        elmt_ATPase = (elmt_cell * elmt_ATPase_elmt_Katpase_14 * elmt_ATP);
        elmt_GAPDH = ((elmt_cell * elmt_GAPDH_elmt_C_7 * (((elmt_GAPDH_elmt_Vmaxf_7 * elmt_GAP * elmt_NAD) / (elmt_GAPDH_elmt_Kgap_7 * elmt_GAPDH_elmt_Knad_7)) - ((elmt_GAPDH_elmt_Vmaxr_7 * elmt_BPG * elmt_NADH) / (elmt_GAPDH_elmt_Kbpg_7 * elmt_GAPDH_elmt_Knadh_7)))) / ((1.0 + (elmt_GAP / elmt_GAPDH_elmt_Kgap_7) + (elmt_BPG / elmt_GAPDH_elmt_Kbpg_7)) * (1.0 + (elmt_NAD / elmt_GAPDH_elmt_Knad_7) + (elmt_NADH / elmt_GAPDH_elmt_Knadh_7))));
        elmt_PGI = ((elmt_cell * elmt_PGI_elmt_Vmax_3 * ((elmt_G6P / elmt_PGI_elmt_Kg6p_3) - (elmt_F6P / (elmt_PGI_elmt_Kg6p_3 * elmt_PGI_elmt_Keq_3)))) / (1.0 + (elmt_G6P / elmt_PGI_elmt_Kg6p_3) + (elmt_F6P / elmt_PGI_elmt_Kf6p_3)));
        elmt_Trehalose_Branch = (elmt_cell * elmt_Trehalose_Branch_elmt_Ktrehalose_18);
        elmt_AK = (elmt_cell * ((elmt_AK_elmt_k1_15 * elmt_ADP * elmt_ADP) - (elmt_AK_elmt_k2_15 * elmt_ATP * elmt_AMP)));
        elmt_ALD = ((elmt_cell * elmt_ALD_elmt_Vmax_5 * ((elmt_F16bP / elmt_ALD_elmt_Kf16bp_5) - ((elmt_DHAP * elmt_GAP) / (elmt_ALD_elmt_Kf16bp_5 * elmt_ALD_elmt_Keq_5)))) / (1.0 + (elmt_F16bP / elmt_ALD_elmt_Kf16bp_5) + (elmt_DHAP / elmt_ALD_elmt_Kdhap_5) + (elmt_GAP / elmt_ALD_elmt_Kgap_5) + ((elmt_F16bP * elmt_GAP) / (elmt_ALD_elmt_Kf16bp_5 * elmt_ALD_elmt_Kigap_5)) + ((elmt_DHAP * elmt_GAP) / (elmt_ALD_elmt_Kdhap_5 * elmt_ALD_elmt_Kgap_5))));
        elmt_ADH = ((elmt_cell * elmt_ADH_elmt_Vmax_13 * (((elmt_EtOH * elmt_NAD) / (elmt_ADH_elmt_Ketoh_13 * elmt_ADH_elmt_Kinad_13)) - ((elmt_AcAld * elmt_NADH) / (elmt_ADH_elmt_Ketoh_13 * elmt_ADH_elmt_Kinad_13 * elmt_ADH_elmt_Keq_13)))) / (1.0 + (elmt_NAD / elmt_ADH_elmt_Kinad_13) + ((elmt_EtOH * elmt_ADH_elmt_Knad_13) / (elmt_ADH_elmt_Kinad_13 * elmt_ADH_elmt_Ketoh_13)) + ((elmt_AcAld * elmt_ADH_elmt_Knadh_13) / (elmt_ADH_elmt_Kinadh_13 * elmt_ADH_elmt_Kacald_13)) + (elmt_NADH / elmt_ADH_elmt_Kinadh_13) + ((elmt_EtOH * elmt_NAD) / (elmt_ADH_elmt_Kinad_13 * elmt_ADH_elmt_Ketoh_13)) + ((elmt_NAD * elmt_AcAld * elmt_ADH_elmt_Knadh_13) / (elmt_ADH_elmt_Kinad_13 * elmt_ADH_elmt_Kinadh_13 * elmt_ADH_elmt_Kacald_13)) + ((elmt_EtOH * elmt_NADH * elmt_ADH_elmt_Knad_13) / (elmt_ADH_elmt_Kinad_13 * elmt_ADH_elmt_Kinadh_13 * elmt_ADH_elmt_Ketoh_13)) + ((elmt_AcAld * elmt_NADH) / (elmt_ADH_elmt_Kacald_13 * elmt_ADH_elmt_Kinadh_13)) + ((elmt_EtOH * elmt_NAD * elmt_AcAld) / (elmt_ADH_elmt_Kinad_13 * elmt_ADH_elmt_Kiacald_13 * elmt_ADH_elmt_Ketoh_13)) + ((elmt_EtOH * elmt_AcAld * elmt_NADH) / (elmt_ADH_elmt_Kietoh_13 * elmt_ADH_elmt_Kinadh_13 * elmt_ADH_elmt_Kacald_13))));
        elmt_ENO = ((elmt_cell * elmt_ENO_elmt_Vmax_10 * ((elmt_P2G / elmt_ENO_elmt_Kp2g_10) - (elmt_PEP / (elmt_ENO_elmt_Kp2g_10 * elmt_ENO_elmt_Keq_10)))) / (1.0 + (elmt_P2G / elmt_ENO_elmt_Kp2g_10) + (elmt_PEP / elmt_ENO_elmt_Kpep_10)));
        elmt_HXT = (((elmt_HXT_elmt_Vmax_1 * (elmt_GLCo - elmt_GLCi)) / elmt_HXT_elmt_Kglc_1) / (1.0 + ((elmt_GLCo + elmt_GLCi) / elmt_HXT_elmt_Kglc_1) + ((elmt_HXT_elmt_Ki_1 * elmt_GLCo * elmt_GLCi) / Functions.pow(elmt_HXT_elmt_Kglc_1, 2.0))));
        elmt_PYK = ((elmt_cell * elmt_PYK_elmt_Vmax_11 * (((elmt_PEP * elmt_ADP) / (elmt_PYK_elmt_Kpep_11 * elmt_PYK_elmt_Kadp_11)) - ((elmt_PYR * elmt_ATP) / (elmt_PYK_elmt_Kpep_11 * elmt_PYK_elmt_Kadp_11 * elmt_PYK_elmt_Keq_11)))) / ((1.0 + (elmt_PEP / elmt_PYK_elmt_Kpep_11) + (elmt_PYR / elmt_PYK_elmt_Kpyr_11)) * (1.0 + (elmt_ADP / elmt_PYK_elmt_Kadp_11) + (elmt_ATP / elmt_PYK_elmt_Katp_11))));
        elmt_PDC = ((elmt_cell * elmt_PDC_elmt_Vmax_12 * Functions.pow((elmt_PYR / elmt_PDC_elmt_Kpyr_12), elmt_PDC_elmt_nH_12)) / (1.0 + Functions.pow((elmt_PYR / elmt_PDC_elmt_Kpyr_12), elmt_PDC_elmt_nH_12)));
        elmt_Glycogen_Branch = (elmt_cell * elmt_Glycogen_Branch_elmt_KGLYCOGEN_17);
        elmt_TPI = (elmt_cell * ((elmt_TPI_elmt_k1_6 * elmt_DHAP) - (elmt_TPI_elmt_k2_6 * elmt_GAP)));
        elmt_G3PDH = ((elmt_cell * elmt_G3PDH_elmt_Vmax_16 * (((elmt_DHAP / elmt_G3PDH_elmt_Kdhap_16) * (elmt_NADH / elmt_G3PDH_elmt_Knadh_16)) - ((elmt_Glycerol / elmt_G3PDH_elmt_Kdhap_16) * (elmt_NAD / elmt_G3PDH_elmt_Knadh_16) * (1.0 / elmt_G3PDH_elmt_Keq_16)))) / ((1.0 + (elmt_DHAP / elmt_G3PDH_elmt_Kdhap_16) + (elmt_Glycerol / elmt_G3PDH_elmt_Kglycerol_16)) * (1.0 + (elmt_NADH / elmt_G3PDH_elmt_Knadh_16) + (elmt_NAD / elmt_G3PDH_elmt_Knad_16))));
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product34) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_product24) = 0;
        der(elmt_product28) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product44) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product38) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_product52) = 0;
        der(elmt_product51) = 0;
        der(elmt_product56) = 0;
        der(elmt_product11) = 0;
        der(elmt_product55) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product48) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product60) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product59) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;

end Reactions;
