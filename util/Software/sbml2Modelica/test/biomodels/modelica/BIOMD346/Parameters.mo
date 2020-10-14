within BIOMD346;
class Parameters

    Real elmt_z(unit = "") "z";
    Real elmt_c(unit = "") "c";
    Real elmt_a(unit = "") "a";
    Real elmt_b(unit = "") "b";


    initial equation
        elmt_z = (-0.4);
        elmt_c = 3.0;
        elmt_a = 0.7;
        elmt_b = 0.8;


    equation
        der(elmt_z) = 0;
        der(elmt_c) = 0;
        der(elmt_a) = 0;
        der(elmt_b) = 0;

end Parameters;
