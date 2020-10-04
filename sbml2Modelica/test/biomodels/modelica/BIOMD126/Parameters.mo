within BIOMD126;
class Parameters

    input Real elmt_O;
    input Real elmt_IC2;
    input Real elmt_C2;
    input Real elmt_C3;
    input Real elmt_IF;
    input Real elmt_C1;
    input Real elmt_IM1;
    input Real elmt_IM2;
    input Real elmt_IC3;

    input Boolean elmt_event_0000001;    input Boolean elmt_event_0000002;
    input Real assign_elmt_v;


    Real elmt_Ena(unit = "") "";
    Real elmt_Ina(unit = "") "I_Na";
    Real elmt_Gna(unit = "") "";
    Real elmt_Fara(unit = "") "";
    Real elmt_a4(unit = "") "";
    Real elmt_a5(unit = "") "";
    Real elmt_b13(unit = "") "";
    Real elmt_a2(unit = "") "";
    Real elmt_a13(unit = "") "";
    Real elmt_b12(unit = "") "";
    Real elmt_a3(unit = "") "";
    Real elmt_a12(unit = "") "";
    Real elmt_b11(unit = "") "";
    Real elmt_a11(unit = "") "";
    Real elmt_Temp(unit = "") "";
    Real elmt_nai(unit = "") "[Na]in";
    Real elmt_nao(unit = "") "[Na]out";
    Real elmt_b5(unit = "") "";
    Real elmt_scale(unit = "") "";
    Real elmt_b3(unit = "") "";
    Real elmt_b4(unit = "") "";
    Real elmt_b2(unit = "") "";
    Real elmt_v(unit = "") "";
    Real elmt_Rk(unit = "") "";


    initial equation
        elmt_Gna = 23.5;
        elmt_Fara = 96485.0;
        elmt_Temp = 310.0;
        elmt_nai = 15.0;
        elmt_nao = 140.0;
        elmt_scale = 1000.0;
        elmt_v = (-80.0);
        elmt_Rk = 8314.0;


    equation
        elmt_Ena = (((elmt_Rk * elmt_Temp) / elmt_Fara) * log((elmt_nao / elmt_nai)));
        elmt_Ina = ((elmt_Gna * (elmt_O / (elmt_IC3 + elmt_IC2 + elmt_IF + elmt_IM1 + elmt_IM2 + elmt_C3 + elmt_C2 + elmt_C1 + elmt_O)) * (elmt_v - elmt_Ena)) / elmt_scale);
        der(elmt_Gna) = 0;
        der(elmt_Fara) = 0;
        elmt_a4 = (elmt_a2 / 100.0);
        elmt_a5 = (elmt_a2 / (9.5 * 10000.0));
        elmt_b13 = (0.22 * exp(((- (elmt_v - 10.0)) / 20.3)));
        elmt_a2 = (9.178 * exp((elmt_v / 29.68)));
        elmt_a13 = (3.802 / ((0.1027 * exp(((- elmt_v) / 12.0))) + (0.25 * exp(((- elmt_v) / 150.0)))));
        elmt_b12 = (0.2 * exp(((- (elmt_v - 5.0)) / 20.3)));
        elmt_a3 = (3.7933 * 1.0E-7 * exp(((- elmt_v) / 7.7)));
        elmt_a12 = (3.802 / ((0.1027 * exp(((- elmt_v) / 15.0))) + (0.23 * exp(((- elmt_v) / 150.0)))));
        elmt_b11 = (0.1917 * exp(((- elmt_v) / 20.3)));
        elmt_a11 = (3.802 / ((0.1027 * exp(((- elmt_v) / 17.0))) + (0.2 * exp(((- elmt_v) / 150.0)))));
        der(elmt_Temp) = 0;
        der(elmt_nai) = 0;
        der(elmt_nao) = 0;
        elmt_b5 = (elmt_a3 / 50.0);
        der(elmt_scale) = 0;
        elmt_b3 = (0.0084 + (2.0E-5 * elmt_v));
        elmt_b4 = elmt_a3;
        elmt_b2 = ((elmt_a13 * elmt_a2 * elmt_a3) / (elmt_b13 * elmt_b3));
        der(elmt_v) = 0.0;
        der(elmt_Rk) = 0;

        when elmt_event_0000001 then
            reinit(elmt_v, assign_elmt_v);
        end when;
        when elmt_event_0000002 then
            reinit(elmt_v, assign_elmt_v);
        end when;
end Parameters;
