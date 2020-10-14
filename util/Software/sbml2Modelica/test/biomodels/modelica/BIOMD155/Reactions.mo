within BIOMD155;
class Reactions

    input Real elmt_tau;
    input Real elmt_psi;
    input Real elmt_compartment;
    input Real elmt_n;
    input Real elmt_y;
    input Real elmt_beta_x;
    input Real elmt_x;
    input Real elmt_beta_y;
    input Real elmt_alpha_xy;
    input Real elmt_alpha_y;
    input Real elmt_S;

    Real elmt_R5(unit = "") "Mdm2 degradation";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_R3(unit = "") "Mdm2 dependent p53 degradation";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_R4(unit = "") "p53 dependent Mdm2 production";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product2 "";
    Real elmt_R1(unit = "") "p53 production";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_R5 = (elmt_compartment * elmt_alpha_y * elmt_y);
        elmt_R3 = (elmt_compartment * elmt_alpha_xy * elmt_y * elmt_x);
        elmt_R4 = (elmt_compartment * elmt_beta_y * elmt_psi * delay(elmt_x, elmt_tau, Constants.INFINITY));
        elmt_R1 = (((elmt_compartment * elmt_beta_x * Functions.pow(elmt_S, elmt_n)) / (Functions.pow(elmt_S, elmt_n) + 1.0)) * elmt_psi);
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product0) = 0;
        der(elmt_product2) = 0;

end Reactions;
