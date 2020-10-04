within BIOMD074;
class Reactions

    input Real elmt_species_6;
    input Real elmt_species_7;
    input Real elmt_species_4;
    input Real elmt_species_5;
    input Real elmt_species_8;
    input Real elmt_species_9;
    input Real elmt_species_15;
    input Real elmt_species_16;
    input Real elmt_species_17;
    input Real elmt_species_18;
    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_0;
    input Real elmt_species_1;
    input Real elmt_compartment_0;
    input Real elmt_species_10;
    input Real elmt_species_11;
    input Real elmt_species_12;
    input Real elmt_species_13;
    input Real elmt_species_14;

    Real elmt_reaction_27(unit = "") "Pc nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_27_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant38 "";
    Real elmt_reaction_28(unit = "") "Cc nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_28_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant39 "";
    Real elmt_reaction_25(unit = "") "Mc specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_25_elmt_Km(unit "") = 0.4 "";
    parameter Real elmt_reaction_25_elmt_V(unit "") = 2.0 "";
    Real elmt_reactant36 "";
    Real elmt_reaction_26(unit = "") "Mp specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_26_elmt_Km(unit "") = 0.3 "";
    parameter Real elmt_reaction_26_elmt_V(unit "") = 2.2 "";
    Real elmt_reactant37 "";
    Real elmt_reaction_29(unit = "") "Pcp nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_29_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant40 "";
    Real elmt_reaction_20(unit = "") "Mc synthesis";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_20_elmt_n(unit "") = 2.0 "";
    parameter Real elmt_reaction_20_elmt_K(unit "") = 0.6 "";
    parameter Real elmt_reaction_20_elmt_Vs(unit "") = 2.2 "";
    Real elmt_product28 "";
    Real elmt_reaction_23(unit = "") "Per_Cry and Clock_Bmal form inactive complex";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_23_elmt_k1(unit "") = 1.0 "";
    parameter Real elmt_reaction_23_elmt_k2(unit "") = 0.2 "";
    Real elmt_product34 "";
    Real elmt_reactant32 "";
    Real elmt_reactant33 "";
    Real elmt_reaction_24(unit = "") "Mb specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_24_elmt_Km(unit "") = 0.4 "";
    parameter Real elmt_reaction_24_elmt_V(unit "") = 1.3 "";
    Real elmt_reactant35 "";
    Real elmt_reaction_21(unit = "") "PCn phospholation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_21_elmt_Km(unit "") = 1.006 "";
    parameter Real elmt_reaction_21_elmt_V(unit "") = 2.4 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reaction_22(unit = "") "Mp nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_22_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant31 "";
    Real elmt_reaction_3(unit = "") "Bc phosphorylation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_3_elmt_Km(unit "") = 1.006 "";
    parameter Real elmt_reaction_3_elmt_V(unit "") = 1.4 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_reaction_4(unit = "") "Bc transfered from cytosolic to nuclear";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_4_elmt_k1(unit "") = 0.8 "";
    parameter Real elmt_reaction_4_elmt_k2(unit "") = 0.4 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_1(unit = "") "Mb translated into protein";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_1_elmt_k(unit "") = 0.32 "";
    Real elmt_product1 "";
    Real elmt_reaction_2(unit = "") "Mb nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant2 "";
    Real elmt_reaction_0(unit = "") "Mb synthesized";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_0_elmt_m(unit "") = 2.0 "";
    parameter Real elmt_reaction_0_elmt_vsb(unit "") = 1.8 "";
    parameter Real elmt_reaction_0_elmt_K(unit "") = 1.0 "";
    Real elmt_product0 "";
    Real elmt_reaction_16(unit = "") "PCc transfered into nuclear";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_16_elmt_k1(unit "") = 0.8 "";
    parameter Real elmt_reaction_16_elmt_k2(unit "") = 0.4 "";
    Real elmt_product24 "";
    Real elmt_reactant23 "";
    Real elmt_reaction_17(unit = "") "PCnp nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_17_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant25 "";
    Real elmt_reaction_9(unit = "") "Mp synthesis";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_9_elmt_n(unit "") = 2.0 "";
    parameter Real elmt_reaction_9_elmt_K(unit "") = 0.6 "";
    parameter Real elmt_reaction_9_elmt_Vs(unit "") = 2.4 "";
    Real elmt_product12 "";
    Real elmt_reaction_14(unit = "") "PCc phospholation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_14_elmt_Km(unit "") = 1.006 "";
    parameter Real elmt_reaction_14_elmt_V(unit "") = 2.4 "";
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_reaction_15(unit = "") "PCcp specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_15_elmt_Km(unit "") = 0.3 "";
    parameter Real elmt_reaction_15_elmt_V(unit "") = 1.4 "";
    Real elmt_reactant22 "";
    Real elmt_reaction_7(unit = "") "Cc phosphorylation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_7_elmt_Km(unit "") = 1.006 "";
    parameter Real elmt_reaction_7_elmt_V(unit "") = 1.2 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_reaction_8(unit = "") "Ccp specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_8_elmt_Km(unit "") = 0.3 "";
    parameter Real elmt_reaction_8_elmt_V(unit "") = 1.4 "";
    Real elmt_reactant11 "";
    Real elmt_reaction_5(unit = "") "Mc translated into protein";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_5_elmt_k(unit "") = 3.2 "";
    Real elmt_product7 "";
    Real elmt_reaction_18(unit = "") "Bcp nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_18_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant26 "";
    Real elmt_reaction_6(unit = "") "Mc nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_6_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant8 "";
    Real elmt_reaction_19(unit = "") "Bnp nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_19_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant27 "";
    Real elmt_reaction_52(unit = "") "Rc transfered into nuclear";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_52_elmt_k1(unit "") = 0.8 "";
    parameter Real elmt_reaction_52_elmt_k2(unit "") = 0.4 "";
    Real elmt_product71 "";
    Real elmt_reactant70 "";
    Real elmt_reaction_53(unit = "") "Rc specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_53_elmt_Km(unit "") = 0.3 "";
    parameter Real elmt_reaction_53_elmt_V(unit "") = 4.4 "";
    Real elmt_reactant72 "";
    Real elmt_reaction_50(unit = "") "Mr specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_50_elmt_Km(unit "") = 0.4 "";
    parameter Real elmt_reaction_50_elmt_V(unit "") = 1.6 "";
    Real elmt_reactant68 "";
    Real elmt_reaction_51(unit = "") "Mr translated into protein";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_51_elmt_k(unit "") = 1.7 "";
    Real elmt_product69 "";
    Real elmt_reaction_12(unit = "") "Pc phospholation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_12_elmt_Km(unit "") = 1.006 "";
    parameter Real elmt_reaction_12_elmt_V(unit "") = 9.6 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_reaction_56(unit = "") "Rn nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_56_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant75 "";
    Real elmt_reaction_13(unit = "") "Cc and Pc produce PCc";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_13_elmt_k1(unit "") = 0.8 "";
    parameter Real elmt_reaction_13_elmt_k2(unit "") = 0.4 "";
    Real elmt_reactant18 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_reaction_10(unit = "") "Mp translated into protein";
    parameter Real elmt_reaction_10_elmt_k(unit "") = 1.2 "";
    Real elmt_product13 "";
    Real elmt_reaction_54(unit = "") "Rc nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_54_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant73 "";
    Real elmt_reaction_11(unit = "") "Pcp specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_11_elmt_Km(unit "") = 0.3 "";
    parameter Real elmt_reaction_11_elmt_V(unit "") = 3.4 "";
    Real elmt_reactant14 "";
    Real elmt_reaction_55(unit = "") "Rn specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_55_elmt_Km(unit "") = 0.3 "";
    parameter Real elmt_reaction_55_elmt_V(unit "") = 0.8 "";
    Real elmt_reactant74 "";
    Real elmt_reaction_49(unit = "") "Mr nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_49_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant67 "";
    Real elmt_reaction_47(unit = "") "PCcp dephospholation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_47_elmt_Km(unit "") = 0.1 "";
    parameter Real elmt_reaction_47_elmt_V(unit "") = 0.2 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_reaction_48(unit = "") "Mr synthesized";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_48_elmt_n(unit "") = 2.0 "";
    parameter Real elmt_reaction_48_elmt_K(unit "") = 0.6 "";
    parameter Real elmt_reaction_48_elmt_Vs(unit "") = 1.6 "";
    Real elmt_product66 "";
    Real elmt_reaction_41(unit = "") "Bcp dephospholation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_41_elmt_Km(unit "") = 0.1 "";
    parameter Real elmt_reaction_41_elmt_V(unit "") = 0.2 "";
    Real elmt_reactant53 "";
    Real elmt_product54 "";
    Real elmt_reaction_42(unit = "") "Bnp dephospholation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_42_elmt_Km(unit "") = 0.1 "";
    parameter Real elmt_reaction_42_elmt_V(unit "") = 0.4 "";
    Real elmt_product56 "";
    Real elmt_reactant55 "";
    Real elmt_reaction_40(unit = "") "Bn nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_40_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant52 "";
    Real elmt_reaction_45(unit = "") "PCnp dephospholation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_45_elmt_Km(unit "") = 0.1 "";
    parameter Real elmt_reaction_45_elmt_V(unit "") = 0.2 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_reaction_46(unit = "") "PCn nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_46_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant63 "";
    Real elmt_reaction_43(unit = "") "Ccp dephospholation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_43_elmt_Km(unit "") = 0.1 "";
    parameter Real elmt_reaction_43_elmt_V(unit "") = 0.2 "";
    Real elmt_product58 "";
    Real elmt_reactant57 "";
    Real elmt_reaction_44(unit = "") "Pcp dephospholation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_44_elmt_Km(unit "") = 0.1 "";
    parameter Real elmt_reaction_44_elmt_V(unit "") = 0.6 "";
    Real elmt_product60 "";
    Real elmt_reactant59 "";
    Real elmt_reaction_38(unit = "") "In nonspecific degration";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_38_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant50 "";
    Real elmt_reaction_39(unit = "") "In specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_39_elmt_Km(unit "") = 0.3 "";
    parameter Real elmt_reaction_39_elmt_V(unit "") = 1.6 "";
    Real elmt_reactant51 "";
    Real elmt_reaction_36(unit = "") "Bn phospholation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_36_elmt_Km(unit "") = 1.006 "";
    parameter Real elmt_reaction_36_elmt_V(unit "") = 1.4 "";
    Real elmt_reactant47 "";
    Real elmt_product48 "";
    Real elmt_reaction_37(unit = "") "Bnp specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_37_elmt_Km(unit "") = 0.3 "";
    parameter Real elmt_reaction_37_elmt_V(unit "") = 3.0 "";
    Real elmt_reactant49 "";
    Real elmt_reaction_30(unit = "") "Ccp nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_30_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant41 "";
    Real elmt_reaction_31(unit = "") "PCcp nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_31_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant42 "";
    Real elmt_reaction_34(unit = "") "Bc nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_34_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant45 "";
    Real elmt_reaction_35(unit = "") "Bcp specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_35_elmt_Km(unit "") = 0.3 "";
    parameter Real elmt_reaction_35_elmt_V(unit "") = 3.0 "";
    Real elmt_reactant46 "";
    Real elmt_reaction_32(unit = "") "PCc nonspecific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_32_elmt_k1(unit "") = 0.02 "";
    Real elmt_reactant43 "";
    Real elmt_reaction_33(unit = "") "PCnp specific degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_33_elmt_Km(unit "") = 0.3 "";
    parameter Real elmt_reaction_33_elmt_V(unit "") = 1.4 "";
    Real elmt_reactant44 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_product71 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product34 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product69 = 1.0;
        elmt_product24 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product12 = 1.0;
        elmt_product56 = 1.0;
        elmt_product10 = 1.0;
        elmt_product54 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product48 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_product62 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product66 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product58 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;


    equation
        elmt_reaction_27 = (elmt_compartment_0 * elmt_reaction_27_elmt_k1 * elmt_species_8);
        elmt_reaction_28 = (elmt_compartment_0 * elmt_reaction_28_elmt_k1 * elmt_species_4);
        elmt_reaction_25 = (elmt_compartment_0 * (((elmt_reaction_25_elmt_V * elmt_species_5) / (elmt_reaction_25_elmt_Km + elmt_species_5))));
        elmt_reaction_26 = (elmt_compartment_0 * (((elmt_reaction_26_elmt_V * elmt_species_7) / (elmt_reaction_26_elmt_Km + elmt_species_7))));
        elmt_reaction_29 = (elmt_compartment_0 * elmt_reaction_29_elmt_k1 * elmt_species_9);
        elmt_reaction_20 = (elmt_compartment_0 * (((elmt_reaction_20_elmt_Vs * Functions.pow(elmt_species_3, elmt_reaction_20_elmt_n)) / (Functions.pow(elmt_reaction_20_elmt_K, elmt_reaction_20_elmt_n) + Functions.pow(elmt_species_3, elmt_reaction_20_elmt_n)))));
        elmt_reaction_23 = (elmt_compartment_0 * ((elmt_reaction_23_elmt_k1 * elmt_species_12 * elmt_species_3) - (elmt_reaction_23_elmt_k2 * elmt_species_15)));
        elmt_reaction_24 = (elmt_compartment_0 * (((elmt_reaction_24_elmt_V * elmt_species_0) / (elmt_reaction_24_elmt_Km + elmt_species_0))));
        elmt_reaction_21 = (elmt_compartment_0 * (((elmt_reaction_21_elmt_V * elmt_species_12) / (elmt_reaction_21_elmt_Km + elmt_species_12))));
        elmt_reaction_22 = (elmt_compartment_0 * elmt_reaction_22_elmt_k1 * elmt_species_7);
        elmt_reaction_3 = (elmt_compartment_0 * (((elmt_reaction_3_elmt_V * elmt_species_1) / (elmt_reaction_3_elmt_Km + elmt_species_1))));
        elmt_reaction_4 = (elmt_compartment_0 * ((elmt_reaction_4_elmt_k1 * elmt_species_1) - (elmt_reaction_4_elmt_k2 * elmt_species_3)));
        elmt_reaction_1 = (elmt_compartment_0 * ((elmt_reaction_1_elmt_k * elmt_species_0)));
        elmt_reaction_2 = (elmt_compartment_0 * elmt_reaction_2_elmt_k1 * elmt_species_0);
        elmt_reaction_0 = (elmt_compartment_0 * (((elmt_reaction_0_elmt_vsb * Functions.pow(elmt_reaction_0_elmt_K, elmt_reaction_0_elmt_m)) / (Functions.pow(elmt_reaction_0_elmt_K, elmt_reaction_0_elmt_m) + Functions.pow(elmt_species_18, elmt_reaction_0_elmt_m)))));
        elmt_reaction_16 = (elmt_compartment_0 * ((elmt_reaction_16_elmt_k1 * elmt_species_10) - (elmt_reaction_16_elmt_k2 * elmt_species_12)));
        elmt_reaction_17 = (elmt_compartment_0 * elmt_reaction_17_elmt_k1 * elmt_species_14);
        elmt_reaction_9 = (elmt_compartment_0 * (((elmt_reaction_9_elmt_Vs * Functions.pow(elmt_species_3, elmt_reaction_9_elmt_n)) / (Functions.pow(elmt_reaction_9_elmt_K, elmt_reaction_9_elmt_n) + Functions.pow(elmt_species_3, elmt_reaction_9_elmt_n)))));
        elmt_reaction_14 = (elmt_compartment_0 * (((elmt_reaction_14_elmt_V * elmt_species_10) / (elmt_reaction_14_elmt_Km + elmt_species_10))));
        elmt_reaction_15 = (elmt_compartment_0 * (((elmt_reaction_15_elmt_V * elmt_species_11) / (elmt_reaction_15_elmt_Km + elmt_species_11))));
        elmt_reaction_7 = (elmt_compartment_0 * (((elmt_reaction_7_elmt_V * elmt_species_4) / (elmt_reaction_7_elmt_Km + elmt_species_4))));
        elmt_reaction_8 = (elmt_compartment_0 * (((elmt_reaction_8_elmt_V * elmt_species_6) / (elmt_reaction_8_elmt_Km + elmt_species_6))));
        elmt_reaction_5 = (elmt_compartment_0 * ((elmt_reaction_5_elmt_k * elmt_species_5)));
        elmt_reaction_18 = (elmt_compartment_0 * elmt_reaction_18_elmt_k1 * elmt_species_2);
        elmt_reaction_6 = (elmt_compartment_0 * elmt_reaction_6_elmt_k1 * elmt_species_5);
        elmt_reaction_19 = (elmt_compartment_0 * elmt_reaction_19_elmt_k1 * elmt_species_13);
        elmt_reaction_52 = (elmt_compartment_0 * ((elmt_reaction_52_elmt_k1 * elmt_species_17) - (elmt_reaction_52_elmt_k2 * elmt_species_18)));
        elmt_reaction_53 = (elmt_compartment_0 * (((elmt_reaction_53_elmt_V * elmt_species_17) / (elmt_reaction_53_elmt_Km + elmt_species_17))));
        elmt_reaction_50 = (elmt_compartment_0 * (((elmt_reaction_50_elmt_V * elmt_species_16) / (elmt_reaction_50_elmt_Km + elmt_species_16))));
        elmt_reaction_51 = (elmt_compartment_0 * ((elmt_reaction_51_elmt_k * elmt_species_16)));
        elmt_reaction_12 = (elmt_compartment_0 * (((elmt_reaction_12_elmt_V * elmt_species_8) / (elmt_reaction_12_elmt_Km + elmt_species_8))));
        elmt_reaction_56 = (elmt_compartment_0 * elmt_reaction_56_elmt_k1 * elmt_species_18);
        elmt_reaction_13 = (elmt_compartment_0 * ((elmt_reaction_13_elmt_k1 * elmt_species_4 * elmt_species_8) - (elmt_reaction_13_elmt_k2 * elmt_species_10)));
        elmt_reaction_10 = (elmt_compartment_0 * ((elmt_reaction_10_elmt_k * elmt_species_7)));
        elmt_reaction_54 = (elmt_compartment_0 * elmt_reaction_54_elmt_k1 * elmt_species_17);
        elmt_reaction_11 = (elmt_compartment_0 * (((elmt_reaction_11_elmt_V * elmt_species_9) / (elmt_reaction_11_elmt_Km + elmt_species_9))));
        elmt_reaction_55 = (elmt_compartment_0 * (((elmt_reaction_55_elmt_V * elmt_species_18) / (elmt_reaction_55_elmt_Km + elmt_species_18))));
        elmt_reaction_49 = (elmt_compartment_0 * elmt_reaction_49_elmt_k1 * elmt_species_16);
        elmt_reaction_47 = (elmt_compartment_0 * (((elmt_reaction_47_elmt_V * elmt_species_11) / (elmt_reaction_47_elmt_Km + elmt_species_11))));
        elmt_reaction_48 = (elmt_compartment_0 * (((elmt_reaction_48_elmt_Vs * Functions.pow(elmt_species_3, elmt_reaction_48_elmt_n)) / (Functions.pow(elmt_reaction_48_elmt_K, elmt_reaction_48_elmt_n) + Functions.pow(elmt_species_3, elmt_reaction_48_elmt_n)))));
        elmt_reaction_41 = (elmt_compartment_0 * (((elmt_reaction_41_elmt_V * elmt_species_2) / (elmt_reaction_41_elmt_Km + elmt_species_2))));
        elmt_reaction_42 = (elmt_compartment_0 * (((elmt_reaction_42_elmt_V * elmt_species_13) / (elmt_reaction_42_elmt_Km + elmt_species_13))));
        elmt_reaction_40 = (elmt_compartment_0 * elmt_reaction_40_elmt_k1 * elmt_species_3);
        elmt_reaction_45 = (elmt_compartment_0 * (((elmt_reaction_45_elmt_V * elmt_species_14) / (elmt_reaction_45_elmt_Km + elmt_species_14))));
        elmt_reaction_46 = (elmt_compartment_0 * elmt_reaction_46_elmt_k1 * elmt_species_12);
        elmt_reaction_43 = (elmt_compartment_0 * (((elmt_reaction_43_elmt_V * elmt_species_6) / (elmt_reaction_43_elmt_Km + elmt_species_6))));
        elmt_reaction_44 = (elmt_compartment_0 * (((elmt_reaction_44_elmt_V * elmt_species_9) / (elmt_reaction_44_elmt_Km + elmt_species_9))));
        elmt_reaction_38 = (elmt_compartment_0 * elmt_reaction_38_elmt_k1 * elmt_species_15);
        elmt_reaction_39 = (elmt_compartment_0 * (((elmt_reaction_39_elmt_V * elmt_species_15) / (elmt_reaction_39_elmt_Km + elmt_species_15))));
        elmt_reaction_36 = (elmt_compartment_0 * (((elmt_reaction_36_elmt_V * elmt_species_3) / (elmt_reaction_36_elmt_Km + elmt_species_3))));
        elmt_reaction_37 = (elmt_compartment_0 * (((elmt_reaction_37_elmt_V * elmt_species_13) / (elmt_reaction_37_elmt_Km + elmt_species_13))));
        elmt_reaction_30 = (elmt_compartment_0 * elmt_reaction_30_elmt_k1 * elmt_species_6);
        elmt_reaction_31 = (elmt_compartment_0 * elmt_reaction_31_elmt_k1 * elmt_species_11);
        elmt_reaction_34 = (elmt_compartment_0 * elmt_reaction_34_elmt_k1 * elmt_species_1);
        elmt_reaction_35 = (elmt_compartment_0 * (((elmt_reaction_35_elmt_V * elmt_species_2) / (elmt_reaction_35_elmt_Km + elmt_species_2))));
        elmt_reaction_32 = (elmt_compartment_0 * elmt_reaction_32_elmt_k1 * elmt_species_10);
        elmt_reaction_33 = (elmt_compartment_0 * (((elmt_reaction_33_elmt_V * elmt_species_14) / (elmt_reaction_33_elmt_Km + elmt_species_14))));
        der(elmt_product30) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product71) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product34) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product69) = 0;
        der(elmt_product24) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product12) = 0;
        der(elmt_product56) = 0;
        der(elmt_product10) = 0;
        der(elmt_product54) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product48) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_product62) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product66) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product58) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;

end Reactions;
