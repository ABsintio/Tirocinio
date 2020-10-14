within BIOMD083;
class Parameters

    Real elmt_parameter_0000096(unit = "") "LD";
    Real elmt_parameter_0000097(unit = "") "vsp";


    initial equation


    equation
        elmt_parameter_0000096 = (ceil((sin((((3.141592653589793 * time) / 12.0) + 0.001)) / 2.0)));
        elmt_parameter_0000097 = (2.4 + ((3.0 - 2.4) * elmt_parameter_0000096));

end Parameters;
