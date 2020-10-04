within BIOMD354;
class Parameters

    Real elmt_mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33(unit = "") "MitNaCaEx";
    Real elmt_mwf998b218_be11_4aa4_81ae_41141861fb42(unit = "") "kG";
    Real elmt_mw3a93c3a6_623a_44fe_84e9_a47823defd1f(unit = "") "kPMCA";
    Real elmt_L(unit = "") "ERleak";
    Real elmt_E(unit = "") "IP3Rinhibition";
    Real elmt_mw78dd80b8_e003_4c62_81d1_547d001767af(unit = "") "kIP3Rca";
    Real elmt_F(unit = "") "IP3Rrecovery";
    Real elmt_mwd21d3f76_d133_4053_8e44_02a538657e0a(unit = "") "PMCA";
    Real elmt_mw004dcb62_da5f_41c7_a7bd_033574894f48(unit = "") "STIM";
    Real elmt_D(unit = "") "IP3degradation";
    Real elmt_kSTIM(unit = "") "kSTIM";
    Real elmt_mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d(unit = "") "kUniP";
    Real elmt_A(unit = "") "IP3R";
    Real elmt_k2(unit = "") "kSERCA";
    Real elmt_kIP3R(unit = "") "kIP3R";
    Real elmt_B(unit = "") "SERCA";
    Real elmt_mwc714c217_c8fd_4024_912c_681cd6931f59(unit = "") "DirTransf";
    Real elmt_PMleak(unit = "") "PMleak";
    Real elmt_mw886be93a_22c7_4966_a1fa_113afd832ae3(unit = "") "UniPort";
    Real elmt_R(unit = "") "R";


    initial equation
        elmt_mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33 = 0.005;
        elmt_mwf998b218_be11_4aa4_81ae_41141861fb42 = 1.0;
        elmt_mw3a93c3a6_623a_44fe_84e9_a47823defd1f = 0.2;
        elmt_L = 0.01;
        elmt_E = 5.0;
        elmt_mw78dd80b8_e003_4c62_81d1_547d001767af = 0.13;
        elmt_F = 0.018;
        elmt_mwd21d3f76_d133_4053_8e44_02a538657e0a = 0.013;
        elmt_mw004dcb62_da5f_41c7_a7bd_033574894f48 = 0.02;
        elmt_D = 2.0;
        elmt_kSTIM = 1.0;
        elmt_mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d = 0.6;
        elmt_A = 3.0;
        elmt_k2 = 0.175;
        elmt_kIP3R = 0.175;
        elmt_B = 0.266;
        elmt_mwc714c217_c8fd_4024_912c_681cd6931f59 = 0.03;
        elmt_PMleak = 0.0346;
        elmt_mw886be93a_22c7_4966_a1fa_113afd832ae3 = 0.03;
        elmt_R = 1.0;


    equation
        der(elmt_mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33) = 0;
        der(elmt_mwf998b218_be11_4aa4_81ae_41141861fb42) = 0;
        der(elmt_mw3a93c3a6_623a_44fe_84e9_a47823defd1f) = 0;
        der(elmt_L) = 0;
        der(elmt_E) = 0;
        der(elmt_mw78dd80b8_e003_4c62_81d1_547d001767af) = 0;
        der(elmt_F) = 0;
        der(elmt_mwd21d3f76_d133_4053_8e44_02a538657e0a) = 0;
        der(elmt_mw004dcb62_da5f_41c7_a7bd_033574894f48) = 0;
        der(elmt_D) = 0;
        der(elmt_kSTIM) = 0;
        der(elmt_mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d) = 0;
        der(elmt_A) = 0;
        der(elmt_k2) = 0;
        der(elmt_kIP3R) = 0;
        der(elmt_B) = 0;
        der(elmt_mwc714c217_c8fd_4024_912c_681cd6931f59) = 0;
        der(elmt_PMleak) = 0;
        der(elmt_mw886be93a_22c7_4966_a1fa_113afd832ae3) = 0;
        der(elmt_R) = 0;

end Parameters;
