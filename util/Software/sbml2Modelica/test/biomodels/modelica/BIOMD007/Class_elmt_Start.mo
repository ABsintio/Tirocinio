within BIOMD007;
class Class_elmt_Start "S-Phase Start" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    input Real elmt_kp;
    input Real elmt_SPF;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_kp;

    equation
        trigger = (elmt_SPF >= 0.1);
        when trigger then
            trigtime = time;
            delta = 60.0;
            active = true;
            execution = delta <= 0.0;
        elsewhen time >= trigtime + delta then
            execution = pre(active);
            active = false;
        elsewhen not trigger then
            active = false;
        end when;

        algorithm
            when execution then
                value_elmt_kp := (pre(elmt_kp) / 2.0);
            end when;
end Class_elmt_Start;
