within BIOMD422;
class Parameters

    input Boolean elmt_AddGA4;    input Boolean elmt_RemoveGA4;
    input Real assign_elmt_omegaGA4;


    Real elmt_omegaGA4(unit = "") "omegaGA4";
    Real elmt_omegaGA12(unit = "") "omegaGA12";
    Real elmt_muGA20ox(unit = "") "muGA20ox";
    Real elmt_tGA4off(unit = "") "tGA4off";
    Real elmt_omegaGA12ga13(unit = "") "omegaGA12ga13";
    Real elmt_Pmem(unit = "") "Pmem";
    Real elmt_muDELLA(unit = "") "muDELLA";
    Real elmt_appliedGA4(unit = "") "appliedGA4";
    Real elmt_muGA3ox(unit = "") "muGA3ox";
    Real elmt_muGA(unit = "") "muGA";
    Real elmt_muGID(unit = "") "muGID";
    Real elmt_tGA4on(unit = "") "tGA4on";
    Real elmt_R(unit = "") "R";


    initial equation
        elmt_omegaGA4 = 0.0;
        elmt_muGA20ox = 0.047770755070625;
        elmt_tGA4off = 620.0;
        elmt_omegaGA12ga13 = 0.006602803853512;
        elmt_Pmem = 2.66664;
        elmt_muDELLA = 0.070794578438414;
        elmt_appliedGA4 = 2.0;
        elmt_muGA3ox = 0.102600014140148;
        elmt_muGA = 0.290804218727464;
        elmt_muGID = 0.045708818961487;
        elmt_tGA4on = 500.0;
        elmt_R = 1.0;


    equation
        der(elmt_omegaGA4) = 0.0;
        elmt_omegaGA12 = (elmt_R * elmt_omegaGA12ga13);
        der(elmt_muGA20ox) = 0;
        der(elmt_tGA4off) = 0;
        der(elmt_omegaGA12ga13) = 0;
        der(elmt_Pmem) = 0;
        der(elmt_muDELLA) = 0;
        der(elmt_appliedGA4) = 0;
        der(elmt_muGA3ox) = 0;
        der(elmt_muGA) = 0;
        der(elmt_muGID) = 0;
        der(elmt_tGA4on) = 0;
        der(elmt_R) = 0;

        when elmt_AddGA4 then
            reinit(elmt_omegaGA4, assign_elmt_omegaGA4);
        end when;
        when elmt_RemoveGA4 then
            reinit(elmt_omegaGA4, assign_elmt_omegaGA4);
        end when;
end Parameters;
