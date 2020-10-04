within BIOMD234;
class Class_elmt_COMpartment

    input Real elmt_Keq;
    input Real elmt_Exposure;

    Real elmt_COMpartment(unit = "") "";
    Real elmt_Ce_conc(unit = "");
    Real elmt_Ce_amount(unit = "");
    Real elmt_Ce(unit = "") "Ce";

    initial equation
        elmt_COMpartment = 1.0;
        elmt_Ce_conc = 0.0;


    equation
        assert(elmt_COMpartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_COMpartment) = 0;
        elmt_Ce = elmt_Ce_conc;
        der(elmt_Ce_amount / elmt_COMpartment) = ((elmt_Exposure / 1.0) - (elmt_Ce * elmt_Keq));

    algorithm
        elmt_Ce_conc := elmt_Ce_amount / elmt_COMpartment;
end Class_elmt_COMpartment;
