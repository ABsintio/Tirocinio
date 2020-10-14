within BIOMD560;
class Class_elmt_nucleus

    Real elmt_nucleus(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_nucleus = 1.0;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;

    algorithm
end Class_elmt_nucleus;
