within BIOMD572;
class Reactions

    input Real elmt_Acetoin;
    input Real elmt_CoA;
    input Real elmt_Ethanol;
    input Real elmt_Acetate;
    input Real elmt_NAD;
    input Real elmt_Acetoin_Ext;
    input Real elmt_ATP;
    input Real elmt_PEP;
    input Real elmt_BPG;
    input Real elmt_Mannitol_Ext;
    input Real elmt_G3P;
    input Real elmt_Mannitol1Phosphate;
    input Real elmt_Mannitol;
    input Real elmt_compartment_1;
    input Real elmt_ADP;
    input Real elmt_NADH;
    input Real elmt_AcetCoA;
    input Real elmt_FBP;
    input Real elmt_Pint;
    input Real elmt_F6P;
    input Real elmt_Lactate;
    input Real elmt_Glucose;
    input Real elmt_G6P;
    input Real elmt_Pext;
    input Real elmt_Butanediol;
    input Real elmt_Formate;
    input Real elmt_PYR;

    Real elmt_re15(unit = "") "PGI";
    parameter Real elmt_re15_elmt_Keq_PGI(unit "") = 0.43 "";
    parameter Real elmt_re15_elmt_kmF6P_PGI(unit "") = 3.13894 "";
    parameter Real elmt_re15_elmt_kmG6P_PGI(unit "") = 0.199409 "";
    parameter Real elmt_re15_elmt_Vmax_PGI(unit "") = 21.681 "";
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_re26(unit = "") "PA";
    parameter Real elmt_re26_elmt_Vmax_ALS(unit "") = 0.354581 "";
    parameter Real elmt_re26_elmt_Keq_ALS(unit "") = 900000.0 "";
    parameter Real elmt_re26_elmt_kmAcetoin_ALS(unit "") = 0.0495418 "";
    parameter Real elmt_re26_elmt_kmPYR_ALS(unit "") = 0.262819 "";
    Real elmt_reactant50 "";
    Real elmt_product51 "";
    Real elmt_re16(unit = "") "PFK";
    parameter Real elmt_re16_elmt_kmATP_PFK(unit "") = 0.0616607 "";
    parameter Real elmt_re16_elmt_kmF6P_PFK(unit "") = 1.01973 "";
    parameter Real elmt_re16_elmt_kmADP_PFK(unit "") = 10.7357 "";
    parameter Real elmt_re16_elmt_kmFBP_PFK(unit "") = 86.8048 "";
    parameter Real elmt_re16_elmt_Vmax_PFK(unit "") = 18.3577 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_product15 "";
    Real elmt_reactant13 "";
    Real elmt_re27(unit = "") "AB";
    parameter Real elmt_re27_elmt_kmButanediol_BDH(unit "") = 1.80684 "";
    parameter Real elmt_re27_elmt_Keq_BDH(unit "") = 1400.0 "";
    parameter Real elmt_re27_elmt_kmNAD_BDH(unit "") = 1.29567 "";
    parameter Real elmt_re27_elmt_kmAcetoin_BDH(unit "") = 5.62373 "";
    parameter Real elmt_re27_elmt_kmNADH_BDH(unit "") = 3.54858 "";
    parameter Real elmt_re27_elmt_Vmax_BDH(unit "") = 2.28578 "";
    Real elmt_reactant52 "";
    Real elmt_reactant53 "";
    Real elmt_product55 "";
    Real elmt_product54 "";
    Real elmt_re17(unit = "") "FBA";
    parameter Real elmt_re17_elmt_Keq_FBA(unit "") = 0.056 "";
    parameter Real elmt_re17_elmt_kmFBP_FBA(unit "") = 0.300745 "";
    parameter Real elmt_re17_elmt_kmG3P_FBA(unit "") = 10.1058 "";
    parameter Real elmt_re17_elmt_Vmax_FBA(unit "") = 56.1311 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_re28(unit = "") "MPD";
    parameter Real elmt_re28_elmt_Keq_MPD(unit "") = 200.0 "";
    parameter Real elmt_re28_elmt_kmNAD_MPD(unit "") = 0.373149 "";
    parameter Real elmt_re28_elmt_kiF6P_MPD(unit "") = 22.0284 "";
    parameter Real elmt_re28_elmt_kmNADH_MPD(unit "") = 0.0303446 "";
    parameter Real elmt_re28_elmt_Vmax_MPD(unit "") = 1.32695 "";
    parameter Real elmt_re28_elmt_kmMannitol1Phoshate_MPD(unit "") = 0.0891203 "";
    parameter Real elmt_re28_elmt_kmF6P_MPD(unit "") = 0.321372 "";
    Real elmt_product59 "";
    Real elmt_product58 "";
    Real elmt_reactant56 "";
    Real elmt_reactant57 "";
    Real elmt_re18(unit = "") "GAPDH";
    parameter Real elmt_re18_elmt_Keq_GAPDH(unit "") = 7.0E-4 "";
    parameter Real elmt_re18_elmt_Vmax_GAPDH(unit "") = 30.0058 "";
    parameter Real elmt_re18_elmt_kmBPG_GAPDH(unit "") = 0.0481603 "";
    parameter Real elmt_re18_elmt_kmNADH_GAPDH(unit "") = 0.643019 "";
    parameter Real elmt_re18_elmt_kmPint_GAPDH(unit "") = 6.75302 "";
    parameter Real elmt_re18_elmt_kmG3P_GAPDH(unit "") = 0.181788 "";
    parameter Real elmt_re18_elmt_kmNAD_GAPDH(unit "") = 0.0477445 "";
    Real elmt_reactant20 "";
    Real elmt_product23 "";
    Real elmt_reactant19 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_re29(unit = "") "MP";
    parameter Real elmt_re29_elmt_kmMannitol1Phosphate_MP(unit "") = 3.51571 "";
    parameter Real elmt_re29_elmt_kmMannitol_MP(unit "") = 0.238849 "";
    parameter Real elmt_re29_elmt_Vmax_MP(unit "") = 3.48563 "";
    Real elmt_product61 "";
    Real elmt_reactant60 "";
    Real elmt_re30(unit = "") "PTS_Man";
    parameter Real elmt_re30_elmt_kmPEP_PTS_Man(unit "") = 2.20816 "";
    parameter Real elmt_re30_elmt_kmMannitol1Phosphate_PTS_Man(unit "") = 0.362571 "";
    parameter Real elmt_re30_elmt_kmPYR_PTS_Man(unit "") = 0.344134 "";
    parameter Real elmt_re30_elmt_kmMannitolExt_PTS_Man(unit "") = 0.0127321 "";
    parameter Real elmt_re30_elmt_Vmax_PTS_Man(unit "") = 4.44903 "";
    Real elmt_reactant62 "";
    Real elmt_reactant63 "";
    Real elmt_product65 "";
    Real elmt_product64 "";
    Real elmt_re20(unit = "") "ENO";
    parameter Real elmt_re20_elmt_kmPEP_ENO(unit "") = 1.38899 "";
    parameter Real elmt_re20_elmt_Keq_ENO(unit "") = 27.55 "";
    parameter Real elmt_re20_elmt_kmATP_ENO(unit "") = 0.748238 "";
    parameter Real elmt_re20_elmt_kmBPG_ENO(unit "") = 0.0241572 "";
    parameter Real elmt_re20_elmt_kmADP_ENO(unit "") = 0.413195 "";
    parameter Real elmt_re20_elmt_Vmax_ENO(unit "") = 29.132 "";
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_product26 "";
    Real elmt_reactant24 "";
    Real elmt_re31(unit = "") "Acetoin_transp";
    parameter Real elmt_re31_elmt_Vmax_Acetoin_transp(unit "") = 1.60066 "";
    parameter Real elmt_re31_elmt_kmAcetoin_Acetoin_transp(unit "") = 1.89255 "";
    parameter Real elmt_re31_elmt_kmAcetoin_Ext_Acetoin_transp(unit "") = 7.05248 "";
    Real elmt_product67 "";
    Real elmt_reactant66 "";
    Real elmt_re21(unit = "") "PYK";
    parameter Real elmt_re21_elmt_kaFBP_PYK(unit "") = 0.0388651 "";
    parameter Real elmt_re21_elmt_kmPEP_PYK(unit "") = 0.330583 "";
    parameter Real elmt_re21_elmt_kmPYR_PYK(unit "") = 96.4227 "";
    parameter Real elmt_re21_elmt_nPYK(unit "") = 3.0 "";
    parameter Real elmt_re21_elmt_kmADP_PYK(unit "") = 3.07711 "";
    parameter Real elmt_re21_elmt_kmATP_PYK(unit "") = 29.6028 "";
    parameter Real elmt_re21_elmt_Vmax_PYK(unit "") = 2.22404 "";
    parameter Real elmt_re21_elmt_kiPint_PYK(unit "") = 3.70071 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_product31 "";
    Real elmt_reactant28 "";
    Real elmt_re32(unit = "") "Mannitol_transp";
    parameter Real elmt_re32_elmt_kmMannitol_Mannitol_transp(unit "") = 0.0223502 "";
    parameter Real elmt_re32_elmt_kmMannitol_Ext_Mannitol_transp(unit "") = 0.940662 "";
    parameter Real elmt_re32_elmt_Vmax_Mannitol_transp(unit "") = 1.62459 "";
    Real elmt_product69 "";
    Real elmt_reactant68 "";
    Real elmt_re22(unit = "") "LDH";
    parameter Real elmt_re22_elmt_kmNADH_LDH(unit "") = 0.144443 "";
    parameter Real elmt_re22_elmt_kiPint_LDH(unit "") = 0.0676829 "";
    parameter Real elmt_re22_elmt_Vmax_LDH(unit "") = 566.598 "";
    parameter Real elmt_re22_elmt_kmLactate_LDH(unit "") = 94.1203 "";
    parameter Real elmt_re22_elmt_kmNAD_LDH(unit "") = 3.08447 "";
    parameter Real elmt_re22_elmt_kaFBP_LDH(unit "") = 0.0184011 "";
    parameter Real elmt_re22_elmt_kmPYR_LDH(unit "") = 0.01 "";
    Real elmt_product34 "";
    Real elmt_product35 "";
    Real elmt_reactant32 "";
    Real elmt_reactant33 "";
    Real elmt_re33(unit = "") "FBPase";
    parameter Real elmt_re33_elmt_kmFBP_FBPase(unit "") = 0.412307 "";
    parameter Real elmt_re33_elmt_kmF6P_FBPase(unit "") = 1.90796 "";
    parameter Real elmt_re33_elmt_Vmax_FBPase(unit "") = 0.0970486 "";
    parameter Real elmt_re33_elmt_kmPint_FBPase(unit "") = 0.0109675 "";
    Real elmt_product72 "";
    Real elmt_product71 "";
    Real elmt_reactant70 "";
    Real elmt_re12(unit = "") "PTS_Glc";
    parameter Real elmt_re12_elmt_kmPYR_PTS_Glc(unit "") = 1.95993 "";
    parameter Real elmt_re12_elmt_kmG6P_PTS_Glc(unit "") = 0.284871 "";
    parameter Real elmt_re12_elmt_kmPEP_PTS_Glc(unit "") = 0.305604 "";
    parameter Real elmt_re12_elmt_kmGlucose_PTS_Glc(unit "") = 0.0485045 "";
    parameter Real elmt_re12_elmt_Vmax_PTS_Glc(unit "") = 3.71082 "";
    parameter Real elmt_re12_elmt_kaPint_PTS_Glc(unit "") = 0.070909 "";
    parameter Real elmt_re12_elmt_kiFBP_PTS_Glc(unit "") = 1.16937 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_re23(unit = "") "PDH";
    parameter Real elmt_re23_elmt_kmPYR_PFL(unit "") = 5.77662 "";
    parameter Real elmt_re23_elmt_Keq_PFL(unit "") = 650.0 "";
    parameter Real elmt_re23_elmt_kmAcetCoA_PFL(unit "") = 7.34319 "";
    parameter Real elmt_re23_elmt_kiG3P_PFL(unit "") = 0.511288 "";
    parameter Real elmt_re23_elmt_kmFormate_PFL(unit "") = 54.2693 "";
    parameter Real elmt_re23_elmt_KmCoA_PFL(unit "") = 0.124066 "";
    parameter Real elmt_re23_elmt_Vmax_PFL(unit "") = 0.00230934 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_product39 "";
    Real elmt_re13(unit = "") "ATPase";
    parameter Real elmt_re13_elmt_nATPase(unit "") = 3.0 "";
    parameter Real elmt_re13_elmt_kmATP_ATPase(unit "") = 4.34159 "";
    parameter Real elmt_re13_elmt_Vmax_ATPase(unit "") = 3.2901 "";
    Real elmt_reactant4 "";
    Real elmt_product6 "";
    Real elmt_product5 "";
    Real elmt_re24(unit = "") "AE";
    parameter Real elmt_re24_elmt_kmNADH_AE(unit "") = 0.43127 "";
    parameter Real elmt_re24_elmt_kmEthanol_AE(unit "") = 2.28106 "";
    parameter Real elmt_re24_elmt_kmCoA_AE(unit "") = 0.091813 "";
    parameter Real elmt_re24_elmt_kmNAD_AE(unit "") = 1.31442 "";
    parameter Real elmt_re24_elmt_kiATP_AE(unit "") = 6.28119 "";
    parameter Real elmt_re24_elmt_Vmax_AE(unit "") = 2.11844 "";
    parameter Real elmt_re24_elmt_kmAcetCoA_AE(unit "") = 7.38021 "";
    Real elmt_reactant40 "";
    Real elmt_reactant41 "";
    Real elmt_product44 "";
    Real elmt_product43 "";
    Real elmt_product42 "";
    Real elmt_re14(unit = "") "P_transp";
    parameter Real elmt_re14_elmt_kmPext_Ptransport(unit "") = 0.749898 "";
    parameter Real elmt_re14_elmt_kmADP_Ptransport(unit "") = 0.192278 "";
    parameter Real elmt_re14_elmt_kmATP_Ptransport(unit "") = 0.523288 "";
    parameter Real elmt_re14_elmt_kmPint_Ptransport(unit "") = 0.30336 "";
    parameter Real elmt_re14_elmt_kiPint_Ptransport(unit "") = 0.561093 "";
    parameter Real elmt_re14_elmt_Vmax_Ptransport(unit "") = 3.59588 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant7 "";
    Real elmt_re25(unit = "") "AC";
    parameter Real elmt_re25_elmt_Vmax_ACK(unit "") = 3.83918 "";
    parameter Real elmt_re25_elmt_kmATP_ACK(unit "") = 14.1556 "";
    parameter Real elmt_re25_elmt_kmAcetate_ACK(unit "") = 0.552221 "";
    parameter Real elmt_re25_elmt_kmAcetCoA_ACK(unit "") = 0.55824 "";
    parameter Real elmt_re25_elmt_kmADP_ACK(unit "") = 1.17242 "";
    parameter Real elmt_re25_elmt_kmCoA_ACK(unit "") = 0.173388 "";
    Real elmt_product49 "";
    Real elmt_product48 "";
    Real elmt_product47 "";
    Real elmt_reactant45 "";
    Real elmt_reactant46 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_product72 = 1.0;
        elmt_reactant41 = 2.0;
        elmt_product71 = 1.0;
        elmt_product34 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product27 = 1.0;
        elmt_product26 = 1.0;
        elmt_product69 = 1.0;
        elmt_reactant50 = 2.0;
        elmt_reactant52 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product44 = 1.0;
        elmt_product43 = 2.0;
        elmt_product42 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product38 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_product55 = 1.0;
        elmt_product54 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product49 = 1.0;
        elmt_product48 = 1.0;
        elmt_product47 = 1.0;
        elmt_product9 = 2.0;
        elmt_reactant1 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product6 = 1.0;
        elmt_product23 = 1.0;
        elmt_product67 = 1.0;
        elmt_product22 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product64 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product15 = 1.0;
        elmt_product59 = 1.0;
        elmt_product58 = 1.0;
        elmt_product18 = 2.0;


    equation
        elmt_re15 = (elmt_compartment_1 * ((((elmt_re15_elmt_Vmax_PGI * (elmt_G6P / elmt_re15_elmt_kmG6P_PGI)) - ((elmt_re15_elmt_Vmax_PGI / elmt_re15_elmt_Keq_PGI) * (elmt_F6P / elmt_re15_elmt_kmG6P_PGI))) / (1.0 + (elmt_G6P / elmt_re15_elmt_kmG6P_PGI) + (elmt_F6P / elmt_re15_elmt_kmF6P_PGI)))));
        elmt_re26 = (elmt_compartment_1 * ((((elmt_re26_elmt_Vmax_ALS * Functions.pow((elmt_PYR / elmt_re26_elmt_kmPYR_ALS), 2.0)) - ((elmt_re26_elmt_Vmax_ALS / elmt_re26_elmt_Keq_ALS) * (elmt_Acetoin / elmt_re26_elmt_kmPYR_ALS))) / ((1.0 + (elmt_PYR / elmt_re26_elmt_kmPYR_ALS) + Functions.pow((elmt_PYR / elmt_re26_elmt_kmPYR_ALS), 2.0) + 1.0 + (elmt_Acetoin / elmt_re26_elmt_kmAcetoin_ALS)) - 1.0))));
        elmt_re16 = (elmt_compartment_1 * (((elmt_re16_elmt_Vmax_PFK * (elmt_F6P / elmt_re16_elmt_kmF6P_PFK) * (elmt_ATP / elmt_re16_elmt_kmATP_PFK)) / ((((1.0 + (elmt_F6P / elmt_re16_elmt_kmF6P_PFK)) * (1.0 + (elmt_ATP / elmt_re16_elmt_kmATP_PFK))) + ((1.0 + (elmt_FBP / elmt_re16_elmt_kmFBP_PFK)) * (1.0 + (elmt_ADP / elmt_re16_elmt_kmADP_PFK)))) - 1.0))));
        elmt_re27 = ((((elmt_re27_elmt_Vmax_BDH * (elmt_Acetoin / elmt_re27_elmt_kmAcetoin_BDH) * (elmt_NADH / elmt_re27_elmt_kmNADH_BDH)) - ((elmt_re27_elmt_Vmax_BDH / elmt_re27_elmt_Keq_BDH) * (elmt_Butanediol / elmt_re27_elmt_kmAcetoin_BDH) * (elmt_NAD / elmt_re27_elmt_kmNADH_BDH))) / ((((1.0 + (elmt_Acetoin / elmt_re27_elmt_kmAcetoin_BDH)) * (1.0 + (elmt_NADH / elmt_re27_elmt_kmNADH_BDH))) + ((1.0 + (elmt_Butanediol / elmt_re27_elmt_kmButanediol_BDH)) * (1.0 + (elmt_NAD / elmt_re27_elmt_kmNAD_BDH)))) - 1.0)));
        elmt_re17 = (elmt_compartment_1 * ((((elmt_re17_elmt_Vmax_FBA * (elmt_FBP / elmt_re17_elmt_kmFBP_FBA)) - ((elmt_re17_elmt_Vmax_FBA / elmt_re17_elmt_Keq_FBA) * (Functions.pow(elmt_G3P, 2.0) / elmt_re17_elmt_kmFBP_FBA))) / (1.0 + (elmt_FBP / elmt_re17_elmt_kmFBP_FBA) + (elmt_G3P / elmt_re17_elmt_kmG3P_FBA) + Functions.pow((elmt_G3P / elmt_re17_elmt_kmG3P_FBA), 2.0)))));
        elmt_re28 = (elmt_compartment_1 * ((((elmt_re28_elmt_kiF6P_MPD / (elmt_F6P + elmt_re28_elmt_kiF6P_MPD)) * ((elmt_re28_elmt_Vmax_MPD * (elmt_F6P / elmt_re28_elmt_kmF6P_MPD) * (elmt_NADH / elmt_re28_elmt_kmNADH_MPD)) - ((elmt_re28_elmt_Vmax_MPD / elmt_re28_elmt_Keq_MPD) * (elmt_Mannitol1Phosphate / elmt_re28_elmt_kmF6P_MPD) * (elmt_NAD / elmt_re28_elmt_kmNADH_MPD)))) / ((((1.0 + (elmt_F6P / elmt_re28_elmt_kmF6P_MPD)) * (1.0 + (elmt_NADH / elmt_re28_elmt_kmNADH_MPD))) + ((1.0 + (elmt_Mannitol1Phosphate / elmt_re28_elmt_kmMannitol1Phoshate_MPD)) * (1.0 + (elmt_NAD / elmt_re28_elmt_kmNAD_MPD)))) - 1.0))));
        elmt_re18 = (elmt_compartment_1 * ((((elmt_re18_elmt_Vmax_GAPDH * (elmt_G3P / elmt_re18_elmt_kmG3P_GAPDH) * (elmt_NAD / elmt_re18_elmt_kmNAD_GAPDH) * (elmt_Pint / elmt_re18_elmt_kmPint_GAPDH)) - ((elmt_re18_elmt_Vmax_GAPDH / elmt_re18_elmt_Keq_GAPDH) * (elmt_BPG / elmt_re18_elmt_kmG3P_GAPDH) * (elmt_NADH / elmt_re18_elmt_kmNAD_GAPDH) * (1.0 / elmt_re18_elmt_kmPint_GAPDH))) / ((((1.0 + (elmt_G3P / elmt_re18_elmt_kmG3P_GAPDH)) * (1.0 + (elmt_Pint / elmt_re18_elmt_kmPint_GAPDH)) * (1.0 + (elmt_NAD / elmt_re18_elmt_kmNAD_GAPDH))) + ((1.0 + (elmt_BPG / elmt_re18_elmt_kmBPG_GAPDH)) * (1.0 + (elmt_NADH / elmt_re18_elmt_kmNADH_GAPDH)))) - 1.0))));
        elmt_re29 = (elmt_compartment_1 * (((elmt_re29_elmt_Vmax_MP * (elmt_Mannitol1Phosphate / elmt_re29_elmt_kmMannitol1Phosphate_MP)) / ((1.0 + (elmt_Mannitol1Phosphate / elmt_re29_elmt_kmMannitol1Phosphate_MP) + 1.0 + (elmt_Mannitol / elmt_re29_elmt_kmMannitol_MP)) - 1.0))));
        elmt_re30 = (((elmt_re30_elmt_Vmax_PTS_Man * (elmt_Mannitol_Ext / elmt_re30_elmt_kmMannitolExt_PTS_Man) * (elmt_PEP / elmt_re30_elmt_kmPEP_PTS_Man)) / ((((1.0 + (elmt_Mannitol_Ext / elmt_re30_elmt_kmMannitolExt_PTS_Man)) * (1.0 + (elmt_PEP / elmt_re30_elmt_kmPEP_PTS_Man))) + ((1.0 + (elmt_Mannitol1Phosphate / elmt_re30_elmt_kmMannitol1Phosphate_PTS_Man)) * (1.0 + (elmt_PYR / elmt_re30_elmt_kmPYR_PTS_Man)))) - 1.0)));
        elmt_re20 = (elmt_compartment_1 * ((((elmt_re20_elmt_Vmax_ENO * (elmt_BPG / elmt_re20_elmt_kmBPG_ENO) * (elmt_ADP / elmt_re20_elmt_kmADP_ENO)) - ((elmt_re20_elmt_Vmax_ENO / elmt_re20_elmt_Keq_ENO) * (elmt_PEP / elmt_re20_elmt_kmBPG_ENO) * (elmt_ATP / elmt_re20_elmt_kmADP_ENO))) / ((((1.0 + (elmt_BPG / elmt_re20_elmt_kmBPG_ENO)) * (1.0 + (elmt_ADP / elmt_re20_elmt_kmADP_ENO))) + ((1.0 + (elmt_PEP / elmt_re20_elmt_kmPEP_ENO)) * (1.0 + (elmt_ATP / elmt_re20_elmt_kmATP_ENO)))) - 1.0))));
        elmt_re31 = (((elmt_re31_elmt_Vmax_Acetoin_transp * (elmt_Acetoin / elmt_re31_elmt_kmAcetoin_Acetoin_transp)) / (1.0 + (elmt_Acetoin / elmt_re31_elmt_kmAcetoin_Acetoin_transp) + (elmt_Acetoin_Ext / elmt_re31_elmt_kmAcetoin_Ext_Acetoin_transp))));
        elmt_re21 = (elmt_compartment_1 * ((((elmt_FBP / (elmt_FBP + elmt_re21_elmt_kaFBP_PYK)) * (Functions.pow(elmt_re21_elmt_kiPint_PYK, elmt_re21_elmt_nPYK) / (Functions.pow(elmt_Pint, elmt_re21_elmt_nPYK) + Functions.pow(elmt_re21_elmt_kiPint_PYK, elmt_re21_elmt_nPYK))) * elmt_re21_elmt_Vmax_PYK * (elmt_ADP / elmt_re21_elmt_kmADP_PYK) * (elmt_PEP / elmt_re21_elmt_kmPEP_PYK)) / ((((1.0 + (elmt_ADP / elmt_re21_elmt_kmADP_PYK)) * (1.0 + (elmt_PEP / elmt_re21_elmt_kmPEP_PYK))) + ((1.0 + (elmt_ATP / elmt_re21_elmt_kmATP_PYK)) * (1.0 + (elmt_PYR / elmt_re21_elmt_kmPYR_PYK)))) - 1.0))));
        elmt_re32 = (((elmt_re32_elmt_Vmax_Mannitol_transp * (elmt_Mannitol / elmt_re32_elmt_kmMannitol_Mannitol_transp)) / (1.0 + (elmt_Mannitol / elmt_re32_elmt_kmMannitol_Mannitol_transp) + (elmt_Mannitol_Ext / elmt_re32_elmt_kmMannitol_Ext_Mannitol_transp))));
        elmt_re22 = ((((elmt_FBP / (elmt_FBP + elmt_re22_elmt_kaFBP_LDH)) * (elmt_re22_elmt_kiPint_LDH / (elmt_Pint + elmt_re22_elmt_kiPint_LDH)) * elmt_re22_elmt_Vmax_LDH * (elmt_PYR / elmt_re22_elmt_kmPYR_LDH) * (elmt_NADH / elmt_re22_elmt_kmNADH_LDH)) / ((((1.0 + (elmt_PYR / elmt_re22_elmt_kmPYR_LDH)) * (1.0 + (elmt_NADH / elmt_re22_elmt_kmNADH_LDH))) + ((1.0 + (elmt_Lactate / elmt_re22_elmt_kmLactate_LDH)) * (1.0 + (elmt_NAD / elmt_re22_elmt_kmNAD_LDH)))) - 1.0)));
        elmt_re33 = (elmt_compartment_1 * (((elmt_re33_elmt_Vmax_FBPase * (elmt_FBP / elmt_re33_elmt_kmFBP_FBPase)) / ((elmt_FBP / elmt_re33_elmt_kmFBP_FBPase) + ((1.0 + (elmt_F6P / elmt_re33_elmt_kmF6P_FBPase)) * (1.0 + (elmt_Pint / elmt_re33_elmt_kmPint_FBPase)))))));
        elmt_re12 = ((((elmt_Pint / (elmt_Pint + elmt_re12_elmt_kaPint_PTS_Glc)) * (elmt_re12_elmt_kiFBP_PTS_Glc / (elmt_FBP + elmt_re12_elmt_kiFBP_PTS_Glc)) * elmt_re12_elmt_Vmax_PTS_Glc * (elmt_Glucose / elmt_re12_elmt_kmGlucose_PTS_Glc) * (elmt_PEP / elmt_re12_elmt_kmPEP_PTS_Glc)) / ((((1.0 + (elmt_Glucose / elmt_re12_elmt_kmGlucose_PTS_Glc)) * (1.0 + (elmt_PEP / elmt_re12_elmt_kmPEP_PTS_Glc))) + ((1.0 + (elmt_G6P / elmt_re12_elmt_kmG6P_PTS_Glc)) * (1.0 + (elmt_PYR / elmt_re12_elmt_kmPYR_PTS_Glc)))) - 1.0)));
        elmt_re23 = ((((elmt_re23_elmt_kiG3P_PFL / (elmt_G3P + elmt_re23_elmt_kiG3P_PFL)) * ((elmt_re23_elmt_Vmax_PFL * (elmt_PYR / elmt_re23_elmt_kmPYR_PFL) * (elmt_CoA / elmt_re23_elmt_KmCoA_PFL)) - ((elmt_re23_elmt_Vmax_PFL / elmt_re23_elmt_Keq_PFL) * (elmt_AcetCoA / elmt_re23_elmt_kmPYR_PFL) * (elmt_Formate / elmt_re23_elmt_KmCoA_PFL)))) / ((((1.0 + (elmt_PYR / elmt_re23_elmt_kmPYR_PFL)) * (1.0 + (elmt_CoA / elmt_re23_elmt_KmCoA_PFL))) + ((1.0 + (elmt_AcetCoA / elmt_re23_elmt_kmAcetCoA_PFL)) * (1.0 + (elmt_Formate / elmt_re23_elmt_kmFormate_PFL)))) - 1.0)));
        elmt_re13 = (elmt_compartment_1 * ((elmt_re13_elmt_Vmax_ATPase * (Functions.pow((elmt_ATP / elmt_re13_elmt_kmATP_ATPase), elmt_re13_elmt_nATPase) / (Functions.pow((elmt_ATP / elmt_re13_elmt_kmATP_ATPase), elmt_re13_elmt_nATPase) + 1.0)))));
        elmt_re24 = ((((elmt_re24_elmt_kiATP_AE / (elmt_ATP + elmt_re24_elmt_kiATP_AE)) * elmt_re24_elmt_Vmax_AE * (elmt_AcetCoA / elmt_re24_elmt_kmAcetCoA_AE) * Functions.pow((elmt_NADH / elmt_re24_elmt_kmNADH_AE), 2.0)) / ((((1.0 + (elmt_NADH / elmt_re24_elmt_kmNADH_AE) + Functions.pow((elmt_NADH / elmt_re24_elmt_kmNADH_AE), 2.0)) * (1.0 + (elmt_AcetCoA / elmt_re24_elmt_kmAcetCoA_AE))) + ((1.0 + (elmt_Ethanol / elmt_re24_elmt_kmEthanol_AE)) * (1.0 + (elmt_CoA / elmt_re24_elmt_kmCoA_AE)) * (1.0 + (elmt_NAD / elmt_re24_elmt_kmNAD_AE) + Functions.pow((elmt_NAD / elmt_re24_elmt_kmNAD_AE), 2.0)))) - 1.0)));
        elmt_re14 = ((((elmt_re14_elmt_kiPint_Ptransport / (elmt_Pint + elmt_re14_elmt_kiPint_Ptransport)) * elmt_re14_elmt_Vmax_Ptransport * (elmt_ATP / elmt_re14_elmt_kmATP_Ptransport) * (elmt_Pext / elmt_re14_elmt_kmPext_Ptransport)) / ((((1.0 + (elmt_Pext / elmt_re14_elmt_kmPext_Ptransport)) * (1.0 + (elmt_ATP / elmt_re14_elmt_kmATP_Ptransport))) + ((1.0 + (elmt_Pint / elmt_re14_elmt_kmPint_Ptransport) + Functions.pow((elmt_Pint / elmt_re14_elmt_kmPint_Ptransport), 2.0)) * (1.0 + (elmt_ADP / elmt_re14_elmt_kmADP_Ptransport)))) - 1.0)));
        elmt_re25 = (((elmt_re25_elmt_Vmax_ACK * (elmt_AcetCoA / elmt_re25_elmt_kmAcetCoA_ACK) * (elmt_ADP / elmt_re25_elmt_kmADP_ACK)) / ((((1.0 + (elmt_AcetCoA / elmt_re25_elmt_kmAcetCoA_ACK)) * (1.0 + (elmt_ADP / elmt_re25_elmt_kmADP_ACK))) + ((1.0 + (elmt_Acetate / elmt_re25_elmt_kmAcetate_ACK)) * (1.0 + (elmt_ATP / elmt_re25_elmt_kmATP_ACK)) * (1.0 + (elmt_CoA / elmt_re25_elmt_kmCoA_ACK)))) - 1.0)));
        der(elmt_product30) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_product72) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product71) = 0;
        der(elmt_product34) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product27) = 0;
        der(elmt_product26) = 0;
        der(elmt_product69) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product44) = 0;
        der(elmt_product43) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product38) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_product55) = 0;
        der(elmt_product54) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product49) = 0;
        der(elmt_product48) = 0;
        der(elmt_product47) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product67) = 0;
        der(elmt_product22) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product15) = 0;
        der(elmt_product59) = 0;
        der(elmt_product58) = 0;
        der(elmt_product18) = 0;

end Reactions;
