within BIOMD212;
class Parameters

    Real elmt_V_Lys_RS(unit = "m-3.0..s-1.0") "";
    Real elmt_V_Thr_RS(unit = "m-3.0..s-1.0") "";
    Real elmt_V_AA_RS(unit = "m-3.0..s-1.0") "Vmax_AA_RS";
    Real elmt_V_Ile_RS(unit = "m-3.0..s-1.0") "";


    initial equation
        elmt_V_AA_RS = 0.43;


    equation
        elmt_V_Lys_RS = elmt_V_AA_RS;
        elmt_V_Thr_RS = elmt_V_AA_RS;
        der(elmt_V_AA_RS) = 0;
        elmt_V_Ile_RS = elmt_V_AA_RS;

end Parameters;
