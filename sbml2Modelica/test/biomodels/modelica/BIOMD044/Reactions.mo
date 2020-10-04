within BIOMD044;
class Reactions

    input Real elmt_beta;
    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_intravesicular;
    input Real elmt_cytosol;
    input Real elmt_extracellular;
    input Real elmt_A;

    Real elmt_v7(unit = "") "Ca dependent IP3 degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v7_elmt_Kp(unit "") = 1.0 "";
    parameter Real elmt_v7_elmt_n(unit "") = 4.0 "";
    parameter Real elmt_v7_elmt_Vd(unit "") = 80.0 "";
    parameter Real elmt_v7_elmt_Kd(unit "") = 0.4 "";
    Real elmt_reactant11 "";
    Real elmt_v8(unit = "") "Ca independent IP3 degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v8_elmt_epsilon(unit "") = 0.1 "";
    Real elmt_reactant12 "";
    Real elmt_v5(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v5_elmt_K(unit "") = 10.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_v6(unit = "") "Agonist stimulated production of IP3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v6_elmt_Vp(unit "") = 2.5 "";
    Real elmt_product10 "";
    Real elmt_v3(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v3_elmt_Ka(unit "") = 0.2 "";
    parameter Real elmt_v3_elmt_Kz(unit "") = 0.3 "";
    parameter Real elmt_v3_elmt_Ky(unit "") = 0.2 "";
    parameter Real elmt_v3_elmt_Vm3(unit "") = 19.5 "";
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
    parameter Real elmt_vin_elmt_v0(unit "") = 2.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_v7 = ((elmt_cytosol * elmt_v7_elmt_Vd * Functions.pow(elmt_A, 2.0) * Functions.pow(elmt_Z, elmt_v7_elmt_n)) / ((Functions.pow(elmt_v7_elmt_Kp, 2.0) + Functions.pow(elmt_A, 2.0)) * (Functions.pow(elmt_v7_elmt_Kd, elmt_v7_elmt_n) + Functions.pow(elmt_Z, elmt_v7_elmt_n))));
        elmt_v8 = (elmt_cytosol * elmt_v8_elmt_epsilon * elmt_A);
        elmt_v5 = (elmt_extracellular * elmt_v5_elmt_K * elmt_Z);
        elmt_v6 = (elmt_cytosol * elmt_beta * elmt_v6_elmt_Vp);
        elmt_v3 = ((elmt_cytosol * elmt_v3_elmt_Vm3 * Functions.pow(elmt_A, 4.0) * Functions.pow(elmt_Y, 2.0) * Functions.pow(elmt_Z, 4.0)) / ((Functions.pow(elmt_v3_elmt_Ka, 4.0) + Functions.pow(elmt_A, 4.0)) * (Functions.pow(elmt_v3_elmt_Ky, 2.0) + Functions.pow(elmt_Y, 2.0)) * (Functions.pow(elmt_v3_elmt_Kz, 4.0) + Functions.pow(elmt_Z, 4.0))));
        elmt_v4 = (elmt_cytosol * elmt_v4_elmt_Kf * elmt_Y);
        elmt_v2 = (elmt_intravesicular * ((elmt_v2_elmt_Vm2 * Functions.pow(elmt_Z, 2.0)) / (Functions.pow(elmt_v2_elmt_K2, 2.0) + Functions.pow(elmt_Z, 2.0))));
        elmt_vin = (elmt_cytosol * (elmt_vin_elmt_v0 + (elmt_vin_elmt_v1 * elmt_beta)));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
