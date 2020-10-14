within BIOMD093;
class Reactions

    input Real elmt_nucleus;
    input Real elmt_STAT1n_STAT1n_star;
    input Real elmt_IFNRJ2_star_SHP2_SOCS1_STAT1c;
    input Real elmt_JAK;
    input Real elmt_STAT1c;
    input Real elmt_mRNAn;
    input Real elmt_IFNRJ2_star_SHP2_STAT1c;
    input Real elmt_SHP2;
    input Real elmt_STAT1c_star;
    input Real elmt_IFNRJ2_star_SHP2_SOCS1;
    input Real elmt_IFNRJ2_star_STAT1c;
    input Real elmt_IFNRJ2_star_SOCS1_STAT1c;
    input Real elmt_IFNRJ;
    input Real elmt_PPN;
    input Real elmt_STAT1c_star_PPX;
    input Real elmt_R;
    input Real elmt_RJ;
    input Real elmt_IFNRJ2_star_SOCS1;
    input Real elmt_PPX;
    input Real elmt_IFN;
    input Real elmt_IFNR;
    input Real elmt_STAT1n_star_STAT1n_star_PPN;
    input Real elmt_STAT1n_star_PPN;
    input Real elmt_SOCS1;
    input Real elmt_IFNRJ2_star_STAT1c_star;
    input Real elmt_STAT1c_star_STAT1c_star_PPX;
    input Real elmt_STAT1n_star_STAT1n_star;
    input Real elmt_STAT1n;
    input Real elmt_STAT1c_star_STAT1c_star;
    input Real elmt_mRNAc;
    input Real elmt_cytoplasm;
    input Real elmt_IFNRJ2;
    input Real elmt_IFNRJ2_star;
    input Real elmt_IFNRJ2_star_SHP2;
    input Real elmt_STAT1n_star;
    input Real elmt_STAT1c_STAT1c_star;

    Real elmt_v24(unit = "") "Transcription";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v24_elmt_ka(unit "m-3.0..s-1.0") = 0.01 "";
    parameter Real elmt_v24_elmt_kb(unit "m-3.0.") = 400.0 "";
    Real elmt_product63 "";
    Real elmt_v46(unit = "") "IFNR-JAK binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v46_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.1 "";
    parameter Real elmt_v46_elmt_kb(unit "s-1.0") = 0.05 "";
    Real elmt_reactant121 "";
    Real elmt_reactant120 "";
    Real elmt_product122 "";
    Real elmt_v23(unit = "") "STAT1n transport to cytoplasm";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v23_elmt_kf(unit "s-1.0") = 0.05 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_v45(unit = "") "Interferon-receptor binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v45_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    parameter Real elmt_v45_elmt_kb(unit "s-1.0") = 0.02 "";
    Real elmt_reactant118 "";
    Real elmt_reactant117 "";
    Real elmt_product119 "";
    Real elmt_v9(unit = "") "SHP2 binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v9_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.001 "";
    parameter Real elmt_v9_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_product23 "";
    Real elmt_reactant21 "";
    Real elmt_reactant22 "";
    Real elmt_v22(unit = "") "STAT1n-phosphorylated STAT1n dimerization";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v22_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 2.0E-7 "";
    parameter Real elmt_v22_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_reactant59 "";
    Real elmt_v44(unit = "") "SOCS1 binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v44_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    parameter Real elmt_v44_elmt_kb(unit "s-1.0") = 0.1 "";
    Real elmt_reactant115 "";
    Real elmt_reactant114 "";
    Real elmt_product116 "";
    Real elmt_v21(unit = "") "STAT1n dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v21_elmt_kf(unit "s-1.0") = 0.005 "";
    Real elmt_product56 "";
    Real elmt_product57 "";
    Real elmt_reactant55 "";
    Real elmt_v43(unit = "") "SOCS1 binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v43_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    parameter Real elmt_v43_elmt_kb(unit "s-1.0") = 0.1 "";
    Real elmt_product113 "";
    Real elmt_reactant112 "";
    Real elmt_reactant111 "";
    Real elmt_v7(unit = "") "Activated IFNRJ2-STAT1c binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v7_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.005 "";
    parameter Real elmt_v7_elmt_kb(unit "s-1.0") = 0.5 "";
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_v20(unit = "") "PPN binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v20_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.001 "";
    parameter Real elmt_v20_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_reactant52 "";
    Real elmt_reactant53 "";
    Real elmt_product54 "";
    Real elmt_v42(unit = "") "SOCS1 binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v42_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    parameter Real elmt_v42_elmt_kb(unit "s-1.0") = 0.1 "";
    Real elmt_reactant109 "";
    Real elmt_reactant108 "";
    Real elmt_product110 "";
    Real elmt_v8(unit = "") "Activated STAT1c dimerization";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v8_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    parameter Real elmt_v8_elmt_kb(unit "s-1.0") = 0.1 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_v41(unit = "") "SOCS1 unbinding";
    parameter Real elmt_v41_elmt_kf(unit "s-1.0") = 5.0E-4 "";
    Real elmt_reactant106 "";
    Real elmt_product107 "";
    Real elmt_v5(unit = "") "Activated INFRJ2-STAT1c binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v5_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.008 "";
    parameter Real elmt_v5_elmt_kb(unit "s-1.0") = 0.8 "";
    Real elmt_product12 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_v40(unit = "") "IFNRJ2 dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v40_elmt_kf(unit "s-1.0") = 0.003 "";
    Real elmt_product104 "";
    Real elmt_product103 "";
    Real elmt_reactant102 "";
    Real elmt_product105 "";
    Real elmt_v6(unit = "") "STAT1c activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v6_elmt_kf(unit "s-1.0") = 0.4 "";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_v29(unit = "") "phosphorylated IFNRJ2-SOCS1 binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v29_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    parameter Real elmt_v29_elmt_kb(unit "s-1.0") = 0.1 "";
    Real elmt_product71 "";
    Real elmt_reactant70 "";
    Real elmt_reactant69 "";
    Real elmt_v28(unit = "") "SOCS1 degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v28_elmt_kf(unit "s-1.0") = 5.0E-4 "";
    Real elmt_reactant68 "";
    Real elmt_v27(unit = "") "mRNAc degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v27_elmt_kf(unit "s-1.0") = 5.0E-4 "";
    Real elmt_reactant67 "";
    Real elmt_v26(unit = "") "SOCS1 synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v26_elmt_kf(unit "s-1.0") = 0.01 "";
    Real elmt_product66 "";
    Real elmt_v25(unit = "") "mRNA transport to cytoplasm";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v25_elmt_kf(unit "s-1.0") = 0.001 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_v3(unit = "") "IFN-Receptor complex dimerization";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v3_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.04 "";
    parameter Real elmt_v3_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v4(unit = "") "INF-Receptor complex activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v4_elmt_kf(unit "s-1.0") = 0.005 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_v1(unit = "") "Receptor-JAK Binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v1_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.1 "";
    parameter Real elmt_v1_elmt_kb(unit "s-1.0") = 0.05 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_v2(unit = "") "Interferon-Receptor Binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v2_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    parameter Real elmt_v2_elmt_kb(unit "s-1.0") = 0.02 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_v13(unit = "") "PPX binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v13_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.001 "";
    parameter Real elmt_v13_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_reactant34 "";
    Real elmt_v35(unit = "") "STAT1c binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v35_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.008 "";
    parameter Real elmt_v35_elmt_kb(unit "s-1.0") = 0.8 "";
    Real elmt_reactant88 "";
    Real elmt_reactant89 "";
    Real elmt_product90 "";
    Real elmt_v12(unit = "") "STAT1c dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v12_elmt_kf(unit "s-1.0") = 0.003 "";
    Real elmt_reactant30 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_v34(unit = "") "SHP2 binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v34_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.001 "";
    parameter Real elmt_v34_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_reactant85 "";
    Real elmt_reactant86 "";
    Real elmt_product87 "";
    Real elmt_v11(unit = "") "Phosphorylated STAT1c-PPX binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v11_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.001 "";
    parameter Real elmt_v11_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_reactant27 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_v33(unit = "") "SOCS1 unbinding";
    parameter Real elmt_v33_elmt_kf(unit "s-1.0") = 5.0E-4 "";
    Real elmt_reactant83 "";
    Real elmt_product84 "";
    Real elmt_v10(unit = "") "IFNJR2 dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v10_elmt_kf(unit "s-1.0") = 0.003 "";
    Real elmt_product26 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_v32(unit = "") "IFNRJ2 dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v32_elmt_kf(unit "s-1.0") = 0.003 "";
    Real elmt_product82 "";
    Real elmt_product79 "";
    Real elmt_product81 "";
    Real elmt_product80 "";
    Real elmt_reactant78 "";
    Real elmt_v31(unit = "") "SHP2 binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v31_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.001 "";
    parameter Real elmt_v31_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_reactant75 "";
    Real elmt_product77 "";
    Real elmt_reactant76 "";
    Real elmt_v30(unit = "") "STAT1c binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v30_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.008 "";
    parameter Real elmt_v30_elmt_kb(unit "s-1.0") = 0.8 "";
    Real elmt_reactant72 "";
    Real elmt_product74 "";
    Real elmt_reactant73 "";
    Real elmt_v19(unit = "") "STAT1n dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v19_elmt_kf(unit "s-1.0") = 0.005 "";
    Real elmt_product51 "";
    Real elmt_product50 "";
    Real elmt_reactant49 "";
    Real elmt_v18(unit = "") "PPN binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v18_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.001 "";
    parameter Real elmt_v18_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_reactant47 "";
    Real elmt_product48 "";
    Real elmt_reactant46 "";
    Real elmt_v17(unit = "") "Phosphorylated STAT1n dimerization";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v17_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.02 "";
    parameter Real elmt_v17_elmt_kb(unit "s-1.0") = 0.1 "";
    Real elmt_product45 "";
    Real elmt_reactant44 "";
    Real elmt_v39(unit = "") "SOCS1 unbinding";
    parameter Real elmt_v39_elmt_kf(unit "s-1.0") = 5.0E-4 "";
    Real elmt_product101 "";
    Real elmt_reactant100 "";
    Real elmt_v16(unit = "") "STAT1c-nuclear transport";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v16_elmt_kf(unit "s-1.0") = 0.005 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_v38(unit = "") "SOCS1 unbinding";
    parameter Real elmt_v38_elmt_kf(unit "s-1.0") = 5.0E-4 "";
    Real elmt_product99 "";
    Real elmt_reactant98 "";
    Real elmt_v15(unit = "") "STAT1c-phosphorylated STAT1c binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v15_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 2.0E-7 "";
    parameter Real elmt_v15_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_reactant39 "";
    Real elmt_v37(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v37_elmt_kf(unit "s-1.0") = 0.003 "";
    Real elmt_reactant94 "";
    Real elmt_product96 "";
    Real elmt_product95 "";
    Real elmt_product97 "";
    Real elmt_v14(unit = "") "STAT1c dimer dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v14_elmt_kf(unit "s-1.0") = 0.003 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_product37 "";
    Real elmt_v36(unit = "") "SHP2 binding";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v36_elmt_kf(unit "m3.0.mol-1.0.s-1.0") = 0.001 "";
    parameter Real elmt_v36_elmt_kb(unit "s-1.0") = 0.2 "";
    Real elmt_product93 "";
    Real elmt_reactant91 "";
    Real elmt_reactant92 "";


    initial equation
        elmt_product74 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_product71 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product77 = 1.0;
        elmt_reactant109 = 1.0;
        elmt_reactant108 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant44 = 2.0;
        elmt_reactant46 = 1.0;
        elmt_reactant118 = 1.0;
        elmt_reactant117 = 1.0;
        elmt_reactant115 = 1.0;
        elmt_reactant114 = 1.0;
        elmt_reactant112 = 1.0;
        elmt_reactant111 = 1.0;
        elmt_product84 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product82 = 1.0;
        elmt_product87 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_product81 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_product80 = 1.0;
        elmt_reactant121 = 1.0;
        elmt_reactant120 = 1.0;
        elmt_product101 = 1.0;
        elmt_product104 = 1.0;
        elmt_product103 = 1.0;
        elmt_product79 = 1.0;
        elmt_product105 = 1.0;
        elmt_product107 = 1.0;
        elmt_product96 = 1.0;
        elmt_product95 = 1.0;
        elmt_product93 = 1.0;
        elmt_product12 = 1.0;
        elmt_product99 = 1.0;
        elmt_product97 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_product90 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant19 = 2.0;
        elmt_product9 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product23 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant106 = 1.0;
        elmt_product15 = 1.0;
        elmt_product14 = 1.0;
        elmt_reactant102 = 1.0;
        elmt_product18 = 1.0;
        elmt_reactant100 = 1.0;
        elmt_reactant83 = 1.0;
        elmt_reactant85 = 1.0;
        elmt_reactant86 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant88 = 1.0;
        elmt_reactant89 = 1.0;
        elmt_product26 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_product45 = 1.0;
        elmt_reactant91 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant98 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product38 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product51 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product56 = 1.0;
        elmt_product54 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_product113 = 1.0;
        elmt_product110 = 1.0;
        elmt_product48 = 1.0;
        elmt_product116 = 1.0;
        elmt_product119 = 1.0;
        elmt_product63 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_reactant6 = 2.0;
        elmt_product66 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant76 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_product122 = 1.0;
        elmt_product57 = 1.0;


    equation
        elmt_v24 = ((elmt_nucleus * elmt_v24_elmt_ka * elmt_STAT1n_star_STAT1n_star) / (elmt_v24_elmt_kb + elmt_STAT1n_star_STAT1n_star));
        elmt_v46 = (elmt_cytoplasm * ((elmt_v46_elmt_kf * elmt_IFNR * elmt_JAK) - (elmt_v46_elmt_kb * elmt_IFNRJ)));
        elmt_v23 = (elmt_nucleus * elmt_v23_elmt_kf * elmt_STAT1n);
        elmt_v45 = (elmt_cytoplasm * ((elmt_v45_elmt_kf * elmt_IFN * elmt_R) - (elmt_v45_elmt_kb * elmt_IFNR)));
        elmt_v9 = (elmt_cytoplasm * ((elmt_v9_elmt_kf * elmt_IFNRJ2_star * elmt_SHP2) - (elmt_v9_elmt_kb * elmt_IFNRJ2_star_SHP2)));
        elmt_v22 = (elmt_nucleus * ((elmt_v22_elmt_kf * elmt_STAT1n * elmt_STAT1n_star) - (elmt_v22_elmt_kb * elmt_STAT1n_STAT1n_star)));
        elmt_v44 = (elmt_cytoplasm * ((elmt_v44_elmt_kf * elmt_SOCS1 * elmt_IFNRJ2_star_SHP2_STAT1c) - (elmt_v44_elmt_kb * elmt_IFNRJ2_star_SHP2_SOCS1_STAT1c)));
        elmt_v21 = (elmt_nucleus * elmt_v21_elmt_kf * elmt_STAT1n_star_STAT1n_star_PPN);
        elmt_v43 = (elmt_cytoplasm * ((elmt_v43_elmt_kf * elmt_SOCS1 * elmt_IFNRJ2_star_SHP2) - (elmt_v43_elmt_kb * elmt_IFNRJ2_star_SHP2_SOCS1)));
        elmt_v7 = (elmt_cytoplasm * ((elmt_v7_elmt_kf * elmt_IFNRJ2_star * elmt_STAT1c_star) - (elmt_v7_elmt_kb * elmt_IFNRJ2_star_STAT1c_star)));
        elmt_v20 = (elmt_nucleus * ((elmt_v20_elmt_kf * elmt_PPN * elmt_STAT1n_star_STAT1n_star) - (elmt_v20_elmt_kb * elmt_STAT1n_star_STAT1n_star_PPN)));
        elmt_v42 = (elmt_cytoplasm * ((elmt_v42_elmt_kf * elmt_SOCS1 * elmt_IFNRJ2_star_STAT1c) - (elmt_v42_elmt_kb * elmt_IFNRJ2_star_SOCS1_STAT1c)));
        elmt_v8 = (elmt_cytoplasm * ((elmt_v8_elmt_kf * elmt_STAT1c_star * elmt_STAT1c_star) - (elmt_v8_elmt_kb * elmt_STAT1c_star_STAT1c_star)));
        elmt_v41 = (elmt_cytoplasm * elmt_v41_elmt_kf * elmt_IFNRJ2_star_SOCS1);
        elmt_v5 = (elmt_cytoplasm * ((elmt_v5_elmt_kf * elmt_STAT1c * elmt_IFNRJ2_star) - (elmt_v5_elmt_kb * elmt_IFNRJ2_star_STAT1c)));
        elmt_v40 = (elmt_cytoplasm * elmt_v40_elmt_kf * elmt_IFNRJ2_star_SHP2_SOCS1);
        elmt_v6 = (elmt_cytoplasm * elmt_v6_elmt_kf * elmt_IFNRJ2_star_STAT1c);
        elmt_v29 = (elmt_cytoplasm * ((elmt_v29_elmt_kf * elmt_SOCS1 * elmt_IFNRJ2_star) - (elmt_v29_elmt_kb * elmt_IFNRJ2_star_SOCS1)));
        elmt_v28 = (elmt_cytoplasm * elmt_v28_elmt_kf * elmt_SOCS1);
        elmt_v27 = (elmt_cytoplasm * elmt_v27_elmt_kf * elmt_mRNAc);
        elmt_v26 = (elmt_cytoplasm * elmt_v26_elmt_kf * elmt_mRNAc);
        elmt_v25 = (elmt_nucleus * elmt_v25_elmt_kf * elmt_mRNAn);
        elmt_v3 = (elmt_cytoplasm * ((elmt_v3_elmt_kf * elmt_IFNRJ * elmt_IFNRJ) - (elmt_v3_elmt_kb * elmt_IFNRJ2)));
        elmt_v4 = (elmt_cytoplasm * elmt_v4_elmt_kf * elmt_IFNRJ2);
        elmt_v1 = (elmt_cytoplasm * ((elmt_v1_elmt_kf * elmt_R * elmt_JAK) - (elmt_v1_elmt_kb * elmt_RJ)));
        elmt_v2 = (elmt_cytoplasm * ((elmt_v2_elmt_kf * elmt_IFN * elmt_RJ) - (elmt_v2_elmt_kb * elmt_IFNRJ)));
        elmt_v13 = (elmt_cytoplasm * ((elmt_v13_elmt_kf * elmt_PPX * elmt_STAT1c_star_STAT1c_star) - (elmt_v13_elmt_kb * elmt_STAT1c_star_STAT1c_star_PPX)));
        elmt_v35 = (elmt_cytoplasm * ((elmt_v35_elmt_kf * elmt_STAT1c * elmt_IFNRJ2_star_SHP2_SOCS1) - (elmt_v35_elmt_kb * elmt_IFNRJ2_star_SHP2_SOCS1_STAT1c)));
        elmt_v12 = (elmt_cytoplasm * elmt_v12_elmt_kf * elmt_STAT1c_star_PPX);
        elmt_v34 = (elmt_cytoplasm * ((elmt_v34_elmt_kf * elmt_SHP2 * elmt_IFNRJ2_star_SOCS1) - (elmt_v34_elmt_kb * elmt_IFNRJ2_star_SHP2_SOCS1)));
        elmt_v11 = (elmt_cytoplasm * ((elmt_v11_elmt_kf * elmt_PPX * elmt_STAT1c_star) - (elmt_v11_elmt_kb * elmt_STAT1c_star_PPX)));
        elmt_v33 = (elmt_cytoplasm * elmt_v33_elmt_kf * elmt_IFNRJ2_star_SHP2_SOCS1_STAT1c);
        elmt_v10 = (elmt_cytoplasm * elmt_v10_elmt_kf * elmt_IFNRJ2_star_SHP2);
        elmt_v32 = (elmt_cytoplasm * elmt_v32_elmt_kf * elmt_IFNRJ2_star_SHP2_SOCS1_STAT1c);
        elmt_v31 = (elmt_cytoplasm * ((elmt_v31_elmt_kf * elmt_SHP2 * elmt_IFNRJ2_star_SOCS1_STAT1c) - (elmt_v31_elmt_kb * elmt_IFNRJ2_star_SHP2_SOCS1_STAT1c)));
        elmt_v30 = (elmt_cytoplasm * ((elmt_v30_elmt_kf * elmt_STAT1c * elmt_IFNRJ2_star_SOCS1) - (elmt_v30_elmt_kb * elmt_IFNRJ2_star_SOCS1_STAT1c)));
        elmt_v19 = (elmt_nucleus * elmt_v19_elmt_kf * elmt_STAT1n_star_PPN);
        elmt_v18 = (elmt_nucleus * ((elmt_v18_elmt_kf * elmt_PPN * elmt_STAT1n_star) - (elmt_v18_elmt_kb * elmt_STAT1n_star_PPN)));
        elmt_v17 = (elmt_nucleus * ((elmt_v17_elmt_kf * elmt_STAT1n_star * elmt_STAT1n_star) - (elmt_v17_elmt_kb * elmt_STAT1n_star_STAT1n_star)));
        elmt_v39 = (elmt_cytoplasm * elmt_v39_elmt_kf * elmt_IFNRJ2_star_SHP2_SOCS1);
        elmt_v16 = (elmt_cytoplasm * elmt_v16_elmt_kf * elmt_STAT1c_star_STAT1c_star);
        elmt_v38 = (elmt_cytoplasm * elmt_v38_elmt_kf * elmt_IFNRJ2_star_SOCS1_STAT1c);
        elmt_v15 = (elmt_cytoplasm * ((elmt_v15_elmt_kf * elmt_STAT1c * elmt_STAT1c_star) - (elmt_v15_elmt_kb * elmt_STAT1c_STAT1c_star)));
        elmt_v37 = (elmt_cytoplasm * elmt_v37_elmt_kf * elmt_IFNRJ2_star_SHP2_STAT1c);
        elmt_v14 = (elmt_cytoplasm * elmt_v14_elmt_kf * elmt_STAT1c_star_STAT1c_star_PPX);
        elmt_v36 = (elmt_cytoplasm * ((elmt_v36_elmt_kf * elmt_SHP2 * elmt_IFNRJ2_star_STAT1c) - (elmt_v36_elmt_kb * elmt_IFNRJ2_star_SHP2_STAT1c)));
        der(elmt_product74) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_product71) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product77) = 0;
        der(elmt_reactant109) = 0;
        der(elmt_reactant108) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant118) = 0;
        der(elmt_reactant117) = 0;
        der(elmt_reactant115) = 0;
        der(elmt_reactant114) = 0;
        der(elmt_reactant112) = 0;
        der(elmt_reactant111) = 0;
        der(elmt_product84) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product82) = 0;
        der(elmt_product87) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_product81) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_product80) = 0;
        der(elmt_reactant121) = 0;
        der(elmt_reactant120) = 0;
        der(elmt_product101) = 0;
        der(elmt_product104) = 0;
        der(elmt_product103) = 0;
        der(elmt_product79) = 0;
        der(elmt_product105) = 0;
        der(elmt_product107) = 0;
        der(elmt_product96) = 0;
        der(elmt_product95) = 0;
        der(elmt_product93) = 0;
        der(elmt_product12) = 0;
        der(elmt_product99) = 0;
        der(elmt_product97) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_product90) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product9) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product23) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant106) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;
        der(elmt_reactant102) = 0;
        der(elmt_product18) = 0;
        der(elmt_reactant100) = 0;
        der(elmt_reactant83) = 0;
        der(elmt_reactant85) = 0;
        der(elmt_reactant86) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant88) = 0;
        der(elmt_reactant89) = 0;
        der(elmt_product26) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_product45) = 0;
        der(elmt_reactant91) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant98) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product38) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product51) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product56) = 0;
        der(elmt_product54) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_product113) = 0;
        der(elmt_product110) = 0;
        der(elmt_product48) = 0;
        der(elmt_product116) = 0;
        der(elmt_product119) = 0;
        der(elmt_product63) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant76) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_product122) = 0;
        der(elmt_product57) = 0;

end Reactions;
