within BIOMD239;
class Reactions

    input Real elmt_Mal;
    input Real elmt_CoA;
    input Real elmt_FADH2;
    input Real elmt_ATP_cyt;
    input Real elmt_GAP;
    input Real elmt_DPG;
    input Real elmt_IsoCit;
    input Real elmt_Cytc2p;
    input Real elmt_CO2;
    input Real elmt_NADPH_cyt;
    input Real elmt_IsoCitcyt;
    input Real elmt_Cit_cyt;
    input Real elmt_OG_cyt;
    input Real elmt_Q;
    input Real elmt_ADP_cyt;
    input Real elmt_NAD_p;
    input Real elmt_OXA_cyt;
    input Real elmt_Asp;
    input Real elmt_Fum;
    input Real elmt_Acetyl_CoA;
    input Real elmt_ETFox;
    input Real elmt_Cytc3p;
    input Real elmt_LAC;
    input Real elmt_FAD;
    input Real elmt_Pyr;
    input Real elmt_OXA;
    input Real elmt_Ala;
    input Real elmt_NAD;
    input Real elmt_ATP;
    input Real elmt_SCoA;
    input Real elmt_Mal_cyt;
    input Real elmt_GLC;
    input Real elmt_QH2;
    input Real elmt_PEP;
    input Real elmt_NADP_cyt;
    input Real elmt_GTP;
    input Real elmt_G3P;
    input Real elmt_Glu;
    input Real elmt_ADP;
    input Real elmt_ETFred;
    input Real elmt_PYR_cyt;
    input Real elmt_flow;
    input Real elmt_Asp_cyt;
    input Real elmt_NADH;
    input Real elmt_MATRIX;
    input Real elmt_GDP;
    input Real elmt_FBP;
    input Real elmt_F6P;
    input Real elmt_NADH_cyt;
    input Real elmt_Acetyl_CoA_cyt;
    input Real elmt_MT_IMS;
    input Real elmt_Glu_cyt;
    input Real elmt_AMP;
    input Real elmt_Suc;
    input Real elmt_Cit;
    input Real elmt_CYTOPLASM;
    input Real elmt_OG;

    Real elmt_hidden_1(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_hidden_1_elmt_k9f(unit "") = 10000.0 "";
    parameter Real elmt_hidden_1_elmt_k9b(unit "") = 10000.0 "";
    Real elmt_reactant30 "";
    Real elmt_reactant29 "";
    Real elmt_product31 "";
    Real elmt_v24(unit = "") "NADH:ubiquinone oxidoreductase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v24_elmt_Keq(unit "") = 407.9 "";
    parameter Real elmt_v24_elmt_KmP1(unit "") = 9.9E-6 "";
    parameter Real elmt_v24_elmt_KmP2(unit "") = 5.9E-5 "";
    parameter Real elmt_v24_elmt_KmS2(unit "") = 2.6E-4 "";
    parameter Real elmt_v24_elmt_KmS1(unit "") = 9.2E-6 "";
    parameter Real elmt_v24_elmt_KiP2(unit "") = 9.8E-8 "";
    parameter Real elmt_v24_elmt_KiS1(unit "") = 2.1E-8 "";
    parameter Real elmt_v24_elmt_KcF(unit "") = 498.0 "";
    parameter Real elmt_v24_elmt_KcR(unit "") = 229.0 "";
    parameter Real elmt_v24_elmt_v24_Complex_I(unit "") = 3.3211E-4 "";
    Real elmt_reactant84 "";
    Real elmt_reactant85 "";
    Real elmt_product87 "";
    Real elmt_product86 "";
    Real elmt_v9(unit = "") "pyruvate dehydrogenase complex";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v9_elmt_Kiq(unit "") = 3.5E-5 "";
    parameter Real elmt_v9_elmt_Kir(unit "") = 3.6E-5 "";
    parameter Real elmt_v9_elmt_Kip(unit "") = 6.0E-5 "";
    parameter Real elmt_v9_elmt_KmA(unit "") = 2.5E-5 "";
    parameter Real elmt_v9_elmt_KmB(unit "") = 1.3E-5 "";
    parameter Real elmt_v9_elmt_Kic(unit "") = 1.8E-4 "";
    parameter Real elmt_v9_elmt_Kia(unit "") = 5.5E-4 "";
    parameter Real elmt_v9_elmt_Kib(unit "") = 3.0E-4 "";
    parameter Real elmt_v9_elmt_KmC(unit "") = 5.0E-5 "";
    parameter Real elmt_v9_elmt_KmR(unit "") = 6.9E-7 "";
    parameter Real elmt_v9_elmt_v9_PDC(unit "") = 3.8617E-7 "";
    parameter Real elmt_v9_elmt_KmP(unit "") = 5.9E-7 "";
    parameter Real elmt_v9_elmt_KcF(unit "") = 856.0 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_product37 "";
    Real elmt_reactant34 "";
    Real elmt_reactant35 "";
    Real elmt_product39 "";
    Real elmt_v22(unit = "") "aspartate/glutamate carrier";
    parameter Real elmt_v22_elmt_beta(unit "") = 1.0 "";
    parameter Real elmt_v22_elmt_v22_AGC(unit "") = 3.3211E-4 "";
    parameter Real elmt_v22_elmt_KiP1(unit "") = 1.8E-4 "";
    parameter Real elmt_v22_elmt_KiP2(unit "") = 0.0028 "";
    parameter Real elmt_v22_elmt_gamma(unit "") = 1.0 "";
    parameter Real elmt_v22_elmt_KiS2(unit "") = 0.0032 "";
    parameter Real elmt_v22_elmt_KiS1(unit "") = 8.0E-5 "";
    parameter Real elmt_v22_elmt_KcF(unit "") = 10.0 "";
    parameter Real elmt_v22_elmt_alpha(unit "") = 1.0 "";
    parameter Real elmt_v22_elmt_KcR(unit "") = 10.0 "";
    parameter Real elmt_v22_elmt_delta(unit "") = 1.0 "";
    Real elmt_product83 "";
    Real elmt_product82 "";
    Real elmt_reactant80 "";
    Real elmt_reactant81 "";
    Real elmt_v44(unit = "") "malate dehydrogenase (oxaloacetate-decarboxylating) (NADP+)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v44_elmt_Km(unit "") = 0.01295 "";
    parameter Real elmt_v44_elmt_Kcat(unit "") = 130.5 "";
    parameter Real elmt_v44_elmt_v44_MDH(unit "") = 3.8617E-7 "";
    Real elmt_product160 "";
    Real elmt_reactant159 "";
    Real elmt_product161 "";
    Real elmt_reactant158 "";
    Real elmt_v21(unit = "") "aspartate transaminase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v21_elmt_Keq(unit "") = 6.2 "";
    parameter Real elmt_v21_elmt_KmP1(unit "") = 4.0E-5 "";
    parameter Real elmt_v21_elmt_KmP2(unit "") = 0.004 "";
    parameter Real elmt_v21_elmt_KmS2(unit "") = 1.0E-4 "";
    parameter Real elmt_v21_elmt_KmS1(unit "") = 9.0E-4 "";
    parameter Real elmt_v21_elmt_KiP2(unit "") = 0.0083 "";
    parameter Real elmt_v21_elmt_v21_AspTA(unit "") = 3.8617E-7 "";
    parameter Real elmt_v21_elmt_KiS1(unit "") = 0.002 "";
    parameter Real elmt_v21_elmt_KcF(unit "") = 300.0 "";
    parameter Real elmt_v21_elmt_KcR(unit "") = 1000.0 "";
    Real elmt_product78 "";
    Real elmt_product79 "";
    Real elmt_reactant76 "";
    Real elmt_reactant77 "";
    Real elmt_v43(unit = "") "ATP/ADP carrier";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v43_elmt_K(unit "") = 0.005 "";
    parameter Real elmt_v43_elmt_v43_AAC(unit "") = 3.3211E-4 "";
    parameter Real elmt_v43_elmt_V(unit "") = 1.11667 "";
    Real elmt_reactant152 "";
    Real elmt_product153 "";
    Real elmt_v7(unit = "") "lactate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v7_elmt_k8b(unit "") = 0.143 "";
    parameter Real elmt_v7_elmt_k8f(unit "") = 1000.0 "";
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_product28 "";
    Real elmt_v20(unit = "") "alanine transaminase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v20_elmt_Keq(unit "") = 0.69 "";
    parameter Real elmt_v20_elmt_KmP1(unit "") = 0.032 "";
    parameter Real elmt_v20_elmt_KmP2(unit "") = 4.0E-4 "";
    parameter Real elmt_v20_elmt_KmS2(unit "") = 4.0E-4 "";
    parameter Real elmt_v20_elmt_KmS1(unit "") = 0.002 "";
    parameter Real elmt_v20_elmt_KiP2(unit "") = 0.012 "";
    parameter Real elmt_v20_elmt_v20_AlaTA(unit "") = 3.8617E-7 "";
    parameter Real elmt_v20_elmt_KiS1(unit "") = 0.0087 "";
    parameter Real elmt_v20_elmt_KcF(unit "") = 337.0 "";
    parameter Real elmt_v20_elmt_KcR(unit "") = 0.15 "";
    Real elmt_reactant72 "";
    Real elmt_product74 "";
    Real elmt_reactant73 "";
    Real elmt_product75 "";
    Real elmt_v42(unit = "") "citrate carrier";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v42_elmt_beta(unit "") = 1.0 "";
    parameter Real elmt_v42_elmt_v42_CIC(unit "") = 3.3211E-4 "";
    parameter Real elmt_v42_elmt_KiP1(unit "") = 3.3E-4 "";
    parameter Real elmt_v42_elmt_KiP2(unit "") = 4.18E-5 "";
    parameter Real elmt_v42_elmt_gamma(unit "") = 1.0 "";
    parameter Real elmt_v42_elmt_KiS2(unit "") = 4.4E-4 "";
    parameter Real elmt_v42_elmt_KiS1(unit "") = 1.3E-4 "";
    parameter Real elmt_v42_elmt_KcF(unit "") = 5.6 "";
    parameter Real elmt_v42_elmt_alpha(unit "") = 1.0 "";
    parameter Real elmt_v42_elmt_KcR(unit "") = 3.5 "";
    parameter Real elmt_v42_elmt_delta(unit "") = 1.0 "";
    Real elmt_reactant149 "";
    Real elmt_product151 "";
    Real elmt_reactant148 "";
    Real elmt_product150 "";
    Real elmt_v8(unit = "") "pyruvate carrier";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v8_elmt_v8_PYC(unit "") = 3.3211E-4 "";
    parameter Real elmt_v8_elmt_K(unit "") = 1.5E-7 "";
    parameter Real elmt_v8_elmt_V(unit "") = 1.0E-8 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_v41(unit = "") "cytosolic isocitrate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v41_elmt_phir2(unit "") = 2.9E-5 "";
    parameter Real elmt_v41_elmt_phi12(unit "") = 9.0E-8 "";
    parameter Real elmt_v41_elmt_phir3(unit "") = 2.5E-4 "";
    parameter Real elmt_v41_elmt_phir12(unit "") = 6.0E-12 "";
    parameter Real elmt_v41_elmt_phir23(unit "") = 9.4E-8 "";
    parameter Real elmt_v41_elmt_v41_IDHc(unit "") = 3.8617E-7 "";
    parameter Real elmt_v41_elmt_phir13(unit "") = 1.3E-10 "";
    parameter Real elmt_v41_elmt_phi2(unit "") = 9.6E-7 "";
    parameter Real elmt_v41_elmt_phi1(unit "") = 9.5E-8 "";
    parameter Real elmt_v41_elmt_phir123(unit "") = 4.6E-14 "";
    parameter Real elmt_v41_elmt_phi0(unit "") = 0.051 "";
    parameter Real elmt_v41_elmt_phir0(unit "") = 0.066 "";
    parameter Real elmt_v41_elmt_phir1(unit "") = 3.7E-7 "";
    Real elmt_product146 "";
    Real elmt_product147 "";
    Real elmt_reactant145 "";
    Real elmt_reactant144 "";
    Real elmt_v5(unit = "") "bisphosphoglycerate phosphotase (1/2)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v5_elmt_k5b(unit "") = 500.0 "";
    parameter Real elmt_v5_elmt_k5f(unit "") = 1000.0 "";
    Real elmt_reactant18 "";
    Real elmt_product20 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_v40(unit = "") "ATP/ADP carrier";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v40_elmt_v40_AAC(unit "") = 3.3211E-4 "";
    parameter Real elmt_v40_elmt_K(unit "") = 0.012 "";
    parameter Real elmt_v40_elmt_V(unit "") = 0.1667 "";
    Real elmt_reactant142 "";
    Real elmt_product143 "";
    Real elmt_v6(unit = "") "pyruvate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v6_elmt_K6ADP(unit "") = 3.0E-4 "";
    parameter Real elmt_v6_elmt_V6(unit "") = 0.01 "";
    parameter Real elmt_v6_elmt_K6PEP(unit "") = 2.0E-4 "";
    Real elmt_product23 "";
    Real elmt_product24 "";
    Real elmt_reactant21 "";
    Real elmt_reactant22 "";
    Real elmt_v29(unit = "") "aconitase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v29_elmt_Kp(unit "") = 1.1E-4 "";
    parameter Real elmt_v29_elmt_v29_ACO(unit "") = 3.8617E-7 "";
    parameter Real elmt_v29_elmt_KcF(unit "") = 20.47 "";
    parameter Real elmt_v29_elmt_Ks(unit "") = 5.0E-4 "";
    parameter Real elmt_v29_elmt_KcR(unit "") = 31.44 "";
    Real elmt_product103 "";
    Real elmt_reactant102 "";
    Real elmt_v28(unit = "") "ATPase complex";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v28_elmt_Km(unit "") = 0.0045 "";
    parameter Real elmt_v28_elmt_Ki(unit "") = 0.047 "";
    parameter Real elmt_v28_elmt_V(unit "") = 0.075 "";
    parameter Real elmt_v28_elmt_v28_Complex_V(unit "") = 0.0033211 "";
    Real elmt_product101 "";
    Real elmt_product100 "";
    Real elmt_reactant98 "";
    Real elmt_reactant99 "";
    Real elmt_v27(unit = "") "citrate synthase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v27_elmt_Keq(unit "") = 1.8E7 "";
    parameter Real elmt_v27_elmt_Ka(unit "") = 5.0E-6 "";
    parameter Real elmt_v27_elmt_Kid(unit "") = 0.0043 "";
    parameter Real elmt_v27_elmt_Kia(unit "") = 5.0E-6 "";
    parameter Real elmt_v27_elmt_Kib(unit "") = 4.5E-6 "";
    parameter Real elmt_v27_elmt_V(unit "") = 0.004833 "";
    parameter Real elmt_v27_elmt_v10_CS(unit "") = 3.8617E-7 "";
    parameter Real elmt_v27_elmt_Kb(unit "") = 4.5E-6 "";
    parameter Real elmt_v27_elmt_Kc(unit "") = 3.9E-5 "";
    Real elmt_reactant94 "";
    Real elmt_product96 "";
    Real elmt_reactant95 "";
    Real elmt_product97 "";
    Real elmt_v26(unit = "") "cytochrome c oxidase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v26_elmt_v26_Complex_IV(unit "") = 0.002325 "";
    parameter Real elmt_v26_elmt_KcF(unit "") = 9.35E-4 "";
    parameter Real elmt_v26_elmt_Ks(unit "") = 1.1E-4 "";
    Real elmt_product93 "";
    Real elmt_reactant92 "";
    Real elmt_v25(unit = "") "ubiquinol:cytochrome c oxidoreductase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v25_elmt_KmA(unit "") = 2.8E-5 "";
    parameter Real elmt_v25_elmt_k8(unit "") = 622.1 "";
    parameter Real elmt_v25_elmt_KmB(unit "") = 3.0E-6 "";
    parameter Real elmt_v25_elmt_KcF(unit "") = 426.8 "";
    parameter Real elmt_v25_elmt_Kb2(unit "") = 5.7E-6 "";
    parameter Real elmt_v25_elmt_Kq1(unit "") = 2.8E-6 "";
    parameter Real elmt_v25_elmt_Kq2(unit "") = 1.9E-6 "";
    parameter Real elmt_v25_elmt_v25_Complex_III(unit "") = 9.963E-9 "";
    parameter Real elmt_v25_elmt_Kb1(unit "") = 5.4E-6 "";
    Real elmt_reactant88 "";
    Real elmt_product91 "";
    Real elmt_reactant89 "";
    Real elmt_product90 "";
    Real elmt_v3(unit = "") "fructose-bisphosphate aldolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v3_elmt_k3f(unit "") = 1.0 "";
    parameter Real elmt_v3_elmt_k3b(unit "") = 0.05 "";
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_v4(unit = "") "glyceraldehyde 3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v4_elmt_K4NAD(unit "") = 0.001 "";
    parameter Real elmt_v4_elmt_V4(unit "") = 0.01 "";
    parameter Real elmt_v4_elmt_K4GAP(unit "") = 0.001 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_product15 "";
    Real elmt_reactant13 "";
    Real elmt_v1(unit = "") "glucokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v1_elmt_K1GLC(unit "") = 1.0E-4 "";
    parameter Real elmt_v1_elmt_K1ATP(unit "") = 6.3E-5 "";
    parameter Real elmt_v1_elmt_V1(unit "") = 5.0E-4 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product6 "";
    Real elmt_product5 "";
    Real elmt_v2(unit = "") "6-phosphofructokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v2_elmt_K2ATP(unit "") = 1.0E-5 "";
    parameter Real elmt_v2_elmt_V2(unit "") = 0.0015 "";
    parameter Real elmt_v2_elmt_K2(unit "") = 1.6E-9 "";
    parameter Real elmt_v2_elmt_k2(unit "") = 0.017 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant7 "";
    Real elmt_v35(unit = "") "glutathione reductase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v35_elmt_Keq(unit "") = 8.99 "";
    parameter Real elmt_v35_elmt_KmP1(unit "") = 1.08E-6 "";
    parameter Real elmt_v35_elmt_KmP2(unit "") = 2.42E-5 "";
    parameter Real elmt_v35_elmt_KmS2(unit "") = 1.2E-7 "";
    parameter Real elmt_v35_elmt_KiP1(unit "") = 7.53E-5 "";
    parameter Real elmt_v35_elmt_KmS1(unit "") = 3.9E-5 "";
    parameter Real elmt_v35_elmt_KiP2(unit "") = 1.19E-5 "";
    parameter Real elmt_v35_elmt_v35_ACD(unit "") = 3.3211E-5 "";
    parameter Real elmt_v35_elmt_KcR(unit "") = 0.3 "";
    parameter Real elmt_v35_elmt_KiS2(unit "") = 2.4E-7 "";
    parameter Real elmt_v35_elmt_KiS1(unit "") = 7.6E-5 "";
    parameter Real elmt_v35_elmt_KcF(unit "") = 2.18 "";
    Real elmt_product126 "";
    Real elmt_reactant125 "";
    Real elmt_reactant124 "";
    Real elmt_product127 "";
    Real elmt_v12(unit = "") "isocitrate dehydrogenase (NAD+) (alpha/beta/gamma)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v12_elmt_v12_IDHa(unit "") = 3.8617E-7 "";
    parameter Real elmt_v12_elmt_e(unit "") = 6.4E-4 "";
    parameter Real elmt_v12_elmt_KcF(unit "") = 105.0 "";
    parameter Real elmt_v12_elmt_f(unit "") = 3.6E-4 "";
    parameter Real elmt_v12_elmt_c(unit "") = 2.3E-4 "";
    parameter Real elmt_v12_elmt_d(unit "") = 7.8E-5 "";
    parameter Real elmt_v12_elmt_b(unit "") = 29.6 "";
    Real elmt_reactant47 "";
    Real elmt_product49 "";
    Real elmt_product48 "";
    Real elmt_reactant46 "";
    Real elmt_v34(unit = "") "ETF:Q oxidoreductase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v34_elmt_Keq(unit "") = 0.66 "";
    parameter Real elmt_v34_elmt_KmP1(unit "") = 3.2E-7 "";
    parameter Real elmt_v34_elmt_KmP2(unit "") = 4.2E-9 "";
    parameter Real elmt_v34_elmt_KmS2(unit "") = 3.9E-7 "";
    parameter Real elmt_v34_elmt_KmS1(unit "") = 3.1E-7 "";
    parameter Real elmt_v34_elmt_KiP2(unit "") = 3.0E-7 "";
    parameter Real elmt_v34_elmt_KiS1(unit "") = 3.1E-7 "";
    parameter Real elmt_v34_elmt_KcF(unit "") = 78.0 "";
    parameter Real elmt_v34_elmt_v34_ETF_QO(unit "") = 3.3211E-5 "";
    parameter Real elmt_v34_elmt_KcR(unit "") = 101.0 "";
    Real elmt_reactant121 "";
    Real elmt_reactant120 "";
    Real elmt_product123 "";
    Real elmt_product122 "";
    Real elmt_v11(unit = "") "aconitase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v11_elmt_Kp(unit "") = 1.1E-4 "";
    parameter Real elmt_v11_elmt_v11_ACO(unit "") = 3.8617E-7 "";
    parameter Real elmt_v11_elmt_KcF(unit "") = 20.47 "";
    parameter Real elmt_v11_elmt_Ks(unit "") = 5.0E-4 "";
    parameter Real elmt_v11_elmt_KcR(unit "") = 31.44 "";
    Real elmt_product45 "";
    Real elmt_reactant44 "";
    Real elmt_v33(unit = "") "citrate carrier";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v33_elmt_beta(unit "") = 1.0 "";
    parameter Real elmt_v33_elmt_KiP1(unit "") = 3.3E-4 "";
    parameter Real elmt_v33_elmt_KiP2(unit "") = 4.18E-5 "";
    parameter Real elmt_v33_elmt_gamma(unit "") = 1.0 "";
    parameter Real elmt_v33_elmt_KiS2(unit "") = 4.4E-4 "";
    parameter Real elmt_v33_elmt_v33_CIC(unit "") = 3.3211E-4 "";
    parameter Real elmt_v33_elmt_KiS1(unit "") = 1.3E-4 "";
    parameter Real elmt_v33_elmt_KcF(unit "") = 5.6 "";
    parameter Real elmt_v33_elmt_alpha(unit "") = 1.0 "";
    parameter Real elmt_v33_elmt_KcR(unit "") = 3.5 "";
    parameter Real elmt_v33_elmt_delta(unit "") = 1.0 "";
    Real elmt_reactant117 "";
    Real elmt_reactant116 "";
    Real elmt_product119 "";
    Real elmt_product118 "";
    Real elmt_v10(unit = "") "citrate synthase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v10_elmt_Ka(unit "") = 1.18E-5 "";
    parameter Real elmt_v10_elmt_Kia(unit "") = 1.0E-5 "";
    parameter Real elmt_v10_elmt_Kib(unit "") = 4.0E-6 "";
    parameter Real elmt_v10_elmt_V(unit "") = 0.005267 "";
    parameter Real elmt_v10_elmt_v10_CS(unit "") = 3.8617E-7 "";
    parameter Real elmt_v10_elmt_Kb(unit "") = 4.8E-6 "";
    Real elmt_reactant40 "";
    Real elmt_reactant41 "";
    Real elmt_product43 "";
    Real elmt_product42 "";
    Real elmt_v32(unit = "") "aspartate transaminase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v32_elmt_Keq(unit "") = 6.2 "";
    parameter Real elmt_v32_elmt_v32_AspTA(unit "") = 3.8617E-7 "";
    parameter Real elmt_v32_elmt_KmP1(unit "") = 4.0E-5 "";
    parameter Real elmt_v32_elmt_KmP2(unit "") = 0.004 "";
    parameter Real elmt_v32_elmt_KmS2(unit "") = 1.0E-4 "";
    parameter Real elmt_v32_elmt_KmS1(unit "") = 9.0E-4 "";
    parameter Real elmt_v32_elmt_KiP2(unit "") = 0.0083 "";
    parameter Real elmt_v32_elmt_KiS1(unit "") = 0.002 "";
    parameter Real elmt_v32_elmt_KcF(unit "") = 300.0 "";
    parameter Real elmt_v32_elmt_KcR(unit "") = 1000.0 "";
    Real elmt_product115 "";
    Real elmt_product114 "";
    Real elmt_reactant113 "";
    Real elmt_reactant112 "";
    Real elmt_v31(unit = "") "malate dehydrogenase (cytosol)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v31_elmt_k1(unit "") = 3.4E7 "";
    parameter Real elmt_v31_elmt_kminus4(unit "") = 260000.0 "";
    parameter Real elmt_v31_elmt_kminus3(unit "") = 570000.0 "";
    parameter Real elmt_v31_elmt_kminus2(unit "") = 1400.0 "";
    parameter Real elmt_v31_elmt_kminus1(unit "") = 26.0 "";
    parameter Real elmt_v31_elmt_v31_MDH(unit "") = 3.8617E-7 "";
    parameter Real elmt_v31_elmt_k4(unit "") = 214.0 "";
    parameter Real elmt_v31_elmt_k2(unit "") = 3.5E7 "";
    parameter Real elmt_v31_elmt_k3(unit "") = 4650.0 "";
    Real elmt_reactant109 "";
    Real elmt_product111 "";
    Real elmt_reactant108 "";
    Real elmt_product110 "";
    Real elmt_v30(unit = "") "oxoglutarate carrier";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v30_elmt_beta(unit "") = 1.0 "";
    parameter Real elmt_v30_elmt_KiP1(unit "") = 0.0014 "";
    parameter Real elmt_v30_elmt_KiP2(unit "") = 1.7E-4 "";
    parameter Real elmt_v30_elmt_gamma(unit "") = 1.0 "";
    parameter Real elmt_v30_elmt_KiS2(unit "") = 7.0E-4 "";
    parameter Real elmt_v30_elmt_KiS1(unit "") = 3.0E-4 "";
    parameter Real elmt_v30_elmt_KcF(unit "") = 3.675 "";
    parameter Real elmt_v30_elmt_alpha(unit "") = 1.0 "";
    parameter Real elmt_v30_elmt_v30_OGC(unit "") = 3.3211E-4 "";
    parameter Real elmt_v30_elmt_KcR(unit "") = 4.83 "";
    parameter Real elmt_v30_elmt_delta(unit "") = 1.0 "";
    Real elmt_reactant105 "";
    Real elmt_reactant104 "";
    Real elmt_product106 "";
    Real elmt_product107 "";
    Real elmt_LACflow(unit = "") "";
    Real elmt_reactant1 "";
    Real elmt_GLCflow(unit = "") "";
    parameter Real elmt_GLCflow_elmt_Glc_F(unit "") = 64.941 "";
    Real elmt_product0 "";
    Real elmt_v18(unit = "") "malate dehydrogenase (mitochondrion)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v18_elmt_KmP1(unit "") = 0.0016 "";
    parameter Real elmt_v18_elmt_KmP2(unit "") = 1.7E-4 "";
    parameter Real elmt_v18_elmt_KmS2(unit "") = 1.1E-4 "";
    parameter Real elmt_v18_elmt_KiP1(unit "") = 0.0071 "";
    parameter Real elmt_v18_elmt_KmS1(unit "") = 7.2E-5 "";
    parameter Real elmt_v18_elmt_KiP2(unit "") = 0.0019 "";
    parameter Real elmt_v18_elmt_KiS2(unit "") = 1.0E-4 "";
    parameter Real elmt_v18_elmt_v18_MDH(unit "") = 3.8617E-7 "";
    parameter Real elmt_v18_elmt_KiS1(unit "") = 1.1E-5 "";
    parameter Real elmt_v18_elmt_KcF(unit "") = 0.39 "";
    parameter Real elmt_v18_elmt_KcR(unit "") = 0.04 "";
    Real elmt_product71 "";
    Real elmt_reactant69 "";
    Real elmt_product70 "";
    Real elmt_reactant68 "";
    Real elmt_v17(unit = "") "fumarase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v17_elmt_Kp(unit "") = 2.5E-5 "";
    parameter Real elmt_v17_elmt_v17_FM(unit "") = 3.8617E-7 "";
    parameter Real elmt_v17_elmt_KcF(unit "") = 800.0 "";
    parameter Real elmt_v17_elmt_Ks(unit "") = 5.0E-6 "";
    parameter Real elmt_v17_elmt_KcR(unit "") = 900.0 "";
    Real elmt_product67 "";
    Real elmt_reactant66 "";
    Real elmt_v39(unit = "") "malate dehydrogenase (oxaloacetate-decarboxylating) (NADP+)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v39_elmt_v39_MDH(unit "") = 3.8617E-7 "";
    parameter Real elmt_v39_elmt_Knadp(unit "") = 0.011 "";
    parameter Real elmt_v39_elmt_Kmal(unit "") = 1.25E-4 "";
    parameter Real elmt_v39_elmt_Kcat(unit "") = 0.333 "";
    Real elmt_reactant154 "";
    Real elmt_product157 "";
    Real elmt_product156 "";
    Real elmt_reactant155 "";
    Real elmt_v16(unit = "") "succinate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v16_elmt_Keq(unit "") = 0.037 "";
    parameter Real elmt_v16_elmt_KmP1(unit "") = 3.0E-7 "";
    parameter Real elmt_v16_elmt_KmP2(unit "") = 1.5E-6 "";
    parameter Real elmt_v16_elmt_KmS2(unit "") = 6.9E-5 "";
    parameter Real elmt_v16_elmt_KmS1(unit "") = 3.0E-5 "";
    parameter Real elmt_v16_elmt_KiP2(unit "") = 5.6E-6 "";
    parameter Real elmt_v16_elmt_v16_SDH(unit "") = 9.9211E-5 "";
    parameter Real elmt_v16_elmt_KiS1(unit "") = 4.1E-6 "";
    parameter Real elmt_v16_elmt_KcF(unit "") = 69.3 "";
    parameter Real elmt_v16_elmt_KcR(unit "") = 1.73 "";
    Real elmt_reactant62 "";
    Real elmt_reactant63 "";
    Real elmt_product65 "";
    Real elmt_product64 "";
    Real elmt_v38(unit = "") "glycerol-3-phosphate dehydrogenase (NAD+ dependent)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v38_elmt_v38_GUT2P(unit "") = 0.001 "";
    parameter Real elmt_v38_elmt_K(unit "") = 34.0 "";
    parameter Real elmt_v38_elmt_V(unit "") = 0.0399 "";
    Real elmt_product141 "";
    Real elmt_reactant139 "";
    Real elmt_reactant138 "";
    Real elmt_product140 "";
    Real elmt_v15(unit = "") "succinyl-CoA synthetase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v15_elmt_Keq(unit "") = 8.375 "";
    parameter Real elmt_v15_elmt_KmP2(unit "") = 6.0E-4 "";
    parameter Real elmt_v15_elmt_Kiq(unit "") = 5.0E-6 "";
    parameter Real elmt_v15_elmt_Kir(unit "") = 6.7E-6 "";
    parameter Real elmt_v15_elmt_Kip(unit "") = 0.07 "";
    parameter Real elmt_v15_elmt_KmA(unit "") = 5.0E-6 "";
    parameter Real elmt_v15_elmt_KmB(unit "") = 3.5E-5 "";
    parameter Real elmt_v15_elmt_Kc1(unit "") = 100.0 "";
    parameter Real elmt_v15_elmt_Kc2(unit "") = 100.0 "";
    parameter Real elmt_v15_elmt_v15_SCS(unit "") = 3.8617E-7 "";
    parameter Real elmt_v15_elmt_Kic(unit "") = 3.0E-5 "";
    parameter Real elmt_v15_elmt_KmC2(unit "") = 4.5E-4 "";
    parameter Real elmt_v15_elmt_Kia(unit "") = 4.0E-4 "";
    parameter Real elmt_v15_elmt_Kib(unit "") = 2.0E-5 "";
    parameter Real elmt_v15_elmt_KmC(unit "") = 4.5E-4 "";
    parameter Real elmt_v15_elmt_KmQ(unit "") = 7.5E-6 "";
    parameter Real elmt_v15_elmt_KmP(unit "") = 6.0E-4 "";
    Real elmt_product61 "";
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_product59 "";
    Real elmt_reactant56 "";
    Real elmt_reactant57 "";
    Real elmt_v37(unit = "") "glycerol-3-phosphate dehydrogenase (FAD dependent)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v37_elmt_K(unit "") = 3.4E-5 "";
    parameter Real elmt_v37_elmt_v37_GUT2P(unit "") = 0.001 "";
    parameter Real elmt_v37_elmt_V(unit "") = 3.99E-8 "";
    Real elmt_product137 "";
    Real elmt_product136 "";
    Real elmt_reactant135 "";
    Real elmt_reactant134 "";
    Real elmt_v14(unit = "") "oxoglutarate dehydrogenase complex";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v14_elmt_Kiq(unit "") = 8.1E-5 "";
    parameter Real elmt_v14_elmt_Kir(unit "") = 2.5E-5 "";
    parameter Real elmt_v14_elmt_Kip(unit "") = 1.1E-6 "";
    parameter Real elmt_v14_elmt_KmA(unit "") = 2.2E-4 "";
    parameter Real elmt_v14_elmt_KmB(unit "") = 2.5E-5 "";
    parameter Real elmt_v14_elmt_v14_OGDC(unit "") = 3.8617E-7 "";
    parameter Real elmt_v14_elmt_Kic(unit "") = 1.0E-4 "";
    parameter Real elmt_v14_elmt_Kia(unit "") = 7.2E-4 "";
    parameter Real elmt_v14_elmt_Kib(unit "") = 7.4E-4 "";
    parameter Real elmt_v14_elmt_KmC(unit "") = 5.0E-5 "";
    parameter Real elmt_v14_elmt_KmR(unit "") = 6.0E-4 "";
    parameter Real elmt_v14_elmt_KmP(unit "") = 3.0E-4 "";
    parameter Real elmt_v14_elmt_KcF(unit "") = 177.0 "";
    Real elmt_reactant50 "";
    Real elmt_reactant51 "";
    Real elmt_reactant52 "";
    Real elmt_product55 "";
    Real elmt_product54 "";
    Real elmt_product53 "";
    Real elmt_v36(unit = "") "pyruvate decarboxylase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v36_elmt_Keq(unit "") = 9.0 "";
    parameter Real elmt_v36_elmt_Kiq(unit "") = 1.9E-4 "";
    parameter Real elmt_v36_elmt_Kir(unit "") = 2.4E-4 "";
    parameter Real elmt_v36_elmt_Kip(unit "") = 0.0079 "";
    parameter Real elmt_v36_elmt_KmA(unit "") = 1.1E-4 "";
    parameter Real elmt_v36_elmt_KmB(unit "") = 0.00163 "";
    parameter Real elmt_v36_elmt_KcR(unit "") = 20.0 "";
    parameter Real elmt_v36_elmt_Kic(unit "") = 1.3E-4 "";
    parameter Real elmt_v36_elmt_Kia(unit "") = 1.5E-4 "";
    parameter Real elmt_v36_elmt_Kib(unit "") = 0.0016 "";
    parameter Real elmt_v36_elmt_KmC(unit "") = 3.7E-4 "";
    parameter Real elmt_v36_elmt_KmQ(unit "") = 2.4E-4 "";
    parameter Real elmt_v36_elmt_KmR(unit "") = 5.1E-5 "";
    parameter Real elmt_v36_elmt_KmP(unit "") = 0.016 "";
    parameter Real elmt_v36_elmt_KcF(unit "") = 200.0 "";
    parameter Real elmt_v36_elmt_v36_PC(unit "") = 3.8617E-7 "";
    Real elmt_reactant130 "";
    Real elmt_product131 "";
    Real elmt_product133 "";
    Real elmt_product132 "";
    Real elmt_reactant129 "";
    Real elmt_reactant128 "";
    Real elmt_GAPflow(unit = "") "";
    Real elmt_reactant2 "";


    initial equation
        elmt_product74 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_product71 = 1.0;
        elmt_product78 = 1.0;
        elmt_reactant109 = 1.0;
        elmt_product75 = 1.0;
        elmt_reactant108 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_reactant117 = 1.0;
        elmt_reactant116 = 1.0;
        elmt_reactant113 = 1.0;
        elmt_reactant112 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product83 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product82 = 1.0;
        elmt_product87 = 1.0;
        elmt_product86 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_reactant121 = 1.0;
        elmt_product101 = 1.0;
        elmt_reactant120 = 1.0;
        elmt_product103 = 1.0;
        elmt_product100 = 1.0;
        elmt_reactant129 = 1.0;
        elmt_reactant128 = 1.0;
        elmt_product79 = 1.0;
        elmt_reactant125 = 1.0;
        elmt_product106 = 1.0;
        elmt_reactant124 = 1.0;
        elmt_product107 = 1.0;
        elmt_product96 = 1.0;
        elmt_product93 = 1.0;
        elmt_product12 = 2.0;
        elmt_product10 = 1.0;
        elmt_product97 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_product151 = 1.0;
        elmt_product150 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_product91 = 2.0;
        elmt_product90 = 1.0;
        elmt_product157 = 1.0;
        elmt_product156 = 1.0;
        elmt_product153 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product6 = 1.0;
        elmt_product23 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_product160 = 1.0;
        elmt_product0 = 1.0;
        elmt_product161 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant105 = 1.0;
        elmt_reactant104 = 1.0;
        elmt_product19 = 1.0;
        elmt_reactant102 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_reactant85 = 1.0;
        elmt_reactant80 = 1.0;
        elmt_product33 = 1.0;
        elmt_reactant81 = 1.0;
        elmt_product31 = 2.0;
        elmt_reactant88 = 1.0;
        elmt_reactant89 = 2.0;
        elmt_reactant154 = 1.0;
        elmt_reactant152 = 1.0;
        elmt_product137 = 1.0;
        elmt_product136 = 1.0;
        elmt_product131 = 1.0;
        elmt_product133 = 1.0;
        elmt_product132 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant159 = 1.0;
        elmt_product24 = 1.0;
        elmt_reactant158 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant155 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_reactant95 = 1.0;
        elmt_product45 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_product43 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product140 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant98 = 1.0;
        elmt_reactant99 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product146 = 1.0;
        elmt_product147 = 1.0;
        elmt_product141 = 1.0;
        elmt_product143 = 1.0;
        elmt_product38 = 1.0;
        elmt_product37 = 1.0;
        elmt_product39 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product55 = 1.0;
        elmt_product54 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_product115 = 1.0;
        elmt_reactant130 = 1.0;
        elmt_product114 = 1.0;
        elmt_product111 = 1.0;
        elmt_product110 = 1.0;
        elmt_product49 = 1.0;
        elmt_product48 = 1.0;
        elmt_reactant139 = 1.0;
        elmt_reactant138 = 1.0;
        elmt_reactant135 = 1.0;
        elmt_product119 = 1.0;
        elmt_reactant134 = 1.0;
        elmt_product118 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product60 = 1.0;
        elmt_product67 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product64 = 1.0;
        elmt_reactant76 = 1.0;
        elmt_reactant77 = 1.0;
        elmt_reactant142 = 1.0;
        elmt_product123 = 1.0;
        elmt_product126 = 1.0;
        elmt_product122 = 1.0;
        elmt_product59 = 1.0;
        elmt_reactant149 = 1.0;
        elmt_reactant148 = 1.0;
        elmt_product127 = 1.0;
        elmt_reactant145 = 1.0;
        elmt_reactant144 = 1.0;


    equation
        elmt_hidden_1 = (elmt_CYTOPLASM * ((elmt_hidden_1_elmt_k9f * elmt_AMP * elmt_ATP_cyt) - (elmt_hidden_1_elmt_k9b * Functions.pow(elmt_ADP_cyt, 2.0))));
        elmt_v24 = (elmt_MATRIX * ((elmt_v24_elmt_KcF * elmt_v24_elmt_KcR * elmt_v24_elmt_v24_Complex_I * ((elmt_NADH * elmt_Q) - ((elmt_NAD_p * elmt_QH2) / elmt_v24_elmt_Keq))) / ((elmt_v24_elmt_KcR * elmt_v24_elmt_KmS2 * elmt_NADH) + (elmt_v24_elmt_KcR * elmt_v24_elmt_KmS1 * elmt_Q) + ((elmt_v24_elmt_KcF * elmt_v24_elmt_KmP2 * elmt_NAD_p) / elmt_v24_elmt_Keq) + ((elmt_v24_elmt_KcF * elmt_v24_elmt_KmP1 * elmt_QH2) / elmt_v24_elmt_Keq) + (elmt_v24_elmt_KcR * elmt_NADH * elmt_Q) + ((elmt_v24_elmt_KcF * elmt_v24_elmt_KmP2 * elmt_NADH * elmt_NAD_p) / (elmt_v24_elmt_Keq * elmt_v24_elmt_KiS1)) + ((elmt_v24_elmt_KcF * elmt_NAD_p * elmt_QH2) / elmt_v24_elmt_Keq) + ((elmt_v24_elmt_KcR * elmt_v24_elmt_KmS1 * elmt_Q * elmt_QH2) / elmt_v24_elmt_KiP2))));
        elmt_v9 = (elmt_MATRIX * ((elmt_v9_elmt_KcF * elmt_v9_elmt_v9_PDC * elmt_Pyr * elmt_CoA * elmt_NAD_p) / ((elmt_v9_elmt_KmC * elmt_Pyr * elmt_CoA) + (elmt_v9_elmt_KmB * elmt_Pyr * elmt_NAD_p) + (elmt_v9_elmt_KmA * elmt_CoA * elmt_NAD_p) + (elmt_Pyr * elmt_CoA * elmt_NAD_p) + (((((elmt_v9_elmt_KmA * elmt_v9_elmt_KmP * elmt_v9_elmt_Kib * elmt_v9_elmt_Kic) / elmt_v9_elmt_KmR) / elmt_v9_elmt_Kip) / elmt_v9_elmt_Kiq) * elmt_Acetyl_CoA * elmt_NADH) + ((elmt_v9_elmt_KmC / elmt_v9_elmt_Kir) * elmt_Pyr * elmt_CoA * elmt_NADH) + ((elmt_v9_elmt_KmB / elmt_v9_elmt_Kiq) * elmt_Pyr * elmt_NAD_p * elmt_Acetyl_CoA) + ((((((elmt_v9_elmt_KmA * elmt_v9_elmt_KmP * elmt_v9_elmt_Kib * elmt_v9_elmt_Kic) / elmt_v9_elmt_KmR) / elmt_v9_elmt_Kip) / elmt_v9_elmt_Kia) / elmt_v9_elmt_Kiq) * elmt_Pyr * elmt_Acetyl_CoA * elmt_NADH))));
        elmt_v22 = (elmt_MATRIX * ((((((((elmt_Asp * elmt_Glu_cyt) / elmt_v22_elmt_alpha) / elmt_v22_elmt_KiS1) / elmt_v22_elmt_KiS2) * elmt_v22_elmt_KcF) - (((((elmt_Glu * elmt_Asp_cyt) / elmt_v22_elmt_beta) / elmt_v22_elmt_KiP1) / elmt_v22_elmt_KiP2) * elmt_v22_elmt_KcR)) * elmt_v22_elmt_v22_AGC) / (1.0 + (elmt_Asp / elmt_v22_elmt_KiS1) + (elmt_Glu_cyt / elmt_v22_elmt_KiS2) + (elmt_Glu / elmt_v22_elmt_KiP1) + (elmt_Asp_cyt / elmt_v22_elmt_KiP2) + ((((elmt_Asp * elmt_Glu_cyt) / elmt_v22_elmt_alpha) / elmt_v22_elmt_KiS1) / elmt_v22_elmt_KiS2) + ((((elmt_Glu * elmt_Asp_cyt) / elmt_v22_elmt_beta) / elmt_v22_elmt_KiP1) / elmt_v22_elmt_KiP2) + ((((elmt_Glu_cyt * elmt_Asp_cyt) / elmt_v22_elmt_gamma) / elmt_v22_elmt_KiS2) / elmt_v22_elmt_KiP2) + ((((elmt_Asp * elmt_Glu) / elmt_v22_elmt_delta) / elmt_v22_elmt_KiS1) / elmt_v22_elmt_KiP1))));
        elmt_v44 = (elmt_MATRIX * ((elmt_v44_elmt_v44_MDH * elmt_v44_elmt_Kcat * elmt_Mal) / (elmt_v44_elmt_Km + elmt_Mal)));
        elmt_v21 = (elmt_MATRIX * ((elmt_v21_elmt_KcF * elmt_v21_elmt_KcR * elmt_v21_elmt_v21_AspTA * ((elmt_OXA * elmt_Glu) - ((elmt_Asp * elmt_OG) / elmt_v21_elmt_Keq))) / ((elmt_v21_elmt_KcR * elmt_v21_elmt_KmS2 * elmt_OXA) + (elmt_v21_elmt_KcR * elmt_v21_elmt_KmS1 * elmt_Glu) + ((elmt_v21_elmt_KcF * elmt_v21_elmt_KmP2 * elmt_Asp) / elmt_v21_elmt_Keq) + ((elmt_v21_elmt_KcF * elmt_v21_elmt_KmP1 * elmt_OG) / elmt_v21_elmt_Keq) + (elmt_v21_elmt_KcR * elmt_OXA * elmt_Glu) + ((elmt_v21_elmt_KcF * elmt_v21_elmt_KmP2 * elmt_OXA * elmt_Asp) / (elmt_v21_elmt_Keq * elmt_v21_elmt_KiS1)) + ((elmt_v21_elmt_KcF * elmt_Asp * elmt_OG) / elmt_v21_elmt_Keq) + ((elmt_v21_elmt_KcR * elmt_v21_elmt_KmS1 * elmt_Glu * elmt_OG) / elmt_v21_elmt_KiP2))));
        elmt_v43 = (elmt_MATRIX * ((elmt_v43_elmt_V * elmt_v43_elmt_v43_AAC * elmt_ATP) / (elmt_v43_elmt_K + elmt_ATP)));
        elmt_v7 = (elmt_CYTOPLASM * ((elmt_v7_elmt_k8f * elmt_NADH_cyt * elmt_PYR_cyt) - (elmt_v7_elmt_k8b * elmt_NAD * elmt_LAC)));
        elmt_v20 = (elmt_MATRIX * ((elmt_v20_elmt_KcF * elmt_v20_elmt_KcR * elmt_v20_elmt_v20_AlaTA * ((elmt_Ala * elmt_OG) - ((elmt_Glu * elmt_Pyr) / elmt_v20_elmt_Keq))) / ((elmt_v20_elmt_KcR * elmt_v20_elmt_KmS2 * elmt_Ala) + (elmt_v20_elmt_KcR * elmt_v20_elmt_KmS1 * elmt_OG) + ((elmt_v20_elmt_KcF * elmt_v20_elmt_KmP2 * elmt_Glu) / elmt_v20_elmt_Keq) + ((elmt_v20_elmt_KcF * elmt_v20_elmt_KmP1 * elmt_Pyr) / elmt_v20_elmt_Keq) + (elmt_v20_elmt_KcR * elmt_Ala * elmt_OG) + ((elmt_v20_elmt_KcF * elmt_v20_elmt_KmP2 * elmt_Ala * elmt_Glu) / (elmt_v20_elmt_Keq * elmt_v20_elmt_KiS1)) + ((elmt_v20_elmt_KcF * elmt_Glu * elmt_Pyr) / elmt_v20_elmt_Keq) + ((elmt_v20_elmt_KcR * elmt_v20_elmt_KmS1 * elmt_OG * elmt_Pyr) / elmt_v20_elmt_KiP2))));
        elmt_v42 = (elmt_MATRIX * ((((((((elmt_IsoCitcyt * elmt_Mal) / elmt_v42_elmt_alpha) / elmt_v42_elmt_KiS1) / elmt_v42_elmt_KiS2) * elmt_v42_elmt_KcF) - (((((elmt_Mal_cyt * elmt_IsoCit) / elmt_v42_elmt_beta) / elmt_v42_elmt_KiP1) / elmt_v42_elmt_KiP2) * elmt_v42_elmt_KcR)) * elmt_v42_elmt_v42_CIC) / (1.0 + (elmt_IsoCitcyt / elmt_v42_elmt_KiS1) + (elmt_Mal / elmt_v42_elmt_KiS2) + (elmt_Mal_cyt / elmt_v42_elmt_KiP1) + (elmt_IsoCit / elmt_v42_elmt_KiP2) + ((((elmt_IsoCitcyt * elmt_Mal) / elmt_v42_elmt_alpha) / elmt_v42_elmt_KiS1) / elmt_v42_elmt_KiS2) + ((((elmt_Mal_cyt * elmt_IsoCit) / elmt_v42_elmt_beta) / elmt_v42_elmt_KiP1) / elmt_v42_elmt_KiP2) + ((((elmt_Mal * elmt_IsoCit) / elmt_v42_elmt_gamma) / elmt_v42_elmt_KiS2) / elmt_v42_elmt_KiP2) + ((((elmt_IsoCitcyt * elmt_Mal_cyt) / elmt_v42_elmt_delta) / elmt_v42_elmt_KiS1) / elmt_v42_elmt_KiP1))));
        elmt_v8 = (elmt_MATRIX * ((elmt_v8_elmt_V * elmt_PYR_cyt * elmt_v8_elmt_v8_PYC) / (elmt_v8_elmt_K + elmt_PYR_cyt)));
        elmt_v41 = (elmt_CYTOPLASM * elmt_v41_elmt_v41_IDHc * (((elmt_IsoCitcyt * elmt_NADP_cyt) / ((elmt_v41_elmt_phi0 * elmt_IsoCitcyt * elmt_NADP_cyt) + (elmt_v41_elmt_phi1 * elmt_NADP_cyt) + (elmt_v41_elmt_phi2 * elmt_IsoCitcyt) + elmt_v41_elmt_phi12)) - ((elmt_OG_cyt * elmt_NADPH_cyt * elmt_CO2) / ((elmt_v41_elmt_phir0 * elmt_OG_cyt * elmt_NADPH_cyt * elmt_CO2) + (elmt_v41_elmt_phir1 * elmt_NADPH_cyt * elmt_CO2) + (elmt_v41_elmt_phir2 * elmt_OG_cyt * elmt_CO2) + (elmt_v41_elmt_phir3 * elmt_OG_cyt * elmt_NADPH_cyt) + (elmt_v41_elmt_phir12 * elmt_CO2) + (elmt_v41_elmt_phir13 * elmt_NADPH_cyt) + (elmt_v41_elmt_phir23 * elmt_OG_cyt) + elmt_v41_elmt_phir123))));
        elmt_v5 = (elmt_CYTOPLASM * ((elmt_v5_elmt_k5f * elmt_DPG * elmt_ADP_cyt) - (elmt_v5_elmt_k5b * elmt_PEP * elmt_ATP_cyt)));
        elmt_v40 = (elmt_MATRIX * ((elmt_v40_elmt_V * elmt_v40_elmt_v40_AAC * elmt_ADP_cyt) / (elmt_v40_elmt_K + elmt_ADP_cyt)));
        elmt_v6 = (elmt_CYTOPLASM * ((elmt_v6_elmt_V6 * elmt_ADP_cyt * elmt_PEP) / ((elmt_v6_elmt_K6PEP + elmt_PEP) * (elmt_v6_elmt_K6ADP + elmt_ADP_cyt))));
        elmt_v29 = (elmt_CYTOPLASM * ((((elmt_v29_elmt_KcF * elmt_v29_elmt_Kp * elmt_Cit_cyt) - (elmt_v29_elmt_KcR * elmt_v29_elmt_Ks * elmt_IsoCitcyt)) * elmt_v29_elmt_v29_ACO) / ((elmt_v29_elmt_Ks * elmt_IsoCitcyt) + (elmt_v29_elmt_Kp * elmt_Cit_cyt) + (elmt_v29_elmt_Ks * elmt_v29_elmt_Kp))));
        elmt_v28 = ((elmt_MATRIX * elmt_v28_elmt_v28_Complex_V * elmt_v28_elmt_V * elmt_ADP) / (elmt_v28_elmt_Km + elmt_ADP + ((elmt_ADP * elmt_ADP) / elmt_v28_elmt_Ki)));
        elmt_v27 = ((elmt_CYTOPLASM * elmt_v27_elmt_Kid * elmt_v27_elmt_Kc * ((elmt_v27_elmt_V * elmt_Acetyl_CoA_cyt * elmt_OXA_cyt * elmt_v27_elmt_v10_CS) / ((elmt_Acetyl_CoA_cyt * elmt_OXA_cyt) + (elmt_v27_elmt_Ka * elmt_OXA_cyt) + (elmt_v27_elmt_Kb * elmt_Acetyl_CoA_cyt) + (elmt_v27_elmt_Kia * elmt_v27_elmt_Kib)))) / (elmt_v27_elmt_Keq * elmt_v27_elmt_Kia * elmt_v27_elmt_Kb));
        elmt_v26 = (elmt_MT_IMS * ((elmt_v26_elmt_KcF * elmt_v26_elmt_v26_Complex_IV * elmt_Cytc2p) / (elmt_v26_elmt_Ks + elmt_Cytc2p)));
        elmt_v25 = (elmt_MT_IMS * ((elmt_v25_elmt_KcF * elmt_v25_elmt_v25_Complex_III * elmt_QH2 * elmt_Cytc3p) / ((((elmt_v25_elmt_KmA * elmt_v25_elmt_Kq2 * elmt_v25_elmt_Kb2) + (elmt_v25_elmt_KmA * elmt_v25_elmt_Kq2 * elmt_Cytc3p) + ((elmt_v25_elmt_KcF / elmt_v25_elmt_k8) * elmt_v25_elmt_Kq1 * elmt_QH2 * elmt_v25_elmt_Kb1) + ((elmt_v25_elmt_KcF / elmt_v25_elmt_k8) * elmt_v25_elmt_Kq1 * elmt_QH2 * elmt_Cytc3p)) * elmt_Cytc2p) + (elmt_v25_elmt_KmA * elmt_Cytc3p) + (elmt_v25_elmt_KmB * elmt_QH2) + (elmt_QH2 * elmt_Cytc3p))));
        elmt_v3 = (elmt_CYTOPLASM * ((elmt_v3_elmt_k3f * elmt_FBP) - (elmt_v3_elmt_k3b * Functions.pow(elmt_GAP, 2.0))));
        elmt_v4 = (elmt_CYTOPLASM * ((elmt_v4_elmt_V4 * elmt_NAD * elmt_GAP) / ((elmt_v4_elmt_K4GAP + elmt_GAP) * (elmt_v4_elmt_K4NAD + elmt_NAD))));
        elmt_v1 = (elmt_CYTOPLASM * ((elmt_v1_elmt_V1 * elmt_ATP_cyt * elmt_GLC) / ((elmt_v1_elmt_K1GLC + elmt_GLC) * (elmt_v1_elmt_K1ATP + elmt_ATP_cyt))));
        elmt_v2 = (elmt_CYTOPLASM * ((elmt_v2_elmt_V2 * elmt_ATP_cyt * Functions.pow(elmt_F6P, 2.0)) / (((elmt_v2_elmt_K2 * (1.0 + (elmt_v2_elmt_k2 * Functions.pow((elmt_ATP_cyt / elmt_AMP), 2.0)))) + Functions.pow(elmt_F6P, 2.0)) * (elmt_v2_elmt_K2ATP + elmt_ATP_cyt))));
        elmt_v35 = (elmt_MATRIX * ((elmt_v35_elmt_KcF * elmt_v35_elmt_KcR * elmt_v35_elmt_v35_ACD * ((elmt_FADH2 * elmt_ETFox) - ((elmt_ETFred * elmt_FAD) / elmt_v35_elmt_Keq))) / ((elmt_v35_elmt_KcR * elmt_v35_elmt_KiS1 * elmt_v35_elmt_KmS2) + (elmt_v35_elmt_KcR * elmt_v35_elmt_KmS2 * elmt_FADH2) + (elmt_v35_elmt_KcR * elmt_v35_elmt_KmS1 * elmt_ETFox) + ((elmt_v35_elmt_KcF * elmt_v35_elmt_KmP2 * elmt_ETFred) / elmt_v35_elmt_Keq) + ((elmt_v35_elmt_KcF * elmt_v35_elmt_KmP1 * elmt_FAD) / elmt_v35_elmt_Keq) + (elmt_v35_elmt_KcR * elmt_FADH2 * elmt_ETFox) + ((elmt_v35_elmt_KcF * elmt_v35_elmt_KmP2 * elmt_FADH2 * elmt_ETFred) / (elmt_v35_elmt_Keq * elmt_v35_elmt_KiS1)) + ((elmt_v35_elmt_KcF * elmt_ETFred * elmt_FAD) / elmt_v35_elmt_Keq) + ((elmt_v35_elmt_KcR * elmt_v35_elmt_KmS1 * elmt_ETFox * elmt_FAD) / elmt_v35_elmt_KiP2) + ((elmt_v35_elmt_KcR * elmt_FADH2 * elmt_ETFox * elmt_ETFred) / elmt_v35_elmt_KiP1) + ((elmt_v35_elmt_KcF * elmt_ETFox * elmt_ETFred * elmt_FAD) / (elmt_v35_elmt_KiS2 * elmt_v35_elmt_Keq)))));
        elmt_v12 = (elmt_MATRIX * ((elmt_v12_elmt_KcF * elmt_v12_elmt_v12_IDHa * ((elmt_IsoCit * elmt_IsoCit) + (elmt_v12_elmt_b * elmt_ADP * elmt_IsoCit))) / ((elmt_IsoCit * elmt_IsoCit) + (elmt_v12_elmt_c * elmt_IsoCit) + (elmt_v12_elmt_d * elmt_ADP) + (elmt_v12_elmt_e * elmt_ADP * elmt_IsoCit) + elmt_v12_elmt_f)));
        elmt_v34 = (elmt_MATRIX * ((elmt_v34_elmt_KcF * elmt_v34_elmt_KcR * elmt_v34_elmt_v34_ETF_QO * ((elmt_ETFred * elmt_Q) - ((elmt_ETFox * elmt_QH2) / elmt_v34_elmt_Keq))) / ((elmt_v34_elmt_KcR * elmt_v34_elmt_KmS2 * elmt_ETFred) + (elmt_v34_elmt_KcR * elmt_v34_elmt_KmS1 * elmt_Q) + ((elmt_v34_elmt_KcF * elmt_v34_elmt_KmP2 * elmt_ETFox) / elmt_v34_elmt_Keq) + ((elmt_v34_elmt_KcF * elmt_v34_elmt_KmP1 * elmt_QH2) / elmt_v34_elmt_Keq) + (elmt_v34_elmt_KcR * elmt_ETFred * elmt_Q) + ((elmt_v34_elmt_KcF * elmt_v34_elmt_KmP2 * elmt_ETFred * elmt_ETFox) / (elmt_v34_elmt_Keq * elmt_v34_elmt_KiS1)) + ((elmt_v34_elmt_KcF * elmt_ETFox * elmt_QH2) / elmt_v34_elmt_Keq) + ((elmt_v34_elmt_KcR * elmt_v34_elmt_KmS1 * elmt_Q * elmt_QH2) / elmt_v34_elmt_KiP2))));
        elmt_v11 = (elmt_MATRIX * ((((elmt_v11_elmt_KcF * elmt_v11_elmt_Kp * elmt_Cit) - (elmt_v11_elmt_KcR * elmt_v11_elmt_Ks * elmt_IsoCit)) * elmt_v11_elmt_v11_ACO) / ((elmt_v11_elmt_Ks * elmt_IsoCit) + (elmt_v11_elmt_Kp * elmt_Cit) + (elmt_v11_elmt_Ks * elmt_v11_elmt_Kp))));
        elmt_v33 = (elmt_MATRIX * ((((((((elmt_Cit_cyt * elmt_Mal) / elmt_v33_elmt_alpha) / elmt_v33_elmt_KiS1) / elmt_v33_elmt_KiS2) * elmt_v33_elmt_KcF) - (((((elmt_Mal_cyt * elmt_Cit) / elmt_v33_elmt_beta) / elmt_v33_elmt_KiP1) / elmt_v33_elmt_KiP2) * elmt_v33_elmt_KcR)) * elmt_v33_elmt_v33_CIC) / (1.0 + (elmt_Cit_cyt / elmt_v33_elmt_KiS1) + (elmt_Mal / elmt_v33_elmt_KiS2) + (elmt_Mal_cyt / elmt_v33_elmt_KiP1) + (elmt_Cit / elmt_v33_elmt_KiP2) + ((((elmt_Cit_cyt * elmt_Mal) / elmt_v33_elmt_alpha) / elmt_v33_elmt_KiS1) / elmt_v33_elmt_KiS2) + ((((elmt_Mal_cyt * elmt_Cit) / elmt_v33_elmt_beta) / elmt_v33_elmt_KiP1) / elmt_v33_elmt_KiP2) + ((((elmt_Mal * elmt_Cit) / elmt_v33_elmt_gamma) / elmt_v33_elmt_KiS2) / elmt_v33_elmt_KiP2) + ((((elmt_Cit_cyt * elmt_Mal_cyt) / elmt_v33_elmt_delta) / elmt_v33_elmt_KiS1) / elmt_v33_elmt_KiP1))));
        elmt_v10 = (elmt_MATRIX * ((elmt_v10_elmt_V * elmt_Acetyl_CoA * elmt_OXA * elmt_v10_elmt_v10_CS) / ((elmt_Acetyl_CoA * elmt_OXA) + (elmt_v10_elmt_Ka * elmt_OXA) + (elmt_v10_elmt_Kb * elmt_Acetyl_CoA) + (elmt_v10_elmt_Kia * elmt_v10_elmt_Kib))));
        elmt_v32 = (elmt_CYTOPLASM * ((elmt_v32_elmt_KcF * elmt_v32_elmt_KcR * elmt_v32_elmt_v32_AspTA * ((elmt_Asp_cyt * elmt_OG_cyt) - ((elmt_OXA_cyt * elmt_Glu_cyt) / elmt_v32_elmt_Keq))) / ((elmt_v32_elmt_KcR * elmt_v32_elmt_KmS2 * elmt_Asp_cyt) + (elmt_v32_elmt_KcR * elmt_v32_elmt_KmS1 * elmt_OG_cyt) + ((elmt_v32_elmt_KcF * elmt_v32_elmt_KmP2 * elmt_OXA_cyt) / elmt_v32_elmt_Keq) + ((elmt_v32_elmt_KcF * elmt_v32_elmt_KmP1 * elmt_Glu_cyt) / elmt_v32_elmt_Keq) + (elmt_v32_elmt_KcR * elmt_Asp_cyt * elmt_OG_cyt) + ((elmt_v32_elmt_KcF * elmt_v32_elmt_KmP2 * elmt_Asp_cyt * elmt_OXA_cyt) / (elmt_v32_elmt_Keq * elmt_v32_elmt_KiS1)) + ((elmt_v32_elmt_KcF * elmt_OXA_cyt * elmt_Glu_cyt) / elmt_v32_elmt_Keq) + ((elmt_v32_elmt_KcR * elmt_v32_elmt_KmS1 * elmt_OG_cyt * elmt_Glu_cyt) / elmt_v32_elmt_KiP2))));
        elmt_v31 = (elmt_CYTOPLASM * ((elmt_v31_elmt_v31_MDH * ((elmt_v31_elmt_k1 * elmt_v31_elmt_k2 * elmt_v31_elmt_k3 * elmt_v31_elmt_k4 * elmt_NADH_cyt * elmt_OXA_cyt) - (elmt_v31_elmt_kminus1 * elmt_v31_elmt_kminus2 * elmt_v31_elmt_kminus3 * elmt_v31_elmt_kminus4 * elmt_Mal_cyt * elmt_NAD))) / ((elmt_v31_elmt_kminus1 * (elmt_v31_elmt_kminus2 + elmt_v31_elmt_k3) * elmt_v31_elmt_k4) + (elmt_v31_elmt_k1 * (elmt_v31_elmt_kminus2 + elmt_v31_elmt_k3) * elmt_v31_elmt_k4 * elmt_NADH_cyt) + (elmt_v31_elmt_kminus1 * (elmt_v31_elmt_kminus2 + elmt_v31_elmt_k3) * elmt_v31_elmt_kminus4 * elmt_NAD) + (elmt_v31_elmt_k2 * elmt_v31_elmt_k3 * elmt_v31_elmt_k4 * elmt_OXA_cyt) + (elmt_v31_elmt_kminus1 * elmt_v31_elmt_kminus2 * elmt_v31_elmt_kminus3 * elmt_Mal_cyt) + (elmt_v31_elmt_k1 * elmt_v31_elmt_k2 * (elmt_v31_elmt_k3 + elmt_v31_elmt_k4) * elmt_NADH_cyt * elmt_OXA_cyt) + ((elmt_v31_elmt_kminus1 + elmt_v31_elmt_kminus2) * elmt_v31_elmt_kminus3 * elmt_v31_elmt_kminus4 * elmt_Mal_cyt * elmt_NAD) + elmt_v31_elmt_k1 + elmt_v31_elmt_kminus2 + (elmt_v31_elmt_kminus3 * elmt_NADH_cyt * elmt_Mal_cyt) + (elmt_v31_elmt_k1 * elmt_v31_elmt_k2 * elmt_v31_elmt_kminus3 * elmt_NADH_cyt * elmt_OXA_cyt * elmt_Mal_cyt) + (elmt_v31_elmt_k2 * elmt_v31_elmt_k3 * elmt_v31_elmt_kminus4 * elmt_OXA_cyt * elmt_NAD) + (elmt_v31_elmt_k2 * elmt_v31_elmt_kminus3 * elmt_v31_elmt_kminus4 * elmt_OXA_cyt * elmt_Mal_cyt * elmt_NAD))));
        elmt_v30 = (elmt_MATRIX * ((((((((elmt_OG * elmt_Mal_cyt) / elmt_v30_elmt_alpha) / elmt_v30_elmt_KiS1) / elmt_v30_elmt_KiS2) * elmt_v30_elmt_KcF) - (((((elmt_Mal * elmt_OG_cyt) / elmt_v30_elmt_beta) / elmt_v30_elmt_KiP1) / elmt_v30_elmt_KiP2) * elmt_v30_elmt_KcR)) * elmt_v30_elmt_v30_OGC) / (1.0 + (elmt_OG / elmt_v30_elmt_KiS1) + (elmt_Mal_cyt / elmt_v30_elmt_KiS2) + (elmt_Mal / elmt_v30_elmt_KiP1) + (elmt_OG_cyt / elmt_v30_elmt_KiP2) + ((((elmt_OG * elmt_Mal_cyt) / elmt_v30_elmt_alpha) / elmt_v30_elmt_KiS1) / elmt_v30_elmt_KiS2) + ((((elmt_Mal * elmt_OG_cyt) / elmt_v30_elmt_beta) / elmt_v30_elmt_KiP1) / elmt_v30_elmt_KiP2) + ((((elmt_Mal_cyt * elmt_OG_cyt) / elmt_v30_elmt_gamma) / elmt_v30_elmt_KiS2) / elmt_v30_elmt_KiP2) + ((((elmt_OG * elmt_Mal) / elmt_v30_elmt_delta) / elmt_v30_elmt_KiS1) / elmt_v30_elmt_KiP1))));
        elmt_LACflow = (elmt_CYTOPLASM * elmt_LAC * elmt_flow);
        elmt_GLCflow = (elmt_CYTOPLASM * ((elmt_GLCflow_elmt_Glc_F * Functions.pow(10.0, (-3.0))) - elmt_GLC) * elmt_flow);
        elmt_v18 = (elmt_MATRIX * ((((((elmt_v18_elmt_KcF * elmt_Mal * elmt_NAD_p) / elmt_v18_elmt_KiS1) / elmt_v18_elmt_KmS2) - (((elmt_v18_elmt_KcR * elmt_OXA * elmt_NADH) / elmt_v18_elmt_KmP1) / elmt_v18_elmt_KiP2)) * elmt_v18_elmt_v18_MDH) / (1.0 + (elmt_Mal / elmt_v18_elmt_KiS1) + (((elmt_v18_elmt_KmS1 * elmt_NAD_p) / elmt_v18_elmt_KiS1) / elmt_v18_elmt_KmS2) + (((elmt_v18_elmt_KmP2 * elmt_OXA) / elmt_v18_elmt_KmP1) / elmt_v18_elmt_KiP2) + (elmt_NADH / elmt_v18_elmt_KiP2) + (((elmt_Mal * elmt_NAD_p) / elmt_v18_elmt_KiS1) / elmt_v18_elmt_KmS2) + ((((elmt_v18_elmt_KmP2 * elmt_Mal * elmt_OXA) / elmt_v18_elmt_KiS1) / elmt_v18_elmt_KmP1) / elmt_v18_elmt_KiP2) + ((((elmt_v18_elmt_KmS1 * elmt_NAD_p * elmt_NADH) / elmt_v18_elmt_KiS1) / elmt_v18_elmt_KmS2) / elmt_v18_elmt_KiP2) + (((elmt_OXA * elmt_NADH) / elmt_v18_elmt_KmP1) * elmt_v18_elmt_KiP2) + ((((elmt_Mal * elmt_NAD_p * elmt_OXA) / elmt_v18_elmt_KiS1) / elmt_v18_elmt_KmS2) / elmt_v18_elmt_KiP1) + ((((elmt_NAD_p * elmt_OXA * elmt_NADH) / elmt_v18_elmt_KiS2) / elmt_v18_elmt_KmP1) / elmt_v18_elmt_KiP2))));
        elmt_v17 = (elmt_MATRIX * ((((elmt_v17_elmt_KcF * elmt_v17_elmt_Kp * elmt_Fum) - (elmt_v17_elmt_KcR * elmt_v17_elmt_Ks * elmt_Mal)) * elmt_v17_elmt_v17_FM) / ((elmt_v17_elmt_Ks * elmt_Mal) + (elmt_v17_elmt_Kp * elmt_Fum) + (elmt_v17_elmt_Ks * elmt_v17_elmt_Kp))));
        elmt_v39 = (elmt_CYTOPLASM * ((elmt_v39_elmt_v39_MDH * elmt_v39_elmt_Kcat * elmt_Mal_cyt * elmt_NADP_cyt) / ((elmt_v39_elmt_Kmal + elmt_Mal_cyt) * (elmt_v39_elmt_Knadp + elmt_NADP_cyt))));
        elmt_v16 = (elmt_MATRIX * ((elmt_v16_elmt_KcF * elmt_v16_elmt_KcR * elmt_v16_elmt_v16_SDH * ((elmt_Suc * elmt_Q) - ((elmt_Fum * elmt_QH2) / elmt_v16_elmt_Keq))) / ((elmt_v16_elmt_KcR * elmt_v16_elmt_KmS2 * elmt_Suc) + (elmt_v16_elmt_KcR * elmt_v16_elmt_KmS1 * elmt_Q) + ((elmt_v16_elmt_KcF * elmt_v16_elmt_KmP2 * elmt_Fum) / elmt_v16_elmt_Keq) + ((elmt_v16_elmt_KcF * elmt_v16_elmt_KmP1 * elmt_QH2) / elmt_v16_elmt_Keq) + (elmt_v16_elmt_KcR * elmt_Suc * elmt_Q) + ((elmt_v16_elmt_KcF * elmt_v16_elmt_KmP2 * elmt_Suc * elmt_Fum) / (elmt_v16_elmt_Keq * elmt_v16_elmt_KiS1)) + ((elmt_v16_elmt_KcF * elmt_Fum * elmt_QH2) / elmt_v16_elmt_Keq) + ((elmt_v16_elmt_KcR * elmt_v16_elmt_KmS1 * elmt_Q * elmt_QH2) / elmt_v16_elmt_KiP2))));
        elmt_v38 = (elmt_CYTOPLASM * ((elmt_v38_elmt_V * elmt_v38_elmt_v38_GUT2P * elmt_NADH_cyt) / (elmt_v38_elmt_K + elmt_NADH_cyt)));
        elmt_v15 = (elmt_MATRIX * ((((elmt_GDP * elmt_SCoA * 3.141592653589793) - ((elmt_Suc * elmt_GTP * elmt_CoA) / elmt_v15_elmt_Keq)) * ((elmt_v15_elmt_Kc1 * elmt_v15_elmt_v15_SCS) + (elmt_v15_elmt_Kc2 * elmt_v15_elmt_v15_SCS * ((((elmt_v15_elmt_KmC * elmt_Suc) / elmt_v15_elmt_KmC2) * elmt_v15_elmt_Kip) + (3.141592653589793 / elmt_v15_elmt_KmC2))))) / ((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * 3.141592653589793) + (elmt_v15_elmt_KmB * elmt_GDP * 3.141592653589793) + (elmt_v15_elmt_KmA * elmt_SCoA * 3.141592653589793) + (elmt_v15_elmt_KmC * elmt_GDP * elmt_SCoA) + (elmt_GDP * elmt_SCoA * 3.141592653589793) + ((elmt_GDP * elmt_SCoA * 3.141592653589793 * 3.141592653589793) / elmt_v15_elmt_KmC2) + ((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * elmt_v15_elmt_KmC * elmt_Suc) / elmt_v15_elmt_Kip) + (((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * elmt_v15_elmt_KmC * elmt_Suc * elmt_GTP) / elmt_v15_elmt_Kip) / elmt_v15_elmt_Kiq) + (((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * elmt_v15_elmt_KmC * elmt_Suc * elmt_CoA) / elmt_v15_elmt_Kip) / elmt_v15_elmt_Kir) + (((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * elmt_v15_elmt_Kic * elmt_GTP * elmt_CoA) / elmt_v15_elmt_KmQ) / elmt_v15_elmt_Kir) + ((((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * elmt_v15_elmt_KmC * elmt_Suc * elmt_GTP * elmt_CoA) / elmt_v15_elmt_Kip) / elmt_v15_elmt_KmQ) / elmt_v15_elmt_Kir) + (((((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * elmt_v15_elmt_KmC * elmt_Suc * elmt_Suc * elmt_GTP * elmt_CoA) / elmt_v15_elmt_Kip) / elmt_v15_elmt_KmP2) / elmt_v15_elmt_KmQ) / elmt_v15_elmt_Kir) + ((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * 3.141592653589793 * elmt_GTP) / elmt_v15_elmt_Kiq) + ((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * 3.141592653589793 * elmt_CoA) / elmt_v15_elmt_Kir) + (((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * 3.141592653589793 * elmt_GTP * elmt_CoA) / elmt_v15_elmt_KmQ) / elmt_v15_elmt_Kir) + ((((elmt_v15_elmt_Kia * elmt_v15_elmt_KmB * 3.141592653589793 * elmt_Suc * elmt_GTP * elmt_CoA) / elmt_v15_elmt_KmP2) / elmt_v15_elmt_KmQ) / elmt_v15_elmt_Kir) + ((elmt_v15_elmt_KmB * elmt_v15_elmt_KmC * elmt_GDP * elmt_Suc) / elmt_v15_elmt_Kip) + ((elmt_v15_elmt_KmA * elmt_v15_elmt_KmC * elmt_SCoA * elmt_Suc) / elmt_v15_elmt_Kip) + ((elmt_v15_elmt_KmC * elmt_GDP * elmt_SCoA * elmt_Suc) / elmt_v15_elmt_Kip) + (((elmt_v15_elmt_KmC * elmt_GDP * elmt_SCoA * 3.141592653589793 * elmt_Suc) / elmt_v15_elmt_KmC2) / elmt_v15_elmt_Kip) + ((elmt_v15_elmt_KmA * elmt_SCoA * 3.141592653589793 * elmt_GTP) / elmt_v15_elmt_Kiq) + ((elmt_v15_elmt_KmB * elmt_GDP * 3.141592653589793 * elmt_CoA) / elmt_v15_elmt_Kir) + (((elmt_v15_elmt_KmA * elmt_v15_elmt_KmC * elmt_SCoA * elmt_Suc * elmt_GTP) / elmt_v15_elmt_Kip) / elmt_v15_elmt_Kiq) + (((elmt_v15_elmt_KmB * elmt_v15_elmt_KmC * elmt_GDP * elmt_Suc * elmt_CoA) / elmt_v15_elmt_Kip) / elmt_v15_elmt_Kir))));
        elmt_v37 = (elmt_CYTOPLASM * ((elmt_v37_elmt_V * elmt_v37_elmt_v37_GUT2P * elmt_G3P) / (elmt_v37_elmt_K + elmt_G3P)));
        elmt_v14 = (elmt_MATRIX * ((elmt_v14_elmt_KcF * elmt_v14_elmt_v14_OGDC * elmt_OG * elmt_CoA * elmt_NAD_p) / ((elmt_v14_elmt_KmC * elmt_OG * elmt_CoA) + (elmt_v14_elmt_KmB * elmt_OG * elmt_NAD_p) + (elmt_v14_elmt_KmA * elmt_CoA * elmt_NAD_p) + (elmt_OG * elmt_CoA * elmt_NAD_p) + (((((elmt_v14_elmt_KmA * elmt_v14_elmt_KmP * elmt_v14_elmt_Kib * elmt_v14_elmt_Kic) / elmt_v14_elmt_KmR) / elmt_v14_elmt_Kip) / elmt_v14_elmt_Kiq) * elmt_SCoA * elmt_NADH) + ((elmt_v14_elmt_KmC / elmt_v14_elmt_Kir) * elmt_OG * elmt_CoA * elmt_NADH) + ((elmt_v14_elmt_KmB / elmt_v14_elmt_Kiq) * elmt_OG * elmt_NAD_p * elmt_SCoA) + ((((((elmt_v14_elmt_KmA * elmt_v14_elmt_KmP * elmt_v14_elmt_Kib * elmt_v14_elmt_Kic) / elmt_v14_elmt_KmR) / elmt_v14_elmt_Kip) / elmt_v14_elmt_Kia) / elmt_v14_elmt_Kiq) * elmt_OG * elmt_SCoA * elmt_NADH))));
        elmt_v36 = (elmt_MATRIX * ((elmt_v36_elmt_KcF * elmt_v36_elmt_KcR * elmt_v36_elmt_v36_PC * ((elmt_ATP * elmt_CO2 * elmt_Pyr) - ((3.141592653589793 * elmt_ADP * elmt_OXA) / elmt_v36_elmt_Keq))) / ((elmt_v36_elmt_Kia * elmt_v36_elmt_KmB * elmt_v36_elmt_KcR * elmt_Pyr) + (elmt_v36_elmt_KmC * elmt_v36_elmt_KcR * elmt_ATP * elmt_CO2) + (elmt_v36_elmt_KmA * elmt_v36_elmt_KcR * elmt_CO2 * elmt_Pyr) + (elmt_v36_elmt_KmB * elmt_v36_elmt_KcR * elmt_ATP * elmt_Pyr) + (elmt_v36_elmt_KcR * elmt_ATP * elmt_CO2 * elmt_Pyr) + ((elmt_v36_elmt_Kip * elmt_v36_elmt_KmQ * elmt_v36_elmt_KcF * elmt_OXA) / elmt_v36_elmt_Keq) + ((elmt_v36_elmt_KmQ * elmt_v36_elmt_KcF * 3.141592653589793 * elmt_OXA) / elmt_v36_elmt_Keq) + ((elmt_v36_elmt_KmP * elmt_v36_elmt_KcF * elmt_ADP * elmt_OXA) / elmt_v36_elmt_Keq) + ((elmt_v36_elmt_KmR * elmt_v36_elmt_KcF * 3.141592653589793 * elmt_ADP) / elmt_v36_elmt_Keq) + ((elmt_v36_elmt_KcF * 3.141592653589793 * elmt_ADP * elmt_OXA) / elmt_v36_elmt_Keq) + ((elmt_v36_elmt_Kia * elmt_v36_elmt_KmB * elmt_v36_elmt_KcR * elmt_Pyr * 3.141592653589793) / elmt_v36_elmt_Kip) + ((elmt_v36_elmt_Kia * elmt_v36_elmt_KmB * elmt_v36_elmt_KcR * elmt_Pyr * elmt_ADP) / elmt_v36_elmt_Kia) + (((elmt_v36_elmt_Kiq * elmt_v36_elmt_KmP * elmt_v36_elmt_KcF * elmt_CO2 * elmt_OXA) / elmt_v36_elmt_Kib) / elmt_v36_elmt_Keq) + (((elmt_v36_elmt_Kia * elmt_v36_elmt_KmP * elmt_v36_elmt_KcF * elmt_ATP * elmt_OXA) / elmt_v36_elmt_Kia) / elmt_v36_elmt_Keq) + ((elmt_v36_elmt_KmA * elmt_v36_elmt_KcR * elmt_ATP * elmt_CO2 * elmt_OXA) / elmt_v36_elmt_Kir) + (((elmt_v36_elmt_KmR * elmt_v36_elmt_KcF * elmt_Pyr * 3.141592653589793 * elmt_ADP) / elmt_v36_elmt_Kic) / elmt_v36_elmt_Keq) + ((elmt_v36_elmt_KmA * elmt_v36_elmt_KcR * elmt_CO2 * elmt_Pyr * elmt_ADP) / elmt_v36_elmt_Kiq) + ((elmt_v36_elmt_KmA * elmt_v36_elmt_KcR * elmt_CO2 * elmt_Pyr * 3.141592653589793) / elmt_v36_elmt_Kip) + (((elmt_v36_elmt_KmP * elmt_v36_elmt_KcF * elmt_CO2 * elmt_ADP * elmt_OXA) / elmt_v36_elmt_Kib) / elmt_v36_elmt_Keq) + (((elmt_v36_elmt_KmQ * elmt_v36_elmt_KcF * elmt_CO2 * 3.141592653589793 * elmt_OXA) / elmt_v36_elmt_Kib) / elmt_v36_elmt_Keq))));
        elmt_GAPflow = (elmt_CYTOPLASM * elmt_GAP * elmt_flow);
        der(elmt_product74) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product71) = 0;
        der(elmt_product78) = 0;
        der(elmt_reactant109) = 0;
        der(elmt_product75) = 0;
        der(elmt_reactant108) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant117) = 0;
        der(elmt_reactant116) = 0;
        der(elmt_reactant113) = 0;
        der(elmt_reactant112) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product83) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product82) = 0;
        der(elmt_product87) = 0;
        der(elmt_product86) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_reactant121) = 0;
        der(elmt_product101) = 0;
        der(elmt_reactant120) = 0;
        der(elmt_product103) = 0;
        der(elmt_product100) = 0;
        der(elmt_reactant129) = 0;
        der(elmt_reactant128) = 0;
        der(elmt_product79) = 0;
        der(elmt_reactant125) = 0;
        der(elmt_product106) = 0;
        der(elmt_reactant124) = 0;
        der(elmt_product107) = 0;
        der(elmt_product96) = 0;
        der(elmt_product93) = 0;
        der(elmt_product12) = 0;
        der(elmt_product10) = 0;
        der(elmt_product97) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_product151) = 0;
        der(elmt_product150) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_product91) = 0;
        der(elmt_product90) = 0;
        der(elmt_product157) = 0;
        der(elmt_product156) = 0;
        der(elmt_product153) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_product160) = 0;
        der(elmt_product0) = 0;
        der(elmt_product161) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_reactant104) = 0;
        der(elmt_product19) = 0;
        der(elmt_reactant102) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_reactant85) = 0;
        der(elmt_reactant80) = 0;
        der(elmt_product33) = 0;
        der(elmt_reactant81) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant88) = 0;
        der(elmt_reactant89) = 0;
        der(elmt_reactant154) = 0;
        der(elmt_reactant152) = 0;
        der(elmt_product137) = 0;
        der(elmt_product136) = 0;
        der(elmt_product131) = 0;
        der(elmt_product133) = 0;
        der(elmt_product132) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant159) = 0;
        der(elmt_product24) = 0;
        der(elmt_reactant158) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant155) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_reactant95) = 0;
        der(elmt_product45) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_product43) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product140) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant98) = 0;
        der(elmt_reactant99) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product146) = 0;
        der(elmt_product147) = 0;
        der(elmt_product141) = 0;
        der(elmt_product143) = 0;
        der(elmt_product38) = 0;
        der(elmt_product37) = 0;
        der(elmt_product39) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product55) = 0;
        der(elmt_product54) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_product115) = 0;
        der(elmt_reactant130) = 0;
        der(elmt_product114) = 0;
        der(elmt_product111) = 0;
        der(elmt_product110) = 0;
        der(elmt_product49) = 0;
        der(elmt_product48) = 0;
        der(elmt_reactant139) = 0;
        der(elmt_reactant138) = 0;
        der(elmt_reactant135) = 0;
        der(elmt_product119) = 0;
        der(elmt_reactant134) = 0;
        der(elmt_product118) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product60) = 0;
        der(elmt_product67) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant76) = 0;
        der(elmt_reactant77) = 0;
        der(elmt_reactant142) = 0;
        der(elmt_product123) = 0;
        der(elmt_product126) = 0;
        der(elmt_product122) = 0;
        der(elmt_product59) = 0;
        der(elmt_reactant149) = 0;
        der(elmt_reactant148) = 0;
        der(elmt_product127) = 0;
        der(elmt_reactant145) = 0;
        der(elmt_reactant144) = 0;

end Reactions;
