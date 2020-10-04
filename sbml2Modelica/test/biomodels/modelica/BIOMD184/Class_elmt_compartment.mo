within BIOMD184;
class Class_elmt_compartment

    input Real elmt_R7;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_R5;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_R6;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_product0;
    input Real elmt_product3;
    input Real elmt_reactant9;

    Real elmt_compartment(unit = "") "Cytoplasm";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Z_conc(unit = "");
    Real elmt_Z_amount(unit = "");
    Real elmt_Z(unit = "") "IP3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "Cytoplasmic Calcium";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_Z_conc = 0.1;
        elmt_X_conc = 0.1;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_Z = elmt_Z_conc;
        elmt_X = elmt_X_conc;
        der(elmt_Z_amount) = ((- (elmt_R7 * elmt_reactant9)) + (elmt_R6 * elmt_product8));
        der(elmt_X_amount) = ((elmt_R5 * elmt_product7) + (elmt_R3 * elmt_product3) + (- (elmt_R4 * elmt_reactant4)) + (elmt_R1 * elmt_product0) + (- (elmt_R2 * elmt_reactant1)));

    algorithm
        elmt_Z_conc := elmt_Z_amount / elmt_compartment;
        elmt_X_conc := elmt_X_amount / elmt_compartment;
end Class_elmt_compartment;
