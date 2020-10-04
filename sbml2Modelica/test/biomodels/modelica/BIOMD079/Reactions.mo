within BIOMD079;
class Reactions

    input Real elmt_P;
    input Real elmt_body;
    input Real elmt_Q;
    input Real elmt_R;

    Real elmt_reaction_5(unit = "") "Decrease of R";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_5_elmt_Km(unit "") = 0.01 "";
    parameter Real elmt_reaction_5_elmt_V(unit "") = 2.5 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_3(unit = "") "Decrease of Q";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_3_elmt_V2(unit "") = 1.5 "";
    parameter Real elmt_reaction_3_elmt_K2(unit "") = 0.01 "";
    Real elmt_reactant3 "";
    Real elmt_reaction_4(unit = "") "Increase of R";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_4_elmt_V3(unit "") = 6.0 "";
    parameter Real elmt_reaction_4_elmt_k3(unit "") = 0.01 "";
    Real elmt_product4 "";
    Real elmt_reaction_1(unit = "") "Decrease of P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_1_elmt_Km(unit "") = 0.2 "";
    parameter Real elmt_reaction_1_elmt_V(unit "") = 0.1 "";
    Real elmt_reactant1 "";
    Real elmt_reaction_2(unit = "") "Increase of Q";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_2_elmt_K1(unit "") = 0.01 "";
    parameter Real elmt_reaction_2_elmt_V1(unit "") = 1.0 "";
    Real elmt_product2 "";
    Real elmt_reaction_0(unit = "") "Increase of  P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_0_elmt_a(unit "") = 0.1 "";
    Real elmt_product0 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product0 = 1.0;
        elmt_product4 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_reaction_5 = (((elmt_reaction_5_elmt_V * elmt_R) / (elmt_reaction_5_elmt_Km + elmt_R)));
        elmt_reaction_3 = (((elmt_reaction_3_elmt_V2 * elmt_R * elmt_Q) / (elmt_reaction_3_elmt_K2 + elmt_Q)));
        elmt_reaction_4 = (((elmt_P * elmt_reaction_4_elmt_V3 * (1.0 - elmt_R)) / (elmt_reaction_4_elmt_k3 + (1.0 - elmt_R))));
        elmt_reaction_1 = (((elmt_reaction_1_elmt_V * elmt_P) / (elmt_reaction_1_elmt_Km + elmt_P)));
        elmt_reaction_2 = (((elmt_reaction_2_elmt_V1 * (1.0 - elmt_Q)) / (elmt_reaction_2_elmt_K1 + (1.0 - elmt_Q))));
        elmt_reaction_0 = (elmt_body * ((elmt_reaction_0_elmt_a * elmt_Q)));
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product0) = 0;
        der(elmt_product4) = 0;
        der(elmt_product2) = 0;

end Reactions;
