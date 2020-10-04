within BIOMD267;
class Parameters

    input Real elmt_lytic;

    Real elmt_tension(unit = "") "";


    initial equation


    equation
        elmt_tension = (1.0 - elmt_lytic);

end Parameters;
