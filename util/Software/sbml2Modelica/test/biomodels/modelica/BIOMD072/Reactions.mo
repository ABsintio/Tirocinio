within BIOMD072;
class Reactions

    input Real elmt_cell;
    input Real elmt_L;
    input Real elmt_Gd;
    input Real elmt_G;
    input Real elmt_RL;
    input Real elmt_Ga;
    input Real elmt_Gbg;
    input Real elmt_R;

    Real elmt_reaction_5(unit = "") "Receptor-Ligand Degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_5_elmt_k1(unit "") = 0.004 "";
    Real elmt_reactant11 "";
    Real elmt_reaction_6(unit = "") "G-protein Inactivation ";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_6_elmt_k1(unit "") = 0.11 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_3(unit = "") "Heterotrimeric G-Protein Formation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 1.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_4(unit = "") "G-protein Activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_4_elmt_k1(unit "") = 1.0E-5 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reaction_1(unit = "") "Receptor Synthesis";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_1_elmt_v(unit "") = 4.0 "";
    Real elmt_product3 "";
    Real elmt_reaction_2(unit = "") "Receptor Degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "") = 4.0E-4 "";
    Real elmt_reactant4 "";
    Real elmt_reaction_0(unit = "") "Ligand-Receptor Association";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_0_elmt_k1(unit "") = 3.32E-18 "";
    parameter Real elmt_reaction_0_elmt_k2(unit "") = 0.01 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_reaction_5 = (elmt_cell * elmt_reaction_5_elmt_k1 * elmt_RL);
        elmt_reaction_6 = (elmt_cell * elmt_reaction_6_elmt_k1 * elmt_Ga);
        elmt_reaction_3 = (elmt_cell * elmt_reaction_3_elmt_k1 * elmt_Gd * elmt_Gbg);
        elmt_reaction_4 = (elmt_cell * elmt_reaction_4_elmt_k1 * elmt_RL * elmt_G);
        elmt_reaction_1 = (elmt_cell * elmt_reaction_1_elmt_v);
        elmt_reaction_2 = (elmt_cell * elmt_reaction_2_elmt_k1 * elmt_R);
        elmt_reaction_0 = (elmt_cell * ((elmt_reaction_0_elmt_k1 * elmt_L * elmt_R) - (elmt_reaction_0_elmt_k2 * elmt_RL)));
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_product13) = 0;

end Reactions;
