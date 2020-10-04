within BIOMD286;
class Parameters

    input Real elmt_p53_P;
    input Real elmt_Mdm2_P_Ub4;
    input Real elmt_Mdm2_P_Ub3;
    input Real elmt_Mdm2_P_Ub2;
    input Real elmt_Mdm2_P_Ub4_Proteasome;
    input Real elmt_Mdm2_p53_Ub;
    input Real elmt_Mdm2_p53_Ub4;
    input Real elmt_Mdm2_Ub3;
    input Real elmt_Mdm2_Ub4;
    input Real elmt_Mdm2_P;
    input Real elmt_Mdm2_p53_Ub2;
    input Real elmt_Mdm2_p53_Ub3;
    input Real elmt_Mdm2_Ub2;
    input Real elmt_Mdm2;
    input Real elmt_Mdm2_P1_p53_Ub4;
    input Real elmt_Mdm2_Ub;
    input Real elmt_p53;
    input Real elmt_Mdm2_p53;
    input Real elmt_Mdm2_Ub4_Proteasome;
    input Real elmt_Mdm2_P_Ub;
    input Real elmt_p53_Ub4_Proteasome;

    Real elmt_kdegTau20SProt(unit = "") "";
    Real elmt_kMdm2PolyUb(unit = "") "";
    Real elmt_kbinProt(unit = "") "";
    Real elmt_kproteff(unit = "") "";
    Real elmt_ksynTau(unit = "") "";
    Real elmt_ksynp53mRNA(unit = "") "";
    Real elmt_kbinE2Ub(unit = "") "";
    Real elmt_ktangfor(unit = "") "";
    Real elmt_ksynMdm2(unit = "") "";
    Real elmt_kbinGSK3bp53(unit = "") "";
    Real elmt_tot_mdm2(unit = "") "tot_mdm2";
    Real elmt_kbinMdm2p53(unit = "") "";
    Real elmt_kgenROSAbeta(unit = "") "";
    Real elmt_ksynMdm2mRNAGSK3bp53(unit = "") "";
    Real elmt_kbinTauProt(unit = "") "";
    Real elmt_kphosp53(unit = "") "";
    Real elmt_kp53Ub(unit = "") "";
    Real elmt_kaggAbeta(unit = "") "";
    Real elmt_kMdm2PUb(unit = "") "";
    Real elmt_kphosMdm2GSK3bp53(unit = "") "";
    Real elmt_krelMTTau(unit = "") "";
    Real elmt_kdam(unit = "") "";
    Real elmt_ksynMdm2mRNA(unit = "") "";
    Real elmt_ksynp53mRNAAbeta(unit = "") "";
    Real elmt_kphospTauGSK3b(unit = "") "";
    Real elmt_kdamBasalROS(unit = "") "";
    Real elmt_kMdm2Ub(unit = "") "";
    Real elmt_kdephosMdm2(unit = "") "";
    Real elmt_tot_p53(unit = "") "tot_p53";
    Real elmt_kdegp53(unit = "") "";
    Real elmt_kdephosp53(unit = "") "";
    Real elmt_kbinE1Ub(unit = "") "";
    Real elmt_kdegMdm2(unit = "") "";
    Real elmt_kactDUBProtp53(unit = "") "";
    Real elmt_kactDUBp53(unit = "") "";
    Real elmt_kdegAbeta(unit = "") "";
    Real elmt_kphosMdm2GSK3b(unit = "") "";
    Real elmt_kp53PolyUb(unit = "") "";
    Real elmt_kdegp53mRNA(unit = "") "";
    Real elmt_kinactATM(unit = "") "";
    Real elmt_kaggTau(unit = "") "";
    Real elmt_krelGSK3bp53(unit = "") "";
    Real elmt_kphosMdm2(unit = "") "";
    Real elmt_krepair(unit = "") "";
    Real elmt_kaggTauP2(unit = "") "";
    Real elmt_kaggTauP1(unit = "") "";
    Real elmt_kprodAbeta(unit = "") "";
    Real elmt_krelMdm2p53(unit = "") "";
    Real elmt_kdegMdm2mRNA(unit = "") "";
    Real elmt_kactDUBMdm2(unit = "") "";
    Real elmt_kactATM(unit = "") "";
    Real elmt_kdamROS(unit = "") "";
    Real elmt_kdephospTau(unit = "") "";
    Real elmt_kinhibprot(unit = "") "";
    Real elmt_kbinMTTau(unit = "") "";
    Real elmt_kpf(unit = "") "";
    Real elmt_kphospTauGSK3bp53(unit = "") "";
    Real elmt_ksynp53(unit = "") "";


    initial equation
        elmt_kdegTau20SProt = 0.01;
        elmt_kMdm2PolyUb = 0.00456;
        elmt_kbinProt = 2.0E-6;
        elmt_kproteff = 1.0;
        elmt_ksynTau = 8.0E-5;
        elmt_ksynp53mRNA = 0.001;
        elmt_kbinE2Ub = 0.001;
        elmt_ktangfor = 0.001;
        elmt_ksynMdm2 = 4.95E-4;
        elmt_kbinGSK3bp53 = 2.0E-6;
        elmt_kbinMdm2p53 = 0.001155;
        elmt_kgenROSAbeta = 1.0E-5;
        elmt_ksynMdm2mRNAGSK3bp53 = 7.0E-4;
        elmt_kbinTauProt = 1.925E-7;
        elmt_kphosp53 = 2.0E-4;
        elmt_kp53Ub = 5.0E-5;
        elmt_kaggAbeta = 1.0E-8;
        elmt_kMdm2PUb = 6.84E-6;
        elmt_kphosMdm2GSK3bp53 = 0.5;
        elmt_krelMTTau = 1.0E-4;
        elmt_kdam = 0.08;
        elmt_ksynMdm2mRNA = 5.0E-4;
        elmt_ksynp53mRNAAbeta = 1.0E-5;
        elmt_kphospTauGSK3b = 2.0E-4;
        elmt_kdamBasalROS = 1.0E-9;
        elmt_kMdm2Ub = 4.56E-6;
        elmt_kdephosMdm2 = 0.5;
        elmt_kdegp53 = 0.005;
        elmt_kdephosp53 = 0.5;
        elmt_kbinE1Ub = 2.0E-4;
        elmt_kdegMdm2 = 0.01;
        elmt_kactDUBProtp53 = 1.0E-4;
        elmt_kactDUBp53 = 1.0E-7;
        elmt_kdegAbeta = 1.0E-4;
        elmt_kphosMdm2GSK3b = 0.005;
        elmt_kp53PolyUb = 0.01;
        elmt_kdegp53mRNA = 1.0E-4;
        elmt_kinactATM = 5.0E-4;
        elmt_kaggTau = 1.0E-8;
        elmt_krelGSK3bp53 = 0.002;
        elmt_kphosMdm2 = 2.0;
        elmt_krepair = 2.0E-5;
        elmt_kaggTauP2 = 1.0E-7;
        elmt_kaggTauP1 = 1.0E-8;
        elmt_kprodAbeta = 5.0E-5;
        elmt_krelMdm2p53 = 1.155E-5;
        elmt_kdegMdm2mRNA = 5.0E-4;
        elmt_kactDUBMdm2 = 1.0E-7;
        elmt_kactATM = 1.0E-4;
        elmt_kdamROS = 1.0E-5;
        elmt_kdephospTau = 0.01;
        elmt_kinhibprot = 1.0E-5;
        elmt_kbinMTTau = 0.1;
        elmt_kpf = 0.001;
        elmt_kphospTauGSK3bp53 = 0.1;
        elmt_ksynp53 = 0.007;


    equation
        der(elmt_kdegTau20SProt) = 0;
        der(elmt_kMdm2PolyUb) = 0;
        der(elmt_kbinProt) = 0;
        der(elmt_kproteff) = 0;
        der(elmt_ksynTau) = 0;
        der(elmt_ksynp53mRNA) = 0;
        der(elmt_kbinE2Ub) = 0;
        der(elmt_ktangfor) = 0;
        der(elmt_ksynMdm2) = 0;
        der(elmt_kbinGSK3bp53) = 0;
        elmt_tot_mdm2 = (elmt_Mdm2 + elmt_Mdm2_p53 + elmt_Mdm2_P + elmt_Mdm2_p53_Ub + elmt_Mdm2_p53_Ub2 + elmt_Mdm2_p53_Ub3 + elmt_Mdm2_p53_Ub4 + elmt_Mdm2_P1_p53_Ub4 + elmt_Mdm2_Ub + elmt_Mdm2_Ub2 + elmt_Mdm2_Ub3 + elmt_Mdm2_Ub4 + elmt_Mdm2_P_Ub + elmt_Mdm2_P_Ub2 + elmt_Mdm2_P_Ub3 + elmt_Mdm2_P_Ub4 + elmt_Mdm2_Ub4_Proteasome + elmt_Mdm2_P_Ub4_Proteasome);
        der(elmt_kbinMdm2p53) = 0;
        der(elmt_kgenROSAbeta) = 0;
        der(elmt_ksynMdm2mRNAGSK3bp53) = 0;
        der(elmt_kbinTauProt) = 0;
        der(elmt_kphosp53) = 0;
        der(elmt_kp53Ub) = 0;
        der(elmt_kaggAbeta) = 0;
        der(elmt_kMdm2PUb) = 0;
        der(elmt_kphosMdm2GSK3bp53) = 0;
        der(elmt_krelMTTau) = 0;
        der(elmt_kdam) = 0;
        der(elmt_ksynMdm2mRNA) = 0;
        der(elmt_ksynp53mRNAAbeta) = 0;
        der(elmt_kphospTauGSK3b) = 0;
        der(elmt_kdamBasalROS) = 0;
        der(elmt_kMdm2Ub) = 0;
        der(elmt_kdephosMdm2) = 0;
        elmt_tot_p53 = (elmt_p53 + elmt_Mdm2_p53 + elmt_p53_P + elmt_Mdm2_p53_Ub + elmt_Mdm2_p53_Ub2 + elmt_Mdm2_p53_Ub3 + elmt_Mdm2_p53_Ub4 + elmt_Mdm2_P1_p53_Ub4 + elmt_p53_Ub4_Proteasome);
        der(elmt_kdegp53) = 0;
        der(elmt_kdephosp53) = 0;
        der(elmt_kbinE1Ub) = 0;
        der(elmt_kdegMdm2) = 0;
        der(elmt_kactDUBProtp53) = 0;
        der(elmt_kactDUBp53) = 0;
        der(elmt_kdegAbeta) = 0;
        der(elmt_kphosMdm2GSK3b) = 0;
        der(elmt_kp53PolyUb) = 0;
        der(elmt_kdegp53mRNA) = 0;
        der(elmt_kinactATM) = 0;
        der(elmt_kaggTau) = 0;
        der(elmt_krelGSK3bp53) = 0;
        der(elmt_kphosMdm2) = 0;
        der(elmt_krepair) = 0;
        der(elmt_kaggTauP2) = 0;
        der(elmt_kaggTauP1) = 0;
        der(elmt_kprodAbeta) = 0;
        der(elmt_krelMdm2p53) = 0;
        der(elmt_kdegMdm2mRNA) = 0;
        der(elmt_kactDUBMdm2) = 0;
        der(elmt_kactATM) = 0;
        der(elmt_kdamROS) = 0;
        der(elmt_kdephospTau) = 0;
        der(elmt_kinhibprot) = 0;
        der(elmt_kbinMTTau) = 0;
        der(elmt_kpf) = 0;
        der(elmt_kphospTauGSK3bp53) = 0;
        der(elmt_ksynp53) = 0;

end Parameters;
