within BIOMD571;
model MODEL1501300000 "Nishio2008 - Design of the phosphotransferase system for enhanced glucose uptake in E. coli." annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cyt elmt_cyt;
    Class_elmt_event0 elmt_event0;

    equation
        Params.elmt_CRP_cAMP_CRPsite_ptsIp1 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsIp1;
        Params.elmt_CRP_cAMP_CRPsite_ptsGp2 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsGp2;
        Params.elmt_CRP_cAMP_CRPsite_ptsHp1 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsHp1;
        Params.elmt_CRP_cAMP_CRPsite_ptsIp0 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsIp0;
        Params.elmt_CRP_cAMP_CRPsite_mlcp1 = elmt_cyt.elmt_CRP_cAMP_CRPsite_mlcp1;
        Params.elmt_CRPsite_mlcp2 = elmt_cyt.elmt_CRPsite_mlcp2;
        Params.elmt_Mlc_Mlcsite_ptsGp2 = elmt_cyt.elmt_Mlc_Mlcsite_ptsGp2;
        Params.elmt_Mlc_Mlcsite_ptsIp0 = elmt_cyt.elmt_Mlc_Mlcsite_ptsIp0;
        Params.elmt_CRPsite_mlcp1 = elmt_cyt.elmt_CRPsite_mlcp1;
        Params.elmt_Mlc_Mlcsite_ptsGp1 = elmt_cyt.elmt_Mlc_Mlcsite_ptsGp1;
        Params.elmt_Mlc_Mlcsite_ptsHp0 = elmt_cyt.elmt_Mlc_Mlcsite_ptsHp0;
        Params.elmt_Mlcsite_mlcp2 = elmt_cyt.elmt_Mlcsite_mlcp2;
        Params.elmt_Mlcsite_mlcp1 = elmt_cyt.elmt_Mlcsite_mlcp1;
        Params.elmt_CRP_cAMP_CRPsite_cyaA = elmt_cyt.elmt_CRP_cAMP_CRPsite_cyaA;
        Params.elmt_Mlcsite_ptsGp2 = elmt_cyt.elmt_Mlcsite_ptsGp2;
        Params.elmt_Mlcsite_ptsIp0 = elmt_cyt.elmt_Mlcsite_ptsIp0;
        Params.elmt_Mlcsite_ptsGp1 = elmt_cyt.elmt_Mlcsite_ptsGp1;
        Params.elmt_Mlcsite_ptsHp0 = elmt_cyt.elmt_Mlcsite_ptsHp0;
        Params.elmt_Mlc_Mlcsite_mlcp2 = elmt_cyt.elmt_Mlc_Mlcsite_mlcp2;
        Params.elmt_CRPsite_ptsIp1 = elmt_cyt.elmt_CRPsite_ptsIp1;
        Params.elmt_CRPsite_ptsGp2 = elmt_cyt.elmt_CRPsite_ptsGp2;
        Params.elmt_CRPsite_ptsHp1 = elmt_cyt.elmt_CRPsite_ptsHp1;
        Params.elmt_CRPsite_ptsIp0 = elmt_cyt.elmt_CRPsite_ptsIp0;
        Params.elmt_CRPsite_ptsGp1 = elmt_cyt.elmt_CRPsite_ptsGp1;
        Params.elmt_CRPsite_ptsHp0 = elmt_cyt.elmt_CRPsite_ptsHp0;
        Params.elmt_Mlc_Mlcsite_mlcp1 = elmt_cyt.elmt_Mlc_Mlcsite_mlcp1;
        Params.elmt_CRP_cAMP_CRPsiteI_crp = elmt_cyt.elmt_CRP_cAMP_CRPsiteI_crp;
        Params.elmt_CRPsite_cyaA = elmt_cyt.elmt_CRPsite_cyaA;
        Params.elmt_CRP_cAMP_CRPsite_mlcp2 = elmt_cyt.elmt_CRP_cAMP_CRPsite_mlcp2;
        Params.elmt_CRP_cAMP_CRPsiteII_crp = elmt_cyt.elmt_CRP_cAMP_CRPsiteII_crp;
        Params.elmt_CRPsiteI_crp = elmt_cyt.elmt_CRPsiteI_crp;
        Params.elmt_CRP_cAMP_CRPsite_ptsGp1 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsGp1;
        Params.elmt_CRP_cAMP_CRPsite_ptsHp0 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsHp0;
        Params.elmt_CRPsiteII_crp = elmt_cyt.elmt_CRPsiteII_crp;
        Reacs.elmt_CRP_cAMP_CRPsite_ptsHp1 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsHp1;
        Reacs.elmt_mRNA_crp = elmt_cyt.elmt_mRNA_crp;
        Reacs.elmt_ptsHp0 = elmt_cyt.elmt_ptsHp0;
        Reacs.elmt_crp_basal = elmt_cyt.elmt_crp_basal;
        Reacs.elmt_ptsHp1 = elmt_cyt.elmt_ptsHp1;
        Reacs.elmt_mRNA_crr = elmt_cyt.elmt_mRNA_crr;
        Reacs.elmt_TMlcsite_mlcp1 = Params.elmt_TMlcsite_mlcp1;
        Reacs.elmt_TMlcsite_mlcp2 = Params.elmt_TMlcsite_mlcp2;
        Reacs.elmt_cyt = elmt_cyt.elmt_cyt;
        Reacs.elmt_CRPsite_mlcp2 = elmt_cyt.elmt_CRPsite_mlcp2;
        Reacs.elmt_HPr_P = elmt_cyt.elmt_HPr_P;
        Reacs.elmt_fast = Params.elmt_fast;
        Reacs.elmt_Mlc_Mlcsite_ptsHp0 = elmt_cyt.elmt_Mlc_Mlcsite_ptsHp0;
        Reacs.elmt_IIA_P = elmt_cyt.elmt_IIA_P;
        Reacs.elmt_CRPsite_mlcp1 = elmt_cyt.elmt_CRPsite_mlcp1;
        Reacs.elmt_CRPsite_genome = elmt_cyt.elmt_CRPsite_genome;
        Reacs.elmt_cAMP = elmt_cyt.elmt_cAMP;
        Reacs.elmt_Mlcsite_mlcp2 = elmt_cyt.elmt_Mlcsite_mlcp2;
        Reacs.elmt_Mlcsite_mlcp1 = elmt_cyt.elmt_Mlcsite_mlcp1;
        Reacs.elmt_CRP = elmt_cyt.elmt_CRP;
        Reacs.elmt_Mlcsite_ptsGp2 = elmt_cyt.elmt_Mlcsite_ptsGp2;
        Reacs.elmt_Mlcsite_ptsIp0 = elmt_cyt.elmt_Mlcsite_ptsIp0;
        Reacs.elmt_Mlcsite_ptsGp1 = elmt_cyt.elmt_Mlcsite_ptsGp1;
        Reacs.elmt_CRPsite_ptsIp1 = elmt_cyt.elmt_CRPsite_ptsIp1;
        Reacs.elmt_CRPsite_ptsGp2 = elmt_cyt.elmt_CRPsite_ptsGp2;
        Reacs.elmt_CRPsite_ptsIp0 = elmt_cyt.elmt_CRPsite_ptsIp0;
        Reacs.elmt_CRPsite_ptsGp1 = elmt_cyt.elmt_CRPsite_ptsGp1;
        Reacs.elmt_mRNA_ptsI = elmt_cyt.elmt_mRNA_ptsI;
        Reacs.elmt_TCRPsite_ptsHp0 = Params.elmt_TCRPsite_ptsHp0;
        Reacs.elmt_EI = elmt_cyt.elmt_EI;
        Reacs.elmt_TCRPsite_mlcp1 = Params.elmt_TCRPsite_mlcp1;
        Reacs.elmt_TCRPsite_mlcp2 = Params.elmt_TCRPsite_mlcp2;
        Reacs.elmt_CRPsite_cyaA = elmt_cyt.elmt_CRPsite_cyaA;
        Reacs.elmt_Glc6P = elmt_cyt.elmt_Glc6P;
        Reacs.elmt_IIA_P_CYA = elmt_cyt.elmt_IIA_P_CYA;
        Reacs.elmt_TCRPsite_ptsHp1 = Params.elmt_TCRPsite_ptsHp1;
        Reacs.elmt_TMlcsite_ptsHp0 = Params.elmt_TMlcsite_ptsHp0;
        Reacs.elmt_mlcp1 = elmt_cyt.elmt_mlcp1;
        Reacs.elmt_mlcp2 = elmt_cyt.elmt_mlcp2;
        Reacs.elmt_CRP_cAMP_CRPsiteII_crp = elmt_cyt.elmt_CRP_cAMP_CRPsiteII_crp;
        Reacs.elmt_Glucose = elmt_cyt.elmt_Glucose;
        Reacs.elmt_crr = elmt_cyt.elmt_crr;
        Reacs.elmt_CRPsiteI_crp = elmt_cyt.elmt_CRPsiteI_crp;
        Reacs.elmt_crp = elmt_cyt.elmt_crp;
        Reacs.elmt_mRNA_ptsG = elmt_cyt.elmt_mRNA_ptsG;
        Reacs.elmt_CRP_cAMP_CRPsite_ptsGp1 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsGp1;
        Reacs.elmt_CRPsiteII_crp = elmt_cyt.elmt_CRPsiteII_crp;
        Reacs.elmt_mRNA_ptsH = elmt_cyt.elmt_mRNA_ptsH;
        Reacs.elmt_HPr = elmt_cyt.elmt_HPr;
        Reacs.elmt_Pyr = elmt_cyt.elmt_Pyr;
        Reacs.elmt_CRP_cAMP_CRPsite_ptsIp1 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsIp1;
        Reacs.elmt_CRP_cAMP_CRPsite_ptsGp2 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsGp2;
        Reacs.elmt_CRP_cAMP_CRPsite_ptsIp0 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsIp0;
        Reacs.elmt_ptsGp1 = elmt_cyt.elmt_ptsGp1;
        Reacs.elmt_ptsIp0 = elmt_cyt.elmt_ptsIp0;
        Reacs.elmt_ptsGp2 = elmt_cyt.elmt_ptsGp2;
        Reacs.elmt_ptsIp1 = elmt_cyt.elmt_ptsIp1;
        Reacs.elmt_IICB = elmt_cyt.elmt_IICB;
        Reacs.elmt_mRNA_mlc = elmt_cyt.elmt_mRNA_mlc;
        Reacs.elmt_ATP = elmt_cyt.elmt_ATP;
        Reacs.elmt_Mlc_Mlcsite_ptsGp2 = elmt_cyt.elmt_Mlc_Mlcsite_ptsGp2;
        Reacs.elmt_Mlc_Mlcsite_ptsIp0 = elmt_cyt.elmt_Mlc_Mlcsite_ptsIp0;
        Reacs.elmt_PEP = elmt_cyt.elmt_PEP;
        Reacs.elmt_CRP_cAMP_CRPsite_mlcp1 = elmt_cyt.elmt_CRP_cAMP_CRPsite_mlcp1;
        Reacs.elmt_Mlc_Mlcsite_ptsGp1 = elmt_cyt.elmt_Mlc_Mlcsite_ptsGp1;
        Reacs.elmt_EI_P = elmt_cyt.elmt_EI_P;
        Reacs.elmt_Mlc = elmt_cyt.elmt_Mlc;
        Reacs.elmt_CRP_cAMP_CRPsite_cyaA = elmt_cyt.elmt_CRP_cAMP_CRPsite_cyaA;
        Reacs.elmt_Mlcsite_ptsHp0 = elmt_cyt.elmt_Mlcsite_ptsHp0;
        Reacs.elmt_CYA = elmt_cyt.elmt_CYA;
        Reacs.elmt_Mlc_Mlcsite_mlcp2 = elmt_cyt.elmt_Mlc_Mlcsite_mlcp2;
        Reacs.elmt_TCRPsite_cyaA = Params.elmt_TCRPsite_cyaA;
        Reacs.elmt_CRPsite_ptsHp1 = elmt_cyt.elmt_CRPsite_ptsHp1;
        Reacs.elmt_CRPsite_ptsHp0 = elmt_cyt.elmt_CRPsite_ptsHp0;
        Reacs.elmt_Mlc_Mlcsite_mlcp1 = elmt_cyt.elmt_Mlc_Mlcsite_mlcp1;
        Reacs.elmt_TCRPsite_ptsGp1 = Params.elmt_TCRPsite_ptsGp1;
        Reacs.elmt_CRP_cAMP_CRPsiteI_crp = elmt_cyt.elmt_CRP_cAMP_CRPsiteI_crp;
        Reacs.elmt_IICB_P = elmt_cyt.elmt_IICB_P;
        Reacs.elmt_cyaA = elmt_cyt.elmt_cyaA;
        Reacs.elmt_TCRPsite_ptsIp1 = Params.elmt_TCRPsite_ptsIp1;
        Reacs.elmt_mRNA_cyaA = elmt_cyt.elmt_mRNA_cyaA;
        Reacs.elmt_TCRPsite_ptsIp0 = Params.elmt_TCRPsite_ptsIp0;
        Reacs.elmt_TCRPsite_ptsGp2 = Params.elmt_TCRPsite_ptsGp2;
        Reacs.elmt_TMlcsite_ptsIp0 = Params.elmt_TMlcsite_ptsIp0;
        Reacs.elmt_TMlcsite_ptsGp2 = Params.elmt_TMlcsite_ptsGp2;
        Reacs.elmt_TMlcsite_ptsGp1 = Params.elmt_TMlcsite_ptsGp1;
        Reacs.elmt_CRP_cAMP_CRPsite_genome = elmt_cyt.elmt_CRP_cAMP_CRPsite_genome;
        Reacs.elmt_CRP_cAMP_CRPsite_mlcp2 = elmt_cyt.elmt_CRP_cAMP_CRPsite_mlcp2;
        Reacs.elmt_TCRPsiteI_crp = Params.elmt_TCRPsiteI_crp;
        Reacs.elmt_IIA = elmt_cyt.elmt_IIA;
        Reacs.elmt_cyaA_basal = elmt_cyt.elmt_cyaA_basal;
        Reacs.elmt_CRP_cAMP = elmt_cyt.elmt_CRP_cAMP;
        Reacs.elmt_IICB_Mlc = elmt_cyt.elmt_IICB_Mlc;
        Reacs.elmt_TCRPsiteII_crp = Params.elmt_TCRPsiteII_crp;
        Reacs.elmt_CRP_cAMP_CRPsite_ptsHp0 = elmt_cyt.elmt_CRP_cAMP_CRPsite_ptsHp0;
        elmt_cyt.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_cyt.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_cyt.elmt_PTS3for = Reacs.elmt_PTS3for;
        elmt_cyt.elmt_reaction_EI_PEP = Reacs.elmt_reaction_EI_PEP;
        elmt_cyt.elmt_decomposition_HPr = Reacs.elmt_decomposition_HPr;
        elmt_cyt.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_cyt.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsiteI_crp = Reacs.elmt_binding_CRP_cAMP_CRPsiteI_crp;
        elmt_cyt.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_cyt.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_cyt.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_cyt.elmt_transcription_CRP_cAMP_CRPsite_ptsHp0_Mlc_Mlcsite_ptsHp0_ptsHp0 = Reacs.elmt_transcription_CRP_cAMP_CRPsite_ptsHp0_Mlc_Mlcsite_ptsHp0_ptsHp0;
        elmt_cyt.elmt_decomposition_IICB_P = Reacs.elmt_decomposition_IICB_P;
        elmt_cyt.elmt_decomposition_Mlc = Reacs.elmt_decomposition_Mlc;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsite_genome = Reacs.elmt_decomposition_CRP_cAMP_CRPsite_genome;
        elmt_cyt.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_cyt.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_cyt.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_cyt.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_cyt.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_cyt.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_cyt.elmt_decomposition_CYA = Reacs.elmt_decomposition_CYA;
        elmt_cyt.elmt_product102 = Reacs.elmt_product102;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsite_ptsHp1 = Reacs.elmt_binding_CRP_cAMP_CRPsite_ptsHp1;
        elmt_cyt.elmt_product104 = Reacs.elmt_product104;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsite_ptsHp0 = Reacs.elmt_binding_CRP_cAMP_CRPsite_ptsHp0;
        elmt_cyt.elmt_product100 = Reacs.elmt_product100;
        elmt_cyt.elmt_product106 = Reacs.elmt_product106;
        elmt_cyt.elmt_product108 = Reacs.elmt_product108;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsite_ptsGp1 = Reacs.elmt_decomposition_CRP_cAMP_CRPsite_ptsGp1;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsiteI_crp = Reacs.elmt_decomposition_CRP_cAMP_CRPsiteI_crp;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsite_ptsGp2 = Reacs.elmt_decomposition_CRP_cAMP_CRPsite_ptsGp2;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsite_genome = Reacs.elmt_binding_CRP_cAMP_CRPsite_genome;
        elmt_cyt.elmt_product11 = Reacs.elmt_product11;
        elmt_cyt.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_cyt.elmt_decomposition_EI = Reacs.elmt_decomposition_EI;
        elmt_cyt.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_cyt.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_cyt.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_cyt.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cyt.elmt_reaction_IIA_P_CYA_ATP = Reacs.elmt_reaction_IIA_P_CYA_ATP;
        elmt_cyt.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_cyt.elmt_reactant176 = Reacs.elmt_reactant176;
        elmt_cyt.elmt_reaction_IICB_Glc6P = Reacs.elmt_reaction_IICB_Glc6P;
        elmt_cyt.elmt_reactant172 = Reacs.elmt_reactant172;
        elmt_cyt.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cyt.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cyt.elmt_binding_IIA_P_CYA = Reacs.elmt_binding_IIA_P_CYA;
        elmt_cyt.elmt_transcription_cyaA_basal = Reacs.elmt_transcription_cyaA_basal;
        elmt_cyt.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cyt.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_cyt.elmt_product23 = Reacs.elmt_product23;
        elmt_cyt.elmt_product20 = Reacs.elmt_product20;
        elmt_cyt.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_cyt.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_cyt.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_cyt.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_cyt.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsite_ptsGp2 = Reacs.elmt_binding_CRP_cAMP_CRPsite_ptsGp2;
        elmt_cyt.elmt_PTS3rev = Reacs.elmt_PTS3rev;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsite_ptsGp1 = Reacs.elmt_binding_CRP_cAMP_CRPsite_ptsGp1;
        elmt_cyt.elmt_transcription_CRP_cAMP_CRPsite_ptsHp1_ptsHp1 = Reacs.elmt_transcription_CRP_cAMP_CRPsite_ptsHp1_ptsHp1;
        elmt_cyt.elmt_reactant180 = Reacs.elmt_reactant180;
        elmt_cyt.elmt_decomposition_IICB_Mlc = Reacs.elmt_decomposition_IICB_Mlc;
        elmt_cyt.elmt_product14 = Reacs.elmt_product14;
        elmt_cyt.elmt_product17 = Reacs.elmt_product17;
        elmt_cyt.elmt_decomposition_cAMP = Reacs.elmt_decomposition_cAMP;
        elmt_cyt.elmt_decomposition_Mlc_Mlcsite_ptsIp0 = Reacs.elmt_decomposition_Mlc_Mlcsite_ptsIp0;
        elmt_cyt.elmt_reaction_EIP_Pyr = Reacs.elmt_reaction_EIP_Pyr;
        elmt_cyt.elmt_decomposition_mRNA_crp = Reacs.elmt_decomposition_mRNA_crp;
        elmt_cyt.elmt_decomposition_mRNA_crr = Reacs.elmt_decomposition_mRNA_crr;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsite_cyaA = Reacs.elmt_decomposition_CRP_cAMP_CRPsite_cyaA;
        elmt_cyt.elmt_reactant153 = Reacs.elmt_reactant153;
        elmt_cyt.elmt_reactant152 = Reacs.elmt_reactant152;
        elmt_cyt.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cyt.elmt_transcription_CRP_cAMP_CRPsite_ptsIp1_ptsIp1 = Reacs.elmt_transcription_CRP_cAMP_CRPsite_ptsIp1_ptsIp1;
        elmt_cyt.elmt_reactant157 = Reacs.elmt_reactant157;
        elmt_cyt.elmt_reactant156 = Reacs.elmt_reactant156;
        elmt_cyt.elmt_decomposition_IIA_P = Reacs.elmt_decomposition_IIA_P;
        elmt_cyt.elmt_reaction_IICB_P_Glucose = Reacs.elmt_reaction_IICB_P_Glucose;
        elmt_cyt.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cyt.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cyt.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cyt.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cyt.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cyt.elmt_decomposition_IIA = Reacs.elmt_decomposition_IIA;
        elmt_cyt.elmt_reactant161 = Reacs.elmt_reactant161;
        elmt_cyt.elmt_reactant160 = Reacs.elmt_reactant160;
        elmt_cyt.elmt_binding_Mlc_Mlcsite_ptsIp0 = Reacs.elmt_binding_Mlc_Mlcsite_ptsIp0;
        elmt_cyt.elmt_translation_mlc = Reacs.elmt_translation_mlc;
        elmt_cyt.elmt_reactant168 = Reacs.elmt_reactant168;
        elmt_cyt.elmt_decomposition_mRNA_cyaA = Reacs.elmt_decomposition_mRNA_cyaA;
        elmt_cyt.elmt_transcription_crp_basal = Reacs.elmt_transcription_crp_basal;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsite_cyaA = Reacs.elmt_binding_CRP_cAMP_CRPsite_cyaA;
        elmt_cyt.elmt_transcription_CRP_cAMP_CRPsite_ptsIp0_Mlc_Mlcsite_ptsIp0_ptsIp0 = Reacs.elmt_transcription_CRP_cAMP_CRPsite_ptsIp0_Mlc_Mlcsite_ptsIp0_ptsIp0;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsiteII_crp = Reacs.elmt_binding_CRP_cAMP_CRPsiteII_crp;
        elmt_cyt.elmt_PTS4rev = Reacs.elmt_PTS4rev;
        elmt_cyt.elmt_reactant132 = Reacs.elmt_reactant132;
        elmt_cyt.elmt_reactant131 = Reacs.elmt_reactant131;
        elmt_cyt.elmt_decomposition_Mlc_Mlcsite_ptsHp0 = Reacs.elmt_decomposition_Mlc_Mlcsite_ptsHp0;
        elmt_cyt.elmt_reactant139 = Reacs.elmt_reactant139;
        elmt_cyt.elmt_translation_mRNA_cyaA = Reacs.elmt_translation_mRNA_cyaA;
        elmt_cyt.elmt_reactant138 = Reacs.elmt_reactant138;
        elmt_cyt.elmt_reactant137 = Reacs.elmt_reactant137;
        elmt_cyt.elmt_reactant136 = Reacs.elmt_reactant136;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsite_mlcp2 = Reacs.elmt_binding_CRP_cAMP_CRPsite_mlcp2;
        elmt_cyt.elmt_reactant135 = Reacs.elmt_reactant135;
        elmt_cyt.elmt_reactant134 = Reacs.elmt_reactant134;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsite_mlcp1 = Reacs.elmt_binding_CRP_cAMP_CRPsite_mlcp1;
        elmt_cyt.elmt_reactant133 = Reacs.elmt_reactant133;
        elmt_cyt.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cyt.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cyt.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cyt.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cyt.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cyt.elmt_decomposition_Mlc_Mlcsite_mlcp1 = Reacs.elmt_decomposition_Mlc_Mlcsite_mlcp1;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsite_mlcp2 = Reacs.elmt_decomposition_CRP_cAMP_CRPsite_mlcp2;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsite_mlcp1 = Reacs.elmt_decomposition_CRP_cAMP_CRPsite_mlcp1;
        elmt_cyt.elmt_PTS4for = Reacs.elmt_PTS4for;
        elmt_cyt.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cyt.elmt_transcription_CRP_cAMP_CRPsite_mlcp2_Mlc_Mlcsite_mlcp2_mlcp2 = Reacs.elmt_transcription_CRP_cAMP_CRPsite_mlcp2_Mlc_Mlcsite_mlcp2_mlcp2;
        elmt_cyt.elmt_reactant141 = Reacs.elmt_reactant141;
        elmt_cyt.elmt_reactant140 = Reacs.elmt_reactant140;
        elmt_cyt.elmt_decomposition_Mlc_Mlcsite_mlcp2 = Reacs.elmt_decomposition_Mlc_Mlcsite_mlcp2;
        elmt_cyt.elmt_reactant149 = Reacs.elmt_reactant149;
        elmt_cyt.elmt_reactant148 = Reacs.elmt_reactant148;
        elmt_cyt.elmt_reactant145 = Reacs.elmt_reactant145;
        elmt_cyt.elmt_reactant144 = Reacs.elmt_reactant144;
        elmt_cyt.elmt_decomposition_mRNA_ptsG = Reacs.elmt_decomposition_mRNA_ptsG;
        elmt_cyt.elmt_product74 = Reacs.elmt_product74;
        elmt_cyt.elmt_product73 = Reacs.elmt_product73;
        elmt_cyt.elmt_decomposition_mRNA_ptsH = Reacs.elmt_decomposition_mRNA_ptsH;
        elmt_cyt.elmt_decomposition_mRNA_ptsI = Reacs.elmt_decomposition_mRNA_ptsI;
        elmt_cyt.elmt_product72 = Reacs.elmt_product72;
        elmt_cyt.elmt_product71 = Reacs.elmt_product71;
        elmt_cyt.elmt_reactant109 = Reacs.elmt_reactant109;
        elmt_cyt.elmt_decomposition_Mlc_Mlcsite_ptsGp2 = Reacs.elmt_decomposition_Mlc_Mlcsite_ptsGp2;
        elmt_cyt.elmt_product75 = Reacs.elmt_product75;
        elmt_cyt.elmt_product170 = Reacs.elmt_product170;
        elmt_cyt.elmt_product70 = Reacs.elmt_product70;
        elmt_cyt.elmt_product178 = Reacs.elmt_product178;
        elmt_cyt.elmt_product174 = Reacs.elmt_product174;
        elmt_cyt.elmt_transcription_CRP_cAMP_CRPsite_cyaA_cyaA = Reacs.elmt_transcription_CRP_cAMP_CRPsite_cyaA_cyaA;
        elmt_cyt.elmt_decomposition_Mlc_Mlcsite_ptsGp1 = Reacs.elmt_decomposition_Mlc_Mlcsite_ptsGp1;
        elmt_cyt.elmt_reactant117 = Reacs.elmt_reactant117;
        elmt_cyt.elmt_product69 = Reacs.elmt_product69;
        elmt_cyt.elmt_product68 = Reacs.elmt_product68;
        elmt_cyt.elmt_reactant115 = Reacs.elmt_reactant115;
        elmt_cyt.elmt_reactant113 = Reacs.elmt_reactant113;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsiteII_crp = Reacs.elmt_decomposition_CRP_cAMP_CRPsiteII_crp;
        elmt_cyt.elmt_reactant111 = Reacs.elmt_reactant111;
        elmt_cyt.elmt_product85 = Reacs.elmt_product85;
        elmt_cyt.elmt_product84 = Reacs.elmt_product84;
        elmt_cyt.elmt_product83 = Reacs.elmt_product83;
        elmt_cyt.elmt_product89 = Reacs.elmt_product89;
        elmt_cyt.elmt_product88 = Reacs.elmt_product88;
        elmt_cyt.elmt_product87 = Reacs.elmt_product87;
        elmt_cyt.elmt_product86 = Reacs.elmt_product86;
        elmt_cyt.elmt_reactant119 = Reacs.elmt_reactant119;
        elmt_cyt.elmt_translation_mRNA_ptsH = Reacs.elmt_translation_mRNA_ptsH;
        elmt_cyt.elmt_product182 = Reacs.elmt_product182;
        elmt_cyt.elmt_translation_mRNA_ptsG = Reacs.elmt_translation_mRNA_ptsG;
        elmt_cyt.elmt_translation_mRNA_ptsI = Reacs.elmt_translation_mRNA_ptsI;
        elmt_cyt.elmt_transcription_CRP_cAMP_CRPsite_mlcp1_Mlc_Mlcsite_mlcp1_mlcp1 = Reacs.elmt_transcription_CRP_cAMP_CRPsite_mlcp1_Mlc_Mlcsite_mlcp1_mlcp1;
        elmt_cyt.elmt_reactant121 = Reacs.elmt_reactant121;
        elmt_cyt.elmt_binding_Mlc_Mlcsite_ptsGp1 = Reacs.elmt_binding_Mlc_Mlcsite_ptsGp1;
        elmt_cyt.elmt_binding_Mlc_Mlcsite_ptsGp2 = Reacs.elmt_binding_Mlc_Mlcsite_ptsGp2;
        elmt_cyt.elmt_reactant129 = Reacs.elmt_reactant129;
        elmt_cyt.elmt_reactant127 = Reacs.elmt_reactant127;
        elmt_cyt.elmt_reactant125 = Reacs.elmt_reactant125;
        elmt_cyt.elmt_transcription_crr = Reacs.elmt_transcription_crr;
        elmt_cyt.elmt_reactant123 = Reacs.elmt_reactant123;
        elmt_cyt.elmt_product96 = Reacs.elmt_product96;
        elmt_cyt.elmt_product98 = Reacs.elmt_product98;
        elmt_cyt.elmt_product151 = Reacs.elmt_product151;
        elmt_cyt.elmt_product150 = Reacs.elmt_product150;
        elmt_cyt.elmt_product159 = Reacs.elmt_product159;
        elmt_cyt.elmt_product158 = Reacs.elmt_product158;
        elmt_cyt.elmt_product155 = Reacs.elmt_product155;
        elmt_cyt.elmt_product154 = Reacs.elmt_product154;
        elmt_cyt.elmt_binding_Mlc_Mlcsite_mlcp1 = Reacs.elmt_binding_Mlc_Mlcsite_mlcp1;
        elmt_cyt.elmt_product8 = Reacs.elmt_product8;
        elmt_cyt.elmt_translation_mRNA_crp = Reacs.elmt_translation_mRNA_crp;
        elmt_cyt.elmt_binding_CRP_cAMP = Reacs.elmt_binding_CRP_cAMP;
        elmt_cyt.elmt_translation_mRNA_crr = Reacs.elmt_translation_mRNA_crr;
        elmt_cyt.elmt_binding_Mlc_Mlcsite_mlcp2 = Reacs.elmt_binding_Mlc_Mlcsite_mlcp2;
        elmt_cyt.elmt_product162 = Reacs.elmt_product162;
        elmt_cyt.elmt_decomposition_CRP_cAMP = Reacs.elmt_decomposition_CRP_cAMP;
        elmt_cyt.elmt_product5 = Reacs.elmt_product5;
        elmt_cyt.elmt_product2 = Reacs.elmt_product2;
        elmt_cyt.elmt_binding_Mlc_Mlcsite_ptsHp0 = Reacs.elmt_binding_Mlc_Mlcsite_ptsHp0;
        elmt_cyt.elmt_product167 = Reacs.elmt_product167;
        elmt_cyt.elmt_product163 = Reacs.elmt_product163;
        elmt_cyt.elmt_product165 = Reacs.elmt_product165;
        elmt_cyt.elmt_reactant107 = Reacs.elmt_reactant107;
        elmt_cyt.elmt_reactant105 = Reacs.elmt_reactant105;
        elmt_cyt.elmt_transcription_CRP_cAMP_CRPsite_ptsGp2_Mlc_Mlcsite_ptsGp2_ptsGp2 = Reacs.elmt_transcription_CRP_cAMP_CRPsite_ptsGp2_Mlc_Mlcsite_ptsGp2_ptsGp2;
        elmt_cyt.elmt_reactant103 = Reacs.elmt_reactant103;
        elmt_cyt.elmt_binding_IICB_Mlc = Reacs.elmt_binding_IICB_Mlc;
        elmt_cyt.elmt_reactant101 = Reacs.elmt_reactant101;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsite_ptsHp0 = Reacs.elmt_decomposition_CRP_cAMP_CRPsite_ptsHp0;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsite_ptsHp1 = Reacs.elmt_decomposition_CRP_cAMP_CRPsite_ptsHp1;
        elmt_cyt.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_cyt.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt_cyt.elmt_product32 = Reacs.elmt_product32;
        elmt_cyt.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt_cyt.elmt_PTS2rev = Reacs.elmt_PTS2rev;
        elmt_cyt.elmt_product130 = Reacs.elmt_product130;
        elmt_cyt.elmt_product26 = Reacs.elmt_product26;
        elmt_cyt.elmt_product29 = Reacs.elmt_product29;
        elmt_cyt.elmt_product41 = Reacs.elmt_product41;
        elmt_cyt.elmt_reactant94 = Reacs.elmt_reactant94;
        elmt_cyt.elmt_reactant95 = Reacs.elmt_reactant95;
        elmt_cyt.elmt_decomposition_EI_P = Reacs.elmt_decomposition_EI_P;
        elmt_cyt.elmt_reactant97 = Reacs.elmt_reactant97;
        elmt_cyt.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_cyt.elmt_reactant91 = Reacs.elmt_reactant91;
        elmt_cyt.elmt_product44 = Reacs.elmt_product44;
        elmt_cyt.elmt_reactant92 = Reacs.elmt_reactant92;
        elmt_cyt.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_cyt.elmt_PTS2for = Reacs.elmt_PTS2for;
        elmt_cyt.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt_cyt.elmt_transcription_CRP_cAMP_CRPsite_ptsGp1_Mlc_Mlcsite_ptsGp1_ptsGp1 = Reacs.elmt_transcription_CRP_cAMP_CRPsite_ptsGp1_Mlc_Mlcsite_ptsGp1_ptsGp1;
        elmt_cyt.elmt_product146 = Reacs.elmt_product146;
        elmt_cyt.elmt_decomposition_HPr_P = Reacs.elmt_decomposition_HPr_P;
        elmt_cyt.elmt_product147 = Reacs.elmt_product147;
        elmt_cyt.elmt_product142 = Reacs.elmt_product142;
        elmt_cyt.elmt_product143 = Reacs.elmt_product143;
        elmt_cyt.elmt_product38 = Reacs.elmt_product38;
        elmt_cyt.elmt_product35 = Reacs.elmt_product35;
        elmt_cyt.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_cyt.elmt_reaction_CYA_ATP = Reacs.elmt_reaction_CYA_ATP;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsite_ptsIp1 = Reacs.elmt_decomposition_CRP_cAMP_CRPsite_ptsIp1;
        elmt_cyt.elmt_product50 = Reacs.elmt_product50;
        elmt_cyt.elmt_decomposition_CRP_cAMP_CRPsite_ptsIp0 = Reacs.elmt_decomposition_CRP_cAMP_CRPsite_ptsIp0;
        elmt_cyt.elmt_product56 = Reacs.elmt_product56;
        elmt_cyt.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_cyt.elmt_product53 = Reacs.elmt_product53;
        elmt_cyt.elmt_decomposition_mRNA_mlc = Reacs.elmt_decomposition_mRNA_mlc;
        elmt_cyt.elmt_decomposition_CRP = Reacs.elmt_decomposition_CRP;
        elmt_cyt.elmt_product112 = Reacs.elmt_product112;
        elmt_cyt.elmt_product114 = Reacs.elmt_product114;
        elmt_cyt.elmt_product110 = Reacs.elmt_product110;
        elmt_cyt.elmt_product47 = Reacs.elmt_product47;
        elmt_cyt.elmt_product116 = Reacs.elmt_product116;
        elmt_cyt.elmt_product118 = Reacs.elmt_product118;
        elmt_cyt.elmt_product63 = Reacs.elmt_product63;
        elmt_cyt.elmt_product62 = Reacs.elmt_product62;
        elmt_cyt.elmt_product67 = Reacs.elmt_product67;
        elmt_cyt.elmt_product66 = Reacs.elmt_product66;
        elmt_cyt.elmt_product65 = Reacs.elmt_product65;
        elmt_cyt.elmt_decomposition_IICB = Reacs.elmt_decomposition_IICB;
        elmt_cyt.elmt_product64 = Reacs.elmt_product64;
        elmt_cyt.elmt_reactant76 = Reacs.elmt_reactant76;
        elmt_cyt.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_cyt.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_cyt.elmt_reactant79 = Reacs.elmt_reactant79;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsite_ptsIp1 = Reacs.elmt_binding_CRP_cAMP_CRPsite_ptsIp1;
        elmt_cyt.elmt_product124 = Reacs.elmt_product124;
        elmt_cyt.elmt_binding_CRP_cAMP_CRPsite_ptsIp0 = Reacs.elmt_binding_CRP_cAMP_CRPsite_ptsIp0;
        elmt_cyt.elmt_product126 = Reacs.elmt_product126;
        elmt_cyt.elmt_transcription_CRP_cAMP_CRPsiteI_crp_CRP_cAMP_CRPsiteII_crp_crp = Reacs.elmt_transcription_CRP_cAMP_CRPsiteI_crp_CRP_cAMP_CRPsiteII_crp_crp;
        elmt_cyt.elmt_product120 = Reacs.elmt_product120;
        elmt_cyt.elmt_product122 = Reacs.elmt_product122;
        elmt_cyt.elmt_product59 = Reacs.elmt_product59;
        elmt_cyt.elmt_product128 = Reacs.elmt_product128;
        elmt_cyt.elmt_event0 = elmt_event0.trigger;

        elmt_cyt.assign_elmt_Glucose = elmt_event0.value_elmt_Glucose;
end MODEL1501300000;
