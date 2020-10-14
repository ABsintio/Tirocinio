within BIOMD358;
class Parameters

    input Real elmt_IIa;
    input Real elmt_IIa_alpha2M;

    Real elmt_kcat_II(unit = "") "kcat_II";
    Real elmt_km_2(unit = "") "km_2";
    Real elmt_ki_Xa(unit = "") "ki_Xa";
    Real elmt_k_PL(unit = "") "k_PL";
    Real elmt_kcat_2(unit = "") "kcat_2";
    Real elmt_ki_IIaAlpha2M(unit = "") "ki_IIaAlpha2M";
    Real elmt_km_X(unit = "") "km_X";
    Real elmt_k_PT(unit = "") "k_PT";
    Real elmt_km_V(unit = "") "km_V";
    Real elmt_km_II(unit = "") "km_II";
    Real elmt_ki_IIaATIII(unit = "") "ki_IIaATIII";
    Real elmt_kcat_V(unit = "") "kcat_V";
    Real elmt_AmAct(unit = "") "AmAct";
    Real elmt_kcat_X(unit = "") "kcat_X";


    initial equation
        elmt_kcat_II = 43.87;
        elmt_km_2 = 0.06148;
        elmt_ki_Xa = 4.531;
        elmt_k_PL = 801.4;
        elmt_kcat_2 = 12.4;
        elmt_ki_IIaAlpha2M = 0.1762;
        elmt_km_X = 23.65;
        elmt_k_PT = 122.9;
        elmt_km_V = 149.7;
        elmt_km_II = 62.25;
        elmt_ki_IIaATIII = 0.7859;
        elmt_kcat_V = 7.844;
        elmt_kcat_X = 239.1;


    equation
        der(elmt_kcat_II) = 0;
        der(elmt_km_2) = 0;
        der(elmt_ki_Xa) = 0;
        der(elmt_k_PL) = 0;
        der(elmt_kcat_2) = 0;
        der(elmt_ki_IIaAlpha2M) = 0;
        der(elmt_km_X) = 0;
        der(elmt_k_PT) = 0;
        der(elmt_km_V) = 0;
        der(elmt_km_II) = 0;
        der(elmt_ki_IIaATIII) = 0;
        der(elmt_kcat_V) = 0;
        elmt_AmAct = (elmt_IIa + (0.556 * elmt_IIa_alpha2M));
        der(elmt_kcat_X) = 0;

end Parameters;
