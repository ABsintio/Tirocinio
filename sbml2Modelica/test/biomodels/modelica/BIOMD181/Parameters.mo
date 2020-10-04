within BIOMD181;
class Parameters

    Real elmt_kd1(unit = "s-1.0") "";
    Real elmt_n(unit = "") "";
    Real elmt_kd6(unit = "s-1.0") "";
    Real elmt_j3(unit = "m-3.0..s-1.0") "";
    Real elmt_kd5(unit = "s-1.0") "";
    Real elmt_kd4(unit = "s-1.0") "";
    Real elmt_j1(unit = "m-3.0..s-1.0") "";
    Real elmt_kd3(unit = "s-1.0") "";
    Real elmt_j2(unit = "m-3.0..s-1.0") "";
    Real elmt_kd2(unit = "s-1.0") "";
    Real elmt_k120(unit = "m-3.0.") "";
    Real elmt_vd3(unit = "m-3.0..s-1.0") "";
    Real elmt_k100(unit = "m-3.0.") "";
    Real elmt_vd2(unit = "m-3.0..s-1.0") "";
    Real elmt_vd1(unit = "m-3.0..s-1.0") "";
    Real elmt_km2(unit = "m-3.0.") "";
    Real elmt_km1(unit = "m-3.0.") "";
    Real elmt_v12(unit = "m-3.0..s-1.0") "";
    Real elmt_v11(unit = "m-3.0..s-1.0") "";
    Real elmt_v10(unit = "m-3.0..s-1.0") "";
    Real elmt_km3(unit = "m-3.0.") "";
    Real elmt_kc3(unit = "s-1.0") "";
    Real elmt_kc2(unit = "s-1.0") "";
    Real elmt_kc1(unit = "s-1.0") "";
    Real elmt_k110(unit = "m-3.0.") "";


    initial equation
        elmt_kd1 = 0.8;
        elmt_n = 2.0;
        elmt_kd6 = 0.16;
        elmt_j3 = 0.2;
        elmt_kd5 = 0.16;
        elmt_kd4 = 0.16;
        elmt_j1 = 0.9;
        elmt_kd3 = 0.8;
        elmt_j2 = 0.5;
        elmt_kd2 = 0.9;
        elmt_k120 = 10.0;
        elmt_vd3 = 3.0;
        elmt_k100 = 10.0;
        elmt_vd2 = 1.052;
        elmt_vd1 = 6.0;
        elmt_km2 = 5.0;
        elmt_km1 = 5.0;
        elmt_v12 = 15.0;
        elmt_v11 = 15.0;
        elmt_v10 = 15.0;
        elmt_km3 = 5.0;
        elmt_kc3 = 0.6;
        elmt_kc2 = 0.22;
        elmt_kc1 = 0.2;
        elmt_k110 = 10.0;


    equation
        der(elmt_kd1) = 0;
        der(elmt_n) = 0;
        der(elmt_kd6) = 0;
        der(elmt_j3) = 0;
        der(elmt_kd5) = 0;
        der(elmt_kd4) = 0;
        der(elmt_j1) = 0;
        der(elmt_kd3) = 0;
        der(elmt_j2) = 0;
        der(elmt_kd2) = 0;
        der(elmt_k120) = 0;
        der(elmt_vd3) = 0;
        der(elmt_k100) = 0;
        der(elmt_vd2) = 0;
        der(elmt_vd1) = 0;
        der(elmt_km2) = 0;
        der(elmt_km1) = 0;
        der(elmt_v12) = 0;
        der(elmt_v11) = 0;
        der(elmt_v10) = 0;
        der(elmt_km3) = 0;
        der(elmt_kc3) = 0;
        der(elmt_kc2) = 0;
        der(elmt_kc1) = 0;
        der(elmt_k110) = 0;

end Parameters;
