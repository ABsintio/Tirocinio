within BIOMD092;
class Class_elmt_compartment

    input Real elmt_product8;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_v3;
    input Real elmt_product1;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_product2;

    Real elmt_compartment(unit = "") "compartment";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ez_conc(unit = "");
    Real elmt_ez_amount(unit = "");
    Real elmt_ez(unit = "") "Enzyme-Substrate complex";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_z_conc(unit = "");
    Real elmt_z_amount(unit = "");
    Real elmt_z(unit = "") "Zymogen";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_w_conc(unit = "");
    Real elmt_w_amount(unit = "");
    Real elmt_w(unit = "") "Peptide";
    Real elmt_e_conc(unit = "");
    Real elmt_e_amount(unit = "");
    Real elmt_e(unit = "") "Enzyme";

    initial equation
        elmt_compartment = 1.0;
        elmt_ez_conc = 0.0;
        elmt_z_conc = 2.4E-5;
        elmt_w_conc = 0.0;
        elmt_e_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_ez = elmt_ez_conc;
        elmt_z = elmt_z_conc;
        elmt_w = elmt_w_conc;
        elmt_e = elmt_e_conc;
        der(elmt_ez_amount) = ((- (elmt_v3 * elmt_reactant6)) + (elmt_v2 * elmt_product5));
        der(elmt_z_amount) = ((- (elmt_v1 * elmt_reactant0)) + (- (elmt_v2 * elmt_reactant3)));
        der(elmt_w_amount) = ((elmt_v3 * elmt_product7) + (elmt_v1 * elmt_product1));
        der(elmt_e_amount) = ((elmt_v3 * elmt_product8) + (elmt_v1 * elmt_product2) + (- (elmt_v2 * elmt_reactant4)));

    algorithm
        elmt_ez_conc := elmt_ez_amount / elmt_compartment;
        elmt_z_conc := elmt_z_amount / elmt_compartment;
        elmt_w_conc := elmt_w_amount / elmt_compartment;
        elmt_e_conc := elmt_e_amount / elmt_compartment;
end Class_elmt_compartment;
