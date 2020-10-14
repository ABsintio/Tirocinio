within BIOMD126;
class Class_elmt_cell

    input Real elmt_reaction_0000008;
    input Real elmt_reaction_0000007;
    input Real elmt_reaction_0000006;
    input Real elmt_reactant20;
    input Real elmt_reaction_0000005;
    input Real elmt_product11;
    input Real elmt_reaction_0000009;
    input Real elmt_reactant18;
    input Real elmt_reaction_0000004;
    input Real elmt_reaction_0000003;
    input Real elmt_reaction_0000002;
    input Real elmt_reaction_0000001;
    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_product21;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_reactant12;
    input Real elmt_product3;
    input Real elmt_reactant0;
    input Real elmt_reaction_0000011;
    input Real elmt_reaction_0000010;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_O_conc(unit = "");
    Real elmt_O_amount(unit = "");
    Real elmt_O(unit = "") "open states";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IC2_conc(unit = "");
    Real elmt_IC2_amount(unit = "");
    Real elmt_IC2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C2_conc(unit = "");
    Real elmt_C2_amount(unit = "");
    Real elmt_C2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C3_conc(unit = "");
    Real elmt_C3_amount(unit = "");
    Real elmt_C3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IF_conc(unit = "");
    Real elmt_IF_amount(unit = "");
    Real elmt_IF(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C1_conc(unit = "");
    Real elmt_C1_amount(unit = "");
    Real elmt_C1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IM1_conc(unit = "");
    Real elmt_IM1_amount(unit = "");
    Real elmt_IM1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IM2_conc(unit = "");
    Real elmt_IM2_amount(unit = "");
    Real elmt_IM2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IC3_conc(unit = "");
    Real elmt_IC3_amount(unit = "");
    Real elmt_IC3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_O_conc = 0.0;
        elmt_IC2_conc = 0.0;
        elmt_C2_conc = 0.0;
        elmt_C3_conc = 1.0;
        elmt_IF_conc = 0.0;
        elmt_C1_conc = 0.0;
        elmt_IM1_conc = 0.0;
        elmt_IM2_conc = 0.0;
        elmt_IC3_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_O = elmt_O_conc;
        elmt_IC2 = elmt_IC2_conc;
        elmt_C2 = elmt_C2_conc;
        elmt_C3 = elmt_C3_conc;
        elmt_IF = elmt_IF_conc;
        elmt_C1 = elmt_C1_conc;
        elmt_IM1 = elmt_IM1_conc;
        elmt_IM2 = elmt_IM2_conc;
        elmt_IC3 = elmt_IC3_conc;
        der(elmt_O_amount) = ((- (elmt_reaction_0000011 * elmt_reactant20)) + (elmt_reaction_0000010 * elmt_product19));
        der(elmt_IC2_amount) = ((elmt_reaction_0000007 * elmt_product13) + (- (elmt_reaction_0000002 * elmt_reactant2)) + (elmt_reaction_0000001 * elmt_product1));
        der(elmt_C2_amount) = ((elmt_reaction_0000008 * elmt_product15) + (- (elmt_reaction_0000007 * elmt_reactant12)) + (- (elmt_reaction_0000006 * elmt_reactant10)));
        der(elmt_C3_amount) = ((elmt_reaction_0000006 * elmt_product11) + (- (elmt_reaction_0000005 * elmt_reactant8)));
        der(elmt_IF_amount) = ((elmt_reaction_0000009 * elmt_product17) + (- (elmt_reaction_0000010 * elmt_reactant18)) + (- (elmt_reaction_0000003 * elmt_reactant4)) + (elmt_reaction_0000002 * elmt_product3));
        der(elmt_C1_amount) = ((- (elmt_reaction_0000008 * elmt_reactant14)) + (- (elmt_reaction_0000009 * elmt_reactant16)) + (elmt_reaction_0000011 * elmt_product21));
        der(elmt_IM1_amount) = ((- (elmt_reaction_0000004 * elmt_reactant6)) + (elmt_reaction_0000003 * elmt_product5));
        der(elmt_IM2_amount) = (elmt_reaction_0000004 * elmt_product7);
        der(elmt_IC3_amount) = ((elmt_reaction_0000005 * elmt_product9) + (- (elmt_reaction_0000001 * elmt_reactant0)));

    algorithm
        elmt_O_conc := elmt_O_amount / elmt_cell;
        elmt_IC2_conc := elmt_IC2_amount / elmt_cell;
        elmt_C2_conc := elmt_C2_amount / elmt_cell;
        elmt_C3_conc := elmt_C3_amount / elmt_cell;
        elmt_IF_conc := elmt_IF_amount / elmt_cell;
        elmt_C1_conc := elmt_C1_amount / elmt_cell;
        elmt_IM1_conc := elmt_IM1_amount / elmt_cell;
        elmt_IM2_conc := elmt_IM2_amount / elmt_cell;
        elmt_IC3_conc := elmt_IC3_amount / elmt_cell;
end Class_elmt_cell;
