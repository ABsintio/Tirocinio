within BIOMD190;
class Parameters

    input Real elmt_S;
    input Real elmt_D;

    Real elmt_Keq(unit = "m3.0.mol-1.0") "Keq";
    Real elmt_Vmaxssat(unit = "m-3.0..s-1.0") "Vmaxssat";
    Real elmt_Kdantz(unit = "s-1.0") "KdANTZ";
    Real elmt_Ksantz(unit = "m-3.0..s-2.0") "KsANTZ";
    Real elmt_Ksodc(unit = "m-3.0..s-2.0") "KsODC";
    Real elmt_Kaccoa(unit = "s-1.0") "Kaccoa";
    Real elmt_C(unit = "") "C";
    Real elmt_Kcoa(unit = "s-1.0") "Kcoa";
    Real elmt_Vmaxsamdc(unit = "m-3.0..s-1.0") "Vmaxsamdc";
    Real elmt_Kdodc(unit = "m3.0.mol-1.0") "KdODC";
    Real elmt_Antz(unit = "m-3.0..s-1.0") "Antz";
    Real elmt_Kdsamdc(unit = "s-1.0") "KdSAMDC";
    Real elmt_Kdssat(unit = "s-1.0") "KdSSAT";
    Real elmt_Ksssat(unit = "m-3.0..s-2.0") "KsSSAT";
    Real elmt_Kssamdc(unit = "m-3.0..s-2.0") "KsSAMDC";
    Real elmt_Vmaxodc(unit = "m-3.0..s-1.0") "Vmaxodc";
    Real elmt_R(unit = "s-1.0") "R";


    initial equation
        elmt_Keq = 1.0;
        elmt_Vmaxssat = 0.677298510125025;
        elmt_Kdantz = 0.02;
        elmt_Ksantz = 0.02;
        elmt_Ksodc = 5.0;
        elmt_C = 4.44;
        elmt_Vmaxsamdc = 0.367465856805639;
        elmt_Kdodc = 0.05;
        elmt_Antz = 0.574589492832405;
        elmt_Kdsamdc = 0.02;
        elmt_Kdssat = 0.2;
        elmt_Ksssat = 0.001;
        elmt_Kssamdc = 1.0;
        elmt_Vmaxodc = 1.27905671844446;
        elmt_R = 0.004;


    equation
        der(elmt_Keq) = 0;
        der(elmt_Vmaxssat) = ((elmt_Ksssat * (1.0 - (1.0 / (1.0 + (elmt_Keq * (elmt_D + elmt_S)))))) - (elmt_Kdssat * (1.0 / (1.0 + (elmt_Keq * (elmt_D + elmt_S)))) * elmt_Vmaxssat));
        der(elmt_Kdantz) = 0;
        der(elmt_Ksantz) = 0;
        der(elmt_Ksodc) = 0;
        elmt_Kaccoa = elmt_R;
        der(elmt_C) = 0;
        elmt_Kcoa = (3.0 * elmt_R);
        der(elmt_Vmaxsamdc) = ((elmt_Kssamdc * (1.0 / (1.0 + (elmt_Keq * (elmt_D + elmt_S))))) - (elmt_Kdsamdc * elmt_Vmaxsamdc));
        der(elmt_Kdodc) = 0;
        der(elmt_Antz) = ((elmt_Ksantz * (1.0 - (1.0 / (1.0 + (elmt_Keq * 0.01 * (elmt_D + elmt_S)))))) - (elmt_Kdantz * elmt_Antz));
        der(elmt_Kdsamdc) = 0;
        der(elmt_Kdssat) = 0;
        der(elmt_Ksssat) = 0;
        der(elmt_Kssamdc) = 0;
        der(elmt_Vmaxodc) = ((elmt_Ksodc / (1.0 + (elmt_Keq * (elmt_D + elmt_S)))) - (elmt_Kdodc * elmt_Antz * elmt_Vmaxodc));
        der(elmt_R) = 0;

end Parameters;
