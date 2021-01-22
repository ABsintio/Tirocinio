
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-c", "--csv", help="Path relativo o assoluto del file CSV contenente i dati")
args = parser.parse_args()
csv_file = args.csv

# Apriamo e leggiamo il CSV in input
csv_data = pd.read_csv(csv_file)

# Prendiamo i nomi delle species con gli indici corrispettivi che utilizzeremo per il plotting
variables_to_plot = ["mwe2fff28d_182c_4a1c_9882_f17774c0958a","mw93907b2d_53db_4080_9e3f_3eb304441ab9","mw7eacabf9_d68c_491a_aba2_ec0809a8ecc8","mwa8f2e7b2_0927_4ab4_a817_dddc43bb4fa3","mwbfcf6773_1915_432c_b1d2_1f246094cc74","mw19122f7d_f92e_4dc0_922f_6b681db65b0b","mw3c2e1b43_29ca_491a_93e9_c723a993d6fb","mw5198d3c2_879c_4f0d_b4f8_cd40efe0b1cf","mwe57c3282_5935_405c_8c0b_7fadb7a5de17","mw954e8fcb_ac0a_459d_8878_f19080208a17","mwa98802cb_c977_4fe0_9e67_5000904c2c36","mwa0349407_8187_48fc_9e94_5698ccc4e06d","mwf9999977_6f0e_4e35_9b73_75587f3448e9","mwf430a579_ecbf_48ba_80c2_06e455808f2a","mw504578d8_96c3_471f_8a7e_8c14e7535d3d","mw45ab688a_6467_4a3e_a779_2118fa84d69e","mw9dcaa655_a755_426e_a3fa_1ad7c3c45575","mwfbda4e09_0cbb_49bc_ae69_f88b7a79ed21","mwb1bc2058_e6d8_4680_9e6c_d27bb366cde0","mw1093b3af_1864_4ba3_a541_6009a9921282","mwd9462e5b_a272_4b66_ab66_fde9266b1a43","mw925b938a_fe73_4664_ba6f_e72e57780891","mwf8cc7834_bf4f_4ccd_8235_d0890badf0f6","mw481cd12b_61ba_44e5_93bf_8b88c6c4a4e7","mw8f5a7b5c_ca4c_4a4c_85b1_e5d640c426bf","mwf40d6176_abfc_4a30_886f_83a19fcffc48","mwa54a9c38_c98b_45e5_8432_4119fb777e44","mw28464aad_8013_4a23_ae09_a406954859a6","mw7cff9a0e_094d_498e_bf7f_7b162c61d63a","mwdf82303e_323f_4c51_a858_56a59233cd98","mwd39388fd_4f85_4d1c_b2a3_37857c595a2d","mwd7bf31ba_b05c_4c45_bb2f_6a2468a2a507","mwbf5cb039_b830_4282_aa22_a3dda6272ec1","mw66ac98c4_7e7b_4071_954d_43eb17584220","mw83de7813_4941_45a6_a320_a551165bf22a","mwaff92910_ed3d_40b9_a29c_e4866167e828","mw0834731b_0477_4217_a53b_30cef851191b","mw4628f984_eb87_4922_9760_4975095ce6eb","mw9b25f809_18a1_4c14_8f4b_cf18e6d93c28","mw12ba4000_d452_420c_be63_96d2848aca32","mwf816df4c_4593_4d23_990f_0d7c15ddde5d","mw7e23b961_186b_47a0_a8b5_5e9957766792","mwcedf8ecd_67bd_4b91_aa04_d58782dec2a4","mwcc894c94_0ddf_42cc_913e_cdcc4d471d94","mw6cb74b27_ffef_49bb_8ffb_622d552caa9e","mwd784228d_0cb5_468a_ac70_02d8f04b3d9c","mwbaaeb210_4806_4076_9d60_219f4ed945b6","mw19a33ad5_5ba4_46c7_84eb_c1287f02bcd5","mwf9e2a044_7774_400b_a74e_a111b4a21f30","mwcb572fe2_c3ac_40e7_8141_da7d55fce18a","mwa0acc0ac_5fac_4a42_a3be_e36db44994b0","mwd087f76b_65dc_47f1_ba21_c43774457686","mw35f5adaa_d1c0_433c_817d_76e317f4cb15","mwa7e3103a_6394_472c_b0f4_8ed527f68604","mw5babe3d5_a9af_4dfd_ac01_35474ef64af2","mw31ac308f_da36_4f73_830f_67f3e5b945d9","mw31261227_9cd6_4059_a0bb_04dbf4888080","mw0a0ca6ba_cb28_44c7_a0c0_1593cb720966","mw06b8aada_c92a_48eb_8ee7_af3778cfe62f","mwb2366216_0b3c_4f28_8303_fec92c68dd57","mw1d5948e7_5504_4224_9d71_227911b4f1ee","mwec1b368b_8f73_47eb_9636_9956389836eb","mwa455ec7e_1a12_4659_95a2_a5695d09ca60","mw2ba1db9a_4483_44fa_a3a2_b4a5ea66898c","mw0dc4e5eb_4366_4799_bebc_cfcffe5c06f5","mw1e591998_65c0_484e_8a3b_537a38d94de1","mw78e207c4_4faf_4b48_8e22_1ee666e9cc4c","mwfc4a9c3d_3ebb_4033_8b7d_f4d7613d2078","mwbd6bb050_89bd_41df_8cea_d2e1fb77bafe","mw7033dfd6_53c5_433b_a132_f8cb34dea20f","mwb561d9f3_a9ed_4bdb_8d40_87be5cc3237a","mw014cc419_b720_4b90_9192_2ec6e706c87d","mwd7f41594_8377_4e2e_9528_45d5a82ffdb4","mwcef73e0e_d195_4077_ae71_723664ee1602","mw62bf5275_ce02_4e86_b3b6_3f87a335e1de","mw6e01967b_3e2a_433d_bec6_9f9cf3ba243c","mw6353aa36_d4a4_4254_8a1f_1f7f571d4233","mwc1935afc_56b1_4a87_923c_ae6d82455d80","mw3d81860d_d786_4fcc_b8bb_64f1a2d7739d","mw16796ffe_4764_4a9f_942e_149f42c1cd28","mwa6e82fc9_a0ce_461c_93c8_17f3c807c1a1","mw236a3250_4c96_4f6e_b94c_ab3d12852801","mw11a8b702_b8ac_4513_b4aa_063e51089812","mw1a0cb97a_b657_430b_963c_92217f643081","mw9b937ca3_0d82_46d5_8f5a_0f9701002797","mw57a44eb0_ace7_4294_905a_219e87d3c281","mwd746a5d5_5e65_4a4c_9f84_0e4a3cb7d2fc","mwdf92bdc0_f426_45b0_9ad0_876521f41312","mw13abe2a6_9905_40e5_8c23_3fc8834b572a","mw2fd710a6_7fe2_4484_bca6_59c187bade8b","mwb6a9aa2c_62e7_410f_9c33_dbe36dfcc4af","mw341082a0_8017_4cc7_9d00_b1211a196072","mwcea1f1c1_2f85_4af1_98ea_ef14cf580c09","mwdc34472c_a6f9_4002_951d_e0e8da64eb42","mw472d5cb9_120e_4f60_bbae_1ae2552837dd","mw4f575c55_7dff_45d7_94ad_cda9621d5b63","mwd2c465fb_eea7_499a_8ea4_f318a64cb9ee","mw4110f531_7513_4786_8896_7c9d969ff558","mwe3fd7f65_b0d1_44d9_b6f3_d2f7d332f664","mw0e1be972_fded_4bff_a93d_091ec942485f","mw0facb8f2_95cf_4ddf_a959_b24ba64f320b","mw9686f53e_d343_45fd_b441_9c992219546a","mw960bddeb_e567_46dd_b2f3_ed5e6a5c7972","mw8c85ff7f_6368_4b11_a2ed_ce83481b55e6","mw548c81c2_c626_4df8_9177_a1a6fc3d4ce8","mw142e6dc4_ec15_459d_a184_6b20be04f08d","mw2c47ae3f_06d9_40ec_a252_535db0ae5caa","mwd32d108b_49c2_4df2_9b67_d6c6b84f54b9"]
species_tuple = [(idx, specie) for idx, specie in enumerate(csv_data.head(0)) if specie in variables_to_plot and specie != "time"]

# Creiamo un array numpy per salvare i dati estrapolati dal CSV
data_numpy = np.array(csv_data)

# Prendiamo la colonna del tempo
time = data_numpy[:, 0]

# Prendiamo i valori a tuple di quattro i quali formeranno un singolo plot
plot_number = 1
for i in range(0, len(species_tuple), 4):
    current_vars = species_tuple[i:i+4]
    plt.figure(figsize=[15.0, 8.0])
    for j, var in current_vars:
        plt.plot(time, data_numpy[:, j], marker="_", label=var)
    plt.xlabel("Time")
    plt.legend(loc="upper left")
    plt.savefig("OMCPlot" + str(plot_number) + ".png")
    plot_number += 1
    plt.close()
