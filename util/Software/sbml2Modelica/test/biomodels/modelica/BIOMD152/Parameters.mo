within BIOMD152;
class Parameters

    input Boolean elmt_ca_on4;    input Boolean elmt_ca_on6;    input Boolean elmt_ca_on5;    input Boolean elmt_ca_on2;    input Boolean elmt_ca_on1;    input Boolean elmt_ca_on10;    input Boolean elmt_ca_on8;    input Boolean elmt_ca_on7;    input Boolean elmt_Ca_on3;    input Boolean elmt_ca_on9;    input Boolean elmt_ca_off5;    input Boolean elmt_ca_off6;    input Boolean elmt_ca_off3;    input Boolean elmt_ca_off4;    input Boolean elmt_ca_off1;    input Boolean elmt_ca_off2;    input Boolean elmt_ca_off10;    input Boolean elmt_ca_off9;    input Boolean elmt_ca_off7;    input Boolean elmt_ca_off8;
    input Real assign_elmt_k57;


    Real elmt_cAMP_Ca_delay(unit = "") "cAMP_Ca_delay";
    Real elmt_kon_low(unit = "") "kon_low";
    Real elmt_spike_duration(unit = "") "spike_duration";
    Real elmt_kon_high(unit = "") "kon_high";
    Real elmt_k57(unit = "") "ca_in";
    Real elmt_cAMP_delay(unit = "") "cAMP_delay";
    Real elmt_spike_interval(unit = "") "spike_interval";


    initial equation
        elmt_cAMP_Ca_delay = 50.0;
        elmt_kon_low = 2.5E-8;
        elmt_spike_duration = 2.0;
        elmt_kon_high = 6.6E-6;
        elmt_k57 = 2.5E-8;
        elmt_cAMP_delay = 400.0;
        elmt_spike_interval = 2.0;


    equation
        der(elmt_cAMP_Ca_delay) = 0;
        der(elmt_kon_low) = 0;
        der(elmt_spike_duration) = 0;
        der(elmt_kon_high) = 0;
        der(elmt_k57) = 0.0;
        der(elmt_cAMP_delay) = 0;
        der(elmt_spike_interval) = 0;

        when elmt_ca_on4 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_on6 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_on5 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_on2 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_on1 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_on10 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_on8 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_on7 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_Ca_on3 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_on9 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_off5 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_off6 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_off3 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_off4 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_off1 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_off2 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_off10 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_off9 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_off7 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
        when elmt_ca_off8 then
            reinit(elmt_k57, assign_elmt_k57);
        end when;
end Parameters;
