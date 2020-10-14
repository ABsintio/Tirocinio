within BIOMD472;
class Class_elmt_extracellular

    Real elmt_extracellular(unit = "") "extracellular";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_s_0565_conc(unit = "");
    Real elmt_s_0565_amount(unit = "");
    Real elmt_s_0565(unit = "") "D-glucose";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_s_1324_conc(unit = "");
    Real elmt_s_1324_amount(unit = "");
    Real elmt_s_1324(unit = "") "phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_s_1468_conc(unit = "");
    Real elmt_s_1468_amount(unit = "");
    Real elmt_s_1468(unit = "") "sulphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_s_0458_conc(unit = "");
    Real elmt_s_0458_amount(unit = "");
    Real elmt_s_0458(unit = "") "carbon dioxide";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_s_0723_conc(unit = "");
    Real elmt_s_0723_amount(unit = "");
    Real elmt_s_0723(unit = "") "formate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_s_1277_conc(unit = "");
    Real elmt_s_1277_amount(unit = "");
    Real elmt_s_1277(unit = "") "oxygen";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_s_0420_conc(unit = "");
    Real elmt_s_0420_amount(unit = "");
    Real elmt_s_0420(unit = "") "ammonium";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_extracellular = 1.0;
        elmt_s_0565_conc = 1.0;
        elmt_s_1324_conc = 1.0;
        elmt_s_1468_conc = 1.0;
        elmt_s_0458_conc = 0.0;
        elmt_s_0723_conc = 0.0;
        elmt_s_1277_conc = 1.0;
        elmt_s_0420_conc = 1.0;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_s_0565 = elmt_s_0565_conc;
        elmt_s_1324 = elmt_s_1324_conc;
        elmt_s_1468 = elmt_s_1468_conc;
        elmt_s_0458 = elmt_s_0458_conc;
        elmt_s_0723 = elmt_s_0723_conc;
        elmt_s_1277 = elmt_s_1277_conc;
        elmt_s_0420 = elmt_s_0420_conc;
        der(elmt_s_0565_amount) = 0;
        der(elmt_s_1324_amount) = 0;
        der(elmt_s_1468_amount) = 0;
        der(elmt_s_0458_amount) = 0;
        der(elmt_s_0723_amount) = 0;
        der(elmt_s_1277_amount) = 0;
        der(elmt_s_0420_amount) = 0;

    algorithm
        elmt_s_0565_conc := elmt_s_0565_amount / elmt_extracellular;
        elmt_s_1324_conc := elmt_s_1324_amount / elmt_extracellular;
        elmt_s_1468_conc := elmt_s_1468_amount / elmt_extracellular;
        elmt_s_0458_conc := elmt_s_0458_amount / elmt_extracellular;
        elmt_s_0723_conc := elmt_s_0723_amount / elmt_extracellular;
        elmt_s_1277_conc := elmt_s_1277_amount / elmt_extracellular;
        elmt_s_0420_conc := elmt_s_0420_amount / elmt_extracellular;
end Class_elmt_extracellular;
