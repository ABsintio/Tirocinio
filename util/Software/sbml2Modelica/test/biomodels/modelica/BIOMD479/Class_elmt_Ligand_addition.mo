within BIOMD479;
class Class_elmt_Ligand_addition "Ligand_addition"

    input Real elmt_Ligand_conc;
    input Real elmt_L;
    Boolean trigger;
    Real    value_elmt_L;

    equation
        trigger = (time >= 14.0);
        algorithm
            value_elmt_L := (pre(elmt_L) + elmt_Ligand_conc);
end Class_elmt_Ligand_addition;
