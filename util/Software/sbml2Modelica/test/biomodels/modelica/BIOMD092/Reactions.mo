within BIOMD092;
class Reactions

    input Real elmt_ez;
    input Real elmt_compartment;
    input Real elmt_z;
    input Real elmt_e;

    Real elmt_v3(unit = "") "Intermolecular autoactivation-Enzyme release";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v3_elmt_k3(unit "s-1.0") = 5.4E-4 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v1(unit = "") "Intramolecular autoactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v1_elmt_k1(unit "s-1.0") = 0.004 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_v2(unit = "") "Intermolecular autoactivation-Complex formation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v2_elmt_k22(unit "s-1.0") = 2.1E-4 "";
    parameter Real elmt_v2_elmt_k21(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";


    initial equation
        elmt_product8 = 2.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_v3 = (elmt_compartment * elmt_v3_elmt_k3 * elmt_ez);
        elmt_v1 = (elmt_compartment * elmt_v1_elmt_k1 * elmt_z);
        elmt_v2 = (elmt_compartment * ((elmt_v2_elmt_k21 * elmt_e * elmt_z) - (elmt_v2_elmt_k22 * elmt_ez)));
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;

end Reactions;
