within BIOMD084;
class Reactions

    input Real elmt_x1p;
    input Real elmt_Rin;
    input Real elmt_x2p;
    input Real elmt_x3p;
    input Real elmt_x3;
    input Real elmt_x1;
    input Real elmt_x2;
    input Real elmt_R;

    Real elmt_v7(unit = "") "Kinase-3 activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v7_elmt_Km7(unit "") = 0.1 "";
    parameter Real elmt_v7_elmt_k7(unit "") = 1.0 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_v8(unit = "") "Kinase-3 inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v8_elmt_Km8(unit "") = 1.0 "";
    parameter Real elmt_v8_elmt_Inh(unit "") = 0.0 "";
    parameter Real elmt_v8_elmt_Vm8(unit "") = 0.3 "";
    parameter Real elmt_v8_elmt_Ki8(unit "") = 1.0 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_v5(unit = "") "Kinase-2 activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v5_elmt_Km5(unit "") = 0.1 "";
    parameter Real elmt_v5_elmt_k5(unit "") = 1.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_v6(unit = "") "Kinase-2 inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v6_elmt_Km6(unit "") = 1.0 "";
    parameter Real elmt_v6_elmt_Vm6(unit "") = 0.3 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_v3(unit = "") "Kinase-1 activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v3_elmt_Km3(unit "") = 0.1 "";
    parameter Real elmt_v3_elmt_k3(unit "") = 1.0 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_v4(unit = "") "Kinase-1 inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v4_elmt_Km4(unit "") = 1.0 "";
    parameter Real elmt_v4_elmt_Vm4(unit "") = 0.3 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v1(unit = "") "Receptor inactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v1_elmt_Km1(unit "") = 0.1 "";
    parameter Real elmt_v1_elmt_Vm1(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_v2(unit = "") "Receptor activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v2_elmt_Km2(unit "") = 0.1 "";
    parameter Real elmt_v2_elmt_Vm2(unit "") = 0.01 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_v7 = ((elmt_v7_elmt_k7 * elmt_x2p * elmt_x3) / (elmt_v7_elmt_Km7 + elmt_x3));
        elmt_v8 = (((elmt_v8_elmt_Vm8 * elmt_x3p) / elmt_v8_elmt_Km8) / (1.0 + (elmt_x3p / elmt_v8_elmt_Km8) + (elmt_v8_elmt_Inh / elmt_v8_elmt_Ki8)));
        elmt_v5 = ((elmt_v5_elmt_k5 * elmt_x1p * elmt_x2) / (elmt_v5_elmt_Km5 + elmt_x2));
        elmt_v6 = ((elmt_v6_elmt_Vm6 * elmt_x2p) / (elmt_v6_elmt_Km6 + elmt_x2p));
        elmt_v3 = ((elmt_v3_elmt_k3 * elmt_R * elmt_x1) / (elmt_v3_elmt_Km3 + elmt_x1));
        elmt_v4 = ((elmt_v4_elmt_Vm4 * elmt_x1p) / (elmt_v4_elmt_Km4 + elmt_x1p));
        elmt_v1 = ((elmt_v1_elmt_Vm1 * elmt_R) / (elmt_v1_elmt_Km1 + elmt_R));
        elmt_v2 = ((elmt_v2_elmt_Vm2 * elmt_Rin) / (elmt_v2_elmt_Km2 + elmt_Rin));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;

end Reactions;
