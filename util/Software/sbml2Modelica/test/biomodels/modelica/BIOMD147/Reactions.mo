within BIOMD147;
class Reactions

    input Real elmt_IkBe_cytoplasm;
    input Real elmt_nucleus;
    input Real elmt_IkBeIKKNFkB;
    input Real elmt_IkBaIKK;
    input Real elmt_IkBeIKK;
    input Real elmt_IkBb_nucleus;
    input Real elmt_IkBbIKKNFkB;
    input Real elmt_IkBbNFkB_nucleus;
    input Real elmt_IkBaNFkB_nucleus;
    input Real elmt_IkBb_cytoplasm;
    input Real elmt_NFkB_cytoplasm;
    input Real elmt_IkBa_mRNA;
    input Real elmt_IkBeNFkB_cytoplasm;
    input Real elmt_IkBe_nucleus;
    input Real elmt_IkBbIKK;
    input Real elmt_IkBbNFkB_cytoplasm;
    input Real elmt_IkBaNFkB_cytoplasm;
    input Real elmt_IkBe_mRNA;
    input Real elmt_IkBa_cytoplasm;
    input Real elmt_IkBb_mRNA;
    input Real elmt_cytoplasm;
    input Real elmt_NFkB_nucleus;
    input Real elmt_IkBaIKKNFkB;
    input Real elmt_IkBa_nucleus;
    input Real elmt_IkBeNFkB_nucleus;
    input Real elmt_IKK;

    Real elmt_int_2ein(unit = "") "int_2ein";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_2ein_elmt_a6_3(unit "m3.0.mol-1.0.s-1.0") = 30.0 "";
    parameter Real elmt_int_2ein_elmt_d6_3(unit "s-1.0") = 6.0E-5 "";
    Real elmt_reactant90 "";
    Real elmt_product91 "";
    Real elmt_reactant89 "";
    Real elmt_int_ei(unit = "") "int_ei";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_ei_elmt_d3_1(unit "s-1.0") = 0.105 "";
    parameter Real elmt_int_ei_elmt_a3(unit "m3.0.mol-1.0.s-1.0") = 0.54 "";
    Real elmt_product79 "";
    Real elmt_reactant77 "";
    Real elmt_reactant78 "";
    Real elmt_int_2ain(unit = "") "int_2ain";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_2ain_elmt_d4_3(unit "s-1.0") = 6.0E-5 "";
    parameter Real elmt_int_2ain_elmt_a4_3(unit "m3.0.mol-1.0.s-1.0") = 30.0 "";
    Real elmt_reactant18 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_int_en(unit = "") "int_en";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_en_elmt_d6_1(unit "s-1.0") = 6.0E-5 "";
    parameter Real elmt_int_en_elmt_a6_1(unit "m3.0.mol-1.0.s-1.0") = 30.0 "";
    Real elmt_product82 "";
    Real elmt_reactant80 "";
    Real elmt_reactant81 "";
    Real elmt_int_ai(unit = "") "int_ai";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_ai_elmt_d1_1(unit "s-1.0") = 0.075 "";
    parameter Real elmt_int_ai_elmt_a1(unit "m3.0.mol-1.0.s-1.0") = 1.35 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_int_an(unit = "") "int_an";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_an_elmt_d4_1(unit "s-1.0") = 6.0E-5 "";
    parameter Real elmt_int_an_elmt_a4_1(unit "m3.0.mol-1.0.s-1.0") = 30.0 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_deg_bin(unit = "") "deg_bin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_bin_elmt_r5(unit "s-1.0") = 0.12 "";
    Real elmt_product41 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_txn_a(unit = "") "txn_a";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_txn_a_elmt_tr2a(unit "m-3.0..s-1.0") = 1.848E-4 "";
    Real elmt_product0 "";
    Real elmt_loc_bn(unit = "") "loc_bn";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_loc_bn_elmt_k2_b(unit "s-1.0") = 0.414 "";
    Real elmt_product36 "";
    Real elmt_reactant35 "";
    Real elmt_txn_e(unit = "") "txn_e";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_txn_e_elmt_tr2e(unit "m-3.0..s-1.0") = 3.048E-5 "";
    Real elmt_product72 "";
    Real elmt_txn_b(unit = "") "txn_b";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_txn_b_elmt_tr2b(unit "m-3.0..s-1.0") = 4.272E-5 "";
    Real elmt_product69 "";
    Real elmt_deg_an_n(unit = "") "deg_an_n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_an_n_elmt_deg4_n(unit "s-1.0") = 6.0E-5 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_deg_b(unit = "") "deg_b";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_b_elmt_deg2_c(unit "s-1.0") = 0.18 "";
    Real elmt_reactant49 "";
    Real elmt_deg_e(unit = "") "deg_e";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_e_elmt_deg3_c(unit "s-1.0") = 0.18 "";
    Real elmt_reactant92 "";
    Real elmt_deg_e_n(unit = "") "deg_e_n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_e_n_elmt_deg3_n(unit "s-1.0") = 0.18 "";
    Real elmt_reactant93 "";
    Real elmt_IKK_deg(unit = "") "IKK_deg";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_IKK_deg_elmt_k_IKK_deg(unit "s-1.0") = 0.0 "";
    Real elmt_reactant107 "";
    Real elmt_int_bi(unit = "") "int_bi";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_bi_elmt_d2_1(unit "s-1.0") = 0.105 "";
    parameter Real elmt_int_bi_elmt_a2(unit "m3.0.mol-1.0.s-1.0") = 0.36 "";
    Real elmt_reactant62 "";
    Real elmt_reactant63 "";
    Real elmt_product64 "";
    Real elmt_deg_en_n(unit = "") "deg_en_n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_en_n_elmt_deg6_n(unit "s-1.0") = 6.0E-5 "";
    Real elmt_reactant94 "";
    Real elmt_product95 "";
    Real elmt_deg_a(unit = "") "deg_a";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_a_elmt_deg1_c(unit "s-1.0") = 0.12 "";
    Real elmt_reactant20 "";
    Real elmt_deg_a_n(unit = "") "deg_a_n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_a_n_elmt_deg1_n(unit "s-1.0") = 0.12 "";
    Real elmt_reactant21 "";
    Real elmt_int_bn(unit = "") "int_bn";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_bn_elmt_d5_1(unit "s-1.0") = 6.0E-5 "";
    parameter Real elmt_int_bn_elmt_a5_1(unit "m3.0.mol-1.0.s-1.0") = 30.0 "";
    Real elmt_product61 "";
    Real elmt_reactant60 "";
    Real elmt_reactant59 "";
    Real elmt_int_2bni(unit = "") "int_2bni";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_2bni_elmt_d2_2(unit "s-1.0") = 0.105 "";
    parameter Real elmt_int_2bni_elmt_a8(unit "m3.0.mol-1.0.s-1.0") = 2.88 "";
    Real elmt_reactant53 "";
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_loc_an(unit = "") "loc_an";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_loc_an_elmt_k2_a(unit "s-1.0") = 0.828 "";
    Real elmt_product34 "";
    Real elmt_reactant33 "";
    Real elmt_tsl_a(unit = "") "tsl_a";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_tsl_a_elmt_tr1a(unit "s-1.0") = 0.2448 "";
    Real elmt_reactant2 "";
    Real elmt_product4 "";
    Real elmt_product3 "";
    Real elmt_loc_en(unit = "") "loc_en";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_loc_en_elmt_k2_e(unit "s-1.0") = 0.414 "";
    Real elmt_reactant105 "";
    Real elmt_product106 "";
    Real elmt_tsl_b(unit = "") "tsl_b";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_tsl_b_elmt_tr1b(unit "s-1.0") = 0.2448 "";
    Real elmt_product67 "";
    Real elmt_product66 "";
    Real elmt_reactant65 "";
    Real elmt_tsl_e(unit = "") "tsl_e";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_tsl_e_elmt_tr1e(unit "s-1.0") = 0.2448 "";
    Real elmt_reactant74 "";
    Real elmt_product76 "";
    Real elmt_product75 "";
    Real elmt_deg_bn(unit = "") "deg_bn";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_bn_elmt_deg5_c(unit "s-1.0") = 6.0E-5 "";
    Real elmt_product45 "";
    Real elmt_reactant44 "";
    Real elmt_deg_bn_n(unit = "") "deg_bn_n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_bn_n_elmt_deg5_n(unit "s-1.0") = 6.0E-5 "";
    Real elmt_product47 "";
    Real elmt_reactant46 "";
    Real elmt_deg_bi(unit = "") "deg_bi";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_bi_elmt_r2(unit "s-1.0") = 0.024 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_int_2bin(unit = "") "int_2bin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_2bin_elmt_a5_3(unit "m3.0.mol-1.0.s-1.0") = 30.0 "";
    parameter Real elmt_int_2bin_elmt_d5_3(unit "s-1.0") = 6.0E-5 "";
    Real elmt_reactant50 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_itxn_a(unit = "") "itxn_a";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_itxn_a_elmt_tr2a_i(unit "m3.0.mol-1.0.s-1.0") = 1.98 "";
    Real elmt_product108 "";
    Real elmt_int_bn_n(unit = "") "int_bn_n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_bn_n_elmt_d5_2(unit "s-1.0") = 6.0E-5 "";
    parameter Real elmt_int_bn_n_elmt_a5_2(unit "m3.0.mol-1.0.s-1.0") = 30.0 "";
    Real elmt_product58 "";
    Real elmt_reactant56 "";
    Real elmt_reactant57 "";
    Real elmt_deg_ain(unit = "") "deg_ain";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_ain_elmt_r4(unit "s-1.0") = 0.36 "";
    Real elmt_product30 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_deg_an(unit = "") "deg_an";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_an_elmt_deg4_c(unit "s-1.0") = 6.0E-5 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_deg_en(unit = "") "deg_en";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_en_elmt_deg6_c(unit "s-1.0") = 6.0E-5 "";
    Real elmt_reactant96 "";
    Real elmt_product97 "";
    Real elmt_deg_ai(unit = "") "deg_ai";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_ai_elmt_r1(unit "s-1.0") = 0.072 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_deg_ein(unit = "") "deg_ein";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_ein_elmt_r6(unit "s-1.0") = 0.18 "";
    Real elmt_product102 "";
    Real elmt_product101 "";
    Real elmt_reactant100 "";
    Real elmt_int_en_n(unit = "") "int_en_n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_en_n_elmt_a6_2(unit "m3.0.mol-1.0.s-1.0") = 30.0 "";
    parameter Real elmt_int_en_n_elmt_d6_2(unit "s-1.0") = 6.0E-5 "";
    Real elmt_reactant83 "";
    Real elmt_product85 "";
    Real elmt_reactant84 "";
    Real elmt_mdeg_a(unit = "") "mdeg_a";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_mdeg_a_elmt_tr3a(unit "s-1.0") = 0.0168 "";
    Real elmt_reactant1 "";
    Real elmt_int_an_n(unit = "") "int_an_n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_an_n_elmt_d4_2(unit "s-1.0") = 6.0E-5 "";
    parameter Real elmt_int_an_n_elmt_a4_2(unit "m3.0.mol-1.0.s-1.0") = 30.0 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt_deg_b_n(unit = "") "deg_b_n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_b_n_elmt_deg2_n(unit "s-1.0") = 0.18 "";
    Real elmt_reactant48 "";
    Real elmt_mdeg_b(unit = "") "mdeg_b";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_mdeg_b_elmt_tr3b(unit "s-1.0") = 0.0168 "";
    Real elmt_reactant68 "";
    Real elmt_mdeg_e(unit = "") "mdeg_e";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_mdeg_e_elmt_tr3e(unit "s-1.0") = 0.0168 "";
    Real elmt_reactant73 "";
    Real elmt_int_2eni(unit = "") "int_2eni";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_2eni_elmt_d3_2(unit "s-1.0") = 0.105 "";
    parameter Real elmt_int_2eni_elmt_a9(unit "m3.0.mol-1.0.s-1.0") = 4.2 "";
    Real elmt_reactant86 "";
    Real elmt_product88 "";
    Real elmt_reactant87 "";
    Real elmt_loc_n(unit = "") "loc_n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_loc_n_elmt_k1_1(unit "s-1.0") = 0.0048 "";
    parameter Real elmt_loc_n_elmt_k1_2(unit "s-1.0") = 5.4 "";
    Real elmt_product71 "";
    Real elmt_reactant70 "";
    Real elmt_int_2ani(unit = "") "int_2ani";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_int_2ani_elmt_d1_2(unit "s-1.0") = 0.075 "";
    parameter Real elmt_int_2ani_elmt_a7(unit "m3.0.mol-1.0.s-1.0") = 11.1 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_loc_e(unit = "") "loc_e";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_loc_e_elmt_tp1e(unit "s-1.0") = 0.018 "";
    parameter Real elmt_loc_e_elmt_tp2e(unit "s-1.0") = 0.012 "";
    Real elmt_product104 "";
    Real elmt_reactant103 "";
    Real elmt_deg_ei(unit = "") "deg_ei";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_deg_ei_elmt_r3(unit "s-1.0") = 0.036 "";
    Real elmt_product99 "";
    Real elmt_reactant98 "";
    Real elmt_loc_a(unit = "") "loc_a";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_loc_a_elmt_tp1a(unit "s-1.0") = 0.018 "";
    parameter Real elmt_loc_a_elmt_tp2a(unit "s-1.0") = 0.012 "";
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_loc_b(unit = "") "loc_b";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_loc_b_elmt_tp2b(unit "s-1.0") = 0.012 "";
    parameter Real elmt_loc_b_elmt_tp1b(unit "s-1.0") = 0.018 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";


    initial equation
        elmt_product72 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product71 = 1.0;
        elmt_product76 = 1.0;
        elmt_product75 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product69 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product85 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product82 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product88 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product102 = 1.0;
        elmt_product101 = 1.0;
        elmt_product104 = 1.0;
        elmt_product79 = 1.0;
        elmt_product106 = 1.0;
        elmt_product108 = 1.0;
        elmt_product95 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product99 = 1.0;
        elmt_product10 = 1.0;
        elmt_product97 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_product91 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product23 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_product4 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_reactant107 = 1.0;
        elmt_product16 = 1.0;
        elmt_reactant105 = 1.0;
        elmt_product13 = 1.0;
        elmt_reactant103 = 1.0;
        elmt_product19 = 1.0;
        elmt_reactant100 = 1.0;
        elmt_product30 = 1.0;
        elmt_reactant83 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_reactant86 = 1.0;
        elmt_product34 = 1.0;
        elmt_reactant80 = 1.0;
        elmt_reactant81 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant87 = 1.0;
        elmt_reactant89 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant96 = 1.0;
        elmt_reactant90 = 1.0;
        elmt_product45 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant93 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant98 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product55 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product67 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product66 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_product64 = 1.0;
        elmt_reactant77 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_product58 = 1.0;


    equation
        elmt_int_2ein = (elmt_cytoplasm * ((elmt_int_2ein_elmt_a6_3 * elmt_IkBeIKK * elmt_NFkB_cytoplasm) - (elmt_int_2ein_elmt_d6_3 * elmt_IkBeIKKNFkB)));
        elmt_int_ei = (elmt_cytoplasm * ((elmt_int_ei_elmt_a3 * elmt_IkBe_cytoplasm * elmt_IKK) - (elmt_int_ei_elmt_d3_1 * elmt_IkBeIKK)));
        elmt_int_2ain = (elmt_cytoplasm * ((elmt_int_2ain_elmt_a4_3 * elmt_IkBaIKK * elmt_NFkB_cytoplasm) - (elmt_int_2ain_elmt_d4_3 * elmt_IkBaIKKNFkB)));
        elmt_int_en = (elmt_cytoplasm * ((elmt_int_en_elmt_a6_1 * elmt_IkBe_cytoplasm * elmt_NFkB_cytoplasm) - (elmt_int_en_elmt_d6_1 * elmt_IkBeNFkB_cytoplasm)));
        elmt_int_ai = (elmt_cytoplasm * ((elmt_int_ai_elmt_a1 * elmt_IkBa_cytoplasm * elmt_IKK) - (elmt_int_ai_elmt_d1_1 * elmt_IkBaIKK)));
        elmt_int_an = (elmt_cytoplasm * ((elmt_int_an_elmt_a4_1 * elmt_IkBa_cytoplasm * elmt_NFkB_cytoplasm) - (elmt_int_an_elmt_d4_1 * elmt_IkBaNFkB_cytoplasm)));
        elmt_deg_bin = (elmt_cytoplasm * elmt_deg_bin_elmt_r5 * elmt_IkBbIKKNFkB);
        elmt_txn_a = (elmt_nucleus * elmt_txn_a_elmt_tr2a);
        elmt_loc_bn = (elmt_nucleus * elmt_loc_bn_elmt_k2_b * elmt_IkBbNFkB_nucleus);
        elmt_txn_e = (elmt_nucleus * elmt_txn_e_elmt_tr2e);
        elmt_txn_b = (elmt_nucleus * elmt_txn_b_elmt_tr2b);
        elmt_deg_an_n = (elmt_nucleus * elmt_deg_an_n_elmt_deg4_n * elmt_IkBaNFkB_nucleus);
        elmt_deg_b = (elmt_cytoplasm * elmt_deg_b_elmt_deg2_c * elmt_IkBb_cytoplasm);
        elmt_deg_e = (elmt_cytoplasm * elmt_deg_e_elmt_deg3_c * elmt_IkBe_cytoplasm);
        elmt_deg_e_n = (elmt_nucleus * elmt_deg_e_n_elmt_deg3_n * elmt_IkBe_nucleus);
        elmt_IKK_deg = (elmt_cytoplasm * elmt_IKK_deg_elmt_k_IKK_deg * elmt_IKK);
        elmt_int_bi = (elmt_cytoplasm * ((elmt_int_bi_elmt_a2 * elmt_IkBb_cytoplasm * elmt_IKK) - (elmt_int_bi_elmt_d2_1 * elmt_IkBbIKK)));
        elmt_deg_en_n = (elmt_nucleus * elmt_deg_en_n_elmt_deg6_n * elmt_IkBeNFkB_nucleus);
        elmt_deg_a = (elmt_cytoplasm * elmt_deg_a_elmt_deg1_c * elmt_IkBa_cytoplasm);
        elmt_deg_a_n = (elmt_nucleus * elmt_deg_a_n_elmt_deg1_n * elmt_IkBa_nucleus);
        elmt_int_bn = (elmt_cytoplasm * ((elmt_int_bn_elmt_a5_1 * elmt_IkBb_cytoplasm * elmt_NFkB_cytoplasm) - (elmt_int_bn_elmt_d5_1 * elmt_IkBbNFkB_cytoplasm)));
        elmt_int_2bni = (elmt_cytoplasm * ((elmt_int_2bni_elmt_a8 * elmt_IkBbNFkB_cytoplasm * elmt_IKK) - (elmt_int_2bni_elmt_d2_2 * elmt_IkBbIKKNFkB)));
        elmt_loc_an = (elmt_nucleus * elmt_loc_an_elmt_k2_a * elmt_IkBaNFkB_nucleus);
        elmt_tsl_a = (elmt_nucleus * elmt_tsl_a_elmt_tr1a * elmt_IkBa_mRNA);
        elmt_loc_en = (elmt_nucleus * elmt_loc_en_elmt_k2_e * elmt_IkBeNFkB_nucleus);
        elmt_tsl_b = (elmt_nucleus * elmt_tsl_b_elmt_tr1b * elmt_IkBb_mRNA);
        elmt_tsl_e = (elmt_nucleus * elmt_tsl_e_elmt_tr1e * elmt_IkBe_mRNA);
        elmt_deg_bn = (elmt_cytoplasm * elmt_deg_bn_elmt_deg5_c * elmt_IkBbNFkB_cytoplasm);
        elmt_deg_bn_n = (elmt_nucleus * elmt_deg_bn_n_elmt_deg5_n * elmt_IkBbNFkB_nucleus);
        elmt_deg_bi = (elmt_cytoplasm * elmt_deg_bi_elmt_r2 * elmt_IkBbIKK);
        elmt_int_2bin = (elmt_cytoplasm * ((elmt_int_2bin_elmt_a5_3 * elmt_IkBbIKK * elmt_NFkB_cytoplasm) - (elmt_int_2bin_elmt_d5_3 * elmt_IkBbIKKNFkB)));
        elmt_itxn_a = (elmt_nucleus * elmt_itxn_a_elmt_tr2a_i * Functions.pow(elmt_NFkB_nucleus, 2.0));
        elmt_int_bn_n = (elmt_nucleus * ((elmt_int_bn_n_elmt_a5_2 * elmt_IkBb_nucleus * elmt_NFkB_nucleus) - (elmt_int_bn_n_elmt_d5_2 * elmt_IkBbNFkB_nucleus)));
        elmt_deg_ain = (elmt_cytoplasm * elmt_deg_ain_elmt_r4 * elmt_IkBaIKKNFkB);
        elmt_deg_an = (elmt_cytoplasm * elmt_deg_an_elmt_deg4_c * elmt_IkBaNFkB_cytoplasm);
        elmt_deg_en = (elmt_cytoplasm * elmt_deg_en_elmt_deg6_c * elmt_IkBeNFkB_cytoplasm);
        elmt_deg_ai = (elmt_cytoplasm * elmt_deg_ai_elmt_r1 * elmt_IkBaIKK);
        elmt_deg_ein = (elmt_cytoplasm * elmt_deg_ein_elmt_r6 * elmt_IkBeIKKNFkB);
        elmt_int_en_n = (elmt_nucleus * ((elmt_int_en_n_elmt_a6_2 * elmt_IkBe_nucleus * elmt_NFkB_nucleus) - (elmt_int_en_n_elmt_d6_2 * elmt_IkBeNFkB_nucleus)));
        elmt_mdeg_a = (elmt_nucleus * elmt_mdeg_a_elmt_tr3a * elmt_IkBa_mRNA);
        elmt_int_an_n = (elmt_nucleus * ((elmt_int_an_n_elmt_a4_2 * elmt_IkBa_nucleus * elmt_NFkB_nucleus) - (elmt_int_an_n_elmt_d4_2 * elmt_IkBaNFkB_nucleus)));
        elmt_deg_b_n = (elmt_nucleus * elmt_deg_b_n_elmt_deg2_n * elmt_IkBb_nucleus);
        elmt_mdeg_b = (elmt_nucleus * elmt_mdeg_b_elmt_tr3b * elmt_IkBb_mRNA);
        elmt_mdeg_e = (elmt_nucleus * elmt_mdeg_e_elmt_tr3e * elmt_IkBe_mRNA);
        elmt_int_2eni = (elmt_cytoplasm * ((elmt_int_2eni_elmt_a9 * elmt_IkBeNFkB_cytoplasm * elmt_IKK) - (elmt_int_2eni_elmt_d3_2 * elmt_IkBeIKKNFkB)));
        elmt_loc_n = ((elmt_cytoplasm * elmt_loc_n_elmt_k1_2 * elmt_NFkB_cytoplasm) - (elmt_nucleus * elmt_loc_n_elmt_k1_1 * elmt_NFkB_nucleus));
        elmt_int_2ani = (elmt_cytoplasm * ((elmt_int_2ani_elmt_a7 * elmt_IkBaNFkB_cytoplasm * elmt_IKK) - (elmt_int_2ani_elmt_d1_2 * elmt_IkBaIKKNFkB)));
        elmt_loc_e = ((elmt_cytoplasm * elmt_loc_e_elmt_tp1e * elmt_IkBe_cytoplasm) - (elmt_nucleus * elmt_loc_e_elmt_tp2e * elmt_IkBe_nucleus));
        elmt_deg_ei = (elmt_cytoplasm * elmt_deg_ei_elmt_r3 * elmt_IkBeIKK);
        elmt_loc_a = ((elmt_cytoplasm * elmt_loc_a_elmt_tp1a * elmt_IkBa_cytoplasm) - (elmt_nucleus * elmt_loc_a_elmt_tp2a * elmt_IkBa_nucleus));
        elmt_loc_b = ((elmt_cytoplasm * elmt_loc_b_elmt_tp1b * elmt_IkBb_cytoplasm) - (elmt_nucleus * elmt_loc_b_elmt_tp2b * elmt_IkBb_nucleus));
        der(elmt_product72) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product71) = 0;
        der(elmt_product76) = 0;
        der(elmt_product75) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product69) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product85) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product82) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product88) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product102) = 0;
        der(elmt_product101) = 0;
        der(elmt_product104) = 0;
        der(elmt_product79) = 0;
        der(elmt_product106) = 0;
        der(elmt_product108) = 0;
        der(elmt_product95) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product99) = 0;
        der(elmt_product10) = 0;
        der(elmt_product97) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_product91) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product23) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product4) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_reactant107) = 0;
        der(elmt_product16) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_product13) = 0;
        der(elmt_reactant103) = 0;
        der(elmt_product19) = 0;
        der(elmt_reactant100) = 0;
        der(elmt_product30) = 0;
        der(elmt_reactant83) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_reactant86) = 0;
        der(elmt_product34) = 0;
        der(elmt_reactant80) = 0;
        der(elmt_reactant81) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant87) = 0;
        der(elmt_reactant89) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant96) = 0;
        der(elmt_reactant90) = 0;
        der(elmt_product45) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant93) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant98) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product55) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product67) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant77) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_product58) = 0;

end Reactions;
