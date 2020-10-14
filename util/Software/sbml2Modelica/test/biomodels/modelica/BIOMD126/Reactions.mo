within BIOMD126;
class Reactions

    input Real elmt_O;
    input Real elmt_IC2;
    input Real elmt_C1;
    input Real elmt_IC3;
    input Real elmt_cell;
    input Real elmt_b5;
    input Real elmt_a4;
    input Real elmt_a5;
    input Real elmt_b3;
    input Real elmt_b13;
    input Real elmt_a2;
    input Real elmt_b12;
    input Real elmt_a3;
    input Real elmt_a13;
    input Real elmt_b4;
    input Real elmt_C2;
    input Real elmt_a12;
    input Real elmt_b11;
    input Real elmt_C3;
    input Real elmt_a11;
    input Real elmt_b2;
    input Real elmt_IF;
    input Real elmt_IM1;
    input Real elmt_IM2;

    Real elmt_reaction_0000008(unit = "") "C1=C2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reaction_0000007(unit = "") "C2=IC2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_0000006(unit = "") "C2=C3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_reaction_0000005(unit = "") "C3=IC3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reaction_0000009(unit = "") "C1=IF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_reaction_0000011(unit = "") "O=C1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_reaction_0000010(unit = "") "IF=O";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_reaction_0000004(unit = "") "IM1=IM2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_0000003(unit = "") "IF=IM1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_reaction_0000002(unit = "") "IC2=IF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_reaction_0000001(unit = "") "IC3=IC2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_reaction_0000008 = (elmt_cell * ((elmt_C1 * elmt_b12) - (elmt_C2 * elmt_a12)));
        elmt_reaction_0000007 = (elmt_cell * ((elmt_C2 * elmt_b3) - (elmt_IC2 * elmt_a3)));
        elmt_reaction_0000006 = (elmt_cell * ((elmt_C2 * elmt_b11) - (elmt_C3 * elmt_a11)));
        elmt_reaction_0000005 = (elmt_cell * ((elmt_C3 * elmt_b3) - (elmt_IC3 * elmt_a3)));
        elmt_reaction_0000009 = (elmt_cell * ((elmt_C1 * elmt_b3) - (elmt_IF * elmt_a3)));
        elmt_reaction_0000011 = (elmt_cell * (((- elmt_C1) * elmt_a13) + (elmt_O * elmt_b13)));
        elmt_reaction_0000010 = (elmt_cell * ((elmt_IF * elmt_b2) - (elmt_a2 * elmt_O)));
        elmt_reaction_0000004 = (elmt_cell * ((elmt_IM1 * elmt_a5) - (elmt_IM2 * elmt_b5)));
        elmt_reaction_0000003 = (elmt_cell * ((elmt_IF * elmt_a4) - (elmt_IM1 * elmt_b4)));
        elmt_reaction_0000002 = (elmt_cell * ((elmt_IC2 * elmt_a12) - (elmt_IF * elmt_b12)));
        elmt_reaction_0000001 = (elmt_cell * ((elmt_IC3 * elmt_a11) - (elmt_IC2 * elmt_b11)));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
