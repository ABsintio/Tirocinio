within BIOMD010;
class Reactions

    input Real elmt_MAPK_PP;
    input Real elmt_MAPK_P;
    input Real elmt_MKK_P;
    input Real elmt_uVol;
    input Real elmt_MAPK;
    input Real elmt_MKK_PP;
    input Real elmt_MKKK;
    input Real elmt_MKK;
    input Real elmt_MKKK_P;

    Real elmt_J0(unit = "") "MAPKKK activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_J0_elmt_K1(unit "") = 10.0 "";
    parameter Real elmt_J0_elmt_n(unit "") = 1.0 "";
    parameter Real elmt_J0_elmt_Ki(unit "") = 9.0 "";
    parameter Real elmt_J0_elmt_V1(unit "") = 2.5 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_J9(unit = "") "dephosphorylation of MAPK-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_J9_elmt_V10(unit "") = 0.5 "";
    parameter Real elmt_J9_elmt_KK10(unit "") = 15.0 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_J7(unit = "") "phosphorylation of MAPK-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_J7_elmt_KK8(unit "") = 15.0 "";
    parameter Real elmt_J7_elmt_k8(unit "") = 0.025 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_J8(unit = "") "dephosphorylation of MAPK-PP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_J8_elmt_V9(unit "") = 0.5 "";
    parameter Real elmt_J8_elmt_KK9(unit "") = 15.0 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_J5(unit = "") "dephosphorylation of MAPKK-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_J5_elmt_KK6(unit "") = 15.0 "";
    parameter Real elmt_J5_elmt_V6(unit "") = 0.75 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_J6(unit = "") "phosphorylation of MAPK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_J6_elmt_KK7(unit "") = 15.0 "";
    parameter Real elmt_J6_elmt_k7(unit "") = 0.025 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_J3(unit = "") "phosphorylation of MAPKK-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_J3_elmt_KK4(unit "") = 15.0 "";
    parameter Real elmt_J3_elmt_k4(unit "") = 0.025 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_J4(unit = "") "dephosphorylation of MAPKK-PP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_J4_elmt_KK5(unit "") = 15.0 "";
    parameter Real elmt_J4_elmt_V5(unit "") = 0.75 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_J1(unit = "") "MAPKKK inactivation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_J1_elmt_KK2(unit "") = 8.0 "";
    parameter Real elmt_J1_elmt_V2(unit "") = 0.25 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_J2(unit = "") "phosphorylation of MAPKK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_J2_elmt_KK3(unit "") = 15.0 "";
    parameter Real elmt_J2_elmt_k3(unit "") = 0.025 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_J0 = ((elmt_uVol * elmt_J0_elmt_V1 * elmt_MKKK) / ((1.0 + Functions.pow((elmt_MAPK_PP / elmt_J0_elmt_Ki), elmt_J0_elmt_n)) * (elmt_J0_elmt_K1 + elmt_MKKK)));
        elmt_J9 = ((elmt_uVol * elmt_J9_elmt_V10 * elmt_MAPK_P) / (elmt_J9_elmt_KK10 + elmt_MAPK_P));
        elmt_J7 = ((elmt_uVol * elmt_J7_elmt_k8 * elmt_MKK_PP * elmt_MAPK_P) / (elmt_J7_elmt_KK8 + elmt_MAPK_P));
        elmt_J8 = ((elmt_uVol * elmt_J8_elmt_V9 * elmt_MAPK_PP) / (elmt_J8_elmt_KK9 + elmt_MAPK_PP));
        elmt_J5 = ((elmt_uVol * elmt_J5_elmt_V6 * elmt_MKK_P) / (elmt_J5_elmt_KK6 + elmt_MKK_P));
        elmt_J6 = ((elmt_uVol * elmt_J6_elmt_k7 * elmt_MKK_PP * elmt_MAPK) / (elmt_J6_elmt_KK7 + elmt_MAPK));
        elmt_J3 = ((elmt_uVol * elmt_J3_elmt_k4 * elmt_MKKK_P * elmt_MKK_P) / (elmt_J3_elmt_KK4 + elmt_MKK_P));
        elmt_J4 = ((elmt_uVol * elmt_J4_elmt_V5 * elmt_MKK_PP) / (elmt_J4_elmt_KK5 + elmt_MKK_PP));
        elmt_J1 = ((elmt_uVol * elmt_J1_elmt_V2 * elmt_MKKK_P) / (elmt_J1_elmt_KK2 + elmt_MKKK_P));
        elmt_J2 = ((elmt_uVol * elmt_J2_elmt_k3 * elmt_MKKK_P * elmt_MKK) / (elmt_J2_elmt_KK3 + elmt_MKK));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
