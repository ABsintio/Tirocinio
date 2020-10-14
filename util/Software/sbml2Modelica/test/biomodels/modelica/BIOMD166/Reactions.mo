within BIOMD166;
class Reactions

    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_X;
    input Real elmt_kf;
    input Real elmt_Kd;

    Real elmt_Calcium_into_cytoplasm(unit = "") "Calcium influx to cytoplasm";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Calcium_into_cytoplasm_elmt_p(unit "") = 4.0 "";
    parameter Real elmt_Calcium_into_cytoplasm_elmt_m(unit "") = 2.0 "";
    parameter Real elmt_Calcium_into_cytoplasm_elmt_K_A(unit "") = 0.46 "";
    parameter Real elmt_Calcium_into_cytoplasm_elmt_Vm3(unit "") = 325.0 "";
    parameter Real elmt_Calcium_into_cytoplasm_elmt_Kr(unit "") = 1.7 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_Calcium_Influx(unit = "") "Calcium_Influx";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Calcium_Influx_elmt_v0(unit "") = 1.0 "";
    Real elmt_product3 "";
    Real elmt_TF_degradation(unit = "") "TF degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TF_degradation_elmt_kd(unit "") = 1.0 "";
    Real elmt_reactant1 "";
    Real elmt_Calcium_Influx_stimulation(unit = "") "Calcium Influx by stimulation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Calcium_Influx_stimulation_elmt_beta(unit "") = 0.3 "";
    parameter Real elmt_Calcium_Influx_stimulation_elmt_v1(unit "") = 5.7 "";
    Real elmt_product4 "";
    Real elmt_Calcium_into_store(unit = "") "Calcium Influx";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Calcium_into_store_elmt_n(unit "") = 2.0 "";
    parameter Real elmt_Calcium_into_store_elmt_Vm2(unit "") = 30.0 "";
    parameter Real elmt_Calcium_into_store_elmt_K2(unit "") = 0.5 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_TF_synthesis(unit = "") "TF Synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product0 "";
    Real elmt_TF_synthesis_basal(unit = "") "TF_synthesis_basal";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TF_synthesis_basal_elmt_Rbas(unit "") = 0.1 "";
    Real elmt_product2 "";
    Real elmt_Leakage_from_cytoplasm(unit = "") "Leakage from cytoplasm";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Leakage_from_cytoplasm_elmt_k(unit "") = 10.0 "";
    Real elmt_reactant11 "";
    Real elmt_Leakage(unit = "") "Calcium Leakage";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Leakage_elmt_k1(unit "") = 0.7 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";


    initial equation
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_Calcium_into_cytoplasm = ((((elmt_Calcium_into_cytoplasm_elmt_Vm3 * Functions.pow(elmt_Y, elmt_Calcium_into_cytoplasm_elmt_m)) / (Functions.pow(elmt_Calcium_into_cytoplasm_elmt_Kr, elmt_Calcium_into_cytoplasm_elmt_m) + Functions.pow(elmt_Y, elmt_Calcium_into_cytoplasm_elmt_m))) * Functions.pow(elmt_Z, elmt_Calcium_into_cytoplasm_elmt_p)) / (Functions.pow(elmt_Calcium_into_cytoplasm_elmt_K_A, elmt_Calcium_into_cytoplasm_elmt_p) + Functions.pow(elmt_Z, elmt_Calcium_into_cytoplasm_elmt_p)));
        elmt_Calcium_Influx = elmt_Calcium_Influx_elmt_v0;
        elmt_TF_degradation = (elmt_TF_degradation_elmt_kd * elmt_X);
        elmt_Calcium_Influx_stimulation = (elmt_Calcium_Influx_stimulation_elmt_v1 * elmt_Calcium_Influx_stimulation_elmt_beta);
        elmt_Calcium_into_store = ((elmt_Calcium_into_store_elmt_Vm2 * Functions.pow(elmt_Z, elmt_Calcium_into_store_elmt_n)) / (Functions.pow(elmt_Calcium_into_store_elmt_K2, elmt_Calcium_into_store_elmt_n) + Functions.pow(elmt_Z, elmt_Calcium_into_store_elmt_n)));
        elmt_TF_synthesis = ((elmt_kf * Functions.pow(elmt_X, 2.0)) / (Functions.pow(elmt_X, 2.0) + elmt_Kd));
        elmt_TF_synthesis_basal = elmt_TF_synthesis_basal_elmt_Rbas;
        elmt_Leakage_from_cytoplasm = (elmt_Leakage_from_cytoplasm_elmt_k * elmt_Z);
        elmt_Leakage = (elmt_Leakage_elmt_k1 * elmt_Y);
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;

end Reactions;
