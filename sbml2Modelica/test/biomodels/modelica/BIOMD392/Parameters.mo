within BIOMD392;
class Parameters

    input Real elmt_EOP;
    input Real elmt_E;
    input Real elmt_Pi;

    Real elmt_PiTc(unit = "") "PiTc";
    Real elmt_Kp12(unit = "") "Kp12";
    Real elmt_ADT(unit = "") "ADT";
    Real elmt_q12(unit = "") "q12";
    Real elmt_q1(unit = "") "q1";
    Real elmt_PiT(unit = "") "PiT";
    Real elmt_V28(unit = "") "V28";
    Real elmt_ADTc(unit = "") "ADTc";
    Real elmt_UDTc(unit = "") "UDTc";
    Real elmt_NADPT(unit = "") "NADPT";
    Real elmt_Et(unit = "") "Et";
    Real elmt_W4(unit = "") "W4";


    initial equation
        elmt_PiTc = 0.0170454545454545;
        elmt_Kp12 = 224014.808032967;
        elmt_ADT = 0.0015;
        elmt_q12 = 2.22786254125735E12;
        elmt_q1 = 0.129053067280279;
        elmt_PiT = 0.0284090909090909;
        elmt_V28 = 7.386364E-5;
        elmt_ADTc = 0.001;
        elmt_UDTc = 0.001;
        elmt_NADPT = 5.0E-4;
        elmt_Et = 0.0028030303030303;


    equation
        der(elmt_PiTc) = 0;
        der(elmt_Kp12) = 0;
        der(elmt_ADT) = 0;
        der(elmt_q12) = 0;
        der(elmt_q1) = 0;
        der(elmt_PiT) = 0;
        der(elmt_V28) = 0;
        der(elmt_ADTc) = 0;
        der(elmt_UDTc) = 0;
        der(elmt_NADPT) = 0;
        der(elmt_Et) = 0;
        elmt_W4 = ((6.0 * elmt_EOP) - (70000.0 * elmt_Pi * elmt_E));

end Parameters;
