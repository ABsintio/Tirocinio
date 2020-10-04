within BIOMD408;
class Class_elmt_event0 "pulsatile_test" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    input Real elmt_fracSysDown;
    input Real elmt_time_Jhyd_step;
    input Real elmt_fracSysUp;
    input Real elmt_phase;
    input Real elmt_last_time_fired;
    input Real elmt_fracDia;
    input Real elmt_Jhyd;
    input Real elmt_stepsize;
    input Real elmt_pulsatility;
    input Real elmt_VhydAmp_test;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_Jhyd;
    Real    value_elmt_last_time_fired;

    equation
        trigger = (((time >= elmt_time_Jhyd_step) and ((time - elmt_last_time_fired) > elmt_stepsize)) and Functions.eq(elmt_pulsatility, 1.0));
        when trigger then
            trigtime = time;
            delta = 0.0;
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
                value_elmt_Jhyd := (if ((elmt_phase > elmt_fracSysUp) and (elmt_phase <= (1.0 - elmt_fracDia))) then ((1.0 - ((elmt_phase - elmt_fracSysUp) / elmt_fracSysDown)) * elmt_VhydAmp_test) elseif (elmt_phase <= elmt_fracSysUp) then ((elmt_phase / elmt_fracSysUp) * elmt_VhydAmp_test) elseif (elmt_phase >= (1.0 - elmt_fracDia)) then 0.0 else pre(elmt_Jhyd));
                value_elmt_last_time_fired := time;
            end when;
end Class_elmt_event0;
