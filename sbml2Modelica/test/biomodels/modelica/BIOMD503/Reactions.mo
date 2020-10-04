within BIOMD503;
class Reactions

    input Real elmt_PDC6;
    input Real elmt_RPE1;
    input Real elmt_GAP;
    input Real elmt_Kr5p_TAL;
    input Real elmt_PGI1;
    input Real elmt_PDC1;
    input Real elmt_ADH1;
    input Real elmt_SOL3;
    input Real elmt_BPG;
    input Real elmt_FBA1;
    input Real elmt_PDC5;
    input Real elmt_cell;
    input Real elmt_G1P;
    input Real elmt_P3G;
    input Real elmt_DHAP;
    input Real elmt_PFK2;
    input Real elmt_Ke4p_TAL;
    input Real elmt_GLCx;
    input Real elmt_Kx5p_TAL;
    input Real elmt_GLK1;
    input Real elmt_NADPH;
    input Real elmt_EtOH;
    input Real elmt_G6L;
    input Real elmt_TDH1;
    input Real elmt_HXK1;
    input Real elmt_G6P;
    input Real elmt_Ru5P;
    input Real elmt_TDH3;
    input Real elmt_Ks7p_TAL;
    input Real elmt_HXK2;
    input Real elmt_PYR;
    input Real elmt_NAD;
    input Real elmt_NADP;
    input Real elmt_ATP;
    input Real elmt_GLC;
    input Real elmt_RKI1;
    input Real elmt_PEP;
    input Real elmt_CDC19;
    input Real elmt_NQM1;
    input Real elmt_TPI1;
    input Real elmt_G3P;
    input Real elmt_PGK1;
    input Real elmt_ADP;
    input Real elmt_R5P;
    input Real elmt_Kgap_TAL;
    input Real elmt_S7P;
    input Real elmt_F26bP;
    input Real elmt_NADH;
    input Real elmt_UDG;
    input Real elmt_ZWF1;
    input Real elmt_X5P;
    input Real elmt_Kf6p_TAL;
    input Real elmt_UTP;
    input Real elmt_F6P;
    input Real elmt_GPM1;
    input Real elmt_ENO2;
    input Real elmt_AcAld;
    input Real elmt_ENO1;
    input Real elmt_GND1;
    input Real elmt_F16bP;
    input Real elmt_GND2;
    input Real elmt_P2G;
    input Real elmt_AMP;
    input Real elmt_E4P;
    input Real elmt_P6G;
    input Real elmt_TKL1;
    input Real elmt_UDP;
    input Real elmt_TAL1;
    input Real elmt_T6P;

    Real elmt_PGM(unit = "") "PGM";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PGM_elmt_Keq(unit "") = 0.1667 "";
    parameter Real elmt_PGM_elmt_Kg6p(unit "m-3.0.") = 0.05 "";
    parameter Real elmt_PGM_elmt_Vmax(unit "m-3.0..s-1.0") = 0.12762 "";
    parameter Real elmt_PGM_elmt_Kg1p(unit "m-3.0.") = 0.023 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_PGK(unit = "") "PGK";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PGK_elmt_Keq(unit "") = 3200.0 "";
    parameter Real elmt_PGK_elmt_Katp(unit "m-3.0.") = 1.99 "";
    parameter Real elmt_PGK_elmt_Kadp(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_PGK_elmt_kcat(unit "s-1.0") = 58.6 "";
    parameter Real elmt_PGK_elmt_Kbpg(unit "m-3.0.") = 0.003 "";
    parameter Real elmt_PGK_elmt_nHadp(unit "") = 2.0 "";
    parameter Real elmt_PGK_elmt_Kp3g(unit "m-3.0.") = 4.58 "";
    Real elmt_product37 "";
    Real elmt_product36 "";
    Real elmt_reactant34 "";
    Real elmt_reactant35 "";
    Real elmt_acetate_branch(unit = "") "acetate_branch";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_acetate_branch_elmt_k(unit "m3.0.mol-1.0.s-1.0") = 0.00554339592436782 "";
    Real elmt_product62 "";
    Real elmt_product61 "";
    Real elmt_reactant60 "";
    Real elmt_reactant59 "";
    Real elmt_PGI(unit = "") "PGI";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PGI_elmt_Keq(unit "") = 0.29 "";
    parameter Real elmt_PGI_elmt_Kf6p(unit "m-3.0.") = 0.307 "";
    parameter Real elmt_PGI_elmt_Kg6p(unit "m-3.0.") = 1.0257 "";
    parameter Real elmt_PGI_elmt_kcat(unit "s-1.0") = 487.36 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_TAL(unit = "") "TAL";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TAL_elmt_Keq(unit "") = 1.05 "";
    parameter Real elmt_TAL_elmt_Ks7p_NQM1(unit "m-3.0.") = 0.786 "";
    parameter Real elmt_TAL_elmt_kcat_NQM1(unit "s-1.0") = 0.694 "";
    parameter Real elmt_TAL_elmt_Kgap_NQM1(unit "m-3.0.") = 0.272 "";
    parameter Real elmt_TAL_elmt_Ks7p_TAL1(unit "m-3.0.") = 0.786 "";
    parameter Real elmt_TAL_elmt_Kf6p_TAL1(unit "m-3.0.") = 1.44 "";
    parameter Real elmt_TAL_elmt_Kgap_TAL1(unit "m-3.0.") = 0.272 "";
    parameter Real elmt_TAL_elmt_Ke4p_NQM1(unit "m-3.0.") = 0.305 "";
    parameter Real elmt_TAL_elmt_kcat_TAL1(unit "s-1.0") = 0.694 "";
    parameter Real elmt_TAL_elmt_Ke4p_TAL1(unit "m-3.0.") = 0.362 "";
    parameter Real elmt_TAL_elmt_Kf6p_NQM1(unit "m-3.0.") = 1.04 "";
    Real elmt_product82 "";
    Real elmt_reactant80 "";
    Real elmt_product81 "";
    Real elmt_reactant79 "";
    Real elmt_UGP(unit = "") "UGP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_UGP_elmt_Kutp(unit "m-3.0.") = 0.11 "";
    parameter Real elmt_UGP_elmt_Kiudg(unit "m-3.0.") = 0.0035 "";
    parameter Real elmt_UGP_elmt_Vmax(unit "m-3.0..s-1.0") = 13.2552 "";
    parameter Real elmt_UGP_elmt_Kiutp(unit "m-3.0.") = 0.11 "";
    parameter Real elmt_UGP_elmt_Kg1p(unit "m-3.0.") = 0.32 "";
    Real elmt_product58 "";
    Real elmt_reactant56 "";
    Real elmt_reactant57 "";
    Real elmt_GND(unit = "") "GND";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_GND_elmt_Kp6g_GND1(unit "m-3.0.") = 0.062 "";
    parameter Real elmt_GND_elmt_kcat_GND1(unit "s-1.0") = 28.0 "";
    parameter Real elmt_GND_elmt_Kp6g_GND2(unit "m-3.0.") = 0.115 "";
    parameter Real elmt_GND_elmt_Kru5p_GND2(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_GND_elmt_Knadp_GND1(unit "m-3.0.") = 0.094 "";
    parameter Real elmt_GND_elmt_Knadp_GND2(unit "m-3.0.") = 0.094 "";
    parameter Real elmt_GND_elmt_Knadph_GND1(unit "m-3.0.") = 0.055 "";
    parameter Real elmt_GND_elmt_Knadph_GND2(unit "m-3.0.") = 0.055 "";
    parameter Real elmt_GND_elmt_Kru5p_GND1(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_GND_elmt_kcat_GND2(unit "s-1.0") = 27.3 "";
    Real elmt_product72 "";
    Real elmt_product71 "";
    Real elmt_reactant70 "";
    Real elmt_reactant69 "";
    Real elmt_GPD(unit = "") "GPD";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_GPD_elmt_Keq(unit "") = 10000.0 "";
    parameter Real elmt_GPD_elmt_Knad(unit "m-3.0.") = 0.93 "";
    parameter Real elmt_GPD_elmt_Vmax(unit "m-3.0..s-1.0") = 0.783333333333333 "";
    parameter Real elmt_GPD_elmt_Katp(unit "m-3.0.") = 0.73 "";
    parameter Real elmt_GPD_elmt_Kadp(unit "m-3.0.") = 2.0 "";
    parameter Real elmt_GPD_elmt_Kdhap(unit "m-3.0.") = 0.54 "";
    parameter Real elmt_GPD_elmt_Kfbp(unit "m-3.0.") = 4.8 "";
    parameter Real elmt_GPD_elmt_Kg3p(unit "m-3.0.") = 1.2 "";
    parameter Real elmt_GPD_elmt_Knadh(unit "m-3.0.") = 0.023 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_HXK(unit = "") "HXK";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_HXK_elmt_Keq(unit "") = 2000.0 "";
    parameter Real elmt_HXK_elmt_Kadp_GLK1(unit "m-3.0.") = 0.23 "";
    parameter Real elmt_HXK_elmt_Kit6p_HXK2(unit "m-3.0.") = 0.04 "";
    parameter Real elmt_HXK_elmt_Kit6p_HXK1(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_HXK_elmt_kcat_GLK1(unit "s-1.0") = 0.0721 "";
    parameter Real elmt_HXK_elmt_Katp_HXK2(unit "m-3.0.") = 0.195 "";
    parameter Real elmt_HXK_elmt_Katp_HXK1(unit "m-3.0.") = 0.293 "";
    parameter Real elmt_HXK_elmt_Kglc_HXK2(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_HXK_elmt_Kglc_HXK1(unit "m-3.0.") = 0.15 "";
    parameter Real elmt_HXK_elmt_Kg6p_HXK1(unit "m-3.0.") = 30.0 "";
    parameter Real elmt_HXK_elmt_Kg6p_HXK2(unit "m-3.0.") = 30.0 "";
    parameter Real elmt_HXK_elmt_Kadp_HXK2(unit "m-3.0.") = 0.23 "";
    parameter Real elmt_HXK_elmt_Kadp_HXK1(unit "m-3.0.") = 0.23 "";
    parameter Real elmt_HXK_elmt_Kglc_GLK1(unit "m-3.0.") = 0.0106 "";
    parameter Real elmt_HXK_elmt_kcat_HXK2(unit "s-1.0") = 63.1 "";
    parameter Real elmt_HXK_elmt_Kg6p_GLK1(unit "m-3.0.") = 30.0 "";
    parameter Real elmt_HXK_elmt_kcat_HXK1(unit "s-1.0") = 10.2 "";
    parameter Real elmt_HXK_elmt_Katp_GLK1(unit "m-3.0.") = 0.865 "";
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_reactant23 "";
    Real elmt_NADPH_oxidase(unit = "") "NADPH oxidase";
    parameter Real elmt_NADPH_oxidase_elmt_k(unit "s-1.0") = 1.0 "";
    Real elmt_product96 "";
    Real elmt_reactant95 "";
    Real elmt_GPP(unit = "") "GPP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_GPP_elmt_Vmax(unit "m-3.0..s-1.0") = 0.883333333333333 "";
    parameter Real elmt_GPP_elmt_Kg3p(unit "m-3.0.") = 3.5 "";
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_RPE(unit = "") "RPE";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_RPE_elmt_Keq(unit "") = 1.4 "";
    parameter Real elmt_RPE_elmt_Kru5p(unit "m-3.0.") = 5.97 "";
    parameter Real elmt_RPE_elmt_kcat(unit "s-1.0") = 4020.0 "";
    parameter Real elmt_RPE_elmt_Kx5p(unit "m-3.0.") = 7.7 "";
    Real elmt_reactant75 "";
    Real elmt_product76 "";
    Real elmt_ADH(unit = "") "ADH";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ADH_elmt_Keq(unit "") = 14492.7536231884 "";
    parameter Real elmt_ADH_elmt_Knad(unit "m-3.0.") = 0.17 "";
    parameter Real elmt_ADH_elmt_Kietoh(unit "m-3.0.") = 90.0 "";
    parameter Real elmt_ADH_elmt_Kiacald(unit "m-3.0.") = 1.1 "";
    parameter Real elmt_ADH_elmt_kcat(unit "s-1.0") = 176.0 "";
    parameter Real elmt_ADH_elmt_Kinad(unit "m-3.0.") = 0.92 "";
    parameter Real elmt_ADH_elmt_Ketoh(unit "m-3.0.") = 17.0 "";
    parameter Real elmt_ADH_elmt_Knadh(unit "m-3.0.") = 0.11 "";
    parameter Real elmt_ADH_elmt_Kinadh(unit "m-3.0.") = 0.031 "";
    parameter Real elmt_ADH_elmt_Kacald(unit "m-3.0.") = 0.4622 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_FBA(unit = "") "FBA";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_FBA_elmt_Keq(unit "m-3.0.") = 0.069 "";
    parameter Real elmt_FBA_elmt_kcat(unit "s-1.0") = 4.139 "";
    parameter Real elmt_FBA_elmt_Kdhap(unit "m-3.0.") = 2.0 "";
    parameter Real elmt_FBA_elmt_Kgap(unit "m-3.0.") = 2.4 "";
    parameter Real elmt_FBA_elmt_Kf16bp(unit "m-3.0.") = 0.4507 "";
    parameter Real elmt_FBA_elmt_Kigap(unit "m-3.0.") = 10.0 "";
    Real elmt_product12 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_ENO(unit = "") "ENO";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ENO_elmt_Keq(unit "") = 6.7 "";
    parameter Real elmt_ENO_elmt_Kp2g_ENO2(unit "m-3.0.") = 0.104 "";
    parameter Real elmt_ENO_elmt_Kpep_ENO1(unit "m-3.0.") = 0.5 "";
    parameter Real elmt_ENO_elmt_Kpep_ENO2(unit "m-3.0.") = 0.5 "";
    parameter Real elmt_ENO_elmt_kcat_ENO2(unit "s-1.0") = 19.87 "";
    parameter Real elmt_ENO_elmt_kcat_ENO1(unit "s-1.0") = 7.6 "";
    parameter Real elmt_ENO_elmt_Kp2g_ENO1(unit "m-3.0.") = 0.043 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_GPM(unit = "") "GPM";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_GPM_elmt_Keq(unit "") = 0.19 "";
    parameter Real elmt_GPM_elmt_kcat(unit "s-1.0") = 400.0 "";
    parameter Real elmt_GPM_elmt_Kp3g(unit "m-3.0.") = 1.2 "";
    parameter Real elmt_GPM_elmt_Kp2g(unit "m-3.0.") = 1.41 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_HXT(unit = "") "HXT";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_HXT_elmt_Kglc(unit "m-3.0.") = 0.9 "";
    parameter Real elmt_HXT_elmt_Vmax(unit "m-3.0..s-1.0") = 3.35 "";
    parameter Real elmt_HXT_elmt_Ki(unit "") = 0.91 "";
    Real elmt_product68 "";
    Real elmt_reactant67 "";
    Real elmt_PDC(unit = "") "PDC";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PDC_elmt_kcat_PDC6(unit "s-1.0") = 9.21 "";
    parameter Real elmt_PDC_elmt_Kpyr_PDC6(unit "m-3.0.") = 2.92 "";
    parameter Real elmt_PDC_elmt_Kpyr_PDC5(unit "m-3.0.") = 7.08 "";
    parameter Real elmt_PDC_elmt_kcat_PDC5(unit "s-1.0") = 10.32 "";
    parameter Real elmt_PDC_elmt_Kpyr_PDC1(unit "m-3.0.") = 8.5 "";
    parameter Real elmt_PDC_elmt_kcat_PDC1(unit "s-1.0") = 12.14 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_TKL_R5P(unit = "") "TKL (R5P:S7P)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TKL_R5P_elmt_Keq(unit "") = 1.2 "";
    parameter Real elmt_TKL_R5P_elmt_kcat(unit "s-1.0") = 40.5 "";
    Real elmt_product89 "";
    Real elmt_reactant87 "";
    Real elmt_reactant88 "";
    Real elmt_product90 "";
    Real elmt_TPI(unit = "") "TPI";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TPI_elmt_Keq(unit "") = 0.045 "";
    parameter Real elmt_TPI_elmt_kcat(unit "s-1.0") = 564.38 "";
    parameter Real elmt_TPI_elmt_Kdhap(unit "m-3.0.") = 6.454 "";
    parameter Real elmt_TPI_elmt_Kgap(unit "m-3.0.") = 5.25 "";
    parameter Real elmt_TPI_elmt_Kigap(unit "m-3.0.") = 35.1 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_E4P_sink(unit = "") "E4P sink";
    parameter Real elmt_E4P_sink_elmt_k(unit "s-1.0") = 1.0 "";
    Real elmt_reactant97 "";
    Real elmt_TDH(unit = "") "TDH";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TDH_elmt_Kbpg_TDH3(unit "m-3.0.") = 0.909 "";
    parameter Real elmt_TDH_elmt_Keq(unit "") = 0.00533412710224736 "";
    parameter Real elmt_TDH_elmt_Kgap_TDH3(unit "m-3.0.") = 0.423 "";
    parameter Real elmt_TDH_elmt_Kbpg_TDH1(unit "m-3.0.") = 0.0098 "";
    parameter Real elmt_TDH_elmt_Kgap_TDH1(unit "m-3.0.") = 0.495 "";
    parameter Real elmt_TDH_elmt_kcat_TDH3(unit "s-1.0") = 18.162 "";
    parameter Real elmt_TDH_elmt_Knadh_TDH3(unit "m-3.0.") = 0.06 "";
    parameter Real elmt_TDH_elmt_kcat_TDH1(unit "s-1.0") = 19.12 "";
    parameter Real elmt_TDH_elmt_Knadh_TDH1(unit "m-3.0.") = 0.06 "";
    parameter Real elmt_TDH_elmt_Knad_TDH1(unit "m-3.0.") = 0.09 "";
    parameter Real elmt_TDH_elmt_Knad_TDH3(unit "m-3.0.") = 0.09 "";
    Real elmt_product47 "";
    Real elmt_product46 "";
    Real elmt_reactant44 "";
    Real elmt_reactant45 "";
    Real elmt_TPS(unit = "") "TPS";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TPS_elmt_Kg6p(unit "m-3.0.") = 3.8 "";
    parameter Real elmt_TPS_elmt_Vmax(unit "m-3.0..s-1.0") = 0.49356 "";
    parameter Real elmt_TPS_elmt_Kudg(unit "m-3.0.") = 0.886 "";
    Real elmt_reactant52 "";
    Real elmt_reactant53 "";
    Real elmt_product55 "";
    Real elmt_product54 "";
    Real elmt_PFK(unit = "") "PFK";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PFK_elmt_Camp(unit "") = 0.0845 "";
    parameter Real elmt_PFK_elmt_Keq(unit "") = 800.0 "";
    parameter Real elmt_PFK_elmt_L0(unit "") = 0.66 "";
    parameter Real elmt_PFK_elmt_Kadp(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_PFK_elmt_Kf26(unit "m-3.0.") = 6.82E-4 "";
    parameter Real elmt_PFK_elmt_Kf16(unit "m-3.0.") = 0.111 "";
    parameter Real elmt_PFK_elmt_gR(unit "") = 5.12 "";
    parameter Real elmt_PFK_elmt_Cf26(unit "") = 0.0174 "";
    parameter Real elmt_PFK_elmt_Cf16(unit "") = 0.397 "";
    parameter Real elmt_PFK_elmt_Ciatp(unit "") = 100.0 "";
    parameter Real elmt_PFK_elmt_Kf6p(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_PFK_elmt_Katp(unit "m-3.0.") = 0.71 "";
    parameter Real elmt_PFK_elmt_Kiatp(unit "m-3.0.") = 0.65 "";
    parameter Real elmt_PFK_elmt_kcat(unit "s-1.0") = 209.6 "";
    parameter Real elmt_PFK_elmt_Catp(unit "") = 3.0 "";
    parameter Real elmt_PFK_elmt_Kamp(unit "m-3.0.") = 0.0995 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_product31 "";
    Real elmt_reactant28 "";
    Real elmt_TPP(unit = "") "TPP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TPP_elmt_Kt6p(unit "m-3.0.") = 0.5 "";
    parameter Real elmt_TPP_elmt_Vmax(unit "m-3.0..s-1.0") = 2.33999999999999 "";
    Real elmt_reactant50 "";
    Real elmt_product51 "";
    Real elmt_ATPase(unit = "") "ATPase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ATPase_elmt_Vmax(unit "m-3.0..s-1.0") = 6.16 "";
    parameter Real elmt_ATPase_elmt_Katp(unit "m-3.0.") = 3.0 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_TKL_E4P(unit = "") "TKL (E4P:F6P)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TKL_E4P_elmt_Keq(unit "") = 10.0 "";
    parameter Real elmt_TKL_E4P_elmt_kcat(unit "s-1.0") = 47.1 "";
    Real elmt_reactant83 "";
    Real elmt_product85 "";
    Real elmt_reactant84 "";
    Real elmt_product86 "";
    Real elmt_AK(unit = "") "AK";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_AK_elmt_Keq(unit "") = 0.45 "";
    parameter Real elmt_AK_elmt_k(unit "m3.0.mol-1.0.s-1.0") = 0.75 "";
    Real elmt_reactant4 "";
    Real elmt_product6 "";
    Real elmt_product5 "";
    Real elmt_PYK(unit = "") "PYK";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PYK_elmt_Keq(unit "") = 6500.0 "";
    parameter Real elmt_PYK_elmt_L0(unit "") = 100.0 "";
    parameter Real elmt_PYK_elmt_Kadp(unit "m-3.0.") = 0.243 "";
    parameter Real elmt_PYK_elmt_Katp(unit "m-3.0.") = 1.5 "";
    parameter Real elmt_PYK_elmt_Kpep(unit "m-3.0.") = 0.281 "";
    parameter Real elmt_PYK_elmt_Kiatp(unit "m-3.0.") = 9.3 "";
    parameter Real elmt_PYK_elmt_kcat(unit "s-1.0") = 20.146 "";
    parameter Real elmt_PYK_elmt_Kf16p(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_PYK_elmt_Kpyr(unit "m-3.0.") = 21.0 "";
    Real elmt_reactant40 "";
    Real elmt_reactant41 "";
    Real elmt_product43 "";
    Real elmt_product42 "";
    Real elmt_udp_to_utp(unit = "") "udp_to_utp";
    parameter Real elmt_udp_to_utp_elmt_k(unit "m3.0.mol-1.0.s-1.0") = 0.0745258294103764 "";
    Real elmt_reactant63 "";
    Real elmt_reactant64 "";
    Real elmt_product66 "";
    Real elmt_product65 "";
    Real elmt_RKI(unit = "") "RKI";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_RKI_elmt_Keq(unit "") = 4.0 "";
    parameter Real elmt_RKI_elmt_Kr5p(unit "m-3.0.") = 5.7 "";
    parameter Real elmt_RKI_elmt_Kru5p(unit "m-3.0.") = 2.47 "";
    parameter Real elmt_RKI_elmt_Kiru5p(unit "m-3.0.") = 9.88 "";
    parameter Real elmt_RKI_elmt_kcat(unit "s-1.0") = 335.0 "";
    Real elmt_product74 "";
    Real elmt_reactant73 "";
    Real elmt_SOL(unit = "") "SOL";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_SOL_elmt_Kp6g(unit "m-3.0.") = 0.5 "";
    parameter Real elmt_SOL_elmt_Kg6l(unit "m-3.0.") = 0.8 "";
    parameter Real elmt_SOL_elmt_kcat(unit "s-1.0") = 4.3 "";
    Real elmt_product78 "";
    Real elmt_reactant77 "";
    Real elmt_R5P_sink(unit = "") "R5P sink";
    parameter Real elmt_R5P_sink_elmt_k(unit "s-1.0") = 1.0 "";
    Real elmt_reactant98 "";
    Real elmt_ZWF(unit = "") "ZWF";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ZWF_elmt_Kg6p(unit "m-3.0.") = 0.042 "";
    parameter Real elmt_ZWF_elmt_Knadp(unit "m-3.0.") = 0.045 "";
    parameter Real elmt_ZWF_elmt_Kg6l(unit "m-3.0.") = 0.01 "";
    parameter Real elmt_ZWF_elmt_Knadph(unit "m-3.0.") = 0.017 "";
    parameter Real elmt_ZWF_elmt_kcat(unit "s-1.0") = 189.0 "";
    Real elmt_product94 "";
    Real elmt_product93 "";
    Real elmt_reactant91 "";
    Real elmt_reactant92 "";


    initial equation
        elmt_product74 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_product72 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_product71 = 1.0;
        elmt_product78 = 1.0;
        elmt_product76 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product68 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product85 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product82 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product89 = 1.0;
        elmt_product86 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_product81 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product96 = 1.0;
        elmt_product94 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product93 = 1.0;
        elmt_product12 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_product90 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product8 = 1.0;
        elmt_product6 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;
        elmt_product30 = 1.0;
        elmt_reactant83 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_product33 = 1.0;
        elmt_reactant80 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant87 = 1.0;
        elmt_reactant88 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_reactant95 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_reactant91 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant98 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product37 = 1.0;
        elmt_product36 = 1.0;
        elmt_product39 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product55 = 1.0;
        elmt_product54 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_product46 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant4 = 2.0;
        elmt_reactant75 = 1.0;
        elmt_product66 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant77 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant79 = 1.0;
        elmt_product58 = 1.0;


    equation
        elmt_PGM = (elmt_cell * ((elmt_PGM_elmt_Vmax * ((elmt_G6P / elmt_PGM_elmt_Kg6p) - (elmt_G1P / (elmt_PGM_elmt_Kg6p * elmt_PGM_elmt_Keq)))) / (1.0 + (elmt_G6P / elmt_PGM_elmt_Kg6p) + (elmt_G1P / elmt_PGM_elmt_Kg1p))));
        elmt_PGK = (elmt_cell * ((elmt_PGK1 * elmt_PGK_elmt_kcat * Functions.pow((elmt_ADP / elmt_PGK_elmt_Kadp), (elmt_PGK_elmt_nHadp - 1.0)) * (((elmt_BPG * elmt_ADP) / (elmt_PGK_elmt_Kbpg * elmt_PGK_elmt_Kadp)) - ((elmt_P3G * elmt_ATP) / (elmt_PGK_elmt_Kbpg * elmt_PGK_elmt_Kadp * elmt_PGK_elmt_Keq)))) / ((1.0 + (elmt_BPG / elmt_PGK_elmt_Kbpg) + (elmt_P3G / elmt_PGK_elmt_Kp3g)) * (1.0 + Functions.pow((elmt_ADP / elmt_PGK_elmt_Kadp), elmt_PGK_elmt_nHadp) + (elmt_ATP / elmt_PGK_elmt_Katp)))));
        elmt_acetate_branch = (elmt_cell * elmt_acetate_branch_elmt_k * elmt_AcAld * elmt_NAD);
        elmt_PGI = (elmt_cell * ((elmt_PGI1 * elmt_PGI_elmt_kcat * ((elmt_G6P / elmt_PGI_elmt_Kg6p) - (elmt_F6P / (elmt_PGI_elmt_Kg6p * elmt_PGI_elmt_Keq)))) / (1.0 + (elmt_G6P / elmt_PGI_elmt_Kg6p) + (elmt_F6P / elmt_PGI_elmt_Kf6p))));
        elmt_TAL = (elmt_cell * ((((elmt_TAL1 * elmt_TAL_elmt_kcat_TAL1 * ((elmt_GAP * elmt_S7P) - ((elmt_F6P * elmt_E4P) / elmt_TAL_elmt_Keq))) / (elmt_TAL_elmt_Kgap_TAL1 * elmt_TAL_elmt_Ks7p_TAL1)) / ((1.0 + (elmt_GAP / elmt_TAL_elmt_Kgap_TAL1) + (elmt_F6P / elmt_TAL_elmt_Kf6p_TAL1)) * (1.0 + (elmt_S7P / elmt_TAL_elmt_Ks7p_TAL1) + (elmt_E4P / elmt_TAL_elmt_Ke4p_TAL1)))) + (((elmt_NQM1 * elmt_TAL_elmt_kcat_NQM1 * ((elmt_GAP * elmt_S7P) - ((elmt_F6P * elmt_E4P) / elmt_TAL_elmt_Keq))) / (elmt_TAL_elmt_Kgap_NQM1 * elmt_TAL_elmt_Ks7p_NQM1)) / ((1.0 + (elmt_GAP / elmt_TAL_elmt_Kgap_NQM1) + (elmt_F6P / elmt_TAL_elmt_Kf6p_NQM1)) * (1.0 + (elmt_S7P / elmt_TAL_elmt_Ks7p_NQM1) + (elmt_E4P / elmt_TAL_elmt_Ke4p_NQM1))))));
        elmt_UGP = (elmt_cell * (((elmt_UGP_elmt_Vmax * elmt_UTP * elmt_G1P) / (elmt_UGP_elmt_Kutp * elmt_UGP_elmt_Kg1p)) / ((elmt_UGP_elmt_Kiutp / elmt_UGP_elmt_Kutp) + (elmt_UTP / elmt_UGP_elmt_Kutp) + (elmt_G1P / elmt_UGP_elmt_Kg1p) + ((elmt_UTP * elmt_G1P) / (elmt_UGP_elmt_Kutp * elmt_UGP_elmt_Kg1p)) + (((elmt_UGP_elmt_Kiutp / elmt_UGP_elmt_Kutp) * elmt_UDG) / elmt_UGP_elmt_Kiudg) + ((elmt_G1P * elmt_UDG) / (elmt_UGP_elmt_Kg1p * elmt_UGP_elmt_Kiudg)))));
        elmt_GND = (elmt_cell * ((((elmt_GND1 * elmt_GND_elmt_kcat_GND1 * elmt_P6G * elmt_NADP) / (elmt_GND_elmt_Kp6g_GND1 * elmt_GND_elmt_Knadp_GND1)) / ((1.0 + (elmt_P6G / elmt_GND_elmt_Kp6g_GND1) + (elmt_Ru5P / elmt_GND_elmt_Kru5p_GND1)) * (1.0 + (elmt_NADP / elmt_GND_elmt_Knadp_GND1) + (elmt_NADPH / elmt_GND_elmt_Knadph_GND1)))) + ((elmt_GND2 * elmt_GND_elmt_kcat_GND2 * elmt_P6G * elmt_NADP) / ((1.0 + (elmt_P6G / elmt_GND_elmt_Kp6g_GND2) + (elmt_Ru5P / elmt_GND_elmt_Kru5p_GND2)) * (1.0 + (elmt_NADP / elmt_GND_elmt_Knadp_GND2) + (elmt_NADPH / elmt_GND_elmt_Knadph_GND2))))));
        elmt_GPD = (elmt_cell * (((elmt_GPD_elmt_Vmax / (elmt_GPD_elmt_Kdhap * elmt_GPD_elmt_Knadh)) * ((elmt_DHAP * elmt_NADH) - ((elmt_G3P * elmt_NAD) / elmt_GPD_elmt_Keq))) / ((1.0 + (elmt_F16bP / elmt_GPD_elmt_Kfbp) + (elmt_ATP / elmt_GPD_elmt_Katp) + (elmt_ADP / elmt_GPD_elmt_Kadp)) * (1.0 + (elmt_DHAP / elmt_GPD_elmt_Kdhap) + (elmt_G3P / elmt_GPD_elmt_Kg3p)) * (1.0 + (elmt_NADH / elmt_GPD_elmt_Knadh) + (elmt_NAD / elmt_GPD_elmt_Knad)))));
        elmt_HXK = ((elmt_cell * ((elmt_HXK1 * elmt_HXK_elmt_kcat_HXK1 * (((elmt_GLC * elmt_ATP) / (elmt_HXK_elmt_Kglc_HXK1 * elmt_HXK_elmt_Katp_HXK1)) - ((elmt_G6P * elmt_ADP) / (elmt_HXK_elmt_Kglc_HXK1 * elmt_HXK_elmt_Katp_HXK1 * elmt_HXK_elmt_Keq)))) / ((1.0 + (elmt_GLC / elmt_HXK_elmt_Kglc_HXK1) + (elmt_G6P / elmt_HXK_elmt_Kg6p_HXK1) + (elmt_T6P / elmt_HXK_elmt_Kit6p_HXK1)) * (1.0 + (elmt_ATP / elmt_HXK_elmt_Katp_HXK1) + (elmt_ADP / elmt_HXK_elmt_Kadp_HXK1))))) + (elmt_cell * ((elmt_HXK2 * elmt_HXK_elmt_kcat_HXK2 * (((elmt_GLC * elmt_ATP) / (elmt_HXK_elmt_Kglc_HXK2 * elmt_HXK_elmt_Katp_HXK2)) - ((elmt_G6P * elmt_ADP) / (elmt_HXK_elmt_Kglc_HXK2 * elmt_HXK_elmt_Katp_HXK2 * elmt_HXK_elmt_Keq)))) / ((1.0 + (elmt_GLC / elmt_HXK_elmt_Kglc_HXK2) + (elmt_G6P / elmt_HXK_elmt_Kg6p_HXK2) + (elmt_T6P / elmt_HXK_elmt_Kit6p_HXK2)) * (1.0 + (elmt_ATP / elmt_HXK_elmt_Katp_HXK2) + (elmt_ADP / elmt_HXK_elmt_Kadp_HXK2))))) + (elmt_cell * ((elmt_GLK1 * elmt_HXK_elmt_kcat_GLK1 * (((elmt_GLC * elmt_ATP) / (elmt_HXK_elmt_Kglc_GLK1 * elmt_HXK_elmt_Katp_GLK1)) - ((elmt_G6P * elmt_ADP) / (elmt_HXK_elmt_Kglc_GLK1 * elmt_HXK_elmt_Katp_GLK1 * elmt_HXK_elmt_Keq)))) / ((1.0 + (elmt_GLC / elmt_HXK_elmt_Kglc_GLK1) + (elmt_G6P / elmt_HXK_elmt_Kg6p_GLK1)) * (1.0 + (elmt_ATP / elmt_HXK_elmt_Katp_GLK1) + (elmt_ADP / elmt_HXK_elmt_Kadp_GLK1))))));
        elmt_NADPH_oxidase = (elmt_cell * elmt_NADPH_oxidase_elmt_k * elmt_NADPH);
        elmt_GPP = (elmt_cell * (((elmt_GPP_elmt_Vmax * elmt_G3P) / elmt_GPP_elmt_Kg3p) / (1.0 + (elmt_G3P / elmt_GPP_elmt_Kg3p))));
        elmt_RPE = (((elmt_cell * elmt_RPE1 * elmt_RPE_elmt_kcat * (elmt_Ru5P - (elmt_X5P / elmt_RPE_elmt_Keq))) / elmt_RPE_elmt_Kru5p) / (1.0 + (elmt_Ru5P / elmt_RPE_elmt_Kru5p) + (elmt_X5P / elmt_RPE_elmt_Kx5p)));
        elmt_ADH = (elmt_cell * ((elmt_ADH1 * elmt_ADH_elmt_kcat * (((elmt_AcAld * elmt_NADH) / (elmt_ADH_elmt_Kacald * elmt_ADH_elmt_Kinadh)) - ((elmt_EtOH * elmt_NAD) / (elmt_ADH_elmt_Kacald * elmt_ADH_elmt_Kinadh * elmt_ADH_elmt_Keq)))) / (1.0 + (elmt_NADH / elmt_ADH_elmt_Kinadh) + ((elmt_AcAld * elmt_ADH_elmt_Knadh) / (elmt_ADH_elmt_Kinadh * elmt_ADH_elmt_Kacald)) + ((elmt_EtOH * elmt_ADH_elmt_Knad) / (elmt_ADH_elmt_Kinad * elmt_ADH_elmt_Ketoh)) + (elmt_NAD / elmt_ADH_elmt_Kinad) + ((elmt_AcAld * elmt_NADH) / (elmt_ADH_elmt_Kinadh * elmt_ADH_elmt_Kacald)) + ((elmt_NADH * elmt_EtOH * elmt_ADH_elmt_Knad) / (elmt_ADH_elmt_Kinadh * elmt_ADH_elmt_Kinad * elmt_ADH_elmt_Ketoh)) + ((elmt_AcAld * elmt_NAD * elmt_ADH_elmt_Knadh) / (elmt_ADH_elmt_Kinadh * elmt_ADH_elmt_Kinad * elmt_ADH_elmt_Kacald)) + ((elmt_EtOH * elmt_NAD) / (elmt_ADH_elmt_Ketoh * elmt_ADH_elmt_Kinad)) + ((elmt_AcAld * elmt_NADH * elmt_EtOH) / (elmt_ADH_elmt_Kinadh * elmt_ADH_elmt_Kietoh * elmt_ADH_elmt_Kacald)) + ((elmt_AcAld * elmt_EtOH * elmt_NAD) / (elmt_ADH_elmt_Kiacald * elmt_ADH_elmt_Kinad * elmt_ADH_elmt_Ketoh)))));
        elmt_FBA = (elmt_cell * ((elmt_FBA1 * elmt_FBA_elmt_kcat * ((elmt_F16bP / elmt_FBA_elmt_Kf16bp) - ((elmt_DHAP * elmt_GAP) / (elmt_FBA_elmt_Kf16bp * elmt_FBA_elmt_Keq)))) / (1.0 + (elmt_F16bP / elmt_FBA_elmt_Kf16bp) + (elmt_DHAP / elmt_FBA_elmt_Kdhap) + (elmt_GAP / elmt_FBA_elmt_Kgap) + ((elmt_F16bP * elmt_GAP) / (elmt_FBA_elmt_Kf16bp * elmt_FBA_elmt_Kigap)) + ((elmt_DHAP * elmt_GAP) / (elmt_FBA_elmt_Kdhap * elmt_FBA_elmt_Kgap)))));
        elmt_ENO = ((elmt_cell * ((elmt_ENO1 * elmt_ENO_elmt_kcat_ENO1 * ((elmt_P2G / elmt_ENO_elmt_Kp2g_ENO1) - (elmt_PEP / (elmt_ENO_elmt_Kp2g_ENO1 * elmt_ENO_elmt_Keq)))) / (1.0 + (elmt_P2G / elmt_ENO_elmt_Kp2g_ENO1) + (elmt_PEP / elmt_ENO_elmt_Kpep_ENO1)))) + (elmt_cell * ((elmt_ENO2 * elmt_ENO_elmt_kcat_ENO2 * ((elmt_P2G / elmt_ENO_elmt_Kp2g_ENO2) - (elmt_PEP / (elmt_ENO_elmt_Kp2g_ENO2 * elmt_ENO_elmt_Keq)))) / (1.0 + (elmt_P2G / elmt_ENO_elmt_Kp2g_ENO2) + (elmt_PEP / elmt_ENO_elmt_Kpep_ENO2)))));
        elmt_GPM = (elmt_cell * ((elmt_GPM1 * elmt_GPM_elmt_kcat * ((elmt_P3G / elmt_GPM_elmt_Kp3g) - (elmt_P2G / (elmt_GPM_elmt_Kp3g * elmt_GPM_elmt_Keq)))) / (1.0 + (elmt_P3G / elmt_GPM_elmt_Kp3g) + (elmt_P2G / elmt_GPM_elmt_Kp2g))));
        elmt_HXT = (elmt_cell * (((elmt_HXT_elmt_Vmax * (elmt_GLCx - elmt_GLC)) / elmt_HXT_elmt_Kglc) / (1.0 + (elmt_GLCx / elmt_HXT_elmt_Kglc) + (elmt_GLC / elmt_HXT_elmt_Kglc) + ((((elmt_HXT_elmt_Ki * elmt_GLCx) / elmt_HXT_elmt_Kglc) * elmt_GLC) / elmt_HXT_elmt_Kglc))));
        elmt_PDC = ((elmt_cell * (((elmt_PDC1 * elmt_PDC_elmt_kcat_PDC1 * elmt_PYR) / elmt_PDC_elmt_Kpyr_PDC1) / (1.0 + (elmt_PYR / elmt_PDC_elmt_Kpyr_PDC1)))) + (elmt_cell * (((elmt_PDC5 * elmt_PDC_elmt_kcat_PDC5 * elmt_PYR) / elmt_PDC_elmt_Kpyr_PDC5) / (1.0 + (elmt_PYR / elmt_PDC_elmt_Kpyr_PDC5)))) + (elmt_cell * (((elmt_PDC6 * elmt_PDC_elmt_kcat_PDC6 * elmt_PYR) / elmt_PDC_elmt_Kpyr_PDC6) / (1.0 + (elmt_PYR / elmt_PDC_elmt_Kpyr_PDC6)))));
        elmt_TKL_R5P = (((elmt_cell * elmt_TKL1 * elmt_TKL_R5P_elmt_kcat * ((elmt_X5P * elmt_R5P) - ((elmt_GAP * elmt_S7P) / elmt_TKL_R5P_elmt_Keq))) / (elmt_Kx5p_TAL * elmt_Kr5p_TAL)) / ((1.0 + (elmt_X5P / elmt_Kx5p_TAL) + (elmt_GAP / elmt_Kgap_TAL)) * (1.0 + (elmt_E4P / elmt_Ke4p_TAL) + (elmt_F6P / elmt_Kf6p_TAL) + (elmt_R5P / elmt_Kr5p_TAL) + (elmt_S7P / elmt_Ks7p_TAL))));
        elmt_TPI = (elmt_cell * ((((elmt_TPI1 * elmt_TPI_elmt_kcat) / elmt_TPI_elmt_Kdhap) * (elmt_DHAP - (elmt_GAP / elmt_TPI_elmt_Keq))) / (1.0 + (elmt_DHAP / elmt_TPI_elmt_Kdhap) + ((elmt_GAP / elmt_TPI_elmt_Kgap) * (1.0 + Functions.pow((elmt_GAP / elmt_TPI_elmt_Kigap), 4.0))))));
        elmt_E4P_sink = (elmt_cell * elmt_E4P_sink_elmt_k * elmt_E4P);
        elmt_TDH = ((elmt_cell * ((elmt_TDH1 * elmt_TDH_elmt_kcat_TDH1 * (((elmt_GAP * elmt_NAD) / (elmt_TDH_elmt_Kgap_TDH1 * elmt_TDH_elmt_Knad_TDH1)) - ((elmt_BPG * elmt_NADH) / (elmt_TDH_elmt_Kgap_TDH1 * elmt_TDH_elmt_Knad_TDH1 * elmt_TDH_elmt_Keq)))) / ((1.0 + (elmt_GAP / elmt_TDH_elmt_Kgap_TDH1) + (elmt_BPG / elmt_TDH_elmt_Kbpg_TDH1)) * (1.0 + (elmt_NAD / elmt_TDH_elmt_Knad_TDH1) + (elmt_NADH / elmt_TDH_elmt_Knadh_TDH1))))) + (elmt_cell * ((elmt_TDH3 * elmt_TDH_elmt_kcat_TDH3 * (((elmt_GAP * elmt_NAD) / (elmt_TDH_elmt_Kgap_TDH3 * elmt_TDH_elmt_Knad_TDH3)) - ((elmt_BPG * elmt_NADH) / (elmt_TDH_elmt_Kgap_TDH3 * elmt_TDH_elmt_Knad_TDH3 * elmt_TDH_elmt_Keq)))) / ((1.0 + (elmt_GAP / elmt_TDH_elmt_Kgap_TDH3) + (elmt_BPG / elmt_TDH_elmt_Kbpg_TDH3)) * (1.0 + (elmt_NAD / elmt_TDH_elmt_Knad_TDH3) + (elmt_NADH / elmt_TDH_elmt_Knadh_TDH3))))));
        elmt_TPS = (elmt_cell * (((elmt_TPS_elmt_Vmax * elmt_G6P * elmt_UDG) / (elmt_TPS_elmt_Kg6p * elmt_TPS_elmt_Kudg)) / ((1.0 + (elmt_G6P / elmt_TPS_elmt_Kg6p)) * (1.0 + (elmt_UDG / elmt_TPS_elmt_Kudg)))));
        elmt_PFK = (elmt_cell * elmt_PFK2 * elmt_PFK_elmt_kcat * ((elmt_PFK_elmt_gR * (elmt_F6P / elmt_PFK_elmt_Kf6p) * (elmt_ATP / elmt_PFK_elmt_Katp) * (1.0 - (((elmt_F16bP * elmt_ADP) / (elmt_F6P * elmt_ATP)) / elmt_PFK_elmt_Keq)) * (1.0 + (elmt_F6P / elmt_PFK_elmt_Kf6p) + (elmt_ATP / elmt_PFK_elmt_Katp) + ((((elmt_PFK_elmt_gR * elmt_F6P) / elmt_PFK_elmt_Kf6p) * elmt_ATP) / elmt_PFK_elmt_Katp) + (elmt_F16bP / elmt_PFK_elmt_Kf16) + (elmt_ADP / elmt_PFK_elmt_Kadp) + ((((elmt_PFK_elmt_gR * elmt_F16bP) / elmt_PFK_elmt_Kf16) * elmt_ADP) / elmt_PFK_elmt_Kadp))) / (Functions.pow((1.0 + (elmt_F6P / elmt_PFK_elmt_Kf6p) + (elmt_ATP / elmt_PFK_elmt_Katp) + ((((elmt_PFK_elmt_gR * elmt_F6P) / elmt_PFK_elmt_Kf6p) * elmt_ATP) / elmt_PFK_elmt_Katp) + (elmt_F16bP / elmt_PFK_elmt_Kf16) + (elmt_ADP / elmt_PFK_elmt_Kadp) + ((((elmt_PFK_elmt_gR * elmt_F16bP) / elmt_PFK_elmt_Kf16) * elmt_ADP) / elmt_PFK_elmt_Kadp)), 2.0) + (elmt_PFK_elmt_L0 * Functions.pow(((1.0 + ((elmt_PFK_elmt_Ciatp * elmt_ATP) / elmt_PFK_elmt_Kiatp)) / (1.0 + (elmt_ATP / elmt_PFK_elmt_Kiatp))), 2.0) * Functions.pow(((1.0 + ((elmt_PFK_elmt_Camp * elmt_AMP) / elmt_PFK_elmt_Kamp)) / (1.0 + (elmt_AMP / elmt_PFK_elmt_Kamp))), 2.0) * Functions.pow(((1.0 + ((elmt_PFK_elmt_Cf26 * elmt_F26bP) / elmt_PFK_elmt_Kf26) + ((elmt_PFK_elmt_Cf16 * elmt_F16bP) / elmt_PFK_elmt_Kf16)) / (1.0 + (elmt_F26bP / elmt_PFK_elmt_Kf26) + (elmt_F16bP / elmt_PFK_elmt_Kf16))), 2.0) * Functions.pow((1.0 + ((elmt_PFK_elmt_Catp * elmt_ATP) / elmt_PFK_elmt_Katp)), 2.0)))));
        elmt_TPP = (elmt_cell * (((elmt_TPP_elmt_Vmax * elmt_T6P) / elmt_TPP_elmt_Kt6p) / (1.0 + (elmt_T6P / elmt_TPP_elmt_Kt6p))));
        elmt_ATPase = (elmt_cell * (((elmt_ATPase_elmt_Vmax * elmt_ATP) / elmt_ATPase_elmt_Katp) / (1.0 + (elmt_ATP / elmt_ATPase_elmt_Katp))));
        elmt_TKL_E4P = (((elmt_cell * elmt_TKL1 * elmt_TKL_E4P_elmt_kcat * ((elmt_X5P * elmt_E4P) - ((elmt_GAP * elmt_F6P) / elmt_TKL_E4P_elmt_Keq))) / (elmt_Kx5p_TAL * elmt_Ke4p_TAL)) / ((1.0 + (elmt_X5P / elmt_Kx5p_TAL) + (elmt_GAP / elmt_Kgap_TAL)) * (1.0 + (elmt_E4P / elmt_Ke4p_TAL) + (elmt_F6P / elmt_Kf6p_TAL) + (elmt_R5P / elmt_Kr5p_TAL) + (elmt_S7P / elmt_Ks7p_TAL))));
        elmt_AK = (elmt_cell * elmt_AK_elmt_k * ((elmt_ADP * elmt_ADP) - ((elmt_AMP * elmt_ATP) / elmt_AK_elmt_Keq)));
        elmt_PYK = (elmt_cell * (((elmt_CDC19 * elmt_PYK_elmt_kcat * ((elmt_PEP * elmt_ADP) - ((elmt_PYR * elmt_ATP) / elmt_PYK_elmt_Keq))) / (elmt_PYK_elmt_Kpep * elmt_PYK_elmt_Kadp)) / ((1.0 + (elmt_PEP / elmt_PYK_elmt_Kpep) + (elmt_PYR / elmt_PYK_elmt_Kpyr) + (elmt_PYK_elmt_L0 * (((elmt_ATP / elmt_PYK_elmt_Kiatp) + 1.0) / ((elmt_F16bP / elmt_PYK_elmt_Kf16p) + 1.0)))) * (1.0 + (elmt_ADP / elmt_PYK_elmt_Kadp) + (elmt_ATP / elmt_PYK_elmt_Katp)))));
        elmt_udp_to_utp = (elmt_cell * elmt_udp_to_utp_elmt_k * elmt_UDP * elmt_ATP);
        elmt_RKI = (((elmt_cell * elmt_RKI1 * elmt_RKI_elmt_kcat * (elmt_Ru5P - (elmt_R5P / elmt_RKI_elmt_Keq))) / elmt_RKI_elmt_Kru5p) / (1.0 + (elmt_Ru5P / elmt_RKI_elmt_Kru5p) + (elmt_R5P / elmt_RKI_elmt_Kr5p)));
        elmt_SOL = (((elmt_cell * elmt_SOL3 * elmt_SOL_elmt_kcat * elmt_G6L) / elmt_SOL_elmt_Kg6l) / (1.0 + (elmt_G6L / elmt_SOL_elmt_Kg6l) + (elmt_P6G / elmt_SOL_elmt_Kp6g)));
        elmt_R5P_sink = (elmt_cell * elmt_R5P_sink_elmt_k * elmt_R5P);
        elmt_ZWF = (((elmt_cell * elmt_ZWF1 * elmt_ZWF_elmt_kcat * elmt_G6P * elmt_NADP) / (elmt_ZWF_elmt_Kg6p * elmt_ZWF_elmt_Knadp)) / ((1.0 + (elmt_G6P / elmt_ZWF_elmt_Kg6p) + (elmt_G6L / elmt_ZWF_elmt_Kg6l)) * (1.0 + (elmt_NADP / elmt_ZWF_elmt_Knadp) + (elmt_NADPH / elmt_ZWF_elmt_Knadph))));
        der(elmt_product74) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_product72) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product71) = 0;
        der(elmt_product78) = 0;
        der(elmt_product76) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product68) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product85) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product82) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product89) = 0;
        der(elmt_product86) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_product81) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product96) = 0;
        der(elmt_product94) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product93) = 0;
        der(elmt_product12) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_product90) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product8) = 0;
        der(elmt_product6) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;
        der(elmt_product30) = 0;
        der(elmt_reactant83) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_product33) = 0;
        der(elmt_reactant80) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant87) = 0;
        der(elmt_reactant88) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_reactant95) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_reactant91) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant98) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product37) = 0;
        der(elmt_product36) = 0;
        der(elmt_product39) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product55) = 0;
        der(elmt_product54) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_product46) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant77) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant79) = 0;
        der(elmt_product58) = 0;

end Reactions;
