within BIOMD390;
class Parameters

    Real elmt_P_0(unit = "") "P_0";
    Real elmt_V6(unit = "") "V6";


    initial equation
        elmt_P_0 = 16.0;
        elmt_V6 = 5.8801285588795;


    equation
        der(elmt_P_0) = 0;
        der(elmt_V6) = 0;

end Parameters;
