within BIOMD080;
class Reactions

    input Real elmt_cell;
    input Real elmt_GTP;
    input Real elmt_GDP;
    input Real elmt_G_GTP;
    input Real elmt_G_GDP;
    input Real elmt_DR;
    input Real elmt_D;
    input Real elmt_DRG_GTP;
    input Real elmt_DRG;
    input Real elmt_DRG_GDP;
    input Real elmt_R;

    Real elmt_Reaction_6(unit = "") "Hydrolysis of GTP to GDP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction_6_elmt_k6(unit "") = 2.0 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_Reaction_5(unit = "") "G protein activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction_5_elmt_k5(unit "") = 1.0 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_Reaction_4(unit = "") "GTP binding with DRG";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction_4_elmt_k4(unit "") = 5000000.0 "";
    parameter Real elmt_Reaction_4_elmt_k10(unit "") = 55.0 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_Reaction_3(unit = "") "GDP Releasing";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction_3_elmt_k9(unit "") = 100000.0 "";
    parameter Real elmt_Reaction_3_elmt_k3(unit "") = 5.0 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_Reaction_2(unit = "") "DR Binding with G_GDP produce DRG_GDP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction_2_elmt_k8(unit "") = 0.1 "";
    parameter Real elmt_Reaction_2_elmt_k2(unit "") = 1.0E8 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_Reaction_1(unit = "") "Forming DR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction_1_elmt_k1(unit "") = 5000000.0 "";
    parameter Real elmt_Reaction_1_elmt_k7(unit "") = 10.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";


    initial equation
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
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
        elmt_Reaction_6 = (elmt_cell * elmt_Reaction_6_elmt_k6 * elmt_G_GTP);
        elmt_Reaction_5 = (elmt_cell * elmt_Reaction_5_elmt_k5 * elmt_DRG_GTP);
        elmt_Reaction_4 = (elmt_cell * ((elmt_Reaction_4_elmt_k4 * elmt_DRG * elmt_GTP) - (elmt_Reaction_4_elmt_k10 * elmt_DRG_GTP)));
        elmt_Reaction_3 = (elmt_cell * ((elmt_Reaction_3_elmt_k3 * elmt_DRG_GDP) - (elmt_Reaction_3_elmt_k9 * elmt_GDP * elmt_DRG)));
        elmt_Reaction_2 = (elmt_cell * ((elmt_Reaction_2_elmt_k2 * elmt_DR * elmt_G_GDP) - (elmt_Reaction_2_elmt_k8 * elmt_DRG_GDP)));
        elmt_Reaction_1 = (elmt_cell * ((elmt_Reaction_1_elmt_k1 * elmt_D * elmt_R) - (elmt_Reaction_1_elmt_k7 * elmt_DR)));
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
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
