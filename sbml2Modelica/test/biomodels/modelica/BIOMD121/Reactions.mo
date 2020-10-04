within BIOMD121;
class Reactions

    input Real elmt_o;
    input Real elmt_i;
    input Real elmt_aa;
    input Real elmt_bb;
    input Real elmt_c1;
    input Real elmt_bi;
    input Real elmt_a;
    input Real elmt_ai;
    input Real elmt_b;
    input Real elmt_bin;
    input Real elmt_cell;
    input Real elmt_ain;
    input Real elmt_c2;
    input Real elmt_c3;
    input Real elmt_u;

    Real elmt_reaction_0000005(unit = "") "c1-i transition";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reaction_0000004(unit = "") "o-i transition";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_0000003(unit = "") "c1-o transition";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_reaction_0000002(unit = "") "c2-c1 transition";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_reaction_0000001(unit = "") "c3-c2 transition";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_reaction_0000005 = (((elmt_aa * elmt_c1) - (elmt_u * elmt_i)) * elmt_cell);
        elmt_reaction_0000004 = (((elmt_o * elmt_bi) - (elmt_ai * elmt_i)) * elmt_cell);
        elmt_reaction_0000003 = (((elmt_c1 * elmt_aa) - (elmt_bb * elmt_o)) * elmt_cell);
        elmt_reaction_0000002 = (((elmt_ain * elmt_c2) - (elmt_bin * elmt_c1)) * elmt_cell);
        elmt_reaction_0000001 = (((elmt_a * elmt_c3) - (elmt_b * elmt_c2)) * elmt_cell);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
