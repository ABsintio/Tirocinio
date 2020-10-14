within BIOMD087;
class Parameters

    input Boolean elmt_CellDeath;
    input Real assign_elmt_kalive;


    Real elmt_kalive(unit = "") "";


    initial equation
        elmt_kalive = 1.0;


    equation
        der(elmt_kalive) = 0.0;

        when elmt_CellDeath then
            reinit(elmt_kalive, assign_elmt_kalive);
        end when;
end Parameters;
