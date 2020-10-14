within BIOMD148;
class Reactions

    input Real elmt_k1;
    input Real elmt_flag_resorption;
    input Real elmt_x1_bar;
    input Real elmt_beta1;
    input Real elmt_beta2;
    input Real elmt_k2;
    input Real elmt_g12;
    input Real elmt_g22;
    input Real elmt_g11;
    input Real elmt_g21;
    input Real elmt_alpha1;
    input Real elmt_x2_bar;
    input Real elmt_alpha2;
    input Real elmt_x1;
    input Real elmt_x2;
    input Real elmt_flag_formation;

    Real elmt_R5(unit = "") "Bone resorption";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_R6(unit = "") "Bone formation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product5 "";
    Real elmt_R3(unit = "") "Osteoblast production";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product2 "";
    Real elmt_R4(unit = "") "Osteoblast removal";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_R1(unit = "") "Osteoclast production";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_R2(unit = "") "Osteoclast removal";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_R5 = (elmt_flag_resorption * elmt_k1 * (elmt_x1 - elmt_x1_bar));
        elmt_R6 = (elmt_flag_formation * elmt_k2 * (elmt_x2 - elmt_x2_bar));
        elmt_R3 = (elmt_alpha2 * Functions.pow(elmt_x1, elmt_g12) * Functions.pow(elmt_x2, elmt_g22));
        elmt_R4 = (elmt_beta2 * elmt_x2);
        elmt_R1 = (elmt_alpha1 * Functions.pow(elmt_x1, elmt_g11) * Functions.pow(elmt_x2, elmt_g21));
        elmt_R2 = (elmt_beta1 * elmt_x1);
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product2) = 0;

end Reactions;
