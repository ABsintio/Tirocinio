within BIOMD166;
class Class_elmt_cytoplasm

    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_Calcium_Influx;
    input Real elmt_reactant5;
    input Real elmt_TF_degradation;
    input Real elmt_Calcium_Influx_stimulation;
    input Real elmt_product10;
    input Real elmt_Calcium_into_store;
    input Real elmt_product0;
    input Real elmt_product4;
    input Real elmt_reactant11;
    input Real elmt_product3;
    input Real elmt_Leakage_from_cytoplasm;
    input Real elmt_Leakage;
    input Real elmt_product2;
    input Real elmt_Calcium_into_cytoplasm;
    input Real elmt_TF_synthesis;
    input Real elmt_TF_synthesis_basal;

    Real elmt_cytoplasm(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Z_conc(unit = "");
    Real elmt_Z_amount(unit = "");
    Real elmt_Z(unit = "") "Calcium in cytoplasm";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "TF_A";

    initial equation
        elmt_cytoplasm = 1.0;
        elmt_Z_conc = 0.25;
        elmt_X_conc = 15.0;


    equation
        assert(elmt_cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytoplasm) = 0;
        elmt_Z = elmt_Z_conc;
        elmt_X = elmt_X_conc;
        der(elmt_Z_amount) = ((elmt_Calcium_into_cytoplasm * elmt_product8) + (elmt_Calcium_Influx * elmt_product3) + (elmt_Calcium_Influx_stimulation * elmt_product4) + (- (elmt_Calcium_into_store * elmt_reactant5)) + (- (elmt_Leakage_from_cytoplasm * elmt_reactant11)) + (elmt_Leakage * elmt_product10));
        der(elmt_X_amount) = ((- (elmt_TF_degradation * elmt_reactant1)) + (elmt_TF_synthesis * elmt_product0) + (elmt_TF_synthesis_basal * elmt_product2));

    algorithm
        elmt_Z_conc := elmt_Z_amount / elmt_cytoplasm;
        elmt_X_conc := elmt_X_amount / elmt_cytoplasm;
end Class_elmt_cytoplasm;
