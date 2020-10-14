within BIOMD082;
class Reactions

    input Real elmt_cell;
    input Real elmt_GTP;
    input Real elmt_GDP;
    input Real elmt_G_GTP;
    input Real elmt_G_GDP;
    input Real elmt_DR;
    input Real elmt_agonist;
    input Real elmt_DRG;
    input Real elmt_DRG_GTP;
    input Real elmt_DRG_GDP;
    input Real elmt_Recptor;

    Real elmt_reaction_5(unit = "") "G protein inactivated";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_5_elmt_k6(unit "") = 0.1 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_reaction_3(unit = "") "GTP binding with DRG";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_3_elmt_k4(unit "") = 1.0E7 "";
    parameter Real elmt_reaction_3_elmt_k10(unit "") = 0.1 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_reaction_4(unit = "") "DRG_GTP dissociates(G protein activation)";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_4_elmt_k5(unit "") = 0.05 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_1(unit = "") "DR binding with G_GDP produc DRG_GDP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_1_elmt_k8(unit "") = 0.1 "";
    parameter Real elmt_reaction_1_elmt_k2(unit "") = 1.0E8 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_reaction_2(unit = "") "GDP releasing";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_2_elmt_k9(unit "") = 100000.0 "";
    parameter Real elmt_reaction_2_elmt_k3(unit "") = 0.1 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_Forming(unit = "") "Forming  DR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Forming_elmt_k1(unit "") = 5000000.0 "";
    parameter Real elmt_Forming_elmt_k7(unit "") = 0.5 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";


    initial equation
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_product16 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_reaction_5 = (elmt_cell * elmt_reaction_5_elmt_k6 * elmt_G_GTP);
        elmt_reaction_3 = (elmt_cell * ((elmt_reaction_3_elmt_k4 * elmt_DRG * elmt_GTP) - (elmt_reaction_3_elmt_k10 * elmt_DRG_GTP)));
        elmt_reaction_4 = (elmt_cell * elmt_reaction_4_elmt_k5 * elmt_DRG_GTP);
        elmt_reaction_1 = (elmt_cell * ((elmt_reaction_1_elmt_k2 * elmt_DR * elmt_G_GDP) - (elmt_reaction_1_elmt_k8 * elmt_DRG_GDP)));
        elmt_reaction_2 = (elmt_cell * ((elmt_reaction_2_elmt_k3 * elmt_DRG_GDP) - (elmt_reaction_2_elmt_k9 * elmt_DRG * elmt_GDP)));
        elmt_Forming = (elmt_cell * ((elmt_Forming_elmt_k1 * elmt_agonist * elmt_Recptor) - (elmt_Forming_elmt_k7 * elmt_DR)));
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_product16) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;

end Reactions;
