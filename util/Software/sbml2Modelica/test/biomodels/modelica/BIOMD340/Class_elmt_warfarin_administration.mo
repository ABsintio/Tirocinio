within BIOMD340;
class Class_elmt_warfarin_administration "warfarin_administration"

    input Real elmt_warfarin_daily_dose;
    input Real elmt_A_warf;
    Boolean trigger;
    Real    value_elmt_A_warf;

    equation
        trigger = ((if Functions.xor((time < 0.0), (24.0 < 0.0)) then (time - (24.0 * ceil((time / 24.0)))) else (time - (24.0 * floor((time / 24.0))))) > 1.0);
        algorithm
            value_elmt_A_warf := (pre(elmt_A_warf) + elmt_warfarin_daily_dose);
end Class_elmt_warfarin_administration;
