within BIOMD121;
class Class_elmt_cell

    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_Gk;
    input Real elmt_reaction_0000005;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_product1;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_vk;
    input Real elmt_v;
    input Real elmt_reaction_0000004;
    input Real elmt_reaction_0000003;
    input Real elmt_reaction_0000002;
    input Real elmt_reaction_0000001;

    Real elmt_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_o_conc(unit = "");
    Real elmt_o_amount(unit = "");
    Real elmt_o(unit = "") "OpenState";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ik_conc(unit = "");
    Real elmt_ik_amount(unit = "");
    Real elmt_ik(unit = "") "cardiac delayed rectifier current";
    Real elmt_c2_conc(unit = "");
    Real elmt_c2_amount(unit = "");
    Real elmt_c2(unit = "") "ClosedState_2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_i_conc(unit = "");
    Real elmt_i_amount(unit = "");
    Real elmt_i(unit = "") "InactivationState";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_c3_conc(unit = "");
    Real elmt_c3_amount(unit = "");
    Real elmt_c3(unit = "") "ClosedState_3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_c1_conc(unit = "");
    Real elmt_c1_amount(unit = "");
    Real elmt_c1(unit = "") "ClosedState_1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_o_conc = 0.06;
        elmt_c2_conc = 0.0;
        elmt_i_conc = 0.0;
        elmt_c3_conc = 1.0;
        elmt_c1_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_o = elmt_o_conc;
        elmt_ik = elmt_ik_conc;
        elmt_c2 = elmt_c2_conc;
        elmt_i = elmt_i_conc;
        elmt_c3 = elmt_c3_conc;
        elmt_c1 = elmt_c1_conc;
        elmt_ik_amount = (elmt_Gk * elmt_o * (elmt_v - elmt_vk)) * elmt_cell;
        der(elmt_o_amount) = ((- (elmt_reaction_0000004 * elmt_reactant6)) + (elmt_reaction_0000003 * elmt_product5));
        der(elmt_c2_amount) = ((- (elmt_reaction_0000002 * elmt_reactant2)) + (elmt_reaction_0000001 * elmt_product1));
        der(elmt_i_amount) = ((elmt_reaction_0000005 * elmt_product9) + (elmt_reaction_0000004 * elmt_product7));
        der(elmt_c3_amount) = (- (elmt_reaction_0000001 * elmt_reactant0));
        der(elmt_c1_amount) = ((- (elmt_reaction_0000005 * elmt_reactant8)) + (- (elmt_reaction_0000003 * elmt_reactant4)) + (elmt_reaction_0000002 * elmt_product3));

    algorithm
        elmt_o_conc := elmt_o_amount / elmt_cell;
        elmt_ik_conc := elmt_ik_amount / elmt_cell;
        elmt_c2_conc := elmt_c2_amount / elmt_cell;
        elmt_i_conc := elmt_i_amount / elmt_cell;
        elmt_c3_conc := elmt_c3_amount / elmt_cell;
        elmt_c1_conc := elmt_c1_amount / elmt_cell;
end Class_elmt_cell;
