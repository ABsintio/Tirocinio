within BIOMD254;
class Parameters

    input Real elmt_T1;
    input Real elmt_T2;

    Real elmt_kp(unit = "") "";
    Real elmt_k1(unit = "") "";
    Real elmt_Tsum(unit = "") "Tsum";
    Real elmt_V_in(unit = "") "";
    Real elmt_km(unit = "") "";
    Real elmt_epsilon(unit = "") "";
    Real elmt_Tdiff(unit = "") "Tdiff";


    initial equation
        elmt_kp = 6.0;
        elmt_k1 = 0.02;
        elmt_V_in = 0.36;
        elmt_km = 13.0;
        elmt_epsilon = 0.01;


    equation
        der(elmt_kp) = 0;
        der(elmt_k1) = 0;
        elmt_Tsum = (elmt_T2 + elmt_T1);
        der(elmt_V_in) = 0;
        der(elmt_km) = 0;
        der(elmt_epsilon) = 0;
        elmt_Tdiff = (elmt_T2 - elmt_T1);

end Parameters;
