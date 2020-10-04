within BIOMD632;
class Class_elmt_DNADamage "DNADamage"

    input Real elmt_prop_C;
    input Real elmt_Gy;
    input Real elmt_ModelValue_9_0;
    input Real elmt_DNAdamagefoci_0;
    input Real elmt_k_TAF;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_DNADamageS;
    Real    value_elmt_DNADamageC;
    Real    value_elmt_TAF;

    equation
        trigger = (time > 0.0);
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
            when trigger then
                value_elmt_DNADamageS := ((1.0 - elmt_prop_C) * elmt_DNAdamagefoci_0);
                value_elmt_DNADamageC := (elmt_prop_C * elmt_DNAdamagefoci_0);
                value_elmt_TAF := (elmt_ModelValue_9_0 + (elmt_k_TAF * Functions.pow(elmt_Gy, (1.0 / 2.0))));
            end when;
end Class_elmt_DNADamage;
