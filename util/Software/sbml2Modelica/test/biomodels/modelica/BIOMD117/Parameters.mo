within BIOMD117;
class Parameters

    input Boolean elmt_event_0000001;
    input Real assign_elmt_flag;


    Real elmt_p(unit = "") "";
    Real elmt_beta(unit = "") "";
    Real elmt_m(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_k(unit = "") "";
    Real elmt_tstim(unit = "") "stimulation time";
    Real elmt_VM3(unit = "") "";
    Real elmt_VM2(unit = "") "";
    Real elmt_KR(unit = "") "";
    Real elmt_K2(unit = "") "";
    Real elmt_KA(unit = "") "";
    Real elmt_v1(unit = "") "";
    Real elmt_kf(unit = "") "";
    Real elmt_v0(unit = "") "";
    Real elmt_flag(unit = "") "";


    initial equation
        elmt_p = 4.0;
        elmt_m = 2.0;
        elmt_n = 2.0;
        elmt_k = 10.0;
        elmt_tstim = 4.0;
        elmt_VM3 = 500.0;
        elmt_VM2 = 65.0;
        elmt_KR = 2.0;
        elmt_K2 = 1.0;
        elmt_KA = 0.9;
        elmt_v1 = 7.3;
        elmt_kf = 1.0;
        elmt_v0 = 1.0;
        elmt_flag = 0.0;


    equation
        der(elmt_p) = 0;
        elmt_beta = (elmt_flag * 0.96 * exp(((-0.2) * (time - elmt_tstim))));
        der(elmt_m) = 0;
        der(elmt_n) = 0;
        der(elmt_k) = 0;
        der(elmt_tstim) = 0;
        der(elmt_VM3) = 0;
        der(elmt_VM2) = 0;
        der(elmt_KR) = 0;
        der(elmt_K2) = 0;
        der(elmt_KA) = 0;
        der(elmt_v1) = 0;
        der(elmt_kf) = 0;
        der(elmt_v0) = 0;
        der(elmt_flag) = 0.0;

        when elmt_event_0000001 then
            reinit(elmt_flag, assign_elmt_flag);
        end when;
end Parameters;
