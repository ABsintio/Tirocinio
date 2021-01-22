

#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
#include <fstream>

#include "BIOMD452_SystemDefinition.cuh"
#include "SingleSystem_PerThread_Interface.cuh"

using namespace std;

#define SOLVER RKCK45
#define PRECISION double
const int NT   = 1;
const int SD   = 108;
const int NCP  = 1;
const int NSP  = 0;
const int NISP = 0;
const int NE   = 0;
const int NA   = 1;
const int NIA  = 0;
const int NDO  = 1000000;


void FillSolverObject(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    int FirstProblemNumber, int NumberOfThreads
) {
    int k_begin = FirstProblemNumber;
    int k_end   = FirstProblemNumber + NumberOfThreads;
	
    int ProblemNumber = 0;
    while (k_begin < k_end) {
        Solver.SetHost(ProblemNumber, TimeDomain, 0, 0.0);
        Solver.SetHost(ProblemNumber, TimeDomain, 1, 1000.0);  

        Solver.SetHost(ProblemNumber, ActualTime, 0.0);
        Solver.SetHost(ProblemNumber, ControlParameters, 0, 0.0);
        Solver.SetHost(ProblemNumber, DenseIndex, 0 );

        ProblemNumber++;
        k_begin++;
    }
}


void SaveData(
    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION>& Solver, 
    ofstream& DataFile, int NumberOfThreads
) {
    int Width = 18;
    DataFile.precision(10);
    DataFile.flags(ios::scientific);
	
    for (int tid=0; tid<NumberOfThreads; tid++)
    {
        DataFile.width(Width); DataFile << "X_mw014cc419_b720_4b90_9192_2ec6e706c87d" << ',';
        DataFile.width(Width); DataFile << "X_mw06b8aada_c92a_48eb_8ee7_af3778cfe62f" << ',';
        DataFile.width(Width); DataFile << "X_mw0834731b_0477_4217_a53b_30cef851191b" << ',';
        DataFile.width(Width); DataFile << "X_mw0a0ca6ba_cb28_44c7_a0c0_1593cb720966" << ',';
        DataFile.width(Width); DataFile << "X_mw0dc4e5eb_4366_4799_bebc_cfcffe5c06f5" << ',';
        DataFile.width(Width); DataFile << "X_mw0e1be972_fded_4bff_a93d_091ec942485f" << ',';
        DataFile.width(Width); DataFile << "X_mw0facb8f2_95cf_4ddf_a959_b24ba64f320b" << ',';
        DataFile.width(Width); DataFile << "X_mw1093b3af_1864_4ba3_a541_6009a9921282" << ',';
        DataFile.width(Width); DataFile << "X_mw11a8b702_b8ac_4513_b4aa_063e51089812" << ',';
        DataFile.width(Width); DataFile << "X_mw12ba4000_d452_420c_be63_96d2848aca32" << ',';
        DataFile.width(Width); DataFile << "X_mw13abe2a6_9905_40e5_8c23_3fc8834b572a" << ',';
        DataFile.width(Width); DataFile << "X_mw142e6dc4_ec15_459d_a184_6b20be04f08d" << ',';
        DataFile.width(Width); DataFile << "X_mw16796ffe_4764_4a9f_942e_149f42c1cd28" << ',';
        DataFile.width(Width); DataFile << "X_mw19122f7d_f92e_4dc0_922f_6b681db65b0b" << ',';
        DataFile.width(Width); DataFile << "X_mw19a33ad5_5ba4_46c7_84eb_c1287f02bcd5" << ',';
        DataFile.width(Width); DataFile << "X_mw1a0cb97a_b657_430b_963c_92217f643081" << ',';
        DataFile.width(Width); DataFile << "X_mw1d5948e7_5504_4224_9d71_227911b4f1ee" << ',';
        DataFile.width(Width); DataFile << "X_mw1e591998_65c0_484e_8a3b_537a38d94de1" << ',';
        DataFile.width(Width); DataFile << "X_mw236a3250_4c96_4f6e_b94c_ab3d12852801" << ',';
        DataFile.width(Width); DataFile << "X_mw28464aad_8013_4a23_ae09_a406954859a6" << ',';
        DataFile.width(Width); DataFile << "X_mw2ba1db9a_4483_44fa_a3a2_b4a5ea66898c" << ',';
        DataFile.width(Width); DataFile << "X_mw2c47ae3f_06d9_40ec_a252_535db0ae5caa" << ',';
        DataFile.width(Width); DataFile << "X_mw2fd710a6_7fe2_4484_bca6_59c187bade8b" << ',';
        DataFile.width(Width); DataFile << "X_mw31261227_9cd6_4059_a0bb_04dbf4888080" << ',';
        DataFile.width(Width); DataFile << "X_mw31ac308f_da36_4f73_830f_67f3e5b945d9" << ',';
        DataFile.width(Width); DataFile << "X_mw341082a0_8017_4cc7_9d00_b1211a196072" << ',';
        DataFile.width(Width); DataFile << "X_mw35f5adaa_d1c0_433c_817d_76e317f4cb15" << ',';
        DataFile.width(Width); DataFile << "X_mw3c2e1b43_29ca_491a_93e9_c723a993d6fb" << ',';
        DataFile.width(Width); DataFile << "X_mw3d81860d_d786_4fcc_b8bb_64f1a2d7739d" << ',';
        DataFile.width(Width); DataFile << "X_mw4110f531_7513_4786_8896_7c9d969ff558" << ',';
        DataFile.width(Width); DataFile << "X_mw45ab688a_6467_4a3e_a779_2118fa84d69e" << ',';
        DataFile.width(Width); DataFile << "X_mw4628f984_eb87_4922_9760_4975095ce6eb" << ',';
        DataFile.width(Width); DataFile << "X_mw472d5cb9_120e_4f60_bbae_1ae2552837dd" << ',';
        DataFile.width(Width); DataFile << "X_mw481cd12b_61ba_44e5_93bf_8b88c6c4a4e7" << ',';
        DataFile.width(Width); DataFile << "X_mw4f575c55_7dff_45d7_94ad_cda9621d5b63" << ',';
        DataFile.width(Width); DataFile << "X_mw504578d8_96c3_471f_8a7e_8c14e7535d3d" << ',';
        DataFile.width(Width); DataFile << "X_mw5198d3c2_879c_4f0d_b4f8_cd40efe0b1cf" << ',';
        DataFile.width(Width); DataFile << "X_mw548c81c2_c626_4df8_9177_a1a6fc3d4ce8" << ',';
        DataFile.width(Width); DataFile << "X_mw57a44eb0_ace7_4294_905a_219e87d3c281" << ',';
        DataFile.width(Width); DataFile << "X_mw5babe3d5_a9af_4dfd_ac01_35474ef64af2" << ',';
        DataFile.width(Width); DataFile << "X_mw62bf5275_ce02_4e86_b3b6_3f87a335e1de" << ',';
        DataFile.width(Width); DataFile << "X_mw6353aa36_d4a4_4254_8a1f_1f7f571d4233" << ',';
        DataFile.width(Width); DataFile << "X_mw66ac98c4_7e7b_4071_954d_43eb17584220" << ',';
        DataFile.width(Width); DataFile << "X_mw6cb74b27_ffef_49bb_8ffb_622d552caa9e" << ',';
        DataFile.width(Width); DataFile << "X_mw6e01967b_3e2a_433d_bec6_9f9cf3ba243c" << ',';
        DataFile.width(Width); DataFile << "X_mw7033dfd6_53c5_433b_a132_f8cb34dea20f" << ',';
        DataFile.width(Width); DataFile << "X_mw78e207c4_4faf_4b48_8e22_1ee666e9cc4c" << ',';
        DataFile.width(Width); DataFile << "X_mw7cff9a0e_094d_498e_bf7f_7b162c61d63a" << ',';
        DataFile.width(Width); DataFile << "X_mw7e23b961_186b_47a0_a8b5_5e9957766792" << ',';
        DataFile.width(Width); DataFile << "X_mw7eacabf9_d68c_491a_aba2_ec0809a8ecc8" << ',';
        DataFile.width(Width); DataFile << "X_mw83de7813_4941_45a6_a320_a551165bf22a" << ',';
        DataFile.width(Width); DataFile << "X_mw8c85ff7f_6368_4b11_a2ed_ce83481b55e6" << ',';
        DataFile.width(Width); DataFile << "X_mw8f5a7b5c_ca4c_4a4c_85b1_e5d640c426bf" << ',';
        DataFile.width(Width); DataFile << "X_mw925b938a_fe73_4664_ba6f_e72e57780891" << ',';
        DataFile.width(Width); DataFile << "X_mw93907b2d_53db_4080_9e3f_3eb304441ab9" << ',';
        DataFile.width(Width); DataFile << "X_mw954e8fcb_ac0a_459d_8878_f19080208a17" << ',';
        DataFile.width(Width); DataFile << "X_mw960bddeb_e567_46dd_b2f3_ed5e6a5c7972" << ',';
        DataFile.width(Width); DataFile << "X_mw9686f53e_d343_45fd_b441_9c992219546a" << ',';
        DataFile.width(Width); DataFile << "X_mw9b25f809_18a1_4c14_8f4b_cf18e6d93c28" << ',';
        DataFile.width(Width); DataFile << "X_mw9b937ca3_0d82_46d5_8f5a_0f9701002797" << ',';
        DataFile.width(Width); DataFile << "X_mw9dcaa655_a755_426e_a3fa_1ad7c3c45575" << ',';
        DataFile.width(Width); DataFile << "X_mwa0349407_8187_48fc_9e94_5698ccc4e06d" << ',';
        DataFile.width(Width); DataFile << "X_mwa0acc0ac_5fac_4a42_a3be_e36db44994b0" << ',';
        DataFile.width(Width); DataFile << "X_mwa455ec7e_1a12_4659_95a2_a5695d09ca60" << ',';
        DataFile.width(Width); DataFile << "X_mwa54a9c38_c98b_45e5_8432_4119fb777e44" << ',';
        DataFile.width(Width); DataFile << "X_mwa6e82fc9_a0ce_461c_93c8_17f3c807c1a1" << ',';
        DataFile.width(Width); DataFile << "X_mwa7e3103a_6394_472c_b0f4_8ed527f68604" << ',';
        DataFile.width(Width); DataFile << "X_mwa8f2e7b2_0927_4ab4_a817_dddc43bb4fa3" << ',';
        DataFile.width(Width); DataFile << "X_mwa98802cb_c977_4fe0_9e67_5000904c2c36" << ',';
        DataFile.width(Width); DataFile << "X_mwaff92910_ed3d_40b9_a29c_e4866167e828" << ',';
        DataFile.width(Width); DataFile << "X_mwb1bc2058_e6d8_4680_9e6c_d27bb366cde0" << ',';
        DataFile.width(Width); DataFile << "X_mwb2366216_0b3c_4f28_8303_fec92c68dd57" << ',';
        DataFile.width(Width); DataFile << "X_mwb561d9f3_a9ed_4bdb_8d40_87be5cc3237a" << ',';
        DataFile.width(Width); DataFile << "X_mwb6a9aa2c_62e7_410f_9c33_dbe36dfcc4af" << ',';
        DataFile.width(Width); DataFile << "X_mwbaaeb210_4806_4076_9d60_219f4ed945b6" << ',';
        DataFile.width(Width); DataFile << "X_mwbd6bb050_89bd_41df_8cea_d2e1fb77bafe" << ',';
        DataFile.width(Width); DataFile << "X_mwbf5cb039_b830_4282_aa22_a3dda6272ec1" << ',';
        DataFile.width(Width); DataFile << "X_mwbfcf6773_1915_432c_b1d2_1f246094cc74" << ',';
        DataFile.width(Width); DataFile << "X_mwc1935afc_56b1_4a87_923c_ae6d82455d80" << ',';
        DataFile.width(Width); DataFile << "X_mwcb572fe2_c3ac_40e7_8141_da7d55fce18a" << ',';
        DataFile.width(Width); DataFile << "X_mwcc894c94_0ddf_42cc_913e_cdcc4d471d94" << ',';
        DataFile.width(Width); DataFile << "X_mwcea1f1c1_2f85_4af1_98ea_ef14cf580c09" << ',';
        DataFile.width(Width); DataFile << "X_mwcedf8ecd_67bd_4b91_aa04_d58782dec2a4" << ',';
        DataFile.width(Width); DataFile << "X_mwcef73e0e_d195_4077_ae71_723664ee1602" << ',';
        DataFile.width(Width); DataFile << "X_mwd087f76b_65dc_47f1_ba21_c43774457686" << ',';
        DataFile.width(Width); DataFile << "X_mwd2c465fb_eea7_499a_8ea4_f318a64cb9ee" << ',';
        DataFile.width(Width); DataFile << "X_mwd32d108b_49c2_4df2_9b67_d6c6b84f54b9" << ',';
        DataFile.width(Width); DataFile << "X_mwd39388fd_4f85_4d1c_b2a3_37857c595a2d" << ',';
        DataFile.width(Width); DataFile << "X_mwd746a5d5_5e65_4a4c_9f84_0e4a3cb7d2fc" << ',';
        DataFile.width(Width); DataFile << "X_mwd784228d_0cb5_468a_ac70_02d8f04b3d9c" << ',';
        DataFile.width(Width); DataFile << "X_mwd7bf31ba_b05c_4c45_bb2f_6a2468a2a507" << ',';
        DataFile.width(Width); DataFile << "X_mwd7f41594_8377_4e2e_9528_45d5a82ffdb4" << ',';
        DataFile.width(Width); DataFile << "X_mwd9462e5b_a272_4b66_ab66_fde9266b1a43" << ',';
        DataFile.width(Width); DataFile << "X_mwdc34472c_a6f9_4002_951d_e0e8da64eb42" << ',';
        DataFile.width(Width); DataFile << "X_mwdf82303e_323f_4c51_a858_56a59233cd98" << ',';
        DataFile.width(Width); DataFile << "X_mwdf92bdc0_f426_45b0_9ad0_876521f41312" << ',';
        DataFile.width(Width); DataFile << "X_mwe2fff28d_182c_4a1c_9882_f17774c0958a" << ',';
        DataFile.width(Width); DataFile << "X_mwe3fd7f65_b0d1_44d9_b6f3_d2f7d332f664" << ',';
        DataFile.width(Width); DataFile << "X_mwe57c3282_5935_405c_8c0b_7fadb7a5de17" << ',';
        DataFile.width(Width); DataFile << "X_mwec1b368b_8f73_47eb_9636_9956389836eb" << ',';
        DataFile.width(Width); DataFile << "X_mwf40d6176_abfc_4a30_886f_83a19fcffc48" << ',';
        DataFile.width(Width); DataFile << "X_mwf430a579_ecbf_48ba_80c2_06e455808f2a" << ',';
        DataFile.width(Width); DataFile << "X_mwf816df4c_4593_4d23_990f_0d7c15ddde5d" << ',';
        DataFile.width(Width); DataFile << "X_mwf8cc7834_bf4f_4ccd_8235_d0890badf0f6" << ',';
        DataFile.width(Width); DataFile << "X_mwf9999977_6f0e_4e35_9b73_75587f3448e9" << ',';
        DataFile.width(Width); DataFile << "X_mwf9e2a044_7774_400b_a74e_a111b4a21f30" << ',';
        DataFile.width(Width); DataFile << "X_mwfbda4e09_0cbb_49bc_ae69_f88b7a79ed21" << ',';
        DataFile.width(Width); DataFile << "X_mwfc4a9c3d_3ebb_4033_8b7d_f4d7613d2078" << ',';
        DataFile.width(Width); DataFile << "ACC_mwa6994523_5d45_4000_af0c_3e94073bf183" << ',';
        DataFile.width(Width); DataFile << endl;
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 0) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 1) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 2) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 3) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 4) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 5) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 6) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 7) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 8) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 9) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 10) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 11) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 12) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 13) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 14) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 15) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 16) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 17) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 18) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 19) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 20) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 21) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 22) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 23) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 24) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 25) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 26) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 27) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 28) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 29) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 30) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 31) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 32) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 33) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 34) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 35) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 36) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 37) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 38) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 39) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 40) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 41) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 42) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 43) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 44) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 45) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 46) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 47) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 48) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 49) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 50) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 51) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 52) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 53) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 54) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 55) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 56) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 57) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 58) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 59) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 60) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 61) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 62) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 63) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 64) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 65) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 66) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 67) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 68) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 69) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 70) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 71) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 72) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 73) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 74) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 75) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 76) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 77) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 78) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 79) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 80) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 81) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 82) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 83) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 84) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 85) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 86) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 87) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 88) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 89) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 90) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 91) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 92) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 93) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 94) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 95) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 96) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 97) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 98) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 99) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 100) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 101) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 102) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 103) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 104) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 105) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 106) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, ActualState, 107) << ',';
        DataFile.width(Width); DataFile << Solver.GetHost<PRECISION>(tid, Accessories, 0) << ',';

        DataFile << '\n';
    }
}


