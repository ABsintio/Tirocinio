within BIOMD056;
class Class_elmt_spindle_checkpoint "spindle checkpoint" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    input Real elmt_SPN;
    input Real elmt_bub2l;
    input Real elmt_mad2l;
    input Real elmt_lte1h;
    Boolean trigger;
    Real    value_elmt_BUB2;
    Real    value_elmt_MAD2;
    Real    value_elmt_LTE1;

    equation
        trigger = ((elmt_SPN - 1.0) > 0.0);
        algorithm
            value_elmt_BUB2 := elmt_bub2l;
            value_elmt_MAD2 := elmt_mad2l;
            value_elmt_LTE1 := elmt_lte1h;
end Class_elmt_spindle_checkpoint;
