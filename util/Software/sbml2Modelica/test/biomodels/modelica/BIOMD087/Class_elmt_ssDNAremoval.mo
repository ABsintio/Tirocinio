within BIOMD087;
class Class_elmt_ssDNAremoval "ssDNAremoval"

    input Real elmt_Mec1RPAssDNA;
    input Real elmt_RPAssDNA;
    input Real elmt_ssDNA;
    Boolean trigger;
    Real    value_elmt_RPAssDNA;
    Real    value_elmt_ssDNA;
    Real    value_elmt_recovery;
    Real    value_elmt_Mec1RPAssDNA;

    equation
        trigger = ((elmt_Mec1RPAssDNA + elmt_RPAssDNA + elmt_ssDNA) <= 1.0);
        algorithm
            value_elmt_RPAssDNA := 0.0;
            value_elmt_ssDNA := 0.0;
            value_elmt_recovery := 1.0;
            value_elmt_Mec1RPAssDNA := 0.0;
end Class_elmt_ssDNAremoval;
