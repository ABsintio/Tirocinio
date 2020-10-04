within BIOMD157;
class Reactions

    input Real elmt_alpha_k;
    input Real elmt_psi;
    input Real elmt_compartment;
    input Real elmt_k;
    input Real elmt_alpha_0;
    input Real elmt_y;
    input Real elmt_beta_x;
    input Real elmt_x;
    input Real elmt_beta_y;
    input Real elmt_alpha_y;
    input Real elmt_alpha_x;
    input Real elmt_y0;

    Real elmt_R5(unit = "") "Mdm2 synthesis from precursor";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_R6(unit = "") "Mdm2 degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant6 "";
    Real elmt_R3(unit = "") "Mdm2 dependent p53 degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_R4(unit = "") "p53 dependent Mdm2 precursor production";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product3 "";
    Real elmt_R1(unit = "") "p53 production";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_R2(unit = "") "Mdm2 independent p53 degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_R5 = (elmt_compartment * elmt_alpha_0 * elmt_y0);
        elmt_R6 = (elmt_compartment * elmt_alpha_y * elmt_y);
        elmt_R3 = ((elmt_compartment * elmt_alpha_k * elmt_y * elmt_x) / (elmt_x + elmt_k));
        elmt_R4 = (elmt_compartment * elmt_beta_y * elmt_x * elmt_psi);
        elmt_R1 = (elmt_compartment * elmt_beta_x * elmt_psi);
        elmt_R2 = (elmt_compartment * elmt_alpha_x * elmt_x);
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;

end Reactions;
