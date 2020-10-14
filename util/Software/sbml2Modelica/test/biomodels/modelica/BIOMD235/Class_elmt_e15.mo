within BIOMD235;
class Class_elmt_e15 "e15"

    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_E_UMR_S2;
    Real    value_elmt_P_Otx_S1;
    Real    value_elmt_P_Otx_S2;
    Real    value_elmt_E_UMR_S1;
    Real    value_elmt_M_UMR_S1;
    Real    value_elmt_M_UMR_S2;

    equation
        trigger = (time >= 15.0);
        when trigger then
            trigtime = if not pre(active) then time else pre(trigtime);
            delta = if not pre(active) then 0.0 else pre(delta);
            active = true;
            execution = delta <= 0.0;
            assert(not pre(active), "Nested event detected. This is not supported yet.");
        elsewhen time >= trigtime + delta then
            active = false;
            execution = true;
        end when;

        algorithm
            when trigger and not pre(active) then
                value_elmt_E_UMR_S2 := 0.0;
                value_elmt_P_Otx_S1 := 1.0;
                value_elmt_P_Otx_S2 := 0.0;
                value_elmt_E_UMR_S1 := 1.0;
                value_elmt_M_UMR_S1 := 1.0;
                value_elmt_M_UMR_S2 := 0.0;
            end when;
end Class_elmt_e15;
