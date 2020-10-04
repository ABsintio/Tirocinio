within BIOMD342;
class Class_elmt_default

    Real elmt_default(unit = "m3.0") "";

    initial equation
        elmt_default = 1.0;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;

    algorithm
end Class_elmt_default;
