within BIOMD077;
class Reactions

    input Real elmt_cell;
    input Real elmt_HRRH;
    input Real elmt_H;
    input Real elmt_E;
    input Real elmt_IP3;
    input Real elmt_HR;
    input Real elmt_GQ;
    input Real elmt_R;

    Real elmt_reaction_3(unit = "") "IP3 converted into inactive metabolites";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 10.0 "";
    Real elmt_reactant8 "";
    Real elmt_reaction_4(unit = "") "Production of IP3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_4_elmt_k(unit "") = 2.0E7 "";
    Real elmt_product9 "";
    Real elmt_reaction_1(unit = "") "HR forming HRRH";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_1_elmt_k1(unit "") = 2500.0 "";
    parameter Real elmt_reaction_1_elmt_k2(unit "") = 5.0 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_reaction_2(unit = "") "G protein react with dimer producing E";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "") = 4000.0 "";
    parameter Real elmt_reaction_2_elmt_k2(unit "") = 200.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_0(unit = "") "H binding to  R";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_0_elmt_k1(unit "") = 2.5 "";
    parameter Real elmt_reaction_0_elmt_k2(unit "") = 5.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 2.0;
        elmt_reactant6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_reaction_3 = (elmt_cell * elmt_reaction_3_elmt_k1 * elmt_IP3);
        elmt_reaction_4 = (elmt_cell * elmt_reaction_4_elmt_k * elmt_E);
        elmt_reaction_1 = (elmt_cell * ((elmt_reaction_1_elmt_k1 * Functions.pow(elmt_HR, 2.0)) - (elmt_reaction_1_elmt_k2 * elmt_HRRH)));
        elmt_reaction_2 = (elmt_cell * ((elmt_reaction_2_elmt_k1 * elmt_HRRH * elmt_GQ) - (elmt_reaction_2_elmt_k2 * elmt_E)));
        elmt_reaction_0 = (elmt_cell * ((elmt_reaction_0_elmt_k1 * elmt_H * elmt_R) - (elmt_reaction_0_elmt_k2 * elmt_HR)));
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;

end Reactions;
