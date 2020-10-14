within BIOMD087;
class Class_elmt_G2CdkActivation "G2CdkActivation"

    input Real elmt_G2cyclin;
    Boolean trigger;
    Real    value_elmt_G2CdkA;
    Real    value_elmt_G2CdkI;

    equation
        trigger = (elmt_G2cyclin > 100.0);
        algorithm
            value_elmt_G2CdkA := 1.0;
            value_elmt_G2CdkI := 0.0;
end Class_elmt_G2CdkActivation;
