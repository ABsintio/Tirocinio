within BIOMD008;
class Reactions

    input Real elmt_M;
    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_V3;
    input Real elmt_X;
    input Real elmt_V1;
    input Real elmt_C;

    Real elmt_reaction7(unit = "") "deactivation of cyclin protease";
    parameter Real elmt_reaction7_elmt_V4(unit "") = 0.1 "";
    parameter Real elmt_reaction7_elmt_K4(unit "") = 0.1 "";
    Real elmt_reactant6 "";
    Real elmt_reaction6(unit = "") "activation of cyclin protease";
    parameter Real elmt_reaction6_elmt_K3(unit "") = 0.2 "";
    Real elmt_product5 "";
    Real elmt_reaction9(unit = "") "reaction9";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction9_elmt_a2(unit "") = 0.05 "";
    Real elmt_product12 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_reaction8(unit = "") "reaction8";
    parameter Real elmt_reaction8_elmt_a1(unit "") = 0.05 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reactant7 "";
    Real elmt_reaction3(unit = "") "default degradation of cyclin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction3_elmt_kd(unit "") = 0.02 "";
    Real elmt_reactant2 "";
    Real elmt_reaction2(unit = "") "cdc2 kinase triggered degration of cyclin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction2_elmt_k1(unit "") = 0.5 "";
    parameter Real elmt_reaction2_elmt_K5(unit "") = 0.02 "";
    Real elmt_reactant1 "";
    Real elmt_reaction5(unit = "") "deactivation of cdc2 kinase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction5_elmt_V2(unit "") = 0.25 "";
    parameter Real elmt_reaction5_elmt_K2(unit "") = 0.1 "";
    Real elmt_reactant4 "";
    Real elmt_reaction4(unit = "") "activation of cdc2 kinase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction4_elmt_K1(unit "") = 0.1 "";
    Real elmt_product3 "";
    Real elmt_reaction1(unit = "") "creation of cyclin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction1_elmt_vi(unit "") = 0.1 "";
    Real elmt_product0 "";
    Real elmt_reaction13(unit = "") "degradation of cyclin inhibitor";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction13_elmt_d1(unit "") = 0.05 "";
    Real elmt_reactant18 "";
    Real elmt_reaction10(unit = "") "desinhibition of cyclin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction10_elmt_d1(unit "") = 0.05 "";
    parameter Real elmt_reaction10_elmt_alpha(unit "") = 0.1 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_reaction12(unit = "") "creation of cyclin inhibitor";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction12_elmt_vs(unit "") = 0.2 "";
    Real elmt_product17 "";
    Real elmt_reaction11(unit = "") "degradation of inhibited cyclin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction11_elmt_kd(unit "") = 0.02 "";
    parameter Real elmt_reaction11_elmt_alpha(unit "") = 0.1 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product12 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product16 = 1.0;
        elmt_product14 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_reaction7 = (elmt_reaction7_elmt_V4 * elmt_X * Functions.pow((elmt_reaction7_elmt_K4 + elmt_X), (-1.0)));
        elmt_reaction6 = (elmt_V3 * (1.0 + ((-1.0) * elmt_X)) * Functions.pow((elmt_reaction6_elmt_K3 + ((-1.0) * elmt_X) + 1.0), (-1.0)));
        elmt_reaction9 = (elmt_reaction9_elmt_a2 * elmt_Z);
        elmt_reaction8 = (elmt_reaction8_elmt_a1 * elmt_C * elmt_Y);
        elmt_reaction3 = (elmt_C * elmt_reaction3_elmt_kd);
        elmt_reaction2 = (elmt_C * elmt_reaction2_elmt_k1 * elmt_X * Functions.pow((elmt_C + elmt_reaction2_elmt_K5), (-1.0)));
        elmt_reaction5 = (elmt_M * elmt_reaction5_elmt_V2 * Functions.pow((elmt_reaction5_elmt_K2 + elmt_M), (-1.0)));
        elmt_reaction4 = ((1.0 + ((-1.0) * elmt_M)) * elmt_V1 * Functions.pow((elmt_reaction4_elmt_K1 + ((-1.0) * elmt_M) + 1.0), (-1.0)));
        elmt_reaction1 = elmt_reaction1_elmt_vi;
        elmt_reaction13 = (elmt_reaction13_elmt_d1 * elmt_Y);
        elmt_reaction10 = (elmt_reaction10_elmt_alpha * elmt_reaction10_elmt_d1 * elmt_Z);
        elmt_reaction12 = elmt_reaction12_elmt_vs;
        elmt_reaction11 = (elmt_reaction11_elmt_alpha * elmt_reaction11_elmt_kd * elmt_Z);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product12) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;
        der(elmt_product17) = 0;

end Reactions;
