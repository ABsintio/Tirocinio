within BIOMD518;
class Class_elmt_compartment

    input Real elmt_R2X;
    input Real elmt_R12;
    input Real elmt_product11;
    input Real elmt_R11;
    input Real elmt_R0X;
    input Real elmt_R3X;
    input Real elmt_product9;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_R03;
    input Real elmt_reactant4;
    input Real elmt_R01;
    input Real elmt_reactant6;
    input Real elmt_reactant7;
    input Real elmt_R00;
    input Real elmt_reactant16;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_product3;
    input Real elmt_R1X;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_reactant13;
    input Real elmt_product2;
    input Real elmt_product15;
    input Real elmt_product14;

    Real elmt_compartment(unit = "") "crypt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_N3_conc(unit = "");
    Real elmt_N3_amount(unit = "");
    Real elmt_N3(unit = "") "N3";
    Real elmt_N1_conc(unit = "");
    Real elmt_N1_amount(unit = "");
    Real elmt_N1(unit = "") "N1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_N2_conc(unit = "");
    Real elmt_N2_amount(unit = "");
    Real elmt_N2(unit = "") "N2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_N0_conc(unit = "");
    Real elmt_N0_amount(unit = "");
    Real elmt_N0(unit = "") "N0";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_N3_conc = (1.5709821429 / elmt_compartment);
        elmt_N1_conc = (27.40585059 / elmt_compartment);
        elmt_N2_conc = (45.6191494109 / elmt_compartment);
        elmt_N0_conc = (1.75444831412765 / elmt_compartment);


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_N3 = elmt_N3_conc;
        elmt_N1 = elmt_N1_conc;
        elmt_N2 = elmt_N2_conc;
        elmt_N0 = elmt_N0_conc;
        der(elmt_N3_amount) = ((- (elmt_R3X * elmt_reactant16)) + (elmt_R03 * elmt_product15));
        der(elmt_N1_amount) = ((elmt_R01 * elmt_product3) + (elmt_R12 * elmt_product8) + (- (elmt_R12 * elmt_reactant7)) + (elmt_R11 * elmt_product11) + (- (elmt_R11 * elmt_reactant10)) + (- (elmt_R1X * elmt_reactant6)));
        der(elmt_N2_amount) = ((- (elmt_R2X * elmt_reactant12)) + (elmt_R12 * elmt_product9));
        der(elmt_N0_amount) = ((elmt_R03 * elmt_product14) + (- (elmt_R03 * elmt_reactant13)) + (- (elmt_R01 * elmt_reactant1)) + (elmt_R01 * elmt_product2) + (- (elmt_R00 * elmt_reactant4)) + (elmt_R00 * elmt_product5) + (- (elmt_R0X * elmt_reactant0)));

    algorithm
        elmt_N3_conc := elmt_N3_amount / elmt_compartment;
        elmt_N1_conc := elmt_N1_amount / elmt_compartment;
        elmt_N2_conc := elmt_N2_amount / elmt_compartment;
        elmt_N0_conc := elmt_N0_amount / elmt_compartment;
end Class_elmt_compartment;
