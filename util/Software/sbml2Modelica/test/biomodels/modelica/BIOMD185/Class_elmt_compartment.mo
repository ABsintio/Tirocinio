within BIOMD185;
class Class_elmt_compartment

    input Real elmt_R16;
    input Real elmt_R17;
    input Real elmt_R14;
    input Real elmt_R15;
    input Real elmt_R12;
    input Real elmt_product12;
    input Real elmt_R13;
    input Real elmt_R10;
    input Real elmt_product10;
    input Real elmt_R11;
    input Real elmt_R18;
    input Real elmt_R19;
    input Real elmt_reactant19;
    input Real elmt_reactant9;
    input Real elmt_R20;
    input Real elmt_R7;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_R8;
    input Real elmt_R5;
    input Real elmt_product6;
    input Real elmt_R6;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_reactant5;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_reactant7;
    input Real elmt_product0;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_R9;
    input Real elmt_product3;
    input Real elmt_product2;
    input Real elmt_product16;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_product18;

    Real elmt_compartment(unit = "") "Cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_V1_conc(unit = "");
    Real elmt_V1_amount(unit = "");
    Real elmt_V1(unit = "") "Neuropeptide";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_V2_conc(unit = "");
    Real elmt_V2_amount(unit = "");
    Real elmt_V2(unit = "") "Neuropeptide";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_X1_conc(unit = "");
    Real elmt_X1_amount(unit = "");
    Real elmt_X1(unit = "") "clock gene mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Y2_conc(unit = "");
    Real elmt_Y2_amount(unit = "");
    Real elmt_Y2(unit = "") "clock protein";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_X2_conc(unit = "");
    Real elmt_X2_amount(unit = "");
    Real elmt_X2(unit = "") "clock gene mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Z1_conc(unit = "");
    Real elmt_Z1_amount(unit = "");
    Real elmt_Z1(unit = "") "Transcriptional repressor";
    Real elmt_Y1_conc(unit = "");
    Real elmt_Y1_amount(unit = "");
    Real elmt_Y1(unit = "") "clock protein";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Z2_conc(unit = "");
    Real elmt_Z2_amount(unit = "");
    Real elmt_Z2(unit = "") "Transcriptional repressor";

    initial equation
        elmt_compartment = 1.0;
        elmt_V1_conc = 2.5;
        elmt_V2_conc = 0.0;
        elmt_X1_conc = 4.25;
        elmt_Y2_conc = 0.0;
        elmt_X2_conc = 0.0;
        elmt_Z1_conc = 2.25;
        elmt_Y1_conc = 3.25;
        elmt_Z2_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_V1 = elmt_V1_conc;
        elmt_V2 = elmt_V2_conc;
        elmt_X1 = elmt_X1_conc;
        elmt_Y2 = elmt_Y2_conc;
        elmt_X2 = elmt_X2_conc;
        elmt_Z1 = elmt_Z1_conc;
        elmt_Y1 = elmt_Y1_conc;
        elmt_Z2 = elmt_Z2_conc;
        der(elmt_V1_amount) = ((- (elmt_R10 * elmt_reactant9)) + (elmt_R9 * elmt_product8));
        der(elmt_V2_amount) = ((elmt_R19 * elmt_product18) + (- (elmt_R20 * elmt_reactant19)));
        der(elmt_X1_amount) = ((elmt_R3 * elmt_product2) + (elmt_R4 * elmt_product3) + (elmt_R1 * elmt_product0) + (- (elmt_R2 * elmt_reactant1)));
        der(elmt_Y2_amount) = ((- (elmt_R16 * elmt_reactant15)) + (elmt_R15 * elmt_product14));
        der(elmt_X2_amount) = ((elmt_R14 * elmt_product13) + (- (elmt_R12 * elmt_reactant11)) + (elmt_R13 * elmt_product12) + (elmt_R11 * elmt_product10));
        der(elmt_Z1_amount) = ((elmt_R7 * elmt_product6) + (- (elmt_R8 * elmt_reactant7)));
        der(elmt_Y1_amount) = ((elmt_R5 * elmt_product4) + (- (elmt_R6 * elmt_reactant5)));
        der(elmt_Z2_amount) = ((elmt_R17 * elmt_product16) + (- (elmt_R18 * elmt_reactant17)));

    algorithm
        elmt_V1_conc := elmt_V1_amount / elmt_compartment;
        elmt_V2_conc := elmt_V2_amount / elmt_compartment;
        elmt_X1_conc := elmt_X1_amount / elmt_compartment;
        elmt_Y2_conc := elmt_Y2_amount / elmt_compartment;
        elmt_X2_conc := elmt_X2_amount / elmt_compartment;
        elmt_Z1_conc := elmt_Z1_amount / elmt_compartment;
        elmt_Y1_conc := elmt_Y1_amount / elmt_compartment;
        elmt_Z2_conc := elmt_Z2_amount / elmt_compartment;
end Class_elmt_compartment;
