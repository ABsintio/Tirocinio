within BIOMD239;
class Parameters

    Real elmt_flow(unit = "") "";


    initial equation
        elmt_flow = 0.011;


    equation
        der(elmt_flow) = 0;

end Parameters;
