
model BIOMD495 "Sen2013 - Phospholipid Synthesis in P.knowlesi"

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



    parameter Real mwee07eca4_0806_4cc3_a6ab_9226ee79be6c = 3.40936490738966e-06;
    parameter Real mw8f20c25d_9700_4822_b5f9_fe243e001091 = 0.000362894258752347;
    parameter Real mw7ce1b6a3_e65e_4aaa_9c32_aeefb420f0ea = 1.30568052867489e-06;
    parameter Real mw85485398_9f97_408c_bca6_90f0a8377eae = 0.000796722533770371;
    parameter Real mw798d0b02_925e_471b_a372_526d681cc370 = 2.620389955953e-06;
    parameter Real mwd3807289_133c_4621_8087_366621f553d3 = 2.39591245105385e-05;
    parameter Real mw2439178f_a48f_4425_82f9_13267b917b85 = 8.62083015294042e-06;
    parameter Real mw5c4edb54_cfd9_43af_b70b_e9ff1b44dc55 = 0.000108608492867695;
    parameter Real mw961dacfa_f443_4814_ad6c_a27c04e74268 = 1.0780611108133e-06;
    parameter Real mw15ba24b5_7a87_479e_9be7_261b12cbdb63 = 0.000122223738254533;
    parameter Real mw9f56ecc5_c22b_4f8c_8b82_90e2a6d9e364 = 2.24518521682572e-06;
    parameter Real mw18bbabcb_d229_4d91_99f1_484f2ba8f020 = 0.000203868171233541;
    parameter Real mwba0debe9_c575_4f5a_a980_e2b6857ff053 = 5.61352652271706e-06;
    parameter Real mwffba86ff_a560_401a_93d6_c0e30bf42c87 = 0.000227368268903121;
    parameter Real mw231a5907_d1ee_4a43_83ab_abb72f19502c = 4.12788404046025e-07;
    parameter Real mwaf289d12_4291_4651_8bd1_82e321e476a4 = 3.10498877738431e-05;
    parameter Real mw1a53a2cb_a3a7_40d7_ae07_4d93ad1123a3 = 0.00141678261342411;
    parameter Real mw4035a2c9_3cda_467c_83cc_8f9c2902abaf = 0.321125432799976;
    parameter Real mwf7d1ff9f_1734_4232_9a96_037b31b193b0 = 6.97333029651601e-07;
    parameter Real mw7d57aa6b_1bfb_4472_b555_919263d9eaf9 = 3.76085190209901e-06;
    parameter Real mw5ffad843_5f02_419d_ba99_6e1f9b7e6b7b = 8.99054709659885e-05;
    parameter Real mw3046ca21_42a2_4a4b_89c4_9d6ca3d927c5 = 0.171122974053956;
    parameter Real mw87bb1238_3292_467e_bfe3_ff7f1e64a351 = 1.5662833197895e-06;
    parameter Real mw371071cd_ec20_4517_acc1_08dfdc871e87 = 2.41308392167819e-05;
    parameter Real mw5b225cdc_783f_4a15_93db_e960a2398b8e = 1.53754224136353e-06;
    parameter Real mw27f524cb_75b3_401c_8533_99d6f27af654 = 0.000203777063277265;
    parameter Real mwc623d82f_a94e_4460_9aed_444597a728c2 = 0.00077375270429582;
    parameter Real mwbf296afc_5e4f_4819_8028_06b20d7af7ca = 0.155164586398126;
    parameter Real mw91e15e1e_c73e_4866_ab2b_8225a32b7610 = 2.32432741134546e-07;
    parameter Real mwf5cecb8f_89f8_4fba_b39b_b517d0bef2ce = 0.000102326862282225;
    parameter Real mwff26437c_166b_4946_ad35_f13df6145780 = 5.55658410000431e-07;
    parameter Real mw284c519a_cc2b_4a98_99ce_5a4471af99e1 = 3.04072645117622e-05;
    parameter Real mw2cd81e51_eb11_4e2c_b609_b2f802438a6b = 0.0005;
    parameter Real mwff99ad6c_8951_4d58_a836_cf2d3d08ac86 = 0.000132810241970949;
    parameter Real mw81b30d38_6ef3_4391_b826_e6c3cc210196 = 1.0;



    Real mw73259e20_240e_4f3a_b2e0_9ca248658898;
    Real mw15abaa48_d7d0_4845_ae04_c573d289d495;
    Real mwfcfaf604_14d4_47a6_b021_226d1fb5497c;
    Real mw8796c919_9251_4970_8f87_0bca9ecfeb5c;
    Real mw849ed3fd_87d9_44d2_9f3e_4d631b900d41;
    Real mwcb834e43_dc57_45ae_9452_f4c10955caf1;
    Real mwf166ad55_4ff0_49fb_95d2_b657ad7653d5;
    Real mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5;
    Real mw919f8a86_e702_4b24_9cd7_adad694fcf9b;
    Real mw812f63db_4cb0_40ad_b92b_9874be969dfe;
    Real mw08818dfe_fb12_45cc_8c1d_d965f142d0ce;

