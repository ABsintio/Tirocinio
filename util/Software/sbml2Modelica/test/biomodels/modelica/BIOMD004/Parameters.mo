within BIOMD004;
class Parameters

    input Real elmt_M;
    input Real elmt_C;

    Real elmt_V3(unit = "") "V3";
    Real elmt_V1(unit = "") "V1";
    Real elmt_VM3(unit = "") "VM3";
    Real elmt_VM1(unit = "") "VM1";
    Real elmt_Kc(unit = "") "Kc";


    initial equation
        elmt_VM3 = 1.0;
        elmt_VM1 = 3.0;
        elmt_Kc = 0.5;


    equation
        elmt_V3 = (elmt_M * elmt_VM3);
        elmt_V1 = (elmt_C * elmt_VM1 * Functions.pow((elmt_C + elmt_Kc), (-1.0)));
        der(elmt_VM3) = 0;
        der(elmt_VM1) = 0;
        der(elmt_Kc) = 0;

end Parameters;
