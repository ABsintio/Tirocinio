
model BIOMD355 "Abell2011_CalciumSignaling_WithAdaptation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real A = 3.0;
    parameter Real B = 0.266;
    parameter Real D = 2.0;
    parameter Real E = 5.0;
    parameter Real F = 0.018;
    parameter Real k2 = 0.175;
    parameter Real L = 0.01;
    parameter Real R = 1.0;
    parameter Real mw92b257b7_00af_4fd6_a11b_8e4655a4ba65 = 0.175;
    parameter Real mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f = 0.0346;
    parameter Real mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778 = 1.0;
    parameter Real mw004dcb62_da5f_41c7_a7bd_033574894f48 = 0.02;
    parameter Real mw78dd80b8_e003_4c62_81d1_547d001767af = 0.13;
    parameter Real mw3a93c3a6_623a_44fe_84e9_a47823defd1f = 0.2;
    parameter Real mwd21d3f76_d133_4053_8e44_02a538657e0a = 0.013;
    parameter Real mwf998b218_be11_4aa4_81ae_41141861fb42 = 1.0;
    parameter Real mwfbff577a_4e9c_40fe_8777_eb0ceade28c9 = 1e-06;
    parameter Real mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c = 0.03;
    parameter Real mwe3841c25_6042_49c2_9feb_90cbf6751167 = 0.6;
    parameter Real mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43 = 0.005;
    parameter Real mwa3072851_e3e4_4767_ac41_49fa7c0de7a7 = 0.03;
    parameter Real mwd3b36919_202a_4fed_a3c8_1a3a60594404 = 8.0;
    parameter Real cytosol = 1.0;
    parameter Real outside = 1.0;
    parameter Real mitochondria = 1.0;
    parameter Real ER_store = 1.0;



    Real CaI;
    Real IP3;
    Real g;
    Real mwaf195932_a72c_4552_8cf2_b349b15d39c4;
    Real mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3;
    Real mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb;
    Real mwd6b792d8_c983_42c1_b3bc_2494d6a3363e;
    Real mw013a7c64_a9ec_483c_b3b8_ed658337ee95;
    Real CaS;

initial equation
    CaI = 0.05;
    IP3 = 0.0;
    g = 0.002;
    mwaf195932_a72c_4552_8cf2_b349b15d39c4 = 0.013;
    mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3 = 0.266;
    mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb = 0.02;
    mwd6b792d8_c983_42c1_b3bc_2494d6a3363e = 1000.0;
    mw013a7c64_a9ec_483c_b3b8_ed658337ee95 = 0.0;
    CaS = 2.0;

