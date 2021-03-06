within BIOMD286;
model BIOMD0000000462 "Proctor2010 - a link between GSK3 and p53 in Alzheimer's Disease" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Params.elmt_p53_P = elmt_cell.elmt_p53_P;
        Params.elmt_Mdm2_P_Ub4 = elmt_cell.elmt_Mdm2_P_Ub4;
        Params.elmt_Mdm2_P_Ub3 = elmt_cell.elmt_Mdm2_P_Ub3;
        Params.elmt_Mdm2_P_Ub2 = elmt_cell.elmt_Mdm2_P_Ub2;
        Params.elmt_Mdm2_P_Ub4_Proteasome = elmt_cell.elmt_Mdm2_P_Ub4_Proteasome;
        Params.elmt_Mdm2_p53_Ub = elmt_cell.elmt_Mdm2_p53_Ub;
        Params.elmt_Mdm2_p53_Ub4 = elmt_cell.elmt_Mdm2_p53_Ub4;
        Params.elmt_Mdm2_Ub3 = elmt_cell.elmt_Mdm2_Ub3;
        Params.elmt_Mdm2_Ub4 = elmt_cell.elmt_Mdm2_Ub4;
        Params.elmt_Mdm2_P = elmt_cell.elmt_Mdm2_P;
        Params.elmt_Mdm2_p53_Ub2 = elmt_cell.elmt_Mdm2_p53_Ub2;
        Params.elmt_Mdm2_p53_Ub3 = elmt_cell.elmt_Mdm2_p53_Ub3;
        Params.elmt_Mdm2_Ub2 = elmt_cell.elmt_Mdm2_Ub2;
        Params.elmt_Mdm2 = elmt_cell.elmt_Mdm2;
        Params.elmt_Mdm2_P1_p53_Ub4 = elmt_cell.elmt_Mdm2_P1_p53_Ub4;
        Params.elmt_Mdm2_Ub = elmt_cell.elmt_Mdm2_Ub;
        Params.elmt_p53 = elmt_cell.elmt_p53;
        Params.elmt_Mdm2_p53 = elmt_cell.elmt_Mdm2_p53;
        Params.elmt_Mdm2_Ub4_Proteasome = elmt_cell.elmt_Mdm2_Ub4_Proteasome;
        Params.elmt_Mdm2_P_Ub = elmt_cell.elmt_Mdm2_P_Ub;
        Params.elmt_p53_Ub4_Proteasome = elmt_cell.elmt_p53_Ub4_Proteasome;
        Reacs.elmt_kdegTau20SProt = Params.elmt_kdegTau20SProt;
        Reacs.elmt_ROS = elmt_cell.elmt_ROS;
        Reacs.elmt_AggAbeta = elmt_cell.elmt_AggAbeta;
        Reacs.elmt_p53_P = elmt_cell.elmt_p53_P;
        Reacs.elmt_ksynp53mRNA = Params.elmt_ksynp53mRNA;
        Reacs.elmt_ktangfor = Params.elmt_ktangfor;
        Reacs.elmt_kbinE2Ub = Params.elmt_kbinE2Ub;
        Reacs.elmt_ksynMdm2 = Params.elmt_ksynMdm2;
        Reacs.elmt_kbinGSK3bp53 = Params.elmt_kbinGSK3bp53;
        Reacs.elmt_Mdm2_Ub3 = elmt_cell.elmt_Mdm2_Ub3;
        Reacs.elmt_Mdm2_Ub4 = elmt_cell.elmt_Mdm2_Ub4;
        Reacs.elmt_Mdm2_mRNA = elmt_cell.elmt_Mdm2_mRNA;
        Reacs.elmt_Mdm2_P = elmt_cell.elmt_Mdm2_P;
        Reacs.elmt_Mdm2_Ub2 = elmt_cell.elmt_Mdm2_Ub2;
        Reacs.elmt_Mdm2_P_Ub = elmt_cell.elmt_Mdm2_P_Ub;
        Reacs.elmt_Mdm2DUB = elmt_cell.elmt_Mdm2DUB;
        Reacs.elmt_ksynMdm2mRNAGSK3bp53 = Params.elmt_ksynMdm2mRNAGSK3bp53;
        Reacs.elmt_GSK3b_p53_P = elmt_cell.elmt_GSK3b_p53_P;
        Reacs.elmt_p53DUB = elmt_cell.elmt_p53DUB;
        Reacs.elmt_Abeta = elmt_cell.elmt_Abeta;
        Reacs.elmt_kphosp53 = Params.elmt_kphosp53;
        Reacs.elmt_kaggAbeta = Params.elmt_kaggAbeta;
        Reacs.elmt_kp53Ub = Params.elmt_kp53Ub;
        Reacs.elmt_IR = elmt_cell.elmt_IR;
        Reacs.elmt_kMdm2PUb = Params.elmt_kMdm2PUb;
        Reacs.elmt_kphosMdm2GSK3bp53 = Params.elmt_kphosMdm2GSK3bp53;
        Reacs.elmt_krelMTTau = Params.elmt_krelMTTau;
        Reacs.elmt_kdam = Params.elmt_kdam;
        Reacs.elmt_ksynMdm2mRNA = Params.elmt_ksynMdm2mRNA;
        Reacs.elmt_ksynp53mRNAAbeta = Params.elmt_ksynp53mRNAAbeta;
        Reacs.elmt_Mdm2 = elmt_cell.elmt_Mdm2;
        Reacs.elmt_kdamBasalROS = Params.elmt_kdamBasalROS;
        Reacs.elmt_kphospTauGSK3b = Params.elmt_kphospTauGSK3b;
        Reacs.elmt_kMdm2Ub = Params.elmt_kMdm2Ub;
        Reacs.elmt_kdephosMdm2 = Params.elmt_kdephosMdm2;
        Reacs.elmt_AggTau = elmt_cell.elmt_AggTau;
        Reacs.elmt_E1_Ub = elmt_cell.elmt_E1_Ub;
        Reacs.elmt_kdephosp53 = Params.elmt_kdephosp53;
        Reacs.elmt_p53_mRNA = elmt_cell.elmt_p53_mRNA;
        Reacs.elmt_ATMA = elmt_cell.elmt_ATMA;
        Reacs.elmt_basalROS = elmt_cell.elmt_basalROS;
        Reacs.elmt_kdegAbeta = Params.elmt_kdegAbeta;
        Reacs.elmt_kphosMdm2GSK3b = Params.elmt_kphosMdm2GSK3b;
        Reacs.elmt_AggAbeta_Proteasome = elmt_cell.elmt_AggAbeta_Proteasome;
        Reacs.elmt_kp53PolyUb = Params.elmt_kp53PolyUb;
        Reacs.elmt_kinactATM = Params.elmt_kinactATM;
        Reacs.elmt_kdegp53mRNA = Params.elmt_kdegp53mRNA;
        Reacs.elmt_p53 = elmt_cell.elmt_p53;
        Reacs.elmt_Mdm2_Ub4_Proteasome = elmt_cell.elmt_Mdm2_Ub4_Proteasome;
        Reacs.elmt_kaggTau = Params.elmt_kaggTau;
        Reacs.elmt_kaggTauP2 = Params.elmt_kaggTauP2;
        Reacs.elmt_kaggTauP1 = Params.elmt_kaggTauP1;
        Reacs.elmt_Mdm2_P_Ub4_Proteasome = elmt_cell.elmt_Mdm2_P_Ub4_Proteasome;
        Reacs.elmt_kprodAbeta = Params.elmt_kprodAbeta;
        Reacs.elmt_kdamROS = Params.elmt_kdamROS;
        Reacs.elmt_ATMI = elmt_cell.elmt_ATMI;
        Reacs.elmt_AbetaPlaque = elmt_cell.elmt_AbetaPlaque;
        Reacs.elmt_kbinMTTau = Params.elmt_kbinMTTau;
        Reacs.elmt_Proteasome_Tau = elmt_cell.elmt_Proteasome_Tau;
        Reacs.elmt_Mdm2_p53 = elmt_cell.elmt_Mdm2_p53;
        Reacs.elmt_Tau_P2 = elmt_cell.elmt_Tau_P2;
        Reacs.elmt_ksynp53 = Params.elmt_ksynp53;
        Reacs.elmt_Tau_P1 = elmt_cell.elmt_Tau_P1;
        Reacs.elmt_kMdm2PolyUb = Params.elmt_kMdm2PolyUb;
        Reacs.elmt_kbinProt = Params.elmt_kbinProt;
        Reacs.elmt_kproteff = Params.elmt_kproteff;
        Reacs.elmt_PP1 = elmt_cell.elmt_PP1;
        Reacs.elmt_ksynTau = Params.elmt_ksynTau;
        Reacs.elmt_E2 = elmt_cell.elmt_E2;
        Reacs.elmt_GSK3b = elmt_cell.elmt_GSK3b;
        Reacs.elmt_E1 = elmt_cell.elmt_E1;
        Reacs.elmt_Mdm2_p53_Ub = elmt_cell.elmt_Mdm2_p53_Ub;
        Reacs.elmt_Mdm2_p53_Ub4 = elmt_cell.elmt_Mdm2_p53_Ub4;
        Reacs.elmt_Mdm2_p53_Ub2 = elmt_cell.elmt_Mdm2_p53_Ub2;
        Reacs.elmt_Mdm2_p53_Ub3 = elmt_cell.elmt_Mdm2_p53_Ub3;
        Reacs.elmt_Mdm2_P1_p53_Ub4 = elmt_cell.elmt_Mdm2_P1_p53_Ub4;
        Reacs.elmt_kgenROSAbeta = Params.elmt_kgenROSAbeta;
        Reacs.elmt_kbinMdm2p53 = Params.elmt_kbinMdm2p53;
        Reacs.elmt_E2_Ub = elmt_cell.elmt_E2_Ub;
        Reacs.elmt_kbinTauProt = Params.elmt_kbinTauProt;
        Reacs.elmt_Ub = elmt_cell.elmt_Ub;
        Reacs.elmt_Proteasome = elmt_cell.elmt_Proteasome;
        Reacs.elmt_p53_Ub4_Proteasome = elmt_cell.elmt_p53_Ub4_Proteasome;
        Reacs.elmt_MT_Tau = elmt_cell.elmt_MT_Tau;
        Reacs.elmt_Mdm2_P_Ub4 = elmt_cell.elmt_Mdm2_P_Ub4;
        Reacs.elmt_kdegp53 = Params.elmt_kdegp53;
        Reacs.elmt_Mdm2_P_Ub3 = elmt_cell.elmt_Mdm2_P_Ub3;
        Reacs.elmt_damDNA = elmt_cell.elmt_damDNA;
        Reacs.elmt_Mdm2_P_Ub2 = elmt_cell.elmt_Mdm2_P_Ub2;
        Reacs.elmt_ATP = elmt_cell.elmt_ATP;
        Reacs.elmt_Source = elmt_cell.elmt_Source;
        Reacs.elmt_kbinE1Ub = Params.elmt_kbinE1Ub;
        Reacs.elmt_kdegMdm2 = Params.elmt_kdegMdm2;
        Reacs.elmt_Tau = elmt_cell.elmt_Tau;
        Reacs.elmt_kactDUBp53 = Params.elmt_kactDUBp53;
        Reacs.elmt_GSK3b_p53 = elmt_cell.elmt_GSK3b_p53;
        Reacs.elmt_Mdm2_Ub = elmt_cell.elmt_Mdm2_Ub;
        Reacs.elmt_krelGSK3bp53 = Params.elmt_krelGSK3bp53;
        Reacs.elmt_kphosMdm2 = Params.elmt_kphosMdm2;
        Reacs.elmt_krepair = Params.elmt_krepair;
        Reacs.elmt_NFT = elmt_cell.elmt_NFT;
        Reacs.elmt_krelMdm2p53 = Params.elmt_krelMdm2p53;
        Reacs.elmt_kactDUBMdm2 = Params.elmt_kactDUBMdm2;
        Reacs.elmt_kdegMdm2mRNA = Params.elmt_kdegMdm2mRNA;
        Reacs.elmt_kactATM = Params.elmt_kactATM;
        Reacs.elmt_kdephospTau = Params.elmt_kdephospTau;
        Reacs.elmt_kinhibprot = Params.elmt_kinhibprot;
        Reacs.elmt_kpf = Params.elmt_kpf;
        Reacs.elmt_kphospTauGSK3bp53 = Params.elmt_kphospTauGSK3bp53;
        elmt_cell.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_cell.elmt_DNArepair = Reacs.elmt_DNArepair;
        elmt_cell.elmt_p53Synthesis = Reacs.elmt_p53Synthesis;
        elmt_cell.elmt_Mdm2PDeubiquitination4 = Reacs.elmt_Mdm2PDeubiquitination4;
        elmt_cell.elmt_Mdm2PDeubiquitination3 = Reacs.elmt_Mdm2PDeubiquitination3;
        elmt_cell.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_cell.elmt_Mdm2PDeubiquitination2 = Reacs.elmt_Mdm2PDeubiquitination2;
        elmt_cell.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_cell.elmt_Mdm2PDeubiquitination1 = Reacs.elmt_Mdm2PDeubiquitination1;
        elmt_cell.elmt_DNAdamage = Reacs.elmt_DNAdamage;
        elmt_cell.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_cell.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_cell.elmt_ATMactivation = Reacs.elmt_ATMactivation;
        elmt_cell.elmt_Mdm2mRNASynthesis1 = Reacs.elmt_Mdm2mRNASynthesis1;
        elmt_cell.elmt_Mdm2mRNASynthesis2 = Reacs.elmt_Mdm2mRNASynthesis2;
        elmt_cell.elmt_Mdm2mRNASynthesis3 = Reacs.elmt_Mdm2mRNASynthesis3;
        elmt_cell.elmt_Mdm2mRNASynthesis4 = Reacs.elmt_Mdm2mRNASynthesis4;
        elmt_cell.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_cell.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_cell.elmt_TauMTbinding = Reacs.elmt_TauMTbinding;
        elmt_cell.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_cell.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_cell.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_cell.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_cell.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cell.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_cell.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cell.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cell.elmt_ProteasomeInhibitionAggTau = Reacs.elmt_ProteasomeInhibitionAggTau;
        elmt_cell.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_cell.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_cell.elmt_p53Monoubiquitination = Reacs.elmt_p53Monoubiquitination;
        elmt_cell.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_cell.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_cell.elmt_p53Deubiquitination1 = Reacs.elmt_p53Deubiquitination1;
        elmt_cell.elmt_p53Deubiquitination2 = Reacs.elmt_p53Deubiquitination2;
        elmt_cell.elmt_p53Deubiquitination3 = Reacs.elmt_p53Deubiquitination3;
        elmt_cell.elmt_ProteasomeInhibitionAbeta = Reacs.elmt_ProteasomeInhibitionAbeta;
        elmt_cell.elmt_p53ProteasomeBinding1 = Reacs.elmt_p53ProteasomeBinding1;
        elmt_cell.elmt_ROSDNAdamage = Reacs.elmt_ROSDNAdamage;
        elmt_cell.elmt_p53Polyubiquitination2 = Reacs.elmt_p53Polyubiquitination2;
        elmt_cell.elmt_p53Polyubiquitination3 = Reacs.elmt_p53Polyubiquitination3;
        elmt_cell.elmt_p53Polyubiquitination1 = Reacs.elmt_p53Polyubiquitination1;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cell.elmt_GSK3p53Binding = Reacs.elmt_GSK3p53Binding;
        elmt_cell.elmt_product192 = Reacs.elmt_product192;
        elmt_cell.elmt_product195 = Reacs.elmt_product195;
        elmt_cell.elmt_product190 = Reacs.elmt_product190;
        elmt_cell.elmt_product197 = Reacs.elmt_product197;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_Mdm2polyUbiquitination1 = Reacs.elmt_Mdm2polyUbiquitination1;
        elmt_cell.elmt_Mdm2polyUbiquitination3 = Reacs.elmt_Mdm2polyUbiquitination3;
        elmt_cell.elmt_Mdm2polyUbiquitination2 = Reacs.elmt_Mdm2polyUbiquitination2;
        elmt_cell.elmt_Mdm2dephosphorylation = Reacs.elmt_Mdm2dephosphorylation;
        elmt_cell.elmt_Mdm2PProteasomeBinding1 = Reacs.elmt_Mdm2PProteasomeBinding1;
        elmt_cell.elmt_Mdm2phosphorylation = Reacs.elmt_Mdm2phosphorylation;
        elmt_cell.elmt_Mdm2PpolyUbiquitination1 = Reacs.elmt_Mdm2PpolyUbiquitination1;
        elmt_cell.elmt_Mdm2PpolyUbiquitination2 = Reacs.elmt_Mdm2PpolyUbiquitination2;
        elmt_cell.elmt_Mdm2PpolyUbiquitination3 = Reacs.elmt_Mdm2PpolyUbiquitination3;
        elmt_cell.elmt_TauAggregation2 = Reacs.elmt_TauAggregation2;
        elmt_cell.elmt_TauAggregation1 = Reacs.elmt_TauAggregation1;
        elmt_cell.elmt_TangleFormation2 = Reacs.elmt_TangleFormation2;
        elmt_cell.elmt_TangleFormation1 = Reacs.elmt_TangleFormation1;
        elmt_cell.elmt_GSK3p53PBinding = Reacs.elmt_GSK3p53PBinding;
        elmt_cell.elmt_Mdm2PUbiquitination = Reacs.elmt_Mdm2PUbiquitination;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_P53Mdm2Binding = Reacs.elmt_P53Mdm2Binding;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_Tauphosphorylation3 = Reacs.elmt_Tauphosphorylation3;
        elmt_cell.elmt_reactant84 = Reacs.elmt_reactant84;
        elmt_cell.elmt_Tauphosphorylation2 = Reacs.elmt_Tauphosphorylation2;
        elmt_cell.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_cell.elmt_Tauphosphorylation1 = Reacs.elmt_Tauphosphorylation1;
        elmt_cell.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_cell.elmt_reactant87 = Reacs.elmt_reactant87;
        elmt_cell.elmt_Degradationp53_Ub4 = Reacs.elmt_Degradationp53_Ub4;
        elmt_cell.elmt_reactant94 = Reacs.elmt_reactant94;
        elmt_cell.elmt_reactant97 = Reacs.elmt_reactant97;
        elmt_cell.elmt_Taudephosphorylation1 = Reacs.elmt_Taudephosphorylation1;
        elmt_cell.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_cell.elmt_Taudephosphorylation2 = Reacs.elmt_Taudephosphorylation2;
        elmt_cell.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_cell.elmt_reactant98 = Reacs.elmt_reactant98;
        elmt_cell.elmt_TauProteasomeBinding = Reacs.elmt_TauProteasomeBinding;
        elmt_cell.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_cell.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_cell.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_cell.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_cell.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_cell.elmt_E1UbBinding = Reacs.elmt_E1UbBinding;
        elmt_cell.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_cell.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_cell.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_cell.elmt_reactant79 = Reacs.elmt_reactant79;
        elmt_cell.elmt_Tauphosphorylation6 = Reacs.elmt_Tauphosphorylation6;
        elmt_cell.elmt_Tauphosphorylation5 = Reacs.elmt_Tauphosphorylation5;
        elmt_cell.elmt_Tauphosphorylation4 = Reacs.elmt_Tauphosphorylation4;
        elmt_cell.elmt_reactant198 = Reacs.elmt_reactant198;
        elmt_cell.elmt_product211 = Reacs.elmt_product211;
        elmt_cell.elmt_product214 = Reacs.elmt_product214;
        elmt_cell.elmt_reactant196 = Reacs.elmt_reactant196;
        elmt_cell.elmt_product213 = Reacs.elmt_product213;
        elmt_cell.elmt_reactant194 = Reacs.elmt_reactant194;
        elmt_cell.elmt_reactant193 = Reacs.elmt_reactant193;
        elmt_cell.elmt_Mdm2GSK3phosphorylation1 = Reacs.elmt_Mdm2GSK3phosphorylation1;
        elmt_cell.elmt_product210 = Reacs.elmt_product210;
        elmt_cell.elmt_reactant191 = Reacs.elmt_reactant191;
        elmt_cell.elmt_Mdm2GSK3phosphorylation3 = Reacs.elmt_Mdm2GSK3phosphorylation3;
        elmt_cell.elmt_Mdm2GSK3phosphorylation2 = Reacs.elmt_Mdm2GSK3phosphorylation2;
        elmt_cell.elmt_TauMTrelease = Reacs.elmt_TauMTrelease;
        elmt_cell.elmt_reactant199 = Reacs.elmt_reactant199;
        elmt_cell.elmt_product217 = Reacs.elmt_product217;
        elmt_cell.elmt_p53transcriptionViaAbeta = Reacs.elmt_p53transcriptionViaAbeta;
        elmt_cell.elmt_product104 = Reacs.elmt_product104;
        elmt_cell.elmt_product224 = Reacs.elmt_product224;
        elmt_cell.elmt_product103 = Reacs.elmt_product103;
        elmt_cell.elmt_product221 = Reacs.elmt_product221;
        elmt_cell.elmt_product100 = Reacs.elmt_product100;
        elmt_cell.elmt_product226 = Reacs.elmt_product226;
        elmt_cell.elmt_product108 = Reacs.elmt_product108;
        elmt_cell.elmt_product229 = Reacs.elmt_product229;
        elmt_cell.elmt_p53dephosphorylation = Reacs.elmt_p53dephosphorylation;
        elmt_cell.elmt_product107 = Reacs.elmt_product107;
        elmt_cell.elmt_product12 = Reacs.elmt_product12;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_Mdm2Deubiquitination2 = Reacs.elmt_Mdm2Deubiquitination2;
        elmt_cell.elmt_Mdm2Deubiquitination1 = Reacs.elmt_Mdm2Deubiquitination1;
        elmt_cell.elmt_reactant296 = Reacs.elmt_reactant296;
        elmt_cell.elmt_reactant175 = Reacs.elmt_reactant175;
        elmt_cell.elmt_reactant174 = Reacs.elmt_reactant174;
        elmt_cell.elmt_reactant294 = Reacs.elmt_reactant294;
        elmt_cell.elmt_product312 = Reacs.elmt_product312;
        elmt_cell.elmt_reactant171 = Reacs.elmt_reactant171;
        elmt_cell.elmt_reactant170 = Reacs.elmt_reactant170;
        elmt_cell.elmt_reactant291 = Reacs.elmt_reactant291;
        elmt_cell.elmt_reactant179 = Reacs.elmt_reactant179;
        elmt_cell.elmt_Mdm2Synthesis = Reacs.elmt_Mdm2Synthesis;
        elmt_cell.elmt_product314 = Reacs.elmt_product314;
        elmt_cell.elmt_reactant299 = Reacs.elmt_reactant299;
        elmt_cell.elmt_reactant178 = Reacs.elmt_reactant178;
        elmt_cell.elmt_product23 = Reacs.elmt_product23;
        elmt_cell.elmt_Tau20SProteasomeDegradation = Reacs.elmt_Tau20SProteasomeDegradation;
        elmt_cell.elmt_product200 = Reacs.elmt_product200;
        elmt_cell.elmt_reactant186 = Reacs.elmt_reactant186;
        elmt_cell.elmt_product202 = Reacs.elmt_product202;
        elmt_cell.elmt_reactant183 = Reacs.elmt_reactant183;
        elmt_cell.elmt_reactant182 = Reacs.elmt_reactant182;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product208 = Reacs.elmt_product208;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_cell.elmt_product205 = Reacs.elmt_product205;
        elmt_cell.elmt_product18 = Reacs.elmt_product18;
        elmt_cell.elmt_reactant189 = Reacs.elmt_reactant189;
        elmt_cell.elmt_E2UbBinding = Reacs.elmt_E2UbBinding;
        elmt_cell.elmt_product17 = Reacs.elmt_product17;
        elmt_cell.elmt_reactant188 = Reacs.elmt_reactant188;
        elmt_cell.elmt_ATMInactivation = Reacs.elmt_ATMInactivation;
        elmt_cell.elmt_reactant154 = Reacs.elmt_reactant154;
        elmt_cell.elmt_reactant274 = Reacs.elmt_reactant274;
        elmt_cell.elmt_reactant152 = Reacs.elmt_reactant152;
        elmt_cell.elmt_reactant273 = Reacs.elmt_reactant273;
        elmt_cell.elmt_reactant150 = Reacs.elmt_reactant150;
        elmt_cell.elmt_reactant159 = Reacs.elmt_reactant159;
        elmt_cell.elmt_reactant279 = Reacs.elmt_reactant279;
        elmt_cell.elmt_reactant158 = Reacs.elmt_reactant158;
        elmt_cell.elmt_reactant278 = Reacs.elmt_reactant278;
        elmt_cell.elmt_reactant155 = Reacs.elmt_reactant155;
        elmt_cell.elmt_AbetaPlaqueFormation2 = Reacs.elmt_AbetaPlaqueFormation2;
        elmt_cell.elmt_AbetaPlaqueFormation1 = Reacs.elmt_AbetaPlaqueFormation1;
        elmt_cell.elmt_Mdm2Deubiquitination4 = Reacs.elmt_Mdm2Deubiquitination4;
        elmt_cell.elmt_product300 = Reacs.elmt_product300;
        elmt_cell.elmt_Mdm2Deubiquitination3 = Reacs.elmt_Mdm2Deubiquitination3;
        elmt_cell.elmt_reactant284 = Reacs.elmt_reactant284;
        elmt_cell.elmt_reactant163 = Reacs.elmt_reactant163;
        elmt_cell.elmt_product301 = Reacs.elmt_product301;
        elmt_cell.elmt_reactant283 = Reacs.elmt_reactant283;
        elmt_cell.elmt_reactant162 = Reacs.elmt_reactant162;
        elmt_cell.elmt_product307 = Reacs.elmt_product307;
        elmt_cell.elmt_product309 = Reacs.elmt_product309;
        elmt_cell.elmt_product304 = Reacs.elmt_product304;
        elmt_cell.elmt_product303 = Reacs.elmt_product303;
        elmt_cell.elmt_reactant289 = Reacs.elmt_reactant289;
        elmt_cell.elmt_reactant288 = Reacs.elmt_reactant288;
        elmt_cell.elmt_product306 = Reacs.elmt_product306;
        elmt_cell.elmt_reactant167 = Reacs.elmt_reactant167;
        elmt_cell.elmt_reactant166 = Reacs.elmt_reactant166;
        elmt_cell.elmt_TauP1Aggregation2 = Reacs.elmt_TauP1Aggregation2;
        elmt_cell.elmt_GSK3_p53PRelease = Reacs.elmt_GSK3_p53PRelease;
        elmt_cell.elmt_TauP1Aggregation1 = Reacs.elmt_TauP1Aggregation1;
        elmt_cell.elmt_reactant253 = Reacs.elmt_reactant253;
        elmt_cell.elmt_reactant252 = Reacs.elmt_reactant252;
        elmt_cell.elmt_reactant130 = Reacs.elmt_reactant130;
        elmt_cell.elmt_reactant250 = Reacs.elmt_reactant250;
        elmt_cell.elmt_reactant138 = Reacs.elmt_reactant138;
        elmt_cell.elmt_reactant137 = Reacs.elmt_reactant137;
        elmt_cell.elmt_Mdm2ProteasomeBinding1 = Reacs.elmt_Mdm2ProteasomeBinding1;
        elmt_cell.elmt_reactant257 = Reacs.elmt_reactant257;
        elmt_cell.elmt_reactant256 = Reacs.elmt_reactant256;
        elmt_cell.elmt_reactant134 = Reacs.elmt_reactant134;
        elmt_cell.elmt_reactant133 = Reacs.elmt_reactant133;
        elmt_cell.elmt_reactant264 = Reacs.elmt_reactant264;
        elmt_cell.elmt_reactant142 = Reacs.elmt_reactant142;
        elmt_cell.elmt_reactant141 = Reacs.elmt_reactant141;
        elmt_cell.elmt_reactant261 = Reacs.elmt_reactant261;
        elmt_cell.elmt_reactant260 = Reacs.elmt_reactant260;
        elmt_cell.elmt_reactant269 = Reacs.elmt_reactant269;
        elmt_cell.elmt_reactant268 = Reacs.elmt_reactant268;
        elmt_cell.elmt_reactant145 = Reacs.elmt_reactant145;
        elmt_cell.elmt_reactant265 = Reacs.elmt_reactant265;
        elmt_cell.elmt_product73 = Reacs.elmt_product73;
        elmt_cell.elmt_product72 = Reacs.elmt_product72;
        elmt_cell.elmt_product71 = Reacs.elmt_product71;
        elmt_cell.elmt_product78 = Reacs.elmt_product78;
        elmt_cell.elmt_product77 = Reacs.elmt_product77;
        elmt_cell.elmt_reactant109 = Reacs.elmt_reactant109;
        elmt_cell.elmt_product76 = Reacs.elmt_product76;
        elmt_cell.elmt_product292 = Reacs.elmt_product292;
        elmt_cell.elmt_product173 = Reacs.elmt_product173;
        elmt_cell.elmt_product172 = Reacs.elmt_product172;
        elmt_cell.elmt_product293 = Reacs.elmt_product293;
        elmt_cell.elmt_product290 = Reacs.elmt_product290;
        elmt_cell.elmt_reactant110 = Reacs.elmt_reactant110;
        elmt_cell.elmt_reactant230 = Reacs.elmt_reactant230;
        elmt_cell.elmt_basalROSDNAdamage = Reacs.elmt_basalROSDNAdamage;
        elmt_cell.elmt_product295 = Reacs.elmt_product295;
        elmt_cell.elmt_product298 = Reacs.elmt_product298;
        elmt_cell.elmt_product177 = Reacs.elmt_product177;
        elmt_cell.elmt_product297 = Reacs.elmt_product297;
        elmt_cell.elmt_product176 = Reacs.elmt_product176;
        elmt_cell.elmt_reactant237 = Reacs.elmt_reactant237;
        elmt_cell.elmt_reactant115 = Reacs.elmt_reactant115;
        elmt_cell.elmt_product68 = Reacs.elmt_product68;
        elmt_cell.elmt_reactant236 = Reacs.elmt_reactant236;
        elmt_cell.elmt_reactant114 = Reacs.elmt_reactant114;
        elmt_cell.elmt_reactant234 = Reacs.elmt_reactant234;
        elmt_cell.elmt_product83 = Reacs.elmt_product83;
        elmt_cell.elmt_product82 = Reacs.elmt_product82;
        elmt_cell.elmt_product89 = Reacs.elmt_product89;
        elmt_cell.elmt_product88 = Reacs.elmt_product88;
        elmt_cell.elmt_reactant119 = Reacs.elmt_reactant119;
        elmt_cell.elmt_product86 = Reacs.elmt_product86;
        elmt_cell.elmt_product181 = Reacs.elmt_product181;
        elmt_cell.elmt_product184 = Reacs.elmt_product184;
        elmt_cell.elmt_product81 = Reacs.elmt_product81;
        elmt_cell.elmt_product180 = Reacs.elmt_product180;
        elmt_cell.elmt_reactant120 = Reacs.elmt_reactant120;
        elmt_cell.elmt_reactant241 = Reacs.elmt_reactant241;
        elmt_cell.elmt_reactant240 = Reacs.elmt_reactant240;
        elmt_cell.elmt_product185 = Reacs.elmt_product185;
        elmt_cell.elmt_product187 = Reacs.elmt_product187;
        elmt_cell.elmt_reactant129 = Reacs.elmt_reactant129;
        elmt_cell.elmt_reactant247 = Reacs.elmt_reactant247;
        elmt_cell.elmt_reactant125 = Reacs.elmt_reactant125;
        elmt_cell.elmt_reactant246 = Reacs.elmt_reactant246;
        elmt_cell.elmt_reactant124 = Reacs.elmt_reactant124;
        elmt_cell.elmt_reactant244 = Reacs.elmt_reactant244;
        elmt_cell.elmt_product96 = Reacs.elmt_product96;
        elmt_cell.elmt_p53phosphorylation = Reacs.elmt_p53phosphorylation;
        elmt_cell.elmt_product95 = Reacs.elmt_product95;
        elmt_cell.elmt_product99 = Reacs.elmt_product99;
        elmt_cell.elmt_reactant209 = Reacs.elmt_reactant209;
        elmt_cell.elmt_Mdm2Ubiquitination = Reacs.elmt_Mdm2Ubiquitination;
        elmt_cell.elmt_reactant207 = Reacs.elmt_reactant207;
        elmt_cell.elmt_product270 = Reacs.elmt_product270;
        elmt_cell.elmt_product272 = Reacs.elmt_product272;
        elmt_cell.elmt_product151 = Reacs.elmt_product151;
        elmt_cell.elmt_product271 = Reacs.elmt_product271;
        elmt_cell.elmt_product92 = Reacs.elmt_product92;
        elmt_cell.elmt_product91 = Reacs.elmt_product91;
        elmt_cell.elmt_product157 = Reacs.elmt_product157;
        elmt_cell.elmt_product277 = Reacs.elmt_product277;
        elmt_cell.elmt_product156 = Reacs.elmt_product156;
        elmt_cell.elmt_product153 = Reacs.elmt_product153;
        elmt_cell.elmt_product276 = Reacs.elmt_product276;
        elmt_cell.elmt_product275 = Reacs.elmt_product275;
        elmt_cell.elmt_reactant216 = Reacs.elmt_reactant216;
        elmt_cell.elmt_reactant215 = Reacs.elmt_reactant215;
        elmt_cell.elmt_Mdm2Degradation = Reacs.elmt_Mdm2Degradation;
        elmt_cell.elmt_p53mRNADegradation = Reacs.elmt_p53mRNADegradation;
        elmt_cell.elmt_reactant212 = Reacs.elmt_reactant212;
        elmt_cell.elmt_AbetaDegradation = Reacs.elmt_AbetaDegradation;
        elmt_cell.elmt_reactant218 = Reacs.elmt_reactant218;
        elmt_cell.elmt_product281 = Reacs.elmt_product281;
        elmt_cell.elmt_product160 = Reacs.elmt_product160;
        elmt_cell.elmt_product280 = Reacs.elmt_product280;
        elmt_cell.elmt_product282 = Reacs.elmt_product282;
        elmt_cell.elmt_product161 = Reacs.elmt_product161;
        elmt_cell.elmt_P53Mdm2Release = Reacs.elmt_P53Mdm2Release;
        elmt_cell.elmt_product168 = Reacs.elmt_product168;
        elmt_cell.elmt_reactant220 = Reacs.elmt_reactant220;
        elmt_cell.elmt_product169 = Reacs.elmt_product169;
        elmt_cell.elmt_product285 = Reacs.elmt_product285;
        elmt_cell.elmt_product164 = Reacs.elmt_product164;
        elmt_cell.elmt_product287 = Reacs.elmt_product287;
        elmt_cell.elmt_product286 = Reacs.elmt_product286;
        elmt_cell.elmt_product165 = Reacs.elmt_product165;
        elmt_cell.elmt_reactant228 = Reacs.elmt_reactant228;
        elmt_cell.elmt_reactant227 = Reacs.elmt_reactant227;
        elmt_cell.elmt_reactant106 = Reacs.elmt_reactant106;
        elmt_cell.elmt_reactant105 = Reacs.elmt_reactant105;
        elmt_cell.elmt_reactant225 = Reacs.elmt_reactant225;
        elmt_cell.elmt_reactant223 = Reacs.elmt_reactant223;
        elmt_cell.elmt_reactant102 = Reacs.elmt_reactant102;
        elmt_cell.elmt_reactant101 = Reacs.elmt_reactant101;
        elmt_cell.elmt_Abetaproduction2 = Reacs.elmt_Abetaproduction2;
        elmt_cell.elmt_reactant222 = Reacs.elmt_reactant222;
        elmt_cell.elmt_Abetaproduction1 = Reacs.elmt_Abetaproduction1;
        elmt_cell.elmt_AbetaAggregation1 = Reacs.elmt_AbetaAggregation1;
        elmt_cell.elmt_product32 = Reacs.elmt_product32;
        elmt_cell.elmt_product31 = Reacs.elmt_product31;
        elmt_cell.elmt_GSK3p53Release = Reacs.elmt_GSK3p53Release;
        elmt_cell.elmt_product135 = Reacs.elmt_product135;
        elmt_cell.elmt_product255 = Reacs.elmt_product255;
        elmt_cell.elmt_product258 = Reacs.elmt_product258;
        elmt_cell.elmt_product136 = Reacs.elmt_product136;
        elmt_cell.elmt_product131 = Reacs.elmt_product131;
        elmt_cell.elmt_product251 = Reacs.elmt_product251;
        elmt_cell.elmt_product254 = Reacs.elmt_product254;
        elmt_cell.elmt_product132 = Reacs.elmt_product132;
        elmt_cell.elmt_p53mRNASynthesis = Reacs.elmt_p53mRNASynthesis;
        elmt_cell.elmt_product26 = Reacs.elmt_product26;
        elmt_cell.elmt_product25 = Reacs.elmt_product25;
        elmt_cell.elmt_reactant313 = Reacs.elmt_reactant313;
        elmt_cell.elmt_product139 = Reacs.elmt_product139;
        elmt_cell.elmt_product259 = Reacs.elmt_product259;
        elmt_cell.elmt_reactant311 = Reacs.elmt_reactant311;
        elmt_cell.elmt_reactant310 = Reacs.elmt_reactant310;
        elmt_cell.elmt_product29 = Reacs.elmt_product29;
        elmt_cell.elmt_AbetaAggregation2 = Reacs.elmt_AbetaAggregation2;
        elmt_cell.elmt_product42 = Reacs.elmt_product42;
        elmt_cell.elmt_product140 = Reacs.elmt_product140;
        elmt_cell.elmt_product267 = Reacs.elmt_product267;
        elmt_cell.elmt_product266 = Reacs.elmt_product266;
        elmt_cell.elmt_product148 = Reacs.elmt_product148;
        elmt_cell.elmt_product147 = Reacs.elmt_product147;
        elmt_cell.elmt_product263 = Reacs.elmt_product263;
        elmt_cell.elmt_product262 = Reacs.elmt_product262;
        elmt_cell.elmt_product144 = Reacs.elmt_product144;
        elmt_cell.elmt_product143 = Reacs.elmt_product143;
        elmt_cell.elmt_product38 = Reacs.elmt_product38;
        elmt_cell.elmt_reactant206 = Reacs.elmt_reactant206;
        elmt_cell.elmt_product37 = Reacs.elmt_product37;
        elmt_cell.elmt_Mdm2mRNADegradation = Reacs.elmt_Mdm2mRNADegradation;
        elmt_cell.elmt_reactant204 = Reacs.elmt_reactant204;
        elmt_cell.elmt_product35 = Reacs.elmt_product35;
        elmt_cell.elmt_reactant203 = Reacs.elmt_reactant203;
        elmt_cell.elmt_reactant201 = Reacs.elmt_reactant201;
        elmt_cell.elmt_product51 = Reacs.elmt_product51;
        elmt_cell.elmt_product50 = Reacs.elmt_product50;
        elmt_cell.elmt_product55 = Reacs.elmt_product55;
        elmt_cell.elmt_product54 = Reacs.elmt_product54;
        elmt_cell.elmt_product113 = Reacs.elmt_product113;
        elmt_cell.elmt_product112 = Reacs.elmt_product112;
        elmt_cell.elmt_product233 = Reacs.elmt_product233;
        elmt_cell.elmt_product111 = Reacs.elmt_product111;
        elmt_cell.elmt_product232 = Reacs.elmt_product232;
        elmt_cell.elmt_product231 = Reacs.elmt_product231;
        elmt_cell.elmt_TauP2Aggregation1 = Reacs.elmt_TauP2Aggregation1;
        elmt_cell.elmt_TauP2Aggregation2 = Reacs.elmt_TauP2Aggregation2;
        elmt_cell.elmt_product47 = Reacs.elmt_product47;
        elmt_cell.elmt_product46 = Reacs.elmt_product46;
        elmt_cell.elmt_product117 = Reacs.elmt_product117;
        elmt_cell.elmt_product238 = Reacs.elmt_product238;
        elmt_cell.elmt_product116 = Reacs.elmt_product116;
        elmt_cell.elmt_p53Deubiqutination4 = Reacs.elmt_p53Deubiqutination4;
        elmt_cell.elmt_product118 = Reacs.elmt_product118;
        elmt_cell.elmt_product239 = Reacs.elmt_product239;
        elmt_cell.elmt_AggAbetaROSproduction1 = Reacs.elmt_AggAbetaROSproduction1;
        elmt_cell.elmt_product63 = Reacs.elmt_product63;
        elmt_cell.elmt_Mdm2PDegradation = Reacs.elmt_Mdm2PDegradation;
        elmt_cell.elmt_product62 = Reacs.elmt_product62;
        elmt_cell.elmt_product67 = Reacs.elmt_product67;
        elmt_cell.elmt_product66 = Reacs.elmt_product66;
        elmt_cell.elmt_AggAbetaROSproduction2 = Reacs.elmt_AggAbetaROSproduction2;
        elmt_cell.elmt_product245 = Reacs.elmt_product245;
        elmt_cell.elmt_product123 = Reacs.elmt_product123;
        elmt_cell.elmt_product126 = Reacs.elmt_product126;
        elmt_cell.elmt_product122 = Reacs.elmt_product122;
        elmt_cell.elmt_product243 = Reacs.elmt_product243;
        elmt_cell.elmt_product242 = Reacs.elmt_product242;
        elmt_cell.elmt_product121 = Reacs.elmt_product121;
        elmt_cell.elmt_reactant305 = Reacs.elmt_reactant305;
        elmt_cell.elmt_product59 = Reacs.elmt_product59;
        elmt_cell.elmt_product58 = Reacs.elmt_product58;
        elmt_cell.elmt_reactant302 = Reacs.elmt_reactant302;
        elmt_cell.elmt_product128 = Reacs.elmt_product128;
        elmt_cell.elmt_product249 = Reacs.elmt_product249;
        elmt_cell.elmt_product248 = Reacs.elmt_product248;
        elmt_cell.elmt_product127 = Reacs.elmt_product127;
        elmt_cell.elmt_TauSynthesis = Reacs.elmt_TauSynthesis;

end BIOMD0000000462;
