within BIOMD473;
class Class_elmt_extracellular

    Real elmt_extracellular(unit = "") "extracellular";
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
    Real elmt_s_0766_conc(unit = "");
    Real elmt_s_0766_amount(unit = "");
    Real elmt_s_0766(unit = "") "glycerol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_s_1459_conc(unit = "");
    Real elmt_s_1459_amount(unit = "");
    Real elmt_s_1459(unit = "") "succinate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_s_0360_conc(unit = "");
    Real elmt_s_0360_amount(unit = "");
    Real elmt_s_0360(unit = "") "acetaldehyde";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_s_0681_conc(unit = "");
    Real elmt_s_0681_amount(unit = "");
    Real elmt_s_0681(unit = "") "ethanol";
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
    Real elmt_GLCx_conc(unit = "");
    Real elmt_GLCx_amount(unit = "");
    Real elmt_GLCx(unit = "") "D-glucose";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_extracellular = 1.0;
        elmt_s_1324_conc = 1.0;
        elmt_s_1468_conc = 1.0;
        elmt_s_0458_conc = 0.0;
        elmt_s_0766_conc = 0.0;
        elmt_s_1459_conc = 0.0;
        elmt_s_0360_conc = 0.0;
        elmt_s_0681_conc = 0.0;
        elmt_s_1277_conc = 1.0;
        elmt_s_0420_conc = 1.0;
        elmt_GLCx_conc = 100.0;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_s_1324 = elmt_s_1324_conc;
        elmt_s_1468 = elmt_s_1468_conc;
        elmt_s_0458 = elmt_s_0458_conc;
        elmt_s_0766 = elmt_s_0766_conc;
        elmt_s_1459 = elmt_s_1459_conc;
        elmt_s_0360 = elmt_s_0360_conc;
        elmt_s_0681 = elmt_s_0681_conc;
        elmt_s_1277 = elmt_s_1277_conc;
        elmt_s_0420 = elmt_s_0420_conc;
        elmt_GLCx = elmt_GLCx_conc;
        der(elmt_s_1324_amount) = 0;
        der(elmt_s_1468_amount) = 0;
        der(elmt_s_0458_amount) = 0;
        der(elmt_s_0766_amount) = 0;
        der(elmt_s_1459_amount) = 0;
        der(elmt_s_0360_amount) = 0;
        der(elmt_s_0681_amount) = 0;
        der(elmt_s_1277_amount) = 0;
        der(elmt_s_0420_amount) = 0;
        der(elmt_GLCx_amount) = 0;

    algorithm
        elmt_s_1324_conc := elmt_s_1324_amount / elmt_extracellular;
        elmt_s_1468_conc := elmt_s_1468_amount / elmt_extracellular;
        elmt_s_0458_conc := elmt_s_0458_amount / elmt_extracellular;
        elmt_s_0766_conc := elmt_s_0766_amount / elmt_extracellular;
        elmt_s_1459_conc := elmt_s_1459_amount / elmt_extracellular;
        elmt_s_0360_conc := elmt_s_0360_amount / elmt_extracellular;
        elmt_s_0681_conc := elmt_s_0681_amount / elmt_extracellular;
        elmt_s_1277_conc := elmt_s_1277_amount / elmt_extracellular;
        elmt_s_0420_conc := elmt_s_0420_amount / elmt_extracellular;
        elmt_GLCx_conc := elmt_GLCx_amount / elmt_extracellular;
end Class_elmt_extracellular;
