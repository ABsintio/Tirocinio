within BIOMD072;
class Class_elmt_cell

    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_reactant6;
    input Real elmt_reactant5;
    input Real elmt_reactant8;
    input Real elmt_product10;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_reaction_0;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_product3;
    input Real elmt_product2;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_product13;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_L_conc(unit = "");
    Real elmt_L_amount(unit = "");
    Real elmt_L(unit = "") "Ligand";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G_conc(unit = "");
    Real elmt_G_amount(unit = "");
    Real elmt_G(unit = "") "Inactive heterotrimeric G-protein";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Gd_conc(unit = "");
    Real elmt_Gd_amount(unit = "");
    Real elmt_Gd(unit = "") "G-alpha-GDP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Gbg_conc(unit = "");
    Real elmt_Gbg_amount(unit = "");
    Real elmt_Gbg(unit = "") "Free levels of G-beta-gamma";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ga_conc(unit = "");
    Real elmt_Ga_amount(unit = "");
    Real elmt_Ga(unit = "") "G-alpha-GTP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RL_conc(unit = "");
    Real elmt_RL_amount(unit = "");
    Real elmt_RL(unit = "") "Receptor-Ligand";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "Receptor";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_L_conc = 6.02E17;
        elmt_G_conc = 7000.0;
        elmt_Gd_conc = 3000.0;
        elmt_Gbg_conc = 3000.0;
        elmt_Ga_conc = 0.0;
        elmt_RL_conc = 0.0;
        elmt_R_conc = 10000.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_L = elmt_L_conc;
        elmt_G = elmt_G_conc;
        elmt_Gd = elmt_Gd_conc;
        elmt_Gbg = elmt_Gbg_conc;
        elmt_Ga = elmt_Ga_conc;
        elmt_RL = elmt_RL_conc;
        elmt_R = elmt_R_conc;
        der(elmt_L_amount) = (- (elmt_reaction_0 * elmt_reactant0));
        der(elmt_G_amount) = ((elmt_reaction_3 * elmt_product7) + (- (elmt_reaction_4 * elmt_reactant8)));
        der(elmt_Gd_amount) = ((elmt_reaction_6 * elmt_product13) + (- (elmt_reaction_3 * elmt_reactant5)));
        der(elmt_Gbg_amount) = ((- (elmt_reaction_3 * elmt_reactant6)) + (elmt_reaction_4 * elmt_product10));
        der(elmt_Ga_amount) = ((- (elmt_reaction_6 * elmt_reactant12)) + (elmt_reaction_4 * elmt_product9));
        der(elmt_RL_amount) = ((- (elmt_reaction_5 * elmt_reactant11)) + (elmt_reaction_0 * elmt_product2));
        der(elmt_R_amount) = ((elmt_reaction_1 * elmt_product3) + (- (elmt_reaction_2 * elmt_reactant4)) + (- (elmt_reaction_0 * elmt_reactant1)));

    algorithm
        elmt_L_conc := elmt_L_amount / elmt_cell;
        elmt_G_conc := elmt_G_amount / elmt_cell;
        elmt_Gd_conc := elmt_Gd_amount / elmt_cell;
        elmt_Gbg_conc := elmt_Gbg_amount / elmt_cell;
        elmt_Ga_conc := elmt_Ga_amount / elmt_cell;
        elmt_RL_conc := elmt_RL_amount / elmt_cell;
        elmt_R_conc := elmt_R_amount / elmt_cell;
end Class_elmt_cell;
