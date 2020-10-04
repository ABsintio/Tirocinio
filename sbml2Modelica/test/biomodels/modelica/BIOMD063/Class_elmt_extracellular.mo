within BIOMD063;
class Class_elmt_extracellular

    Real elmt_extracellular(unit = "") "Extracellular";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Glco_conc(unit = "");
    Real elmt_Glco_amount(unit = "");
    Real elmt_Glco(unit = "") "Glucose outside the cell";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_extracellular = 1.0;
        elmt_Glco_conc = 1.0;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_Glco = elmt_Glco_conc;
        der(elmt_Glco_amount) = 0;

    algorithm
        elmt_Glco_conc := elmt_Glco_amount / elmt_extracellular;
end Class_elmt_extracellular;
