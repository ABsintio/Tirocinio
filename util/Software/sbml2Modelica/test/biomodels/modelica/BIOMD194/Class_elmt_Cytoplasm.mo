within BIOMD194;
class Class_elmt_Cytoplasm

    input Real elmt_product9;
    input Real elmt_R7;
    input Real elmt_R8;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_reactant4;
    input Real elmt_R6;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_reactant7;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_product2;

    Real elmt_Cytoplasm(unit = "") "Cytoplasm";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_OMad2_conc(unit = "");
    Real elmt_OMad2_amount(unit = "");
    Real elmt_OMad2(unit = "") "O-Mad2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Cdc20_CMad2_conc(unit = "");
    Real elmt_Cdc20_CMad2_amount(unit = "");
    Real elmt_Cdc20_CMad2(unit = "") "Cdc20:C-Mad2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Mad1_CMad2_OMad2_conc(unit = "");
    Real elmt_Mad1_CMad2_OMad2_amount(unit = "");
    Real elmt_Mad1_CMad2_OMad2(unit = "") "Mad1:C-Mad2:O-Mad2*";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Cdc20_conc(unit = "");
    Real elmt_Cdc20_amount(unit = "");
    Real elmt_Cdc20(unit = "") "Cdc20";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Mad1_CMad2_conc(unit = "");
    Real elmt_Mad1_CMad2_amount(unit = "");
    Real elmt_Mad1_CMad2(unit = "") "Mad1:C-Mad2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Cytoplasm = 1.0;
        elmt_OMad2_conc = 1.5E-7;
        elmt_Cdc20_CMad2_conc = 0.0;
        elmt_Mad1_CMad2_OMad2_conc = 0.0;
        elmt_Cdc20_conc = 2.2E-7;
        elmt_Mad1_CMad2_conc = 5.0E-8;


    equation
        assert(elmt_Cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytoplasm) = 0;
        elmt_OMad2 = elmt_OMad2_conc;
        elmt_Cdc20_CMad2 = elmt_Cdc20_CMad2_conc;
        elmt_Mad1_CMad2_OMad2 = elmt_Mad1_CMad2_OMad2_conc;
        elmt_Cdc20 = elmt_Cdc20_conc;
        elmt_Mad1_CMad2 = elmt_Mad1_CMad2_conc;
        der(elmt_OMad2_amount) = ((elmt_R8 * elmt_product9) + (- (elmt_R6 * elmt_reactant1)));
        der(elmt_Cdc20_CMad2_amount) = ((elmt_R7 * elmt_product6) + (- (elmt_R8 * elmt_reactant7)));
        der(elmt_Mad1_CMad2_OMad2_amount) = ((- (elmt_R7 * elmt_reactant3)) + (elmt_R6 * elmt_product2));
        der(elmt_Cdc20_amount) = ((- (elmt_R7 * elmt_reactant4)) + (elmt_R8 * elmt_product8));
        der(elmt_Mad1_CMad2_amount) = ((elmt_R7 * elmt_product5) + (- (elmt_R6 * elmt_reactant0)));

    algorithm
        elmt_OMad2_conc := elmt_OMad2_amount / elmt_Cytoplasm;
        elmt_Cdc20_CMad2_conc := elmt_Cdc20_CMad2_amount / elmt_Cytoplasm;
        elmt_Mad1_CMad2_OMad2_conc := elmt_Mad1_CMad2_OMad2_amount / elmt_Cytoplasm;
        elmt_Cdc20_conc := elmt_Cdc20_amount / elmt_Cytoplasm;
        elmt_Mad1_CMad2_conc := elmt_Mad1_CMad2_amount / elmt_Cytoplasm;
end Class_elmt_Cytoplasm;
