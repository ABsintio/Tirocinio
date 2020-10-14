within BIOMD001;
class Class_elmt_RemovalACh "removal of ACh" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    input Real elmt_t2;
    Boolean trigger;
    Real    value_elmt_kf_1;
    Real    value_elmt_kf_4;
    Real    value_elmt_kf_3;
    Real    value_elmt_kf_0;
    Real    value_elmt_kf_12;
    Real    value_elmt_kf_7;
    Real    value_elmt_kf_13;
    Real    value_elmt_kf_8;

    equation
        trigger = (time > elmt_t2);
        algorithm
            value_elmt_kf_1 := 0.0;
            value_elmt_kf_4 := 0.0;
            value_elmt_kf_3 := 0.0;
            value_elmt_kf_0 := 0.0;
            value_elmt_kf_12 := 0.0;
            value_elmt_kf_7 := 0.0;
            value_elmt_kf_13 := 0.0;
            value_elmt_kf_8 := 0.0;
end Class_elmt_RemovalACh;
