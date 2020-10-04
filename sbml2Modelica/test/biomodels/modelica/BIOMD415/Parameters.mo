within BIOMD415;
class Parameters

    Real elmt_parameter_9(unit = "") "Vm(HPL-RZE)";
    Real elmt_parameter_8(unit = "") "Vm(HPL-SZE)";
    Real elmt_parameter_7(unit = "") "Km(HPL)";
    Real elmt_parameter_6(unit = "") "Vm(L3)";
    Real elmt_parameter_5(unit = "") "Km(L3)";
    Real elmt_parameter_4(unit = "") "Vm(L2)";
    Real elmt_parameter_3(unit = "") "Km(L2)";
    Real elmt_parameter_2(unit = "") "Vm(L1)";
    Real elmt_parameter_1(unit = "") "Km(L1)";


    initial equation
        elmt_parameter_8 = 0.285;
        elmt_parameter_7 = 0.05;
        elmt_parameter_6 = 0.00255;
        elmt_parameter_5 = 0.49;
        elmt_parameter_4 = 0.039;
        elmt_parameter_3 = 0.49;
        elmt_parameter_2 = 0.00825;
        elmt_parameter_1 = 0.49;


    equation
        elmt_parameter_9 = (0.135 * elmt_parameter_8);
        der(elmt_parameter_8) = 0;
        der(elmt_parameter_7) = 0;
        der(elmt_parameter_6) = 0;
        der(elmt_parameter_5) = 0;
        der(elmt_parameter_4) = 0;
        der(elmt_parameter_3) = 0;
        der(elmt_parameter_2) = 0;
        der(elmt_parameter_1) = 0;

end Parameters;
