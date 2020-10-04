within BIOMD355;
class Parameters

    Real elmt_mwf998b218_be11_4aa4_81ae_41141861fb42(unit = "") "kG";
    Real elmt_mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c(unit = "") "DirTransf";
    Real elmt_mwd3b36919_202a_4fed_a3c8_1a3a60594404(unit = "") "cr";
    Real elmt_mw3a93c3a6_623a_44fe_84e9_a47823defd1f(unit = "") "kPMCA";
    Real elmt_L(unit = "") "ERleak";
    Real elmt_E(unit = "") "IP3Rinhibition";
    Real elmt_mw78dd80b8_e003_4c62_81d1_547d001767af(unit = "") "kIP3Rca";
    Real elmt_mwa3072851_e3e4_4767_ac41_49fa7c0de7a7(unit = "") "Uniport";
    Real elmt_F(unit = "") "IP3Rrecovery";
    Real elmt_mwd21d3f76_d133_4053_8e44_02a538657e0a(unit = "") "PMCA0";
    Real elmt_mwe3841c25_6042_49c2_9feb_90cbf6751167(unit = "") "kUnip";
    Real elmt_mw004dcb62_da5f_41c7_a7bd_033574894f48(unit = "") "STIM0";
    Real elmt_D(unit = "") "IP3degradation";
    Real elmt_A(unit = "") "IP3R";
    Real elmt_k2(unit = "") "kSERCA";
    Real elmt_B(unit = "") "SERCA0";
    Real elmt_mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778(unit = "") "kSTIM";
    Real elmt_mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f(unit = "") "PMleak";
    Real elmt_mw92b257b7_00af_4fd6_a11b_8e4655a4ba65(unit = "") "kIP3R";
    Real elmt_mwfbff577a_4e9c_40fe_8777_eb0ceade28c9(unit = "") "ProtDeg";
    Real elmt_mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43(unit = "") "MitNaCaEx";
    Real elmt_R(unit = "") "R";


    initial equation
        elmt_mwf998b218_be11_4aa4_81ae_41141861fb42 = 1.0;
        elmt_mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c = 0.03;
        elmt_mwd3b36919_202a_4fed_a3c8_1a3a60594404 = 8.0;
        elmt_mw3a93c3a6_623a_44fe_84e9_a47823defd1f = 0.2;
        elmt_L = 0.01;
        elmt_E = 5.0;
        elmt_mw78dd80b8_e003_4c62_81d1_547d001767af = 0.13;
        elmt_mwa3072851_e3e4_4767_ac41_49fa7c0de7a7 = 0.03;
        elmt_F = 0.018;
        elmt_mwd21d3f76_d133_4053_8e44_02a538657e0a = 0.013;
        elmt_mwe3841c25_6042_49c2_9feb_90cbf6751167 = 0.6;
        elmt_mw004dcb62_da5f_41c7_a7bd_033574894f48 = 0.02;
        elmt_D = 2.0;
        elmt_A = 3.0;
        elmt_k2 = 0.175;
        elmt_B = 0.266;
        elmt_mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778 = 1.0;
        elmt_mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f = 0.0346;
        elmt_mw92b257b7_00af_4fd6_a11b_8e4655a4ba65 = 0.175;
        elmt_mwfbff577a_4e9c_40fe_8777_eb0ceade28c9 = 1.0E-6;
        elmt_mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43 = 0.005;
        elmt_R = 1.0;


    equation
        der(elmt_mwf998b218_be11_4aa4_81ae_41141861fb42) = 0;
        der(elmt_mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c) = 0;
        der(elmt_mwd3b36919_202a_4fed_a3c8_1a3a60594404) = 0;
        der(elmt_mw3a93c3a6_623a_44fe_84e9_a47823defd1f) = 0;
        der(elmt_L) = 0;
        der(elmt_E) = 0;
        der(elmt_mw78dd80b8_e003_4c62_81d1_547d001767af) = 0;
        der(elmt_mwa3072851_e3e4_4767_ac41_49fa7c0de7a7) = 0;
        der(elmt_F) = 0;
        der(elmt_mwd21d3f76_d133_4053_8e44_02a538657e0a) = 0;
        der(elmt_mwe3841c25_6042_49c2_9feb_90cbf6751167) = 0;
        der(elmt_mw004dcb62_da5f_41c7_a7bd_033574894f48) = 0;
        der(elmt_D) = 0;
        der(elmt_A) = 0;
        der(elmt_k2) = 0;
        der(elmt_B) = 0;
        der(elmt_mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778) = 0;
        der(elmt_mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f) = 0;
        der(elmt_mw92b257b7_00af_4fd6_a11b_8e4655a4ba65) = 0;
        der(elmt_mwfbff577a_4e9c_40fe_8777_eb0ceade28c9) = 0;
        der(elmt_mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43) = 0;
        der(elmt_R) = 0;

end Parameters;
