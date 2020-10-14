within BIOMD063;
class Parameters

    input Real elmt_cytoplasm;
    input Real elmt_G6P;
    input Real elmt_Vhk;

    Real elmt_VratioVmax(unit = "") "VratioVmax_ATP";
    Real elmt_parameter_7(unit = "m-3.0..s-1.0") "Hexokinase_Vm2";
    Real elmt_parameter_6(unit = "m-3.0.") "Trehalose and Glycogen formation_K3Gly";
    Real elmt_parameter_5(unit = "") "Trehalose and Glycogen formation_n3";
    Real elmt_parameter_4(unit = "m-3.0..s-1.0") "Trehalose and Glycogen formation_Vm3";
    Real elmt_VappGly(unit = "m-3.0..s-1.0") "VappGly";


    initial equation
        elmt_parameter_7 = 68.5;
        elmt_parameter_6 = 2.0;
        elmt_parameter_5 = 8.25;
        elmt_parameter_4 = 14.31;


    equation
        elmt_VratioVmax = (elmt_Vhk / (elmt_cytoplasm * elmt_parameter_7));
        der(elmt_parameter_7) = 0;
        der(elmt_parameter_6) = 0;
        der(elmt_parameter_5) = 0;
        der(elmt_parameter_4) = 0;
        elmt_VappGly = ((elmt_parameter_4 * Functions.pow(elmt_G6P, elmt_parameter_5)) / (Functions.pow(elmt_parameter_6, elmt_parameter_5) + Functions.pow(elmt_G6P, elmt_parameter_5)));

end Parameters;
