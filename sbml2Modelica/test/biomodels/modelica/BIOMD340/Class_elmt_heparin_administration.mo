within BIOMD340;
class Class_elmt_heparin_administration "heparin_administration"

    input Real elmt_heparin_infusion_duration_hr;
    Boolean trigger;
    Real    value_elmt_heparin_infusion;

    equation
        trigger = (time > elmt_heparin_infusion_duration_hr);
        algorithm
            value_elmt_heparin_infusion := 0.0;
end Class_elmt_heparin_administration;
