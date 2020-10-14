within BIOMD258;
class Parameters

    Real elmt_p(unit = "") "p";
    Real elmt_r24(unit = "") "r24";
    Real elmt_r31(unit = "") "r31";
    Real elmt_Ks3(unit = "") "Ks3";
    Real elmt_Ks4(unit = "") "Ks4";
    Real elmt_Chi14(unit = "") "Chi14";
    Real elmt_Ks1(unit = "") "Ks1";
    Real elmt_Vm1(unit = "") "Vm1";
    Real elmt_Ks2(unit = "") "Ks2";


    initial equation
        elmt_p = 1.0;
        elmt_r24 = 1.0;
        elmt_r31 = 1.0;
        elmt_Ks3 = 0.01;
        elmt_Ks4 = 0.01;
        elmt_Chi14 = 1.1;
        elmt_Ks1 = 0.01;
        elmt_Vm1 = 1.0;
        elmt_Ks2 = 0.01;


    equation
        der(elmt_p) = 0;
        der(elmt_r24) = 0;
        der(elmt_r31) = 0;
        der(elmt_Ks3) = 0;
        der(elmt_Ks4) = 0;
        der(elmt_Chi14) = 0;
        der(elmt_Ks1) = 0;
        der(elmt_Vm1) = 0;
        der(elmt_Ks2) = 0;

end Parameters;
