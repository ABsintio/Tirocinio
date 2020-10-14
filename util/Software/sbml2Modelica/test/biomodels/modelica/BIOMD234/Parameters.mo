within BIOMD234;
class Parameters

    input Real elmt_Ce;

    Real elmt_Keq(unit = "s-1.0") "Keq";
    Real elmt_T_Turnover(unit = ".") "T_Turnover";
    Real elmt_AE50(unit = "") "AE50";
    Real elmt_Exposure(unit = "") "Exposure";
    Real elmt_Size(unit = "") "Size";
    Real elmt_Teq(unit = "") "Teq";
    Real elmt_Dose_Length(unit = "") "Dose_Length";
    Real elmt_conversion_factor(unit = "") "conversion_factor";
    Real elmt_Kover(unit = "m-1.0.s-1.0") "Kover";
    Real elmt_Dose_Int1(unit = "") "Dose_Int1";
    Real elmt_Dose_Int2(unit = "") "Dose_Int2";
    Real elmt_Cycle_Int(unit = "") "Cycle_Int";
    Real elmt_N_Cycle(unit = "") "N_Cycle";
    Real elmt_Size_0(unit = "") "Size_0";
    Real elmt_RateIn(unit = "s-1.0") "RateIn";
    Real elmt_Dose(unit = "") "Dose";
    Real elmt_rem_time(unit = "") "rem_time";
    Real elmt_Effect(unit = "") "Effect";


    initial equation
        elmt_T_Turnover = 21.8;
        elmt_AE50 = 10600.0;
        elmt_Size = 6.66;
        elmt_Teq = 7.67;
        elmt_Dose_Length = 0.44359;
        elmt_conversion_factor = 604800.0;
        elmt_Dose_Int1 = 0.0;
        elmt_Dose_Int2 = 1.0;
        elmt_Cycle_Int = 3.0;
        elmt_N_Cycle = 6.0;
        elmt_Size_0 = 6.66;
        elmt_Dose = 5203.84;


    equation
        elmt_Keq = (log(2.0) / elmt_Teq);
        der(elmt_T_Turnover) = 0;
        der(elmt_AE50) = 0;
        elmt_Exposure = (if ((time < (elmt_Cycle_Int * elmt_N_Cycle)) and (elmt_Dose_Int1 < elmt_rem_time) and (elmt_rem_time < elmt_Dose_Length)) then elmt_Dose elseif ((time < (elmt_Cycle_Int * elmt_N_Cycle)) and (elmt_Dose_Int2 < elmt_rem_time) and (elmt_rem_time < (elmt_Dose_Int2 + elmt_Dose_Length))) then elmt_Dose else 0.0);
        der(elmt_Size) = (((elmt_RateIn * elmt_Effect) - (elmt_Kover * elmt_Size)) * elmt_Size);
        der(elmt_Teq) = 0;
        der(elmt_Dose_Length) = 0;
        der(elmt_conversion_factor) = 0;
        elmt_Kover = (1.0 / elmt_T_Turnover);
        der(elmt_Dose_Int1) = 0;
        der(elmt_Dose_Int2) = 0;
        der(elmt_Cycle_Int) = 0;
        der(elmt_N_Cycle) = 0;
        der(elmt_Size_0) = 0;
        elmt_RateIn = (elmt_Size_0 * elmt_Kover);
        der(elmt_Dose) = 0;
        elmt_rem_time = (((time * elmt_conversion_factor) - (floor(((time * elmt_conversion_factor) / (elmt_Cycle_Int * elmt_conversion_factor))) * elmt_Cycle_Int * elmt_conversion_factor)) / elmt_conversion_factor);
        elmt_Effect = (1.0 - (elmt_Ce / (elmt_AE50 + elmt_Ce)));

end Parameters;