equation

    der(CaI) = ((1 - mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c) * (L + (1 - g) * A * pow(IP3, 2) / (pow(IP3, 2) + pow(mw92b257b7_00af_4fd6_a11b_8e4655a4ba65, 2)) * pow(CaI, 2) / (pow(CaI, 2) + pow(mw78dd80b8_e003_4c62_81d1_547d001767af, 2))) * CaS) + (mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb * (mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f + pow(mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778, 8) / (pow(CaS, 8) + pow(mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778, 8)))) + (mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43 * mw013a7c64_a9ec_483c_b3b8_ed658337ee95 / (mw013a7c64_a9ec_483c_b3b8_ed658337ee95 + 0.01)) - (mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3 * pow(CaI, 2) / (pow(CaI, 2) + pow(k2, 2))) - (mwaf195932_a72c_4552_8cf2_b349b15d39c4 * pow(CaI, 2) / (pow(CaI, 2) + pow(mw3a93c3a6_623a_44fe_84e9_a47823defd1f, 2))) - (mwa3072851_e3e4_4767_ac41_49fa7c0de7a7 * pow(CaI, 4) / (pow(CaI, 4) + pow(mwe3841c25_6042_49c2_9feb_90cbf6751167, 4)));
    der(IP3) = (R * CaI) - (D * IP3);
    der(g) = (E * pow(CaI, 4) / (pow(CaI, 4) + pow(mwf998b218_be11_4aa4_81ae_41141861fb42, 4)) * (1 - g)) - (F * g);
    der(mwaf195932_a72c_4552_8cf2_b349b15d39c4) = (mwd3b36919_202a_4fed_a3c8_1a3a60594404 * mwfbff577a_4e9c_40fe_8777_eb0ceade28c9 * mwd21d3f76_d133_4053_8e44_02a538657e0a * pow(CaI, 4) / ((mwd3b36919_202a_4fed_a3c8_1a3a60594404 - 1) * pow(0.05, 4) + pow(CaI, 4))) - (mwaf195932_a72c_4552_8cf2_b349b15d39c4 * mwfbff577a_4e9c_40fe_8777_eb0ceade28c9);
    der(mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3) = (1 / mwd3b36919_202a_4fed_a3c8_1a3a60594404 * B * mwfbff577a_4e9c_40fe_8777_eb0ceade28c9 * ((mwd3b36919_202a_4fed_a3c8_1a3a60594404 - 1) * pow(2, 4) + pow(CaS, 4)) / pow(CaS, 4)) - (mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3 * mwfbff577a_4e9c_40fe_8777_eb0ceade28c9);
    der(mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb) = (1 / (mwd3b36919_202a_4fed_a3c8_1a3a60594404 * mwd3b36919_202a_4fed_a3c8_1a3a60594404) * mw004dcb62_da5f_41c7_a7bd_033574894f48 * mwfbff577a_4e9c_40fe_8777_eb0ceade28c9 * ((mwd3b36919_202a_4fed_a3c8_1a3a60594404 - 1) * pow(2, 2) + pow(CaS, 2)) / pow(CaS, 2) * ((mwd3b36919_202a_4fed_a3c8_1a3a60594404 - 1) * pow(0.05, 2) + pow(CaI, 2)) / pow(CaI, 2)) - (mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb * mwfbff577a_4e9c_40fe_8777_eb0ceade28c9);
    der(mwd6b792d8_c983_42c1_b3bc_2494d6a3363e) = 0.0;
    der(mw013a7c64_a9ec_483c_b3b8_ed658337ee95) = (mwa3072851_e3e4_4767_ac41_49fa7c0de7a7 * pow(CaI, 4) / (pow(CaI, 4) + pow(mwe3841c25_6042_49c2_9feb_90cbf6751167, 4))) + (mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c * (L + (1 - g) * A * pow(IP3, 2) / (pow(IP3, 2) + pow(mw92b257b7_00af_4fd6_a11b_8e4655a4ba65, 2)) * pow(CaI, 2) / (pow(CaI, 2) + pow(mw78dd80b8_e003_4c62_81d1_547d001767af, 2))) * CaS) - (mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43 * mw013a7c64_a9ec_483c_b3b8_ed658337ee95 / (mw013a7c64_a9ec_483c_b3b8_ed658337ee95 + 0.01));
    der(CaS) = (mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3 * pow(CaI, 2) / (pow(CaI, 2) + pow(k2, 2))) - ((1 - mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c) * (L + (1 - g) * A * pow(IP3, 2) / (pow(IP3, 2) + pow(mw92b257b7_00af_4fd6_a11b_8e4655a4ba65, 2)) * pow(CaI, 2) / (pow(CaI, 2) + pow(mw78dd80b8_e003_4c62_81d1_547d001767af, 2))) * CaS) - (mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c * (L + (1 - g) * A * pow(IP3, 2) / (pow(IP3, 2) + pow(mw92b257b7_00af_4fd6_a11b_8e4655a4ba65, 2)) * pow(CaI, 2) / (pow(CaI, 2) + pow(mw78dd80b8_e003_4c62_81d1_547d001767af, 2))) * CaS);




end BIOMD355;
