within BIOMD056;
class Class_elmt_start_S "start DNA synthesis" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    input Real elmt_mad2h;
    input Real elmt_ORI;
    input Real elmt_bub2h;
    Boolean trigger;
    Real    value_elmt_BUB2;
    Real    value_elmt_MAD2;

    equation
        trigger = ((elmt_ORI - 1.0) > 0.0);
        algorithm
            value_elmt_BUB2 := elmt_bub2h;
            value_elmt_MAD2 := elmt_mad2h;
end Class_elmt_start_S;
