within S2MBIOMDx8016;
class Reactions


    input Real elmt_compartment_0000004;
    input Real elmt_M;
    input Real elmt_P1;
    input Real elmt_P2;
    input Real elmt_P0;
    input Real elmt_Pn;
    input Real elmt_default;
    input Real elmt_CYTOPLASM;

    Real elmt_rPn2(unit = "") "translocation of PER to the cytoplasm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rPn2_elmt_k2(unit "") = 1.3 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_rP01(unit = "") "first phosphorylation of PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rP01_elmt_K1(unit "") = 2.0 "";
    parameter Real elmt_rP01_elmt_V1(unit "") = 3.2 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_rP12(unit = "") "second phosphorylation of PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rP12_elmt_V3(unit "") = 5.0 "";
    parameter Real elmt_rP12_elmt_K3(unit "") = 2.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_rVd(unit = "") "degradation of PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rVd_elmt_Vd(unit "") = 0.95 "";
    parameter Real elmt_rVd_elmt_Kd(unit "") = 0.2 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_rP10(unit = "") "removal of the first PER phosphate";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rP10_elmt_V2(unit "") = 1.58 "";
    parameter Real elmt_rP10_elmt_K2(unit "") = 2.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_rP21(unit = "") "removal of the second PER phosphate";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rP21_elmt_V4(unit "") = 2.5 "";
    parameter Real elmt_rP21_elmt_K4(unit "") = 2.0 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_rM(unit = "") "transcription of PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rM_elmt_n(unit "") = 4.0 "";
    parameter Real elmt_rM_elmt_Vs(unit "") = 0.76 "";
    parameter Real elmt_rM_elmt_KI(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_rmRNAd(unit = "") "degradation of PER mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rmRNAd_elmt_Km(unit "") = 0.5 "";
    parameter Real elmt_rmRNAd_elmt_Vm(unit "") = 0.65 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_rP2n(unit = "") "translocation of PER to the nucleus";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rP2n_elmt_k1(unit "") = 1.9 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_rTL(unit = "") "translation of PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rTL_elmt_ks(unit "") = 0.38 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_rPn2 = (elmt_rPn2_elmt_k2 * elmt_Pn * elmt_compartment_0000004);
        elmt_rP01 = ((elmt_CYTOPLASM * elmt_rP01_elmt_V1 * elmt_P0) / (elmt_rP01_elmt_K1 + elmt_P0));
        elmt_rP12 = ((elmt_CYTOPLASM * elmt_rP12_elmt_V3 * elmt_P1) / (elmt_rP12_elmt_K3 + elmt_P1));
        elmt_rVd = ((elmt_CYTOPLASM * elmt_rVd_elmt_Vd * elmt_P2) / (elmt_rVd_elmt_Kd + elmt_P2));
        elmt_rP10 = ((elmt_CYTOPLASM * elmt_rP10_elmt_V2 * elmt_P1) / (elmt_rP10_elmt_K2 + elmt_P1));
        elmt_rP21 = ((elmt_CYTOPLASM * elmt_rP21_elmt_V4 * elmt_P2) / (elmt_rP21_elmt_K4 + elmt_P2));
        elmt_rM = ((elmt_default * elmt_rM_elmt_Vs * Functions.pow(elmt_rM_elmt_KI, elmt_rM_elmt_n)) / (Functions.pow(elmt_rM_elmt_KI, elmt_rM_elmt_n) + Functions.pow(elmt_Pn, elmt_rM_elmt_n)));
        elmt_rmRNAd = ((elmt_rmRNAd_elmt_Vm * elmt_M * elmt_CYTOPLASM) / (elmt_rmRNAd_elmt_Km + elmt_M));
        elmt_rP2n = (elmt_rP2n_elmt_k1 * elmt_P2 * elmt_CYTOPLASM);
        elmt_rTL = (elmt_rTL_elmt_ks * elmt_M * elmt_default);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
