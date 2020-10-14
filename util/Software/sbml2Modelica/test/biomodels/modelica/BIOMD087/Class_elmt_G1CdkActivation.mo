within BIOMD087;
class Class_elmt_G1CdkActivation "G1CdkActivation"

    input Real elmt_G1cyclin;
    Boolean trigger;
    Real    value_elmt_G1CdkI;
    Real    value_elmt_G1CdkA;

    equation
        trigger = (elmt_G1cyclin > 100.0);
        algorithm
            value_elmt_G1CdkI := 0.0;
            value_elmt_G1CdkA := 1.0;
end Class_elmt_G1CdkActivation;
