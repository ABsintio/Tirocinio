within BIOMD479;
class Parameters

    Real elmt_Ligand_conc(unit = "m-3.0.") "Ligand_conc";
    Real elmt_ka(unit = "s-1.0") "ka";


    initial equation
        elmt_Ligand_conc = 0.1;
        elmt_ka = 1.5;


    equation
        der(elmt_Ligand_conc) = 0;
        der(elmt_ka) = 0;

end Parameters;
