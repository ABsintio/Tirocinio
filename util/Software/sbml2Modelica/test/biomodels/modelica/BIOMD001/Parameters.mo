within BIOMD001;
class Parameters

    input Boolean elmt_RemovalACh;
    input Real assign_elmt_kf_8;
    input Real assign_elmt_kf_7;
    input Real assign_elmt_kf_4;
    input Real assign_elmt_kf_3;
    input Real assign_elmt_kf_13;
    input Real assign_elmt_kf_12;
    input Real assign_elmt_kf_0;
    input Real assign_elmt_kf_1;


    Real elmt_kf_8(unit = "") "";
    Real elmt_kf_7(unit = "") "";
    Real elmt_kf_9(unit = "") "";
    Real elmt_kf_4(unit = "") "";
    Real elmt_kf_3(unit = "") "";
    Real elmt_kf_6(unit = "") "";
    Real elmt_kr_10(unit = "") "";
    Real elmt_kf_5(unit = "") "";
    Real elmt_kr_11(unit = "") "";
    Real elmt_kr_4(unit = "") "";
    Real elmt_kr_12(unit = "") "";
    Real elmt_kr_3(unit = "") "";
    Real elmt_kr_13(unit = "") "";
    Real elmt_kr_6(unit = "") "";
    Real elmt_kr_14(unit = "") "";
    Real elmt_kr_5(unit = "") "";
    Real elmt_kr_15(unit = "") "";
    Real elmt_kr_0(unit = "") "";
    Real elmt_kr_16(unit = "") "";
    Real elmt_kr_2(unit = "") "";
    Real elmt_kr_1(unit = "") "";
    Real elmt_kr_8(unit = "") "";
    Real elmt_kr_7(unit = "") "";
    Real elmt_kr_9(unit = "") "";
    Real elmt_t2(unit = "") "";
    Real elmt_kf_16(unit = "") "";
    Real elmt_kf_11(unit = "") "";
    Real elmt_kf_10(unit = "") "";
    Real elmt_kf_15(unit = "") "";
    Real elmt_kf_14(unit = "") "";
    Real elmt_kf_13(unit = "") "";
    Real elmt_kf_12(unit = "") "";
    Real elmt_kf_0(unit = "") "";
    Real elmt_kf_2(unit = "") "";
    Real elmt_kf_1(unit = "") "";


    initial equation
        elmt_kf_8 = 1500.0;
        elmt_kf_7 = 3000.0;
        elmt_kf_9 = 19.7;
        elmt_kf_4 = 1500.0;
        elmt_kf_3 = 3000.0;
        elmt_kf_6 = 130.0;
        elmt_kr_10 = 1.74;
        elmt_kf_5 = 0.54;
        elmt_kr_11 = 0.81;
        elmt_kr_4 = 17.28;
        elmt_kr_12 = 4.0;
        elmt_kr_3 = 8.64;
        elmt_kr_13 = 8.0;
        elmt_kr_6 = 2740.0;
        elmt_kr_14 = 0.0012;
        elmt_kr_5 = 10800.0;
        elmt_kr_15 = 0.0012;
        elmt_kr_0 = 8000.0;
        elmt_kr_16 = 0.0012;
        elmt_kr_2 = 700.0;
        elmt_kr_1 = 16000.0;
        elmt_kr_8 = 8.0;
        elmt_kr_7 = 4.0;
        elmt_kr_9 = 3.74;
        elmt_t2 = 20.0;
        elmt_kf_16 = 0.05;
        elmt_kf_11 = 20.0;
        elmt_kf_10 = 19.85;
        elmt_kf_15 = 0.05;
        elmt_kf_14 = 0.05;
        elmt_kf_13 = 1500.0;
        elmt_kf_12 = 3000.0;
        elmt_kf_0 = 3000.0;
        elmt_kf_2 = 30000.0;
        elmt_kf_1 = 1500.0;


    equation
        der(elmt_kf_8) = 0.0;
        der(elmt_kf_7) = 0.0;
        der(elmt_kf_9) = 0;
        der(elmt_kf_4) = 0.0;
        der(elmt_kf_3) = 0.0;
        der(elmt_kf_6) = 0;
        der(elmt_kr_10) = 0;
        der(elmt_kf_5) = 0;
        der(elmt_kr_11) = 0;
        der(elmt_kr_4) = 0;
        der(elmt_kr_12) = 0;
        der(elmt_kr_3) = 0;
        der(elmt_kr_13) = 0;
        der(elmt_kr_6) = 0;
        der(elmt_kr_14) = 0;
        der(elmt_kr_5) = 0;
        der(elmt_kr_15) = 0;
        der(elmt_kr_0) = 0;
        der(elmt_kr_16) = 0;
        der(elmt_kr_2) = 0;
        der(elmt_kr_1) = 0;
        der(elmt_kr_8) = 0;
        der(elmt_kr_7) = 0;
        der(elmt_kr_9) = 0;
        der(elmt_t2) = 0;
        der(elmt_kf_16) = 0;
        der(elmt_kf_11) = 0;
        der(elmt_kf_10) = 0;
        der(elmt_kf_15) = 0;
        der(elmt_kf_14) = 0;
        der(elmt_kf_13) = 0.0;
        der(elmt_kf_12) = 0.0;
        der(elmt_kf_0) = 0.0;
        der(elmt_kf_2) = 0;
        der(elmt_kf_1) = 0.0;

        when elmt_RemovalACh then
            reinit(elmt_kf_8, assign_elmt_kf_8);
            reinit(elmt_kf_7, assign_elmt_kf_7);
            reinit(elmt_kf_4, assign_elmt_kf_4);
            reinit(elmt_kf_3, assign_elmt_kf_3);
            reinit(elmt_kf_13, assign_elmt_kf_13);
            reinit(elmt_kf_12, assign_elmt_kf_12);
            reinit(elmt_kf_0, assign_elmt_kf_0);
            reinit(elmt_kf_1, assign_elmt_kf_1);
        end when;
end Parameters;
