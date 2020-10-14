within BIOMD045;
class Reactions

    input Real elmt_beta;
    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_X;
    input Real elmt_intravesicular1;
    input Real elmt_intravesicular2;
    input Real elmt_cytosol;
    input Real elmt_extracellular;

    Real elmt_v2s(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v2s_elmt_Vm2s(unit "") = 1.5 "";
    parameter Real elmt_v2s_elmt_K2s(unit "") = 0.0265 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_v3s(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v3s_elmt_Vm3s(unit "") = 0.169 "";
    parameter Real elmt_v3s_elmt_K3s(unit "") = 0.1 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_v5(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v5_elmt_K(unit "") = 1.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_v6(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v6_elmt_Kf(unit "") = 0.5 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_v4(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v4_elmt_Kf(unit "") = 0.5 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v2i(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v2i_elmt_Vm2i(unit "") = 3.1 "";
    parameter Real elmt_v2i_elmt_K2i(unit "") = 0.005 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_v3i(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v3i_elmt_Vm3i(unit "") = 25.0 "";
    parameter Real elmt_v3i_elmt_K3y(unit "") = 0.065 "";
    parameter Real elmt_v3i_elmt_K3z(unit "") = 0.022 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_vin(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vin_elmt_v1(unit "") = 0.012 "";
    parameter Real elmt_vin_elmt_v0(unit "") = 0.015 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_v2s = ((elmt_intravesicular1 * elmt_v2s_elmt_Vm2s * Functions.pow(elmt_Z, 2.0)) / (Functions.pow(elmt_v2s_elmt_K2s, 2.0) + Functions.pow(elmt_Z, 2.0)));
        elmt_v3s = ((elmt_cytosol * elmt_beta * elmt_v3s_elmt_Vm3s * Functions.pow(elmt_X, 2.0)) / (Functions.pow(elmt_v3s_elmt_K3s, 2.0) + Functions.pow(elmt_X, 2.0)));
        elmt_v5 = (elmt_extracellular * elmt_v5_elmt_K * elmt_Z);
        elmt_v6 = (elmt_cytosol * elmt_v6_elmt_Kf * elmt_X);
        elmt_v4 = (elmt_cytosol * elmt_v4_elmt_Kf * elmt_Y);
        elmt_v2i = ((elmt_intravesicular2 * elmt_v2i_elmt_Vm2i * Functions.pow(elmt_Z, 2.0)) / (Functions.pow(elmt_v2i_elmt_K2i, 2.0) + Functions.pow(elmt_Z, 2.0)));
        elmt_v3i = ((elmt_cytosol * elmt_v3i_elmt_Vm3i * Functions.pow(elmt_Y, 2.0) * Functions.pow(elmt_Z, 2.0)) / ((Functions.pow(elmt_v3i_elmt_K3y, 2.0) + Functions.pow(elmt_Y, 2.0)) * (Functions.pow(elmt_v3i_elmt_K3z, 2.0) + Functions.pow(elmt_Z, 2.0))));
        elmt_vin = (elmt_cytosol * (elmt_vin_elmt_v0 + (elmt_vin_elmt_v1 * elmt_beta)));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;

end Reactions;
