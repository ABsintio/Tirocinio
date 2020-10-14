within BIOMD186;
class Reactions

    input Real elmt_Bub3_BubR1_Cdc20;
    input Real elmt_Bub3_BubR1;
    input Real elmt_APC_Cdc20;
    input Real elmt_APC;
    input Real elmt_OMad2;
    input Real elmt_k1f;
    input Real elmt_Cdc20;
    input Real elmt_k3f;
    input Real elmt_k5f;
    input Real elmt_kf6;
    input Real elmt_k7f;
    input Real elmt_k5r;
    input Real elmt_k7r;
    input Real elmt_u_prime;
    input Real elmt_k1r;
    input Real elmt_Mad1_CMad2;
    input Real elmt_Cytoplasm;
    input Real elmt_Cdc20_CMad2;
    input Real elmt_MCC_APC;
    input Real elmt_k2f;
    input Real elmt_k4f;
    input Real elmt_k8f;
    input Real elmt_k8r;
    input Real elmt_Mad1_CMad2_OMad2;
    input Real elmt_u;
    input Real elmt_MCC;
    input Real elmt_k4r;

    Real elmt_R7(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant20 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_R8(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_R5(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reactant13 "";
    Real elmt_R6(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_R3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_R4(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product12 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_R1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_R2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product6 "";
    Real elmt_product5 "";
    Real elmt_R7a(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product23 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product27 = 1.0;
        elmt_product24 = 1.0;
        elmt_product9 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_product23 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product2 = 1.0;
        elmt_product15 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_R7 = (elmt_u * elmt_k7f * elmt_MCC * elmt_APC * elmt_Cytoplasm);
        elmt_R8 = (elmt_Cytoplasm * ((elmt_k8f * elmt_APC * elmt_Cdc20) - (elmt_k8r * elmt_APC_Cdc20)));
        elmt_R5 = (elmt_Cytoplasm * ((elmt_u * elmt_k5f * elmt_Bub3_BubR1 * elmt_Cdc20) - (elmt_k5r * elmt_Bub3_BubR1_Cdc20)));
        elmt_R6 = (elmt_kf6 * elmt_OMad2 * elmt_Cdc20 * elmt_Cytoplasm);
        elmt_R3 = (elmt_k3f * elmt_Cdc20_CMad2 * elmt_Cytoplasm);
        elmt_R4 = (elmt_Cytoplasm * ((elmt_u * elmt_k4f * elmt_Cdc20_CMad2 * elmt_Bub3_BubR1) - (elmt_k4r * elmt_MCC)));
        elmt_R1 = (elmt_Cytoplasm * ((elmt_u * elmt_k1f * elmt_Mad1_CMad2 * elmt_OMad2) - (elmt_k1r * elmt_Mad1_CMad2_OMad2)));
        elmt_R2 = (elmt_u * elmt_k2f * elmt_Mad1_CMad2_OMad2 * elmt_Cytoplasm * elmt_Cdc20);
        elmt_R7a = (elmt_u_prime * elmt_k7r * elmt_MCC_APC * elmt_Cytoplasm);
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product27) = 0;
        der(elmt_product24) = 0;
        der(elmt_product9) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product2) = 0;
        der(elmt_product15) = 0;
        der(elmt_product18) = 0;

end Reactions;
