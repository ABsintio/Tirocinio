within BIOMD162;
class Class_elmt_PM

    Real elmt_PM(unit = "m2.0") "PM";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_PM = 16669.5000051998;


    equation
        assert(elmt_PM >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_PM) = 0;

    algorithm
end Class_elmt_PM;
