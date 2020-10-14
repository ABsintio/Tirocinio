within BIOMD536;
class Parameters

    input Real elmt_mw114aa90f_5f5b_4fe8_9406_361c8489b6a1;

    Real elmt_kRLOn(unit = "") "kRLOn";
    Real elmt_mwdc9e2eb7_c8f4_4026_a8d0_eff8ce1f1aea(unit = "") "infusionTime";
    Real elmt_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30(unit = "") "kdegAb";
    Real elmt_mw5832a2dc_ee18_44df_aa59_ccb21cb74df2(unit = "") "kRShedding";
    Real elmt_kIL6Decay(unit = "") "kdegIL6";
    Real elmt_mw1366c3b5_e79b_44a7_93cc_ee09d383eabf(unit = "") "QSerumPeriph";
    Real elmt_kgp130On(unit = "") "kgp130On";
    Real elmt_mwe8fc1900_f07d_468b_b5c8_15400a583c3d(unit = "") "KmSTATPhos";
    Real elmt_kRLOff(unit = "") "kRLOff";
    Real elmt_mw08950572_81b0_4570_b2e4_b9c3462c1425(unit = "") "KmProtSynth";
    Real elmt_parameter_3(unit = "") "Dose Q4W";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI9\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-31T15:54:34Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_mw06241335_b5f2_47ed_bdcc_ef77b68a2b98(unit = "") "kdegIL6Gut";
    Real elmt_parameter_2(unit = "") "Dose Q2W";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-31T15:54:34Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_1(unit = "") "Dose Q1W";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-31T15:54:33Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825(unit = "") "QSerumLiver";
    Real elmt_mwd36b0261_2480_4cab_9222_2cf8fb0e65dc(unit = "") "VmSTATDephos";
    Real elmt_mw6a5e10a9_d442_4dde_8ec3_6a26c9807374(unit = "") "QSerumGut";
    Real elmt_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb(unit = "") "kdistSerumToTissue";
    Real elmt_mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce(unit = "") "kAbSerumToPeriph";
    Real elmt_mw1667a8e0_9d20_4e59_ba51_596148aba787(unit = "") "VmRDephos";
    Real elmt_kRsynth(unit = "") "kRsynth";
    Real elmt_mw2c605ff5_50f5_45f2_a70c_53fcd866d14c(unit = "") "VSerum";
    Real elmt_mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a(unit = "") "kAbSerumToGut";
    Real elmt_mwc691d0d1_8c1b_4ce4_85c6_1315c42e97b1(unit = "") "VLiver";
    Real elmt_mw88a75379_f9a1_4acc_baeb_94c32bb736a5(unit = "") "kdegsR";
    Real elmt_mw9442cd0e_4d7c_4ba6_a695_f84919bdf569(unit = "") "kcatSTATPhos";
    Real elmt_mw640ca705_e089_4c64_a5f4_9562317e8c76(unit = "") "kAbSerumToLiver";
    Real elmt_mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb(unit = "") "kAbLiverToSerum";
    Real elmt_mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab(unit = "") "ksynthsR";
    Real elmt_mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8(unit = "") "KmRDephos";
    Real elmt_ModelValue_4(unit = "") "Initial for Dose Q2W";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"parameter_2\"/>
        </annotation>"));
    Real elmt_ModelValue_5(unit = "") "Initial for Dose Q4W";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"parameter_3\"/>
        </annotation>"));
    Real elmt_mwce10678d_8197_408c_ad47_1daec8104cd8(unit = "") "kdistTissueToSerum";
    Real elmt_ModelValue_3(unit = "") "Initial for Dose Q1W";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"parameter_1\"/>
        </annotation>"));
    Real elmt_mwbcb5a310_9b67_405e_89ec_43d25e8cc93d(unit = "") "kdegsgp130";
    Real elmt_mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69(unit = "") "ksynthIL6Gut";
    Real elmt_mwa071fdbe_d498_4620_a7a4_940aa31c8161(unit = "") "kAbGutToSerum";
    Real elmt_kgp130Off(unit = "") "kgp130Off";
    Real elmt_kRdeg(unit = "") "kRintBasal";
    Real elmt_mwfd291862_195f_4979_94b5_b4e5ae1b7d52(unit = "") "KmSTATDephos";
    Real elmt_mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a(unit = "") "kintActiveR";
    Real elmt_mw92d854a7_8aaf_458e_b5e2_20a63ce9b654(unit = "") "VmProtSynth";
    Real elmt_kRint(unit = "") "kRint";
    Real elmt_kIL6Synth(unit = "") "ksynthIL6";
    Real elmt_kRAct(unit = "") "kRAct";
    Real elmt_mw862f1480_c60c_4863_a565_b2c1c77e238e(unit = "") "kCRPSecretion";
    Real elmt_mw4aea26f6_8860_414c_97f5_40d325196f2e(unit = "") "kAbPeriphToSerum";
    Real elmt_mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1(unit = "") "ksynthCRP";
    Real elmt_Metabolite_80(unit = "") "Initial for CRP";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"mw114aa90f_5f5b_4fe8_9406_361c8489b6a1\"/>
        </annotation>"));
    Real elmt_mw6729db10_c577_4319_b355_2e3f11c0f942(unit = "") "VPeriph";
    Real elmt_kCRPDecay(unit = "") "kdegCRP";
    Real elmt_mw1f41474c_c399_4a60_a53a_9926dd092e8d(unit = "") "ksynthsgp130";
    Real elmt_mwa8283449_0e21_41a1_baac_ebf697b3555a(unit = "") "VGut";


    initial equation
        elmt_kRLOn = 0.384;
        elmt_mwdc9e2eb7_c8f4_4026_a8d0_eff8ce1f1aea = 1.0;
        elmt_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30 = 0.0018;
        elmt_mw5832a2dc_ee18_44df_aa59_ccb21cb74df2 = 0.0054;
        elmt_kIL6Decay = 34.82;
        elmt_mw1366c3b5_e79b_44a7_93cc_ee09d383eabf = 0.001;
        elmt_kgp130On = 20.52;
        elmt_mwe8fc1900_f07d_468b_b5c8_15400a583c3d = 219.0;
        elmt_kRLOff = 1.92;
        elmt_mw08950572_81b0_4570_b2e4_b9c3462c1425 = 10.0;
        elmt_parameter_3 = 0.0;
        elmt_mw06241335_b5f2_47ed_bdcc_ef77b68a2b98 = 1.0;
        elmt_parameter_2 = 0.0;
        elmt_parameter_1 = 0.0;
        elmt_mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825 = 0.06;
        elmt_mwd36b0261_2480_4cab_9222_2cf8fb0e65dc = 0.62;
        elmt_mw6a5e10a9_d442_4dde_8ec3_6a26c9807374 = 0.03;
        elmt_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb = 1.2125;
        elmt_mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce = (elmt_mw1366c3b5_e79b_44a7_93cc_ee09d383eabf / elmt_mw2c605ff5_50f5_45f2_a70c_53fcd866d14c);
        elmt_mw1667a8e0_9d20_4e59_ba51_596148aba787 = 0.525;
        elmt_kRsynth = 0.0685;
        elmt_mw2c605ff5_50f5_45f2_a70c_53fcd866d14c = 2.88;
        elmt_mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a = (elmt_mw6a5e10a9_d442_4dde_8ec3_6a26c9807374 / elmt_mw2c605ff5_50f5_45f2_a70c_53fcd866d14c);
        elmt_mwc691d0d1_8c1b_4ce4_85c6_1315c42e97b1 = 2.88;
        elmt_mw88a75379_f9a1_4acc_baeb_94c32bb736a5 = 0.3;
        elmt_mw9442cd0e_4d7c_4ba6_a695_f84919bdf569 = 145.0;
        elmt_mw640ca705_e089_4c64_a5f4_9562317e8c76 = (elmt_mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825 / elmt_mw2c605ff5_50f5_45f2_a70c_53fcd866d14c);
        elmt_mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb = (elmt_mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825 / elmt_mwc691d0d1_8c1b_4ce4_85c6_1315c42e97b1);
        elmt_mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab = 0.1;
        elmt_mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8 = 155.3;
        elmt_ModelValue_4 = elmt_parameter_2;
        elmt_ModelValue_5 = elmt_parameter_3;
        elmt_mwce10678d_8197_408c_ad47_1daec8104cd8 = 0.8473;
        elmt_ModelValue_3 = elmt_parameter_1;
        elmt_mwbcb5a310_9b67_405e_89ec_43d25e8cc93d = 1.0;
        elmt_mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69 = 0.036;
        elmt_mwa071fdbe_d498_4620_a7a4_940aa31c8161 = (elmt_mw6a5e10a9_d442_4dde_8ec3_6a26c9807374 / elmt_mwa8283449_0e21_41a1_baac_ebf697b3555a);
        elmt_kgp130Off = 1.026;
        elmt_kRdeg = 0.1561;
        elmt_mwfd291862_195f_4979_94b5_b4e5ae1b7d52 = 5.34;
        elmt_mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a = 0.01;
        elmt_mw92d854a7_8aaf_458e_b5e2_20a63ce9b654 = 330.0;
        elmt_kRint = 1.96;
        elmt_kIL6Synth = 0.0063;
        elmt_kRAct = 155.0;
        elmt_mw862f1480_c60c_4863_a565_b2c1c77e238e = 0.5;
        elmt_mw4aea26f6_8860_414c_97f5_40d325196f2e = (elmt_mw1366c3b5_e79b_44a7_93cc_ee09d383eabf / elmt_mw6729db10_c577_4319_b355_2e3f11c0f942);
        elmt_mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1 = 0.42;
        elmt_Metabolite_80 = elmt_mw114aa90f_5f5b_4fe8_9406_361c8489b6a1;
        elmt_mw6729db10_c577_4319_b355_2e3f11c0f942 = 0.576;
        elmt_kCRPDecay = 0.36;
        elmt_mw1f41474c_c399_4a60_a53a_9926dd092e8d = 3.9;
        elmt_mwa8283449_0e21_41a1_baac_ebf697b3555a = 1.44;


    equation
        der(elmt_kRLOn) = 0;
        der(elmt_mwdc9e2eb7_c8f4_4026_a8d0_eff8ce1f1aea) = 0;
        der(elmt_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30) = 0;
        der(elmt_mw5832a2dc_ee18_44df_aa59_ccb21cb74df2) = 0;
        der(elmt_kIL6Decay) = 0;
        der(elmt_mw1366c3b5_e79b_44a7_93cc_ee09d383eabf) = 0;
        der(elmt_kgp130On) = 0;
        der(elmt_mwe8fc1900_f07d_468b_b5c8_15400a583c3d) = 0;
        der(elmt_kRLOff) = 0;
        der(elmt_mw08950572_81b0_4570_b2e4_b9c3462c1425) = 0;
        der(elmt_parameter_3) = 0;
        der(elmt_mw06241335_b5f2_47ed_bdcc_ef77b68a2b98) = 0;
        der(elmt_parameter_2) = 0;
        der(elmt_parameter_1) = 0;
        der(elmt_mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825) = 0;
        der(elmt_mwd36b0261_2480_4cab_9222_2cf8fb0e65dc) = 0;
        der(elmt_mw6a5e10a9_d442_4dde_8ec3_6a26c9807374) = 0;
        der(elmt_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb) = 0;
        der(elmt_mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce) = 0;
        der(elmt_mw1667a8e0_9d20_4e59_ba51_596148aba787) = 0;
        der(elmt_kRsynth) = 0;
        der(elmt_mw2c605ff5_50f5_45f2_a70c_53fcd866d14c) = 0;
        der(elmt_mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a) = 0;
        der(elmt_mwc691d0d1_8c1b_4ce4_85c6_1315c42e97b1) = 0;
        der(elmt_mw88a75379_f9a1_4acc_baeb_94c32bb736a5) = 0;
        der(elmt_mw9442cd0e_4d7c_4ba6_a695_f84919bdf569) = 0;
        der(elmt_mw640ca705_e089_4c64_a5f4_9562317e8c76) = 0;
        der(elmt_mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb) = 0;
        der(elmt_mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab) = 0;
        der(elmt_mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8) = 0;
        der(elmt_ModelValue_4) = 0;
        der(elmt_ModelValue_5) = 0;
        der(elmt_mwce10678d_8197_408c_ad47_1daec8104cd8) = 0;
        der(elmt_ModelValue_3) = 0;
        der(elmt_mwbcb5a310_9b67_405e_89ec_43d25e8cc93d) = 0;
        der(elmt_mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69) = 0;
        der(elmt_mwa071fdbe_d498_4620_a7a4_940aa31c8161) = 0;
        der(elmt_kgp130Off) = 0;
        der(elmt_kRdeg) = 0;
        der(elmt_mwfd291862_195f_4979_94b5_b4e5ae1b7d52) = 0;
        der(elmt_mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a) = 0;
        der(elmt_mw92d854a7_8aaf_458e_b5e2_20a63ce9b654) = 0;
        der(elmt_kRint) = 0;
        der(elmt_kIL6Synth) = 0;
        der(elmt_kRAct) = 0;
        der(elmt_mw862f1480_c60c_4863_a565_b2c1c77e238e) = 0;
        der(elmt_mw4aea26f6_8860_414c_97f5_40d325196f2e) = 0;
        der(elmt_mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1) = 0;
        der(elmt_Metabolite_80) = 0;
        der(elmt_mw6729db10_c577_4319_b355_2e3f11c0f942) = 0;
        der(elmt_kCRPDecay) = 0;
        der(elmt_mw1f41474c_c399_4a60_a53a_9926dd092e8d) = 0;
        der(elmt_mwa8283449_0e21_41a1_baac_ebf697b3555a) = 0;

end Parameters;
