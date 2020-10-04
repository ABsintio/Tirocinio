within BIOMD062;
class Parameters

    input Real elmt_Ts;
    input Real elmt_Enz;
    input Real elmt_Tt;
    input Real elmt_To;

    Real elmt_Tex(unit = "m-3.0.") "";
    Real elmt_e_val(unit = "m-3.0.") "";
    Real elmt_Tomax(unit = "m-3.0.") "";
    Real elmt_To_norm(unit = "") "To_norm";
    Real elmt_Ts_norm(unit = "") "Ts_norm";
    Real elmt_f_val(unit = "m-3.0.") "";
    Real elmt_Enz_norm(unit = "") "Enz_norm";
    Real elmt_Tt_norm(unit = "") "Tt_norm";


    initial equation
        elmt_Tex = 0.14;
        elmt_e_val = 0.9;
        elmt_Tomax = 100.0;
        elmt_f_val = 380.0;


    equation
        der(elmt_Tex) = 0;
        der(elmt_e_val) = 0;
        der(elmt_Tomax) = 0;
        elmt_To_norm = (elmt_To / 82.0);
        elmt_Ts_norm = (elmt_Ts / 82.0);
        der(elmt_f_val) = 0;
        elmt_Enz_norm = (elmt_Enz / 1.0);
        elmt_Tt_norm = (elmt_Tt / 82.0);

end Parameters;
