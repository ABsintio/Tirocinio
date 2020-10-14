within BIOMD122;
class Class_elmt_event_0000001 "" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    input Real elmt_Time_in_Seconds;
    Boolean trigger;
    Real    value_elmt_Time_in_Seconds;
    Real    value_elmt_Ca_Cyt;
    Real    value_elmt_Ca_Nuc;

    equation
        trigger = (((elmt_Time_in_Seconds - time) <= 0.0) and (time < 1500.0));
        algorithm
            value_elmt_Time_in_Seconds := (pre(elmt_Time_in_Seconds) + 100.0);
            value_elmt_Ca_Cyt := 1.0;
            value_elmt_Ca_Nuc := 1.0;
end Class_elmt_event_0000001;
