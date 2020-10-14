within BIOMD121;
class Parameters

    input Boolean elmt_event_0000001;    input Boolean elmt_event_0000002;
    input Real assign_elmt_v;


    Real elmt_ko(unit = "") "extracellular K";
    Real elmt_Gk(unit = "") "membrane_conductance";
    Real elmt_aa(unit = "") "";
    Real elmt_bb(unit = "") "";
    Real elmt_F(unit = "") "Faraday constant";
    Real elmt_vtest(unit = "") "test_potential";
    Real elmt_a(unit = "") "";
    Real elmt_bi(unit = "") "";
    Real elmt_b(unit = "") "";
    Real elmt_ai(unit = "") "";
    Real elmt_vk(unit = "") "reversal potential for k";
    Real elmt_bin(unit = "") "";
    Real elmt_ain(unit = "") "";
    Real elmt_vhold(unit = "") "holding_potential";
    Real elmt_ki(unit = "") "introcellular K";
    Real elmt_u(unit = "") "";
    Real elmt_v(unit = "") "membrane_potential";
    Real elmt_R(unit = "") "gas constant";
    Real elmt_Temp(unit = "") "temperature";


    initial equation
        elmt_ko = 5.4;
        elmt_F = 96.485;
        elmt_vtest = 0.0;
        elmt_bin = 1.077;
        elmt_ain = 2.172;
        elmt_vhold = (-40.0);
        elmt_ki = 140.0;
        elmt_v = (-40.0);
        elmt_R = 8.314;
        elmt_Temp = 310.0;


    equation
        der(elmt_ko) = 0;
        elmt_Gk = (0.0135 * Functions.pow(elmt_ko, 0.59));
        elmt_aa = (0.0655 * exp((0.05547153 * (elmt_v - 36.0))));
        elmt_bb = (0.0029357 * exp(((-0.02158) * elmt_v)));
        der(elmt_F) = 0;
        der(elmt_vtest) = 0;
        elmt_a = (0.0555 * exp((0.05547153 * (elmt_v - 12.0))));
        elmt_bi = (0.656 * exp((9.42E-4 * elmt_v)) * Functions.pow((4.5 / elmt_ko), 0.3));
        elmt_b = (0.002357 * exp(((-0.036588) * elmt_v)));
        elmt_ai = ((0.439 * exp(((-0.02352) * (elmt_v + 25.0))) * 4.5) / elmt_ko);
        elmt_vk = (((elmt_R * elmt_Temp) / elmt_F) * log((elmt_ko / elmt_ki)));
        der(elmt_bin) = 0;
        der(elmt_ain) = 0;
        der(elmt_vhold) = 0;
        der(elmt_ki) = 0;
        elmt_u = ((elmt_ai * elmt_bb * elmt_aa) / (elmt_aa * elmt_bi));
        der(elmt_v) = 0.0;
        der(elmt_R) = 0;
        der(elmt_Temp) = 0;

        when elmt_event_0000001 then
            reinit(elmt_v, assign_elmt_v);
        end when;
        when elmt_event_0000002 then
            reinit(elmt_v, assign_elmt_v);
        end when;
end Parameters;
