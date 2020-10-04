within BIOMD145;
class Reactions

    input Real elmt_Galpha_GTP;
    input Real elmt_Rer;
    input Real elmt_Rcyt1;
    input Real elmt_Rcyt2;
    input Real elmt_PLC;
    input Real elmt_Cytosol;
    input Real elmt_Rgalpha_gtp;
    input Real elmt_k11;
    input Real elmt_Raplc;
    input Real elmt_Rpkc;
    input Real elmt_k10;
    input Real elmt_k0;
    input Real elmt_k1;
    input Real elmt_Rdg;
    input Real elmt_APLC;
    input Real elmt_ER;
    input Real elmt_k8;
    input Real elmt_k9;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_Rip3;
    input Real elmt_IP3;

    Real elmt_R7(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product6 "";
    Real elmt_R8(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant7 "";
    Real elmt_R5(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product4 "";
    Real elmt_R6(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant5 "";
    Real elmt_R3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_R4(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_R1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_R10(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant10 "";
    Real elmt_R2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_R11(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product11 "";
    Real elmt_R9(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product9 = 0.01;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product11 = 0.05;
        elmt_reactant8 = 0.001;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant10 = 0.05;
        elmt_product4 = 1.0;


    equation
        elmt_R7 = (elmt_Cytosol * elmt_k6 * elmt_APLC);
        elmt_R8 = (elmt_Cytosol * elmt_k7 * elmt_IP3);
        elmt_R5 = (elmt_Cytosol * elmt_k4 * elmt_Rgalpha_gtp * elmt_Rdg * elmt_PLC);
        elmt_R6 = (elmt_Cytosol * elmt_k5 * elmt_APLC);
        elmt_R3 = (elmt_Cytosol * elmt_k2 * elmt_Raplc * elmt_Galpha_GTP);
        elmt_R4 = (elmt_Cytosol * elmt_k3 * elmt_Rpkc * elmt_Galpha_GTP);
        elmt_R1 = (elmt_Cytosol * elmt_k0);
        elmt_R10 = (elmt_Cytosol * elmt_k10 * elmt_Rcyt2);
        elmt_R2 = (elmt_Cytosol * elmt_k1 * elmt_Galpha_GTP);
        elmt_R11 = (elmt_Cytosol * elmt_k11);
        elmt_R9 = (elmt_ER * ((elmt_k8 * elmt_Rip3 * elmt_Rer) - (elmt_k9 * elmt_Rcyt1)));
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product4) = 0;

end Reactions;
