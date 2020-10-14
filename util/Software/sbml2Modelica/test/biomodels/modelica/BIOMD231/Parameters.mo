within BIOMD231;
class Parameters

    Real elmt_Km2AMP(unit = "") "Km2AMP";
    Real elmt_K(unit = "") "K";
    Real elmt_Vmapp1(unit = "") "Vmapp1";
    Real elmt_Kmapp1(unit = "") "Kmapp1";
    Real elmt_Vmapp3(unit = "") "Vmapp3";
    Real elmt_Km2ATP(unit = "") "Km2ATP";
    Real elmt_k4(unit = "") "k4";
    Real elmt_Vm2(unit = "") "Vm2";
    Real elmt_Kmapp3(unit = "") "Kmapp3";


    initial equation
        elmt_Km2AMP = 110.0;
        elmt_K = 71000.0;
        elmt_Vmapp1 = 2.3;
        elmt_Kmapp1 = 700.0;
        elmt_Vmapp3 = 65.0;
        elmt_Km2ATP = 25.0;
        elmt_k4 = 5.0;
        elmt_Vm2 = 170.0;
        elmt_Kmapp3 = 260.0;


    equation
        der(elmt_Km2AMP) = 0;
        der(elmt_K) = 0;
        der(elmt_Vmapp1) = 0;
        der(elmt_Kmapp1) = 0;
        der(elmt_Vmapp3) = 0;
        der(elmt_Km2ATP) = 0;
        der(elmt_k4) = 0;
        der(elmt_Vm2) = 0;
        der(elmt_Kmapp3) = 0;

end Parameters;
