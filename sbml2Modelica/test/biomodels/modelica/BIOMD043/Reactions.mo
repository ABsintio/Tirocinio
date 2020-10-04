within BIOMD043;
class Reactions

    input Real elmt_beta;
    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_intravesicular;
    input Real elmt_cytosol;
    input Real elmt_extracellular;
    input Real elmt_d;
    input Real elmt_a;
    input Real elmt_Rho;

    Real elmt_v7(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v7_elmt_Kr(unit "") = 5.0 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_v5(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v5_elmt_K(unit "") = 10.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_v6(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v6_elmt_Kd(unit "") = 5000.0 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_v3(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v3_elmt_Ky(unit "") = 0.2 "";
    parameter Real elmt_v3_elmt_Vm3(unit "") = 50.0 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_v4(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v4_elmt_Kf(unit "") = 1.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v2_elmt_Vm2(unit "") = 6.5 "";
    parameter Real elmt_v2_elmt_K2(unit "") = 0.1 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_vin(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vin_elmt_v1(unit "") = 1.0 "";
    parameter Real elmt_vin_elmt_v0(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_v7 = (elmt_cytosol * elmt_v7_elmt_Kr * (1.0 - elmt_Rho));
        elmt_v5 = (elmt_extracellular * elmt_v5_elmt_K * elmt_Z);
        elmt_v6 = (elmt_cytosol * elmt_v6_elmt_Kd * Functions.pow(elmt_Z, 4.0) * elmt_Rho);
        elmt_v3 = (elmt_cytosol * ((elmt_beta * ((elmt_Rho * (elmt_a / elmt_d) * Functions.pow(elmt_Z, 4.0)) / (1.0 + ((elmt_a / elmt_d) * Functions.pow(elmt_Z, 4.0)))) * elmt_v3_elmt_Vm3 * Functions.pow(elmt_Y, 2.0)) / (Functions.pow(elmt_v3_elmt_Ky, 2.0) + Functions.pow(elmt_Y, 2.0))));
        elmt_v4 = (elmt_cytosol * elmt_v4_elmt_Kf * elmt_Y);
        elmt_v2 = (elmt_intravesicular * ((elmt_v2_elmt_Vm2 * Functions.pow(elmt_Z, 2.0)) / (Functions.pow(elmt_v2_elmt_K2, 2.0) + Functions.pow(elmt_Z, 2.0))));
        elmt_vin = (elmt_cytosol * (elmt_vin_elmt_v0 + (elmt_vin_elmt_v1 * elmt_beta)));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product13) = 0;

end Reactions;
