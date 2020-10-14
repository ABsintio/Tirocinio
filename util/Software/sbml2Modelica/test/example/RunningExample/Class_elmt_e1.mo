within RunningExample;
class Class_elmt_e1 ""
    extends Modelica.Icons.SignalBus;


    input Real elmt_s4;
    input Real elmt_s2;
    input Real elmt_s3;
    input Real elmt_s1;
    Boolean trigger;
    Real    priority;
    Real    value_elmt_p2;

    initial equation
    equation
        trigger = (((elmt_s1 * elmt_s2) <= 1.0E-7) or ((elmt_s3 * elmt_s4) <= 1.0E-7));
        priority = elmt_s4;
        algorithm
            value_elmt_p2 := 0.0;
end Class_elmt_e1;
