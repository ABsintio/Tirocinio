within BIOMD208;
class Class_elmt_compartment

    input Real elmt_R14;
    input Real elmt_R15;
    input Real elmt_product12;
    input Real elmt_R12;
    input Real elmt_R13;
    input Real elmt_R10;
    input Real elmt_product10;
    input Real elmt_R11;
    input Real elmt_reactant9;
    input Real elmt_R7;
    input Real elmt_R8;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_R5;
    input Real elmt_reactant3;
    input Real elmt_R6;
    input Real elmt_R3;
    input Real elmt_reactant6;
    input Real elmt_reactant5;
    input Real elmt_R4;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_reactant14;
    input Real elmt_product0;
    input Real elmt_reactant17;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_R9;
    input Real elmt_reactant13;
    input Real elmt_product2;
    input Real elmt_product16;
    input Real elmt_product15;

    Real elmt_compartment(unit = "") "";
    Real elmt_y6_conc(unit = "");
    Real elmt_y6_amount(unit = "");
    Real elmt_y6(unit = "") "AP-1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y4_conc(unit = "");
    Real elmt_y4_amount(unit = "");
    Real elmt_y4(unit = "") "inactive cycE_cdk2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y5_conc(unit = "");
    Real elmt_y5_amount(unit = "");
    Real elmt_y5(unit = "") "active cycE_cdk2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y2_conc(unit = "");
    Real elmt_y2_amount(unit = "");
    Real elmt_y2(unit = "") "pRB";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y3_conc(unit = "");
    Real elmt_y3_amount(unit = "");
    Real elmt_y3(unit = "") "Phosphorylated pRB";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y1_conc(unit = "");
    Real elmt_y1_amount(unit = "");
    Real elmt_y1(unit = "") "E2F";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_y6_conc = 0.0;
        elmt_y4_conc = 0.0;
        elmt_y5_conc = 1.0E-4;
        elmt_y2_conc = 0.006;
        elmt_y3_conc = 0.0;
        elmt_y1_conc = 0.014;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_y6 = elmt_y6_conc;
        elmt_y4 = elmt_y4_conc;
        elmt_y5 = elmt_y5_conc;
        elmt_y2 = elmt_y2_conc;
        elmt_y3 = elmt_y3_conc;
        elmt_y1 = elmt_y1_conc;
        der(elmt_y6_amount) = ((elmt_R14 * elmt_product16) + (- (elmt_R15 * elmt_reactant17)) + (elmt_R13 * elmt_product15));
        der(elmt_y4_amount) = ((elmt_R7 * elmt_product7) + (elmt_R8 * elmt_product8) + (elmt_R10 * elmt_product12) + (- (elmt_R11 * elmt_reactant13)) + (- (elmt_R9 * elmt_reactant9)));
        der(elmt_y5_amount) = ((- (elmt_R12 * elmt_reactant14)) + (- (elmt_R10 * elmt_reactant11)) + (elmt_R9 * elmt_product10));
        der(elmt_y2_amount) = ((- (elmt_R5 * elmt_reactant5)) + (elmt_R3 * elmt_product2) + (- (elmt_R4 * elmt_reactant3)));
        der(elmt_y3_amount) = ((- (elmt_R6 * elmt_reactant6)) + (elmt_R4 * elmt_product4));
        der(elmt_y1_amount) = ((elmt_R1 * elmt_product0) + (- (elmt_R2 * elmt_reactant1)));

    algorithm
        elmt_y6_conc := elmt_y6_amount / elmt_compartment;
        elmt_y4_conc := elmt_y4_amount / elmt_compartment;
        elmt_y5_conc := elmt_y5_amount / elmt_compartment;
        elmt_y2_conc := elmt_y2_amount / elmt_compartment;
        elmt_y3_conc := elmt_y3_amount / elmt_compartment;
        elmt_y1_conc := elmt_y1_amount / elmt_compartment;
end Class_elmt_compartment;
