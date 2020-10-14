within BIOMD207;
class Class_elmt_compartment

    input Real elmt_K1;
    input Real elmt_R10;
    input Real elmt_U4;
    input Real elmt_K4;
    input Real elmt_K2;
    input Real elmt_K3;
    input Real elmt_U2;
    input Real elmt_U3;
    input Real elmt_U1;
    input Real elmt_reactant2;
    input Real elmt_R8;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_R3;
    input Real elmt_reactant5;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_product0;
    input Real elmt_H3;
    input Real elmt_H4;
    input Real elmt_H1;
    input Real elmt_H2;
    input Real elmt_product3;
    input Real elmt_R9;
    input Real elmt_V3;
    input Real elmt_V4;
    input Real elmt_V1;
    input Real elmt_V2;

    Real elmt_compartment(unit = "") "";
    Real elmt_M2_amount(unit = "");
    Real elmt_M2_conc(unit = "");
    Real elmt_M2(unit = "") "cdk2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_M1_amount(unit = "");
    Real elmt_M1_conc(unit = "");
    Real elmt_M1(unit = "") "cdk1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_C2_conc(unit = "");
    Real elmt_C2_amount(unit = "");
    Real elmt_C2(unit = "") "cyclinE";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_C1_conc(unit = "");
    Real elmt_C1_amount(unit = "");
    Real elmt_C1(unit = "") "cyclinB";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_X1_amount(unit = "");
    Real elmt_X1_conc(unit = "");
    Real elmt_X1(unit = "") "ubiquitin ligase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_X2_amount(unit = "");
    Real elmt_X2_conc(unit = "");
    Real elmt_X2(unit = "") "Ubiquitin ligase 2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_M2_amount = 0.0;
        elmt_M1_amount = 1.0;
        elmt_C2_conc = 0.0;
        elmt_C1_conc = 2.0;
        elmt_X1_amount = 0.0;
        elmt_X2_amount = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_M2 = elmt_M2_amount;
        elmt_M1 = elmt_M1_amount;
        elmt_C2 = elmt_C2_conc;
        elmt_C1 = elmt_C1_conc;
        elmt_X1 = elmt_X1_amount;
        elmt_X2 = elmt_X2_amount;
        der(elmt_M2_amount) = (((elmt_U1 * (1.0 - elmt_M2)) / (elmt_H1 + (1.0 - elmt_M2))) - ((elmt_U2 * elmt_M2) / (elmt_H2 + elmt_M2)));
        der(elmt_M1_amount) = (((elmt_V1 * (1.0 - elmt_M1)) / (elmt_K1 + (1.0 - elmt_M1))) - ((elmt_V2 * elmt_M1) / (elmt_K2 + elmt_M1)));
        der(elmt_X1_amount) = (((elmt_V3 * (1.0 - elmt_X1)) / (elmt_K3 + (1.0 - elmt_X1))) - ((elmt_V4 * elmt_X1) / (elmt_K4 + elmt_X1)));
        der(elmt_X2_amount) = (((elmt_U3 * (1.0 - elmt_X2)) / (elmt_H3 + (1.0 - elmt_X2))) - ((elmt_U4 * elmt_X2) / (elmt_H4 + elmt_X2)));
        der(elmt_C2_amount) = ((elmt_R8 * elmt_product3) + (- (elmt_R10 * elmt_reactant5)) + (- (elmt_R9 * elmt_reactant4)));
        der(elmt_C1_amount) = ((- (elmt_R3 * elmt_reactant2)) + (elmt_R1 * elmt_product0) + (- (elmt_R2 * elmt_reactant1)));

    algorithm
        elmt_M2_conc := elmt_M2_amount / elmt_compartment;
        elmt_M1_conc := elmt_M1_amount / elmt_compartment;
        elmt_C2_conc := elmt_C2_amount / elmt_compartment;
        elmt_C1_conc := elmt_C1_amount / elmt_compartment;
        elmt_X1_conc := elmt_X1_amount / elmt_compartment;
        elmt_X2_conc := elmt_X2_amount / elmt_compartment;
end Class_elmt_compartment;
