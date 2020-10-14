within BIOMD238;
class Class_elmt_COMpartment

    Real elmt_COMpartment(unit = "") "";

    initial equation
        elmt_COMpartment = 1.0;


    equation
        assert(elmt_COMpartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_COMpartment) = 0;

    algorithm
end Class_elmt_COMpartment;
