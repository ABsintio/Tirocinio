within BIOMD114;
class Reactions

    input Real elmt_beta;
    input Real elmt_k1;
    input Real elmt_fy;
    input Real elmt_k;
    input Real elmt_cytoplasm;
    input Real elmt_y;
    input Real elmt_gamma;
    input Real elmt_ER;
    input Real elmt_x;
    input Real elmt_alpha;
    input Real elmt_extracellular;

    Real elmt_reaction_0000004(unit = "") "InsP3 channel";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_reaction_0000003(unit = "") "Ca pumped out of the cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_reaction_0000002(unit = "") "Ca translocation between cytoplasm and ER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_product2 "";
    Real elmt_reaction_0000001(unit = "") "Ca flux into the cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_reaction_0000004 = (elmt_alpha * elmt_fy * elmt_x * elmt_cytoplasm);
        elmt_reaction_0000003 = (elmt_beta * elmt_y * elmt_extracellular);
        elmt_reaction_0000002 = ((elmt_k * elmt_x * elmt_cytoplasm) - (elmt_k1 * elmt_y * elmt_ER));
        elmt_reaction_0000001 = (elmt_gamma * elmt_cytoplasm);
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product2) = 0;

end Reactions;
