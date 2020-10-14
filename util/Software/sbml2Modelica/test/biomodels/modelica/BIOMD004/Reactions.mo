within BIOMD004;
class Reactions

    input Real elmt_cell;
    input Real elmt_M;
    input Real elmt_XI;
    input Real elmt_V3;
    input Real elmt_X;
    input Real elmt_V1;
    input Real elmt_MI;
    input Real elmt_C;

    Real elmt_reaction7(unit = "") "deactivation of cyclin protease";
    parameter Real elmt_reaction7_elmt_V4(unit "") = 0.5 "";
    parameter Real elmt_reaction7_elmt_K4(unit "") = 0.005 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_reaction6(unit = "") "activation of cyclin protease";
    parameter Real elmt_reaction6_elmt_K3(unit "") = 0.005 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_reaction3(unit = "") "cdc2 kinase triggered degration of cyclin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction3_elmt_vd(unit "") = 0.25 "";
    parameter Real elmt_reaction3_elmt_Kd(unit "") = 0.02 "";
    Real elmt_reactant2 "";
    Real elmt_reaction2(unit = "") "default degradation of cyclin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction2_elmt_kd(unit "") = 0.01 "";
    Real elmt_reactant1 "";
    Real elmt_reaction5(unit = "") "deactivation of cdc2 kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction5_elmt_V2(unit "") = 1.5 "";
    parameter Real elmt_reaction5_elmt_K2(unit "") = 0.005 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction4(unit = "") "activation of cdc2 kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction4_elmt_K1(unit "") = 0.005 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_reaction1(unit = "") "creation of cyclin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction1_elmt_vi(unit "") = 0.025 "";
    Real elmt_product0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product0 = 1.0;
        elmt_product4 = 1.0;


    equation
        elmt_reaction7 = (elmt_cell * elmt_reaction7_elmt_V4 * elmt_X * Functions.pow((elmt_reaction7_elmt_K4 + elmt_X), (-1.0)));
        elmt_reaction6 = (elmt_cell * elmt_V3 * elmt_XI * Functions.pow((elmt_reaction6_elmt_K3 + elmt_XI), (-1.0)));
        elmt_reaction3 = (elmt_C * elmt_cell * elmt_reaction3_elmt_vd * elmt_X * Functions.pow((elmt_C + elmt_reaction3_elmt_Kd), (-1.0)));
        elmt_reaction2 = (elmt_C * elmt_cell * elmt_reaction2_elmt_kd);
        elmt_reaction5 = (elmt_cell * elmt_M * elmt_reaction5_elmt_V2 * Functions.pow((elmt_reaction5_elmt_K2 + elmt_M), (-1.0)));
        elmt_reaction4 = (elmt_cell * elmt_MI * elmt_V1 * Functions.pow((elmt_reaction4_elmt_K1 + elmt_MI), (-1.0)));
        elmt_reaction1 = (elmt_cell * elmt_reaction1_elmt_vi);
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product0) = 0;
        der(elmt_product4) = 0;

end Reactions;
