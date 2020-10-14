within BIOMD009;
class Reactions

    input Real elmt_KKPase;
    input Real elmt_compartment;
    input Real elmt_K;
    input Real elmt_PP_K;
    input Real elmt_KPase_PP_K;
    input Real elmt_PP_KK_K;
    input Real elmt_E1_KKK;
    input Real elmt_KK;
    input Real elmt_E2;
    input Real elmt_P_KKK_KK;
    input Real elmt_P_KKK_P_KK;
    input Real elmt_E1;
    input Real elmt_KKPase_P_KK;
    input Real elmt_P_K;
    input Real elmt_PP_KK_P_K;
    input Real elmt_P_KKK;
    input Real elmt_KPase;
    input Real elmt_E2_P_KKK;
    input Real elmt_KPase_P_K;
    input Real elmt_P_KK;
    input Real elmt_KKPase_PP_KK;
    input Real elmt_PP_KK;
    input Real elmt_KKK;

    Real elmt_r10b(unit = "") "dephosphorylation of PP-MAPK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r10b_elmt_k10(unit "") = 150.0 "";
    Real elmt_product59 "";
    Real elmt_product58 "";
    Real elmt_reactant57 "";
    Real elmt_r10a(unit = "") "binding MAPK-Pase and PP-MAPK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r10a_elmt_d10(unit "") = 150.0 "";
    parameter Real elmt_r10a_elmt_a10(unit "") = 1000.0 "";
    Real elmt_product56 "";
    Real elmt_reactant54 "";
    Real elmt_reactant55 "";
    Real elmt_r3a(unit = "") "binding P-MAPKKK and MAPKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r3a_elmt_a3(unit "") = 1000.0 "";
    parameter Real elmt_r3a_elmt_d3(unit "") = 150.0 "";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_r4b(unit = "") "dephosphorylation of P-MAPKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r4b_elmt_k4(unit "") = 150.0 "";
    Real elmt_product23 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_r4a(unit = "") "binding MAPKK-Pase and P-MAPKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r4a_elmt_a4(unit "") = 1000.0 "";
    parameter Real elmt_r4a_elmt_d4(unit "") = 150.0 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_r5b(unit = "") "phosphorylation of P-MAPKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r5b_elmt_k5(unit "") = 150.0 "";
    Real elmt_reactant27 "";
    Real elmt_product29 "";
    Real elmt_product28 "";
    Real elmt_r5a(unit = "") "binding P-MAPKKK and P-MAPKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r5a_elmt_a5(unit "") = 1000.0 "";
    parameter Real elmt_r5a_elmt_d5(unit "") = 150.0 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_reactant24 "";
    Real elmt_r6b(unit = "") "dephosphorylation of PP-MAPKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r6b_elmt_k6(unit "") = 150.0 "";
    Real elmt_product34 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_r6a(unit = "") "binding MAPKK-Pase and PP-MAPKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r6a_elmt_a6(unit "") = 1000.0 "";
    parameter Real elmt_r6a_elmt_d6(unit "") = 150.0 "";
    Real elmt_reactant30 "";
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_r7b(unit = "") "phosphorylation of MAPK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r7b_elmt_k7(unit "") = 150.0 "";
    Real elmt_product41 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_r7a(unit = "") "binding MAPK and PP-MAPKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r7a_elmt_a7(unit "") = 1000.0 "";
    parameter Real elmt_r7a_elmt_d7(unit "") = 150.0 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_r8b(unit = "") "dephosphorylation of P-MAPK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r8b_elmt_k8(unit "") = 150.0 "";
    Real elmt_product47 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_r8a(unit = "") "binding MAPK-Pase and P-MAPK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r8a_elmt_d8(unit "") = 150.0 "";
    parameter Real elmt_r8a_elmt_a8(unit "") = 1000.0 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_reactant43 "";
    Real elmt_r9b(unit = "") "phosphorylation of P-MAPK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r9b_elmt_k9(unit "") = 150.0 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_product53 "";
    Real elmt_r9a(unit = "") "binding PP-MAPKK and P-MAPK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r9a_elmt_d9(unit "") = 150.0 "";
    parameter Real elmt_r9a_elmt_a9(unit "") = 1000.0 "";
    Real elmt_product50 "";
    Real elmt_reactant48 "";
    Real elmt_reactant49 "";
    Real elmt_r1b(unit = "") "MAPKKK activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r1b_elmt_k2(unit "") = 150.0 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_r1a(unit = "") "binding of MAPKKK activator";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r1a_elmt_a1(unit "") = 1000.0 "";
    parameter Real elmt_r1a_elmt_d1(unit "") = 150.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_r2b(unit = "") "MAPKKK inactivation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r2b_elmt_k2(unit "") = 150.0 "";
    Real elmt_product11 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_r2a(unit = "") "binding of MAPKKK inactivator";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r2a_elmt_a2(unit "") = 1000.0 "";
    parameter Real elmt_r2a_elmt_d2(unit "") = 150.0 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_r3b(unit = "") "phosphorylation of MAPKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r3b_elmt_k3(unit "") = 150.0 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";


    initial equation
        elmt_reactant42 = 1.0;
        elmt_product34 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product26 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product29 = 1.0;
        elmt_product28 = 1.0;
        elmt_product41 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product44 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product38 = 1.0;
        elmt_product35 = 1.0;
        elmt_product52 = 1.0;
        elmt_product50 = 1.0;
        elmt_product56 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product47 = 1.0;
        elmt_product46 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_product16 = 1.0;
        elmt_product59 = 1.0;
        elmt_product58 = 1.0;
        elmt_product14 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_r10b = (elmt_compartment * elmt_r10b_elmt_k10 * elmt_KPase_PP_K);
        elmt_r10a = (elmt_compartment * ((elmt_r10a_elmt_a10 * elmt_PP_K * elmt_KPase) - (elmt_r10a_elmt_d10 * elmt_KPase_PP_K)));
        elmt_r3a = (elmt_compartment * ((elmt_r3a_elmt_a3 * elmt_KK * elmt_P_KKK) - (elmt_r3a_elmt_d3 * elmt_P_KKK_KK)));
        elmt_r4b = (elmt_compartment * elmt_r4b_elmt_k4 * elmt_KKPase_P_KK);
        elmt_r4a = (elmt_compartment * ((elmt_r4a_elmt_a4 * elmt_P_KK * elmt_KKPase) - (elmt_r4a_elmt_d4 * elmt_KKPase_P_KK)));
        elmt_r5b = (elmt_compartment * elmt_r5b_elmt_k5 * elmt_P_KKK_P_KK);
        elmt_r5a = (elmt_compartment * ((elmt_r5a_elmt_a5 * elmt_P_KK * elmt_P_KKK) - (elmt_r5a_elmt_d5 * elmt_P_KKK_P_KK)));
        elmt_r6b = (elmt_compartment * elmt_r6b_elmt_k6 * elmt_KKPase_PP_KK);
        elmt_r6a = (elmt_compartment * ((elmt_r6a_elmt_a6 * elmt_PP_KK * elmt_KKPase) - (elmt_r6a_elmt_d6 * elmt_KKPase_PP_KK)));
        elmt_r7b = (elmt_compartment * elmt_r7b_elmt_k7 * elmt_PP_KK_K);
        elmt_r7a = (elmt_compartment * ((elmt_r7a_elmt_a7 * elmt_K * elmt_PP_KK) - (elmt_r7a_elmt_d7 * elmt_PP_KK_K)));
        elmt_r8b = (elmt_compartment * elmt_r8b_elmt_k8 * elmt_KPase_P_K);
        elmt_r8a = (elmt_compartment * ((elmt_r8a_elmt_a8 * elmt_P_K * elmt_KPase) - (elmt_r8a_elmt_d8 * elmt_KPase_P_K)));
        elmt_r9b = (elmt_compartment * elmt_r9b_elmt_k9 * elmt_PP_KK_P_K);
        elmt_r9a = (elmt_compartment * ((elmt_r9a_elmt_a9 * elmt_P_K * elmt_PP_KK) - (elmt_r9a_elmt_d9 * elmt_PP_KK_P_K)));
        elmt_r1b = (elmt_compartment * elmt_r1b_elmt_k2 * elmt_E1_KKK);
        elmt_r1a = (elmt_compartment * ((elmt_r1a_elmt_a1 * elmt_E1 * elmt_KKK) - (elmt_r1a_elmt_d1 * elmt_E1_KKK)));
        elmt_r2b = (elmt_compartment * elmt_r2b_elmt_k2 * elmt_E2_P_KKK);
        elmt_r2a = (elmt_compartment * ((elmt_r2a_elmt_a2 * elmt_E2 * elmt_P_KKK) - (elmt_r2a_elmt_d2 * elmt_E2_P_KKK)));
        elmt_r3b = (elmt_compartment * elmt_r3b_elmt_k3 * elmt_P_KKK_KK);
        der(elmt_reactant42) = 0;
        der(elmt_product34) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product29) = 0;
        der(elmt_product28) = 0;
        der(elmt_product41) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product44) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product38) = 0;
        der(elmt_product35) = 0;
        der(elmt_product52) = 0;
        der(elmt_product50) = 0;
        der(elmt_product56) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product47) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_product16) = 0;
        der(elmt_product59) = 0;
        der(elmt_product58) = 0;
        der(elmt_product14) = 0;
        der(elmt_product17) = 0;

end Reactions;
