model BIOMD010 "The combination of ultrasensitivity and negative feedback bring sustained oscillations in the mitogen-activated protein kinase cascades"
    
    parameter Real V1 = 2.500;
    parameter Real Ki = 9.000;
    parameter Real n = 1.000;
    parameter Real k1 = 10.000;
    parameter Real V2 = 0.250;
    parameter Real KK2 = 8.000;
    parameter Real k3 = 0.025;
    parameter Real KK3 = 15.000;
    parameter Real k4 = 0.025;
    parameter Real KK4 = 15.000;
    parameter Real V5 = 0.750;
    parameter Real KK5 = 15.000;
    parameter Real V6 = 0.750;
    parameter Real KK6 = 15.000;
    parameter Real k7 = 0.025;
    parameter Real KK7 = 15.000;
    parameter Real k8 = 0.025;
    parameter Real KK8 = 15.000;
    parameter Real V9 = 0.500;
    parameter Real KK9 = 15.000;
    parameter Real V10 = 0.500;
    parameter Real KK10 = 15.000;

    Real MKKK "Mos";
    Real MKKK_P "Mos-P";
    Real MKK "Mek1";
    Real MKK_P "Mek1-P";
    Real MKK_PP "Mek1-PP";
    Real MAPK "Erk2";
    Real MAPK_P "Erk2-P";
    Real MAPK_PP "Erk2-PP";

initial equation
    MKKK = 90.000;
    MKKK_P = 10.000;
    MKK = 280.000;
    MKK_P = 10.000;
    MKK_PP = 10.000;
    MAPK = 280.000;
    MAPK_P = 10.000;
    MAPK_PP = 10.000;

equation
    der(MKKK) = (V2 * MKKK_P / (KK2 + MKKK_P)) - (V1 * MKKK / ((1 + (MAPK_PP / Ki)) * (k1 + MKKK)));
    der(MKKK_P) = (V1 * MKKK / ((1 + (MAPK_PP / Ki)) * (k1 + MKKK))) - (V2 * MKKK_P / (KK2 + MKKK_P));
    der(MKK) = (V6 * MKK_P / (KK6 + MKK_P)) - (k3 * MKKK_P * MKK / (KK3 + MKK));
    der(MKK_P) = (k3 * MKKK_P * MKK / (KK3 + MKK)) + (V5 * MKK_PP / (KK5 + MKK_PP)) - (k4 * MKKK_P * MKK_P / (KK4 + MKK_P)) - (V6 * MKK_P / (KK6 + MKK_P));
    der(MKK_PP) = (k4 * MKKK_P * MKK_P / (KK4 + MKK_P)) - (V5 * MKK_PP / (KK5 + MKK_PP));
    der(MAPK) = (V10 * MAPK_P / (KK10 + MAPK_P)) - (k7 * MKK_PP * MAPK / (KK7 + MAPK));
    der(MAPK_P) = (k7 * MKK_PP * MAPK / (KK7 + MAPK)) + (V9 * MAPK_PP / (KK9 + MAPK_PP)) - (k8 * MKK_PP * MAPK_P / (KK8 + MAPK_P)) - (V10 * MAPK_P / (KK10 + MAPK_P));
    der(MAPK_PP) = (k8 * MKK_PP * MAPK_P / (KK8 + MAPK_P)) - (V9 * MAPK_PP / (KK9 + MAPK_PP));

end BIOMD010;
