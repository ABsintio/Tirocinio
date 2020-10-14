within BIOMD005;
class Reactions

    input Real elmt_cell;
    input Real elmt_M;
    input Real elmt_CT;
    input Real elmt_Y;
    input Real elmt_C2;
    input Real elmt_pM;
    input Real elmt_CP;
    input Real elmt_YP;

    Real elmt_Reaction9(unit = "") "activation of cdc2 kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction9_elmt_k4prime(unit "") = 0.018 "";
    parameter Real elmt_Reaction9_elmt_k4(unit "") = 180.0 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_Reaction8(unit = "") "cdc2 kinase triggered degration of cyclin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction8_elmt_k7(unit "") = 0.6 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_Reaction7(unit = "") "default degradation of cyclin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction7_elmt_k2(unit "") = 0.0 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_Reaction6(unit = "") "cyclin biosynthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction6_elmt_k1aa(unit "") = 0.015 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_Reaction5(unit = "") "deactivation of cdc2 kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction5_elmt_k5notP(unit "") = 0.0 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_Reaction4(unit = "") "cyclin cdc2k-p association";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction4_elmt_k3(unit "") = 200.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reactant7 "";
    Real elmt_Reaction3(unit = "") "cdc2k dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction3_elmt_k9(unit "") = 1000.0 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_Reaction2(unit = "") "cdc2k phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction2_elmt_k8notP(unit "") = 1000000.0 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_Reaction1(unit = "") "cyclin_cdc2k dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Reaction1_elmt_k6(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_Reaction9 = (elmt_cell * elmt_pM * (elmt_Reaction9_elmt_k4prime + (elmt_Reaction9_elmt_k4 * Functions.pow((elmt_M / elmt_CT), 2.0))));
        elmt_Reaction8 = (elmt_cell * elmt_Reaction8_elmt_k7 * elmt_YP);
        elmt_Reaction7 = (elmt_cell * elmt_Reaction7_elmt_k2 * elmt_Y);
        elmt_Reaction6 = (elmt_cell * elmt_Reaction6_elmt_k1aa);
        elmt_Reaction5 = (elmt_cell * elmt_Reaction5_elmt_k5notP * elmt_M);
        elmt_Reaction4 = (elmt_cell * elmt_CP * elmt_Reaction4_elmt_k3 * elmt_Y);
        elmt_Reaction3 = (elmt_cell * elmt_CP * elmt_Reaction3_elmt_k9);
        elmt_Reaction2 = (elmt_cell * elmt_C2 * elmt_Reaction2_elmt_k8notP);
        elmt_Reaction1 = (elmt_cell * elmt_Reaction1_elmt_k6 * elmt_M);
        der(elmt_product9) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
