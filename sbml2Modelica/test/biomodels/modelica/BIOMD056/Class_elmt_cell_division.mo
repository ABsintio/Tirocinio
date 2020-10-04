within BIOMD056;
class Class_elmt_cell_division "cell division" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    input Real elmt_MASS;
    input Real elmt_lte1l;
    input Real elmt_CLB2;
    input Real elmt_KEZ;
    input Real elmt_F;
    Boolean trigger;
    Real    value_elmt_MASS;
    Real    value_elmt_BUD;
    Real    value_elmt_SPN;
    Real    value_elmt_LTE1;

    equation
        trigger = ((elmt_CLB2 - elmt_KEZ) < 0.0);
        algorithm
            value_elmt_MASS := (elmt_F * pre(elmt_MASS));
            value_elmt_BUD := 0.0;
            value_elmt_SPN := 0.0;
            value_elmt_LTE1 := elmt_lte1l;
end Class_elmt_cell_division;
