within BIOMD338;
class Class_elmt_clottingTime_event "clottingTime event"

    input Real elmt_Integral_Fibrin;
    Boolean trigger;
    Real    value_elmt_clottingTime_s;

    equation
        trigger = ((elmt_Integral_Fibrin * 3600.0) > 1500.0);
        algorithm
            value_elmt_clottingTime_s := (time * 3600.0);
end Class_elmt_clottingTime_event;