int main() {
    int NumberOfProblems = NT; // Numero di problemi da risolvere, uno per thread
    int blockSize        = 512; // Numero di Thread per blocchi
    
    // Listing dei Device CUDA
    ListCUDADevices();

    int MajorVersion = 7; // Major version della CUDA compute capability
    int MinorVersion = 5; // Minor version della CUDA compute capability

    // Seleziona il Device da utilizzare dando in input la CUDA compute capability e ne stampa le caratteristiche
    int SelectedDevice = SelectDeviceByClosestRevision(MajorVersion, MinorVersion);
    PrintPropertiesOfSpecificDevice(SelectedDevice);

    ProblemSolver<NT,SD,NCP,NSP,NISP,NE,NA,NIA,NDO,SOLVER,PRECISION> Solver(SelectedDevice);
    Solver.SolverOption(ThreadsPerBlock, blockSize);
    Solver.SolverOption(PreferSharedMemory, 1);
    Solver.SolverOption(InitialTimeStep, 0.01);
    Solver.SolverOption(ActiveNumberOfThreads, NT);
    Solver.SolverOption(MaximumTimeStep, 1000000.0);
    Solver.SolverOption(MinimumTimeStep, 1e-14);
    Solver.SolverOption(TimeStepGrowLimit, 5.0);

    Solver.SolverOption(TimeStepShrinkLimit, 0.2);



    Solver.SolverOption(DenseOutputMinimumTimeStep, 0.0);
    Solver.SolverOption(DenseOutputSaveFrequency, 1);
    Solver.SolverOption(AbsoluteTolerance, 0, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 1, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 2, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 3, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 4, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 5, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 6, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 7, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 8, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 9, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 10, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 11, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 12, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 13, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 14, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 15, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 16, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 17, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 18, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 19, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 20, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 21, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 22, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 23, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 24, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 25, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 26, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 27, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 28, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 29, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 30, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 31, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 32, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 33, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 34, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 35, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 36, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 37, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 38, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 39, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 40, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 41, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 42, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 43, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 44, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 45, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 46, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 47, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 48, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 49, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 50, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 51, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 52, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 53, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 54, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 55, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 56, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 57, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 58, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 59, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 60, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 61, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 62, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 63, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 64, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 65, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 66, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 67, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 68, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 69, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 70, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 71, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 72, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 73, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 74, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 75, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 76, 1e-10);
    Solver.SolverOption(AbsoluteTolerance, 77, 1e-10);
    Solver.SolverOption(AbsoluteTolerance, 78, 1e-10);
    Solver.SolverOption(AbsoluteTolerance, 79, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 80, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 81, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 82, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 83, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 84, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 85, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 86, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 87, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 88, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 89, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 90, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 91, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 92, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 93, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 94, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 95, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 96, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 97, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 98, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 99, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 100, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 101, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 102, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 103, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 104, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 105, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 106, 1e-06);
    Solver.SolverOption(AbsoluteTolerance, 107, 1e-06);

    Solver.SolverOption(RelativeTolerance, 0, 1e-06);
    Solver.SolverOption(RelativeTolerance, 1, 1e-06);
    Solver.SolverOption(RelativeTolerance, 2, 1e-06);
    Solver.SolverOption(RelativeTolerance, 3, 1e-06);
    Solver.SolverOption(RelativeTolerance, 4, 1e-06);
    Solver.SolverOption(RelativeTolerance, 5, 1e-06);
    Solver.SolverOption(RelativeTolerance, 6, 1e-06);
    Solver.SolverOption(RelativeTolerance, 7, 1e-06);
    Solver.SolverOption(RelativeTolerance, 8, 1e-06);
    Solver.SolverOption(RelativeTolerance, 9, 1e-06);
    Solver.SolverOption(RelativeTolerance, 10, 1e-06);
    Solver.SolverOption(RelativeTolerance, 11, 1e-06);
    Solver.SolverOption(RelativeTolerance, 12, 1e-06);
    Solver.SolverOption(RelativeTolerance, 13, 1e-06);
    Solver.SolverOption(RelativeTolerance, 14, 1e-06);
    Solver.SolverOption(RelativeTolerance, 15, 1e-06);
    Solver.SolverOption(RelativeTolerance, 16, 1e-06);
    Solver.SolverOption(RelativeTolerance, 17, 1e-06);
    Solver.SolverOption(RelativeTolerance, 18, 1e-06);
    Solver.SolverOption(RelativeTolerance, 19, 1e-06);
    Solver.SolverOption(RelativeTolerance, 20, 1e-06);
    Solver.SolverOption(RelativeTolerance, 21, 1e-06);
    Solver.SolverOption(RelativeTolerance, 22, 1e-06);
    Solver.SolverOption(RelativeTolerance, 23, 1e-06);
    Solver.SolverOption(RelativeTolerance, 24, 1e-06);
    Solver.SolverOption(RelativeTolerance, 25, 1e-06);
    Solver.SolverOption(RelativeTolerance, 26, 1e-06);
    Solver.SolverOption(RelativeTolerance, 27, 1e-06);
    Solver.SolverOption(RelativeTolerance, 28, 1e-06);
    Solver.SolverOption(RelativeTolerance, 29, 1e-06);
    Solver.SolverOption(RelativeTolerance, 30, 1e-06);
    Solver.SolverOption(RelativeTolerance, 31, 1e-06);
    Solver.SolverOption(RelativeTolerance, 32, 1e-06);
    Solver.SolverOption(RelativeTolerance, 33, 1e-06);
    Solver.SolverOption(RelativeTolerance, 34, 1e-06);
    Solver.SolverOption(RelativeTolerance, 35, 1e-06);
    Solver.SolverOption(RelativeTolerance, 36, 1e-06);
    Solver.SolverOption(RelativeTolerance, 37, 1e-06);
    Solver.SolverOption(RelativeTolerance, 38, 1e-06);
    Solver.SolverOption(RelativeTolerance, 39, 1e-06);
    Solver.SolverOption(RelativeTolerance, 40, 1e-06);
    Solver.SolverOption(RelativeTolerance, 41, 1e-06);
    Solver.SolverOption(RelativeTolerance, 42, 1e-06);
    Solver.SolverOption(RelativeTolerance, 43, 1e-06);
    Solver.SolverOption(RelativeTolerance, 44, 1e-06);
    Solver.SolverOption(RelativeTolerance, 45, 1e-06);
    Solver.SolverOption(RelativeTolerance, 46, 1e-06);
    Solver.SolverOption(RelativeTolerance, 47, 1e-06);
    Solver.SolverOption(RelativeTolerance, 48, 1e-06);
    Solver.SolverOption(RelativeTolerance, 49, 1e-06);
    Solver.SolverOption(RelativeTolerance, 50, 1e-06);
    Solver.SolverOption(RelativeTolerance, 51, 1e-06);
    Solver.SolverOption(RelativeTolerance, 52, 1e-06);
    Solver.SolverOption(RelativeTolerance, 53, 1e-06);
    Solver.SolverOption(RelativeTolerance, 54, 1e-06);
    Solver.SolverOption(RelativeTolerance, 55, 1e-06);
    Solver.SolverOption(RelativeTolerance, 56, 1e-06);
    Solver.SolverOption(RelativeTolerance, 57, 1e-06);
    Solver.SolverOption(RelativeTolerance, 58, 1e-06);
    Solver.SolverOption(RelativeTolerance, 59, 1e-06);
    Solver.SolverOption(RelativeTolerance, 60, 1e-06);
    Solver.SolverOption(RelativeTolerance, 61, 1e-06);
    Solver.SolverOption(RelativeTolerance, 62, 1e-06);
    Solver.SolverOption(RelativeTolerance, 63, 1e-06);
    Solver.SolverOption(RelativeTolerance, 64, 1e-06);
    Solver.SolverOption(RelativeTolerance, 65, 1e-06);
    Solver.SolverOption(RelativeTolerance, 66, 1e-06);
    Solver.SolverOption(RelativeTolerance, 67, 1e-06);
    Solver.SolverOption(RelativeTolerance, 68, 1e-06);
    Solver.SolverOption(RelativeTolerance, 69, 1e-06);
    Solver.SolverOption(RelativeTolerance, 70, 1e-06);
    Solver.SolverOption(RelativeTolerance, 71, 1e-06);
    Solver.SolverOption(RelativeTolerance, 72, 1e-06);
    Solver.SolverOption(RelativeTolerance, 73, 1e-06);
    Solver.SolverOption(RelativeTolerance, 74, 1e-06);
    Solver.SolverOption(RelativeTolerance, 75, 1e-06);
    Solver.SolverOption(RelativeTolerance, 76, 1e-06);
    Solver.SolverOption(RelativeTolerance, 77, 1e-06);
    Solver.SolverOption(RelativeTolerance, 78, 1e-06);
    Solver.SolverOption(RelativeTolerance, 79, 1e-06);
    Solver.SolverOption(RelativeTolerance, 80, 1e-06);
    Solver.SolverOption(RelativeTolerance, 81, 1e-06);
    Solver.SolverOption(RelativeTolerance, 82, 1e-06);
    Solver.SolverOption(RelativeTolerance, 83, 1e-06);
    Solver.SolverOption(RelativeTolerance, 84, 1e-06);
    Solver.SolverOption(RelativeTolerance, 85, 1e-06);
    Solver.SolverOption(RelativeTolerance, 86, 1e-06);
    Solver.SolverOption(RelativeTolerance, 87, 1e-06);
    Solver.SolverOption(RelativeTolerance, 88, 1e-06);
    Solver.SolverOption(RelativeTolerance, 89, 1e-06);
    Solver.SolverOption(RelativeTolerance, 90, 1e-06);
    Solver.SolverOption(RelativeTolerance, 91, 1e-06);
    Solver.SolverOption(RelativeTolerance, 92, 1e-06);
    Solver.SolverOption(RelativeTolerance, 93, 1e-06);
    Solver.SolverOption(RelativeTolerance, 94, 1e-06);
    Solver.SolverOption(RelativeTolerance, 95, 1e-06);
    Solver.SolverOption(RelativeTolerance, 96, 1e-06);
    Solver.SolverOption(RelativeTolerance, 97, 1e-06);
    Solver.SolverOption(RelativeTolerance, 98, 1e-06);
    Solver.SolverOption(RelativeTolerance, 99, 1e-06);
    Solver.SolverOption(RelativeTolerance, 100, 1e-06);
    Solver.SolverOption(RelativeTolerance, 101, 1e-06);
    Solver.SolverOption(RelativeTolerance, 102, 1e-06);
    Solver.SolverOption(RelativeTolerance, 103, 1e-06);
    Solver.SolverOption(RelativeTolerance, 104, 1e-06);
    Solver.SolverOption(RelativeTolerance, 105, 1e-06);
    Solver.SolverOption(RelativeTolerance, 106, 1e-06);
    Solver.SolverOption(RelativeTolerance, 107, 1e-06);
   
    
    int NumberOfSimulationLaunches = NumberOfProblems / NT + (NumberOfProblems % NT == 0 ? 0:1);
    ofstream DataFile;
    DataFile.open ( "BIOMD452.csv" );
    clock_t SimulationStart = clock();
    clock_t TransientStart;
    clock_t TransientEnd;    
    for (int i=0; i < NumberOfSimulationLaunches; i++) {
        FillSolverObject(Solver, i*NT, NT);
        Solver.SynchroniseFromHostToDevice(All);
        Solver.InsertSynchronisationPoint();
        Solver.SynchroniseSolver();

        TransientStart = clock();
        for (int j=0; j < 1; j++) {
            Solver.Solve();
            Solver.InsertSynchronisationPoint();
            Solver.SynchroniseSolver();
        }
        TransientEnd = clock();
        cout << "Launches: " << i << "  Simulation time: ";
        cout << 1000.0*(TransientEnd-TransientStart) / CLOCKS_PER_SEC << "ms" << endl << endl;
        for (int j=0; j<1; j++)
        {
            Solver.Solve();
            Solver.SynchroniseFromDeviceToHost(All);
            Solver.InsertSynchronisationPoint();
            Solver.SynchroniseSolver();
            SaveData(Solver, DataFile, NT);
        }
    }

    clock_t SimulationEnd = clock();
    cout << "Total simulation time: " << 1000.0*(SimulationEnd-SimulationStart) / CLOCKS_PER_SEC << "ms";
    cout << endl;
	
    DataFile.close();
    
    Solver.Print(DenseOutput, 0);
    Solver.Print(ActualState);
    Solver.Print(ActualTime);
	
    cout << "Test finished!" << endl;

    return 0;
}

