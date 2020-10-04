within BIOMD064;
class Class_elmt_extracellular

    Real elmt_extracellular(unit = "") "";
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

    initial equation
        elmt_extracellular = 1.0;
        elmt_GLCo_conc = 50.0;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_GLCo = elmt_GLCo_conc;
        der(elmt_GLCo_amount) = 0;

    algorithm
        elmt_GLCo_conc := elmt_GLCo_amount / elmt_extracellular;
end Class_elmt_extracellular;
