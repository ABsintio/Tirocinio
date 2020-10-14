within BIOMD011;
class Reactions

    input Real elmt_RAF;
    input Real elmt_MEKpRAFp;
    input Real elmt_MEK;
    input Real elmt_MEKpp;
    input Real elmt_MAPKPH;
    input Real elmt_MAPKMEKpp;
    input Real elmt_RAFRAFK;
    input Real elmt_MEKppMEKPH;
    input Real elmt_MAPKpMAPKPH;
    input Real elmt_MAPKpMEKpp;
    input Real elmt_MAPKpp;
    input Real elmt_MAPKppMAPKPH;
    input Real elmt_MAPKp;
    input Real elmt_RAFp;
    input Real elmt_MEKRAFp;
    input Real elmt_MAPK;
    input Real elmt_RAFPH;
    input Real elmt_MEKp;
    input Real elmt_RAFpRAFPH;
    input Real elmt_RAFK;
    input Real elmt_MEKPH;
    input Real elmt_MEKpMEKPH;

    Real elmt_Reaction27(unit = "") "phosphorylation of MAPK-P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction27_elmt_k9(unit "") = 0.1 "";
    Real elmt_product79 "";
    Real elmt_product80 "";
    Real elmt_reactant78 "";
    Real elmt_Reaction26(unit = "") "dissociation of MAPK-P_MEK-PP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction26_elmt_d9(unit "") = 0.6 "";
    Real elmt_reactant75 "";
    Real elmt_product77 "";
    Real elmt_product76 "";
    Real elmt_Reaction25(unit = "") "binding of MAPK-P and MEK-PP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction25_elmt_a9(unit "") = 20.0 "";
    Real elmt_reactant72 "";
    Real elmt_product74 "";
    Real elmt_reactant73 "";
    Real elmt_Reaction24(unit = "") "dephosphorylation of MAPK-P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction24_elmt_k8(unit "") = 0.1 "";
    Real elmt_product71 "";
    Real elmt_reactant69 "";
    Real elmt_product70 "";
    Real elmt_Reaction23(unit = "") "dissociation of MAPK-P_MAPKPase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction23_elmt_d8(unit "") = 0.4 "";
    Real elmt_product67 "";
    Real elmt_product68 "";
    Real elmt_reactant66 "";
    Real elmt_Reaction22(unit = "") "binding of MAPK-P and MAPK phosphatase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction22_elmt_a8(unit "") = 5.0 "";
    Real elmt_reactant63 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_Reaction21(unit = "") "phosphorylation of MAPK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction21_elmt_k7(unit "") = 0.1 "";
    Real elmt_product62 "";
    Real elmt_product61 "";
    Real elmt_reactant60 "";
    Real elmt_Reaction20(unit = "") "dissociation of MAPK_MEK-PP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction20_elmt_d7(unit "") = 0.6 "";
    Real elmt_product59 "";
    Real elmt_product58 "";
    Real elmt_reactant57 "";
    Real elmt_Reaction9(unit = "") "phosphorylation of MEK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction9_elmt_k3(unit "") = 0.1 "";
    Real elmt_product26 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_Reaction8(unit = "") "dissociation of MEK_RAF-P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction8_elmt_d3(unit "") = 0.42 "";
    Real elmt_product23 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_Reaction7(unit = "") "binding of MEK and RAF-P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction7_elmt_a3(unit "") = 3.3 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_Reaction6(unit = "") "dephosphorylation of RAF-P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction6_elmt_k2(unit "") = 0.1 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_Reaction5(unit = "") "dissociation of RAF-P_RAFPase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction5_elmt_d2(unit "") = 0.5 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_Reaction4(unit = "") "binding of RAF-P and RAF phosphatase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction4_elmt_a2(unit "") = 0.5 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_Reaction19(unit = "") "binding of MAPK and MEK-PP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction19_elmt_a7(unit "") = 20.0 "";
    Real elmt_product56 "";
    Real elmt_reactant54 "";
    Real elmt_reactant55 "";
    Real elmt_Reaction3(unit = "") "phosphorylation of RAF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction3_elmt_k1(unit "") = 0.1 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_Reaction18(unit = "") "dephosphorylation of MEK-PP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction18_elmt_k6(unit "") = 0.1 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_product53 "";
    Real elmt_Reaction2(unit = "") "dissociation of RAF_RAFK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction2_elmt_d1(unit "") = 0.4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_Reaction17(unit = "") "dissociation of MEK-PP_MEKPase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction17_elmt_d6(unit "") = 0.8 "";
    Real elmt_product50 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_Reaction1(unit = "") "binding of RAF and RAFK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction1_elmt_a1(unit "") = 1.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_Reaction30(unit = "") "dephosphorylation of MAPK-PP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction30_elmt_k10(unit "") = 0.1 "";
    Real elmt_product89 "";
    Real elmt_product88 "";
    Real elmt_reactant87 "";
    Real elmt_Reaction16(unit = "") "binding of MEK-PP and MEK phosphatase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction16_elmt_a6(unit "") = 10.0 "";
    Real elmt_product47 "";
    Real elmt_reactant45 "";
    Real elmt_reactant46 "";
    Real elmt_Reaction15(unit = "") "phosphorylation of MEK-P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction15_elmt_k5(unit "") = 0.1 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_product43 "";
    Real elmt_Reaction14(unit = "") "dissociation of MEK-P_RAF-P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction14_elmt_d5(unit "") = 0.4 "";
    Real elmt_product41 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_Reaction13(unit = "") "binding of MEK-P and RAF-P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction13_elmt_a5(unit "") = 3.3 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_Reaction12(unit = "") "dephosphorylation of MEK-P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction12_elmt_k4(unit "") = 0.1 "";
    Real elmt_product34 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_Reaction11(unit = "") "dissociation of MEK-P_MEKPase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction11_elmt_d4(unit "") = 0.8 "";
    Real elmt_reactant30 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_Reaction10(unit = "") "binding of MEK-P and MEK phosphatase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction10_elmt_a4(unit "") = 10.0 "";
    Real elmt_reactant27 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_Reaction29(unit = "") "dissociation of MAPK-PP_MAPKPase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction29_elmt_d10(unit "") = 0.4 "";
    Real elmt_product85 "";
    Real elmt_reactant84 "";
    Real elmt_product86 "";
    Real elmt_Reaction28(unit = "") "binding of MAPK-PP and MAPK phosphatase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction28_elmt_a10(unit "") = 5.0 "";
    Real elmt_product83 "";
    Real elmt_reactant81 "";
    Real elmt_reactant82 "";


    initial equation
        elmt_product74 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_product71 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product34 = 1.0;
        elmt_product77 = 1.0;
        elmt_product76 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant81 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant82 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant87 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product26 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product68 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_product85 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product40 = 1.0;
        elmt_product83 = 1.0;
        elmt_product89 = 1.0;
        elmt_product88 = 1.0;
        elmt_product44 = 1.0;
        elmt_product43 = 1.0;
        elmt_product86 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_product80 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product38 = 1.0;
        elmt_product79 = 1.0;
        elmt_product35 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product56 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_product62 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product61 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product67 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_product65 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_product16 = 1.0;
        elmt_product59 = 1.0;
        elmt_product58 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_Reaction27 = (elmt_Reaction27_elmt_k9 * elmt_MAPKpMEKpp);
        elmt_Reaction26 = (elmt_Reaction26_elmt_d9 * elmt_MAPKpMEKpp);
        elmt_Reaction25 = (elmt_Reaction25_elmt_a9 * elmt_MAPKp * elmt_MEKpp);
        elmt_Reaction24 = (elmt_Reaction24_elmt_k8 * elmt_MAPKpMAPKPH);
        elmt_Reaction23 = (elmt_Reaction23_elmt_d8 * elmt_MAPKpMAPKPH);
        elmt_Reaction22 = (elmt_Reaction22_elmt_a8 * elmt_MAPKp * elmt_MAPKPH);
        elmt_Reaction21 = (elmt_Reaction21_elmt_k7 * elmt_MAPKMEKpp);
        elmt_Reaction20 = (elmt_Reaction20_elmt_d7 * elmt_MAPKMEKpp);
        elmt_Reaction9 = (elmt_Reaction9_elmt_k3 * elmt_MEKRAFp);
        elmt_Reaction8 = (elmt_Reaction8_elmt_d3 * elmt_MEKRAFp);
        elmt_Reaction7 = (elmt_Reaction7_elmt_a3 * elmt_MEK * elmt_RAFp);
        elmt_Reaction6 = (elmt_Reaction6_elmt_k2 * elmt_RAFpRAFPH);
        elmt_Reaction5 = (elmt_Reaction5_elmt_d2 * elmt_RAFpRAFPH);
        elmt_Reaction4 = (elmt_Reaction4_elmt_a2 * elmt_RAFp * elmt_RAFPH);
        elmt_Reaction19 = (elmt_Reaction19_elmt_a7 * elmt_MAPK * elmt_MEKpp);
        elmt_Reaction3 = (elmt_Reaction3_elmt_k1 * elmt_RAFRAFK);
        elmt_Reaction18 = (elmt_Reaction18_elmt_k6 * elmt_MEKppMEKPH);
        elmt_Reaction2 = (elmt_Reaction2_elmt_d1 * elmt_RAFRAFK);
        elmt_Reaction17 = (elmt_Reaction17_elmt_d6 * elmt_MEKppMEKPH);
        elmt_Reaction1 = (elmt_Reaction1_elmt_a1 * elmt_RAF * elmt_RAFK);
        elmt_Reaction30 = (elmt_Reaction30_elmt_k10 * elmt_MAPKppMAPKPH);
        elmt_Reaction16 = (elmt_Reaction16_elmt_a6 * elmt_MEKPH * elmt_MEKpp);
        elmt_Reaction15 = (elmt_Reaction15_elmt_k5 * elmt_MEKpRAFp);
        elmt_Reaction14 = (elmt_Reaction14_elmt_d5 * elmt_MEKpRAFp);
        elmt_Reaction13 = (elmt_Reaction13_elmt_a5 * elmt_MEKp * elmt_RAFp);
        elmt_Reaction12 = (elmt_Reaction12_elmt_k4 * elmt_MEKpMEKPH);
        elmt_Reaction11 = (elmt_Reaction11_elmt_d4 * elmt_MEKpMEKPH);
        elmt_Reaction10 = (elmt_Reaction10_elmt_a4 * elmt_MEKp * elmt_MEKPH);
        elmt_Reaction29 = (elmt_Reaction29_elmt_d10 * elmt_MAPKppMAPKPH);
        elmt_Reaction28 = (elmt_Reaction28_elmt_a10 * elmt_MAPKPH * elmt_MAPKpp);
        der(elmt_product74) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_product71) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product34) = 0;
        der(elmt_product77) = 0;
        der(elmt_product76) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant81) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant82) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant87) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product68) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_product85) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product40) = 0;
        der(elmt_product83) = 0;
        der(elmt_product89) = 0;
        der(elmt_product88) = 0;
        der(elmt_product44) = 0;
        der(elmt_product43) = 0;
        der(elmt_product86) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_product80) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product38) = 0;
        der(elmt_product79) = 0;
        der(elmt_product35) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product56) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_product62) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product61) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product67) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_product65) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_product16) = 0;
        der(elmt_product59) = 0;
        der(elmt_product58) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product17) = 0;

end Reactions;
