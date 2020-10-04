within BIOMD127;
class Class_elmt_event_0000001 "" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    input Real elmt_Vthresh;
    input Real elmt_U;
    input Real elmt_v;
    input Real elmt_c;
    input Real elmt_d;
    Boolean trigger;
    Real    value_elmt_v;
    Real    value_elmt_U;

    equation
        trigger = (elmt_v > elmt_Vthresh);
        algorithm
            value_elmt_v := elmt_c;
            value_elmt_U := (pre(elmt_U) + elmt_d);
end Class_elmt_event_0000001;
