within BIOMD056;
class Class_elmt_reset_ORI "reset ORI" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    input Real elmt_KEZ2;
    input Real elmt_CLB2;
    input Real elmt_CLB5;
    Boolean trigger;
    Real    value_elmt_ORI;

    equation
        trigger = (((elmt_CLB2 + elmt_CLB5) - elmt_KEZ2) < 0.0);
        algorithm
            value_elmt_ORI := 0.0;
end Class_elmt_reset_ORI;
