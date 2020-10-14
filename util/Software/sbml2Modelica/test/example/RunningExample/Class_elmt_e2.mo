within RunningExample;
class Class_elmt_e2 ""
    extends Modelica.Icons.SignalBus;


    input Real elmt_p4;
    input Real elmt_s4;
    input Real elmt_s2;
    input Real elmt_s3;
    input Real elmt_s1;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    priority;
    Real    value_elmt_p2;
    Real    value_elmt_p4;

    initial equation
        delta = if trigger then elmt_p4 else 0.0;

        value_elmt_p2 = (-1.0);
        value_elmt_p4 = 0.0;

    equation
        trigger = (((elmt_s1 * elmt_s2) <= 1.0E-7) or ((elmt_s3 * elmt_s4) <= 1.0E-7));
        priority = elmt_s2;
        algorithm
        when trigger then
            trigtime := if not pre(active) then time else trigtime;
            delta := if not pre(active) then elmt_p4 else delta;
            active := true;
            execution := delta <= 0.0;
            assert(not pre(active), "Nested event detected. This is not supported yet.");
        elsewhen time >= trigtime + delta then
            trigtime := 0.0;
            delta := 0.0;
            active := false;
            execution := true;
        end when;

            when execution then
                value_elmt_p2 := (-1.0);
                value_elmt_p4 := 0.0;
            end when;
end Class_elmt_e2;