initial equation
    mw73259e20_240e_4f3a_b2e0_9ca248658898 = 0.0001;
    mw15abaa48_d7d0_4845_ae04_c573d289d495 = 0.0;
    mwfcfaf604_14d4_47a6_b021_226d1fb5497c = 0.0;
    mw8796c919_9251_4970_8f87_0bca9ecfeb5c = 0.0;
    mw849ed3fd_87d9_44d2_9f3e_4d631b900d41 = 0.0;
    mwcb834e43_dc57_45ae_9452_f4c10955caf1 = 0.0;
    mwf166ad55_4ff0_49fb_95d2_b657ad7653d5 = 0.0;
    mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5 = 0.0;
    mw919f8a86_e702_4b24_9cd7_adad694fcf9b = 5e-05;
    mw812f63db_4cb0_40ad_b92b_9874be969dfe = 0.0;
    mw08818dfe_fb12_45cc_8c1d_d965f142d0ce = 0.0;

equation

    der(mw73259e20_240e_4f3a_b2e0_9ca248658898) = 0.0;
    der(mw15abaa48_d7d0_4845_ae04_c573d289d495) = (mwee07eca4_0806_4cc3_a6ab_9226ee79be6c * mw73259e20_240e_4f3a_b2e0_9ca248658898 / (mw8f20c25d_9700_4822_b5f9_fe243e001091 + mw73259e20_240e_4f3a_b2e0_9ca248658898)) - (mw7ce1b6a3_e65e_4aaa_9c32_aeefb420f0ea * mw15abaa48_d7d0_4845_ae04_c573d289d495 / (mw85485398_9f97_408c_bca6_90f0a8377eae + mw15abaa48_d7d0_4845_ae04_c573d289d495)) - (mw798d0b02_925e_471b_a372_526d681cc370 * mw15abaa48_d7d0_4845_ae04_c573d289d495 / (mwd3807289_133c_4621_8087_366621f553d3 + mw15abaa48_d7d0_4845_ae04_c573d289d495));
    der(mwfcfaf604_14d4_47a6_b021_226d1fb5497c) = (mw7ce1b6a3_e65e_4aaa_9c32_aeefb420f0ea * mw15abaa48_d7d0_4845_ae04_c573d289d495 / (mw85485398_9f97_408c_bca6_90f0a8377eae + mw15abaa48_d7d0_4845_ae04_c573d289d495)) + (mwf7d1ff9f_1734_4232_9a96_037b31b193b0 * mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5 / (mw7d57aa6b_1bfb_4472_b555_919263d9eaf9 + mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5)) + (mw5ffad843_5f02_419d_ba99_6e1f9b7e6b7b * mwf166ad55_4ff0_49fb_95d2_b657ad7653d5 / (mw3046ca21_42a2_4a4b_89c4_9d6ca3d927c5 + mwf166ad55_4ff0_49fb_95d2_b657ad7653d5)) - (mw9f56ecc5_c22b_4f8c_8b82_90e2a6d9e364 * mwfcfaf604_14d4_47a6_b021_226d1fb5497c / (mw18bbabcb_d229_4d91_99f1_484f2ba8f020 + mwfcfaf604_14d4_47a6_b021_226d1fb5497c)) - (mw5b225cdc_783f_4a15_93db_e960a2398b8e * mwfcfaf604_14d4_47a6_b021_226d1fb5497c / (mw27f524cb_75b3_401c_8533_99d6f27af654 + mwfcfaf604_14d4_47a6_b021_226d1fb5497c));
    der(mw8796c919_9251_4970_8f87_0bca9ecfeb5c) = (mw798d0b02_925e_471b_a372_526d681cc370 * mw15abaa48_d7d0_4845_ae04_c573d289d495 / (mwd3807289_133c_4621_8087_366621f553d3 + mw15abaa48_d7d0_4845_ae04_c573d289d495)) + (mw2cd81e51_eb11_4e2c_b609_b2f802438a6b * mw08818dfe_fb12_45cc_8c1d_d965f142d0ce - mwff99ad6c_8951_4d58_a836_cf2d3d08ac86 * mw8796c919_9251_4970_8f87_0bca9ecfeb5c) - (mw2439178f_a48f_4425_82f9_13267b917b85 * mw8796c919_9251_4970_8f87_0bca9ecfeb5c / (mw5c4edb54_cfd9_43af_b70b_e9ff1b44dc55 + mw8796c919_9251_4970_8f87_0bca9ecfeb5c));
    der(mw849ed3fd_87d9_44d2_9f3e_4d631b900d41) = (mw2439178f_a48f_4425_82f9_13267b917b85 * mw8796c919_9251_4970_8f87_0bca9ecfeb5c / (mw5c4edb54_cfd9_43af_b70b_e9ff1b44dc55 + mw8796c919_9251_4970_8f87_0bca9ecfeb5c)) - (mw961dacfa_f443_4814_ad6c_a27c04e74268 * mw849ed3fd_87d9_44d2_9f3e_4d631b900d41 / (mw15ba24b5_7a87_479e_9be7_261b12cbdb63 + mw849ed3fd_87d9_44d2_9f3e_4d631b900d41)) - (mwba0debe9_c575_4f5a_a980_e2b6857ff053 * mw849ed3fd_87d9_44d2_9f3e_4d631b900d41 / (mwffba86ff_a560_401a_93d6_c0e30bf42c87 + mw849ed3fd_87d9_44d2_9f3e_4d631b900d41));
    der(mwcb834e43_dc57_45ae_9452_f4c10955caf1) = (mw961dacfa_f443_4814_ad6c_a27c04e74268 * mw849ed3fd_87d9_44d2_9f3e_4d631b900d41 / (mw15ba24b5_7a87_479e_9be7_261b12cbdb63 + mw849ed3fd_87d9_44d2_9f3e_4d631b900d41)) + (mwff26437c_166b_4946_ad35_f13df6145780 * mw812f63db_4cb0_40ad_b92b_9874be969dfe / (mw284c519a_cc2b_4a98_99ce_5a4471af99e1 + mw812f63db_4cb0_40ad_b92b_9874be969dfe)) - (mw231a5907_d1ee_4a43_83ab_abb72f19502c * mwcb834e43_dc57_45ae_9452_f4c10955caf1 / (mwaf289d12_4291_4651_8bd1_82e321e476a4 + mwcb834e43_dc57_45ae_9452_f4c10955caf1));
    der(mwf166ad55_4ff0_49fb_95d2_b657ad7653d5) = (mw9f56ecc5_c22b_4f8c_8b82_90e2a6d9e364 * mwfcfaf604_14d4_47a6_b021_226d1fb5497c / (mw18bbabcb_d229_4d91_99f1_484f2ba8f020 + mwfcfaf604_14d4_47a6_b021_226d1fb5497c)) + (mwba0debe9_c575_4f5a_a980_e2b6857ff053 * mw849ed3fd_87d9_44d2_9f3e_4d631b900d41 / (mwffba86ff_a560_401a_93d6_c0e30bf42c87 + mw849ed3fd_87d9_44d2_9f3e_4d631b900d41)) - (mw1a53a2cb_a3a7_40d7_ae07_4d93ad1123a3 * mwf166ad55_4ff0_49fb_95d2_b657ad7653d5 / (mw4035a2c9_3cda_467c_83cc_8f9c2902abaf + mwf166ad55_4ff0_49fb_95d2_b657ad7653d5)) - (mw5ffad843_5f02_419d_ba99_6e1f9b7e6b7b * mwf166ad55_4ff0_49fb_95d2_b657ad7653d5 / (mw3046ca21_42a2_4a4b_89c4_9d6ca3d927c5 + mwf166ad55_4ff0_49fb_95d2_b657ad7653d5)) - (mwc623d82f_a94e_4460_9aed_444597a728c2 * mwfcfaf604_14d4_47a6_b021_226d1fb5497c / (mwbf296afc_5e4f_4819_8028_06b20d7af7ca + mwfcfaf604_14d4_47a6_b021_226d1fb5497c));
    der(mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5) = (mw231a5907_d1ee_4a43_83ab_abb72f19502c * mwcb834e43_dc57_45ae_9452_f4c10955caf1 / (mwaf289d12_4291_4651_8bd1_82e321e476a4 + mwcb834e43_dc57_45ae_9452_f4c10955caf1)) + (mw1a53a2cb_a3a7_40d7_ae07_4d93ad1123a3 * mwf166ad55_4ff0_49fb_95d2_b657ad7653d5 / (mw4035a2c9_3cda_467c_83cc_8f9c2902abaf + mwf166ad55_4ff0_49fb_95d2_b657ad7653d5)) - (mwf7d1ff9f_1734_4232_9a96_037b31b193b0 * mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5 / (mw7d57aa6b_1bfb_4472_b555_919263d9eaf9 + mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5)) - (mw87bb1238_3292_467e_bfe3_ff7f1e64a351 * mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5 / (mw371071cd_ec20_4517_acc1_08dfdc871e87 + mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5));
    der(mw919f8a86_e702_4b24_9cd7_adad694fcf9b) = 0.0;
    der(mw812f63db_4cb0_40ad_b92b_9874be969dfe) = (mw91e15e1e_c73e_4866_ab2b_8225a32b7610 * mw919f8a86_e702_4b24_9cd7_adad694fcf9b / (mwf5cecb8f_89f8_4fba_b39b_b517d0bef2ce + mw919f8a86_e702_4b24_9cd7_adad694fcf9b)) - (mwff26437c_166b_4946_ad35_f13df6145780 * mw812f63db_4cb0_40ad_b92b_9874be969dfe / (mw284c519a_cc2b_4a98_99ce_5a4471af99e1 + mw812f63db_4cb0_40ad_b92b_9874be969dfe));
    der(mw08818dfe_fb12_45cc_8c1d_d965f142d0ce) = 0.0;




end BIOMD495;
