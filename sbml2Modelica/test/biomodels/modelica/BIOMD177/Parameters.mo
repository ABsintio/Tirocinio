within BIOMD177;
class Parameters

    Real elmt_t_m(unit = "") "toggle_transport";
    Real elmt_WGD_E(unit = "") "WGD enzyme conc change";


    initial equation
        elmt_t_m = 1.0;
        elmt_WGD_E = 0.65;


    equation
        der(elmt_t_m) = 0;
        der(elmt_WGD_E) = 0;

end Parameters;
