within BIOMD247;
class Class_elmt_extracellular

    Real elmt_extracellular(unit = "") "extracellular";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CO2_conc(unit = "");
    Real elmt_CO2_amount(unit = "");
    Real elmt_CO2(unit = "") "CO2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GLY_conc(unit = "");
    Real elmt_GLY_amount(unit = "");
    Real elmt_GLY(unit = "") "Glycerol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_GLCo_conc(unit = "");
    Real elmt_GLCo_amount(unit = "");
    Real elmt_GLCo(unit = "") "Extracellular Glucose";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ETOH_conc(unit = "");
    Real elmt_ETOH_amount(unit = "");
    Real elmt_ETOH(unit = "") "Ethanol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_SUCC_conc(unit = "");
    Real elmt_SUCC_amount(unit = "");
    Real elmt_SUCC(unit = "") "Succinate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_extracellular = 1.0;
        elmt_CO2_conc = 1.0;
        elmt_GLY_conc = 0.15;
        elmt_GLCo_conc = 50.0;
        elmt_ETOH_conc = 50.0;
        elmt_SUCC_conc = 0.1;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_CO2 = elmt_CO2_conc;
        elmt_GLY = elmt_GLY_conc;
        elmt_GLCo = elmt_GLCo_conc;
        elmt_ETOH = elmt_ETOH_conc;
        elmt_SUCC = elmt_SUCC_conc;
        der(elmt_CO2_amount) = 0;
        der(elmt_GLY_amount) = 0;
        der(elmt_GLCo_amount) = 0;
        der(elmt_ETOH_amount) = 0;
        der(elmt_SUCC_amount) = 0;

    algorithm
        elmt_CO2_conc := elmt_CO2_amount / elmt_extracellular;
        elmt_GLY_conc := elmt_GLY_amount / elmt_extracellular;
        elmt_GLCo_conc := elmt_GLCo_amount / elmt_extracellular;
        elmt_ETOH_conc := elmt_ETOH_amount / elmt_extracellular;
        elmt_SUCC_conc := elmt_SUCC_amount / elmt_extracellular;
end Class_elmt_extracellular;
