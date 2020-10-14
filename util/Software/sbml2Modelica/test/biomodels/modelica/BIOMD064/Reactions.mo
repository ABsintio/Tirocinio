within BIOMD064;
class Reactions

    input Real elmt_KiPFKATP;
    input Real elmt_CPFKF26BP;
    input Real elmt_F16P;
    input Real elmt_NAD;
    input Real elmt_KPFKF16BP;
    input Real elmt_ATP;
    input Real elmt_ETOH;
    input Real elmt_gR;
    input Real elmt_cytosol;
    input Real elmt_PEP;
    input Real elmt_Lzero;
    input Real elmt_BPG;
    input Real elmt_KmPFKF6P;
    input Real elmt_CiPFKATP;
    input Real elmt_KPFKAMP;
    input Real elmt_P3G;
    input Real elmt_KeqTPI;
    input Real elmt_GLCo;
    input Real elmt_ADP;
    input Real elmt_NADH;
    input Real elmt_CPFKF16BP;
    input Real elmt_GLY;
    input Real elmt_KPFKF26BP;
    input Real elmt_GLCi;
    input Real elmt_F6P;
    input Real elmt_CPFKAMP;
    input Real elmt_KmPFKATP;
    input Real elmt_TRIO;
    input Real elmt_CPFKATP;
    input Real elmt_P2G;
    input Real elmt_ACE;
    input Real elmt_AMP;
    input Real elmt_G6P;
    input Real elmt_PYR;
    input Real elmt_F26BP;

    Real elmt_vGLYCO(unit = "") "Glycogen synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGLYCO_elmt_KGLYCOGEN_3(unit "m-3.0..s-1.0") = 6.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_vGAPDH(unit = "") "Glyceraldehyde 3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGAPDH_elmt_KmGAPDHGAP(unit "m-3.0.") = 0.21 "";
    parameter Real elmt_vGAPDH_elmt_KmGAPDHNADH(unit "m-3.0.") = 0.06 "";
    parameter Real elmt_vGAPDH_elmt_KmGAPDHNAD(unit "m-3.0.") = 0.09 "";
    parameter Real elmt_vGAPDH_elmt_VmGAPDHf(unit "m-3.0..s-1.0") = 1184.52 "";
    parameter Real elmt_vGAPDH_elmt_VmGAPDHr(unit "m-3.0..s-1.0") = 6549.8 "";
    parameter Real elmt_vGAPDH_elmt_KmGAPDHBPG(unit "m-3.0.") = 0.0098 "";
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_product18 "";
    Real elmt_vPDC(unit = "") "Pyruvate decarboxylase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPDC_elmt_VmPDC(unit "m-3.0..s-1.0") = 174.194 "";
    parameter Real elmt_vPDC_elmt_nPDC(unit "") = 1.9 "";
    parameter Real elmt_vPDC_elmt_KmPDCPYR(unit "m-3.0.") = 4.33 "";
    Real elmt_reactant30 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_vGLT(unit = "") "Glucose transport";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGLT_elmt_VmGLT(unit ".s-1.0") = 97.264 "";
    parameter Real elmt_vGLT_elmt_KmGLTGLCi(unit "m-3.0.") = 1.1918 "";
    parameter Real elmt_vGLT_elmt_KmGLTGLCo(unit "m-3.0.") = 1.1918 "";
    parameter Real elmt_vGLT_elmt_KeqGLT(unit "m-3.0.") = 1.0 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_vPGI(unit = "") "Glucose-6-phosphate isomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGI_elmt_VmPGI_2(unit "m-3.0..s-1.0") = 339.677 "";
    parameter Real elmt_vPGI_elmt_KeqPGI_2(unit "") = 0.314 "";
    parameter Real elmt_vPGI_elmt_KmPGIG6P_2(unit "m-3.0.") = 1.4 "";
    parameter Real elmt_vPGI_elmt_KmPGIF6P_2(unit "m-3.0.") = 0.3 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_vPGK(unit = "") "Phosphoglycerate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGK_elmt_KmPGKATP(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_vPGK_elmt_KmPGKADP(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_vPGK_elmt_KmPGKBPG(unit "m-3.0.") = 0.003 "";
    parameter Real elmt_vPGK_elmt_VmPGK(unit "m-3.0..s-1.0") = 1306.45 "";
    parameter Real elmt_vPGK_elmt_KmPGKP3G(unit "m-3.0.") = 0.53 "";
    parameter Real elmt_vPGK_elmt_KeqPGK(unit "") = 3200.0 "";
    Real elmt_reactant20 "";
    Real elmt_product22 "";
    Real elmt_product21 "";
    Real elmt_vGLK(unit = "") "Hexokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGLK_elmt_KeqGLK(unit "") = 3800.0 "";
    parameter Real elmt_vGLK_elmt_KmGLKATP(unit "m-3.0.") = 0.15 "";
    parameter Real elmt_vGLK_elmt_KmGLKADP(unit "m-3.0.") = 0.23 "";
    parameter Real elmt_vGLK_elmt_KmGLKG6P(unit "m-3.0.") = 30.0 "";
    parameter Real elmt_vGLK_elmt_VmGLK(unit "m-3.0..s-1.0") = 226.452 "";
    parameter Real elmt_vGLK_elmt_KmGLKGLCi(unit "m-3.0.") = 0.08 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_vENO(unit = "") "Enolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vENO_elmt_KeqENO(unit "") = 6.7 "";
    parameter Real elmt_vENO_elmt_KmENOPEP(unit "m-3.0.") = 0.5 "";
    parameter Real elmt_vENO_elmt_VmENO(unit "m-3.0..s-1.0") = 365.806 "";
    parameter Real elmt_vENO_elmt_KmENOP2G(unit "m-3.0.") = 0.04 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_vADH(unit = "") "Alcohol dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vADH_elmt_KiADHNADH(unit "m-3.0.") = 0.031 "";
    parameter Real elmt_vADH_elmt_KiADHETOH(unit "m-3.0.") = 90.0 "";
    parameter Real elmt_vADH_elmt_KmADHETOH(unit "m-3.0.") = 17.0 "";
    parameter Real elmt_vADH_elmt_KmADHNAD(unit "m-3.0.") = 0.17 "";
    parameter Real elmt_vADH_elmt_KiADHNAD(unit "m-3.0.") = 0.92 "";
    parameter Real elmt_vADH_elmt_VmADH(unit "m-3.0..s-1.0") = 810.0 "";
    parameter Real elmt_vADH_elmt_KmADHNADH(unit "m-3.0.") = 0.11 "";
    parameter Real elmt_vADH_elmt_KmADHACE(unit "m-3.0.") = 1.11 "";
    parameter Real elmt_vADH_elmt_KiADHACE(unit "m-3.0.") = 1.1 "";
    parameter Real elmt_vADH_elmt_KeqADH(unit "") = 6.9E-5 "";
    Real elmt_reactant40 "";
    Real elmt_reactant41 "";
    Real elmt_product43 "";
    Real elmt_product42 "";
    Real elmt_vG3PDH(unit = "") "Glycerol 3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vG3PDH_elmt_VmG3PDH(unit "m-3.0..s-1.0") = 70.15 "";
    parameter Real elmt_vG3PDH_elmt_KeqG3PDH(unit "") = 4300.0 "";
    parameter Real elmt_vG3PDH_elmt_KmG3PDHNADH(unit "m-3.0.") = 0.023 "";
    parameter Real elmt_vG3PDH_elmt_KmG3PDHNAD(unit "m-3.0.") = 0.93 "";
    parameter Real elmt_vG3PDH_elmt_KmG3PDHGLY(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_vG3PDH_elmt_KmG3PDHDHAP(unit "m-3.0.") = 0.4 "";
    Real elmt_product47 "";
    Real elmt_product46 "";
    Real elmt_reactant44 "";
    Real elmt_reactant45 "";
    Real elmt_vATP(unit = "") "ATPase activity";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vATP_elmt_KATPASE(unit "s-1.0") = 33.7 "";
    Real elmt_reactant48 "";
    Real elmt_vPYK(unit = "") "Pyruvate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPYK_elmt_KmPYKPEP(unit "m-3.0.") = 0.14 "";
    parameter Real elmt_vPYK_elmt_KmPYKADP(unit "m-3.0.") = 0.53 "";
    parameter Real elmt_vPYK_elmt_KmPYKATP(unit "m-3.0.") = 1.5 "";
    parameter Real elmt_vPYK_elmt_KmPYKPYR(unit "m-3.0.") = 21.0 "";
    parameter Real elmt_vPYK_elmt_VmPYK(unit "m-3.0..s-1.0") = 1088.71 "";
    parameter Real elmt_vPYK_elmt_KeqPYK(unit "") = 6500.0 "";
    Real elmt_reactant27 "";
    Real elmt_product29 "";
    Real elmt_product28 "";
    Real elmt_vSUC(unit = "") "Succinate synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vSUC_elmt_KSUCC(unit "") = 21.4 "";
    Real elmt_product37 "";
    Real elmt_product36 "";
    Real elmt_reactant33 "";
    Real elmt_reactant34 "";
    Real elmt_reactant35 "";
    Real elmt_vPGM(unit = "") "Phosphoglycerate mutase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGM_elmt_KeqPGM(unit "") = 0.19 "";
    parameter Real elmt_vPGM_elmt_VmPGM(unit "m-3.0..s-1.0") = 2525.81 "";
    parameter Real elmt_vPGM_elmt_KmPGMP2G(unit "m-3.0.") = 0.08 "";
    parameter Real elmt_vPGM_elmt_KmPGMP3G(unit "m-3.0.") = 1.2 "";
    Real elmt_product24 "";
    Real elmt_reactant23 "";
    Real elmt_vTreha(unit = "") "Trehalose 6-phosphate synthase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTreha_elmt_KTREHALOSE(unit "m-3.0..s-1.0") = 2.4 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_vPFK(unit = "") "Phosphofructokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPFK_elmt_VmPFK(unit "m-3.0..s-1.0") = 182.903 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt_vALD(unit = "") "Aldolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vALD_elmt_KeqALD(unit "") = 0.069 "";
    parameter Real elmt_vALD_elmt_KmALDDHAP(unit "m-3.0.") = 2.4 "";
    parameter Real elmt_vALD_elmt_KmALDF16P(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_vALD_elmt_VmALD(unit "m-3.0..s-1.0") = 322.258 "";
    parameter Real elmt_vALD_elmt_KmALDGAPi(unit "m-3.0.") = 10.0 "";
    parameter Real elmt_vALD_elmt_KmALDGAP(unit "m-3.0.") = 2.0 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product26 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product24 = 1.0;
        elmt_product29 = 1.0;
        elmt_product28 = 1.0;
        elmt_product43 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product37 = 1.0;
        elmt_product36 = 3.0;
        elmt_product39 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_product47 = 1.0;
        elmt_product46 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product22 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 2.0;
        elmt_reactant38 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant33 = 2.0;
        elmt_reactant0 = 1.0;
        elmt_reactant34 = 3.0;
        elmt_product2 = 1.0;
        elmt_reactant35 = 4.0;
        elmt_product15 = 2.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_vGLYCO = (elmt_cytosol * elmt_vGLYCO_elmt_KGLYCOGEN_3);
        elmt_vGAPDH = ((elmt_cytosol * (((elmt_vGAPDH_elmt_VmGAPDHf * (elmt_KeqTPI / (1.0 + elmt_KeqTPI)) * elmt_TRIO * elmt_NAD) / (elmt_vGAPDH_elmt_KmGAPDHGAP * elmt_vGAPDH_elmt_KmGAPDHNAD)) - ((elmt_vGAPDH_elmt_VmGAPDHr * elmt_BPG * elmt_NADH) / (elmt_vGAPDH_elmt_KmGAPDHBPG * elmt_vGAPDH_elmt_KmGAPDHNADH)))) / ((1.0 + (((elmt_KeqTPI / (1.0 + elmt_KeqTPI)) * elmt_TRIO) / elmt_vGAPDH_elmt_KmGAPDHGAP) + (elmt_BPG / elmt_vGAPDH_elmt_KmGAPDHBPG)) * (1.0 + (elmt_NAD / elmt_vGAPDH_elmt_KmGAPDHNAD) + (elmt_NADH / elmt_vGAPDH_elmt_KmGAPDHNADH))));
        elmt_vPDC = ((elmt_cytosol * elmt_vPDC_elmt_VmPDC * (Functions.pow(elmt_PYR, elmt_vPDC_elmt_nPDC) / Functions.pow(elmt_vPDC_elmt_KmPDCPYR, elmt_vPDC_elmt_nPDC))) / (1.0 + (Functions.pow(elmt_PYR, elmt_vPDC_elmt_nPDC) / Functions.pow(elmt_vPDC_elmt_KmPDCPYR, elmt_vPDC_elmt_nPDC))));
        elmt_vGLT = (((elmt_vGLT_elmt_VmGLT / elmt_vGLT_elmt_KmGLTGLCo) * (elmt_GLCo - (elmt_GLCi / elmt_vGLT_elmt_KeqGLT))) / (1.0 + (elmt_GLCo / elmt_vGLT_elmt_KmGLTGLCo) + (elmt_GLCi / elmt_vGLT_elmt_KmGLTGLCi) + ((0.91 * elmt_GLCo * elmt_GLCi) / (elmt_vGLT_elmt_KmGLTGLCo * elmt_vGLT_elmt_KmGLTGLCi))));
        elmt_vPGI = ((((elmt_cytosol * elmt_vPGI_elmt_VmPGI_2) / elmt_vPGI_elmt_KmPGIG6P_2) * (elmt_G6P - (elmt_F6P / elmt_vPGI_elmt_KeqPGI_2))) / (1.0 + (elmt_G6P / elmt_vPGI_elmt_KmPGIG6P_2) + (elmt_F6P / elmt_vPGI_elmt_KmPGIF6P_2)));
        elmt_vPGK = ((((elmt_cytosol * elmt_vPGK_elmt_VmPGK) / (elmt_vPGK_elmt_KmPGKP3G * elmt_vPGK_elmt_KmPGKATP)) * ((elmt_vPGK_elmt_KeqPGK * elmt_BPG * elmt_ADP) - (elmt_P3G * elmt_ATP))) / ((1.0 + (elmt_BPG / elmt_vPGK_elmt_KmPGKBPG) + (elmt_P3G / elmt_vPGK_elmt_KmPGKP3G)) * (1.0 + (elmt_ATP / elmt_vPGK_elmt_KmPGKATP) + (elmt_ADP / elmt_vPGK_elmt_KmPGKADP))));
        elmt_vGLK = ((((elmt_cytosol * elmt_vGLK_elmt_VmGLK) / (elmt_vGLK_elmt_KmGLKGLCi * elmt_vGLK_elmt_KmGLKATP)) * ((elmt_GLCi * elmt_ATP) - ((elmt_G6P * elmt_ADP) / elmt_vGLK_elmt_KeqGLK))) / ((1.0 + (elmt_GLCi / elmt_vGLK_elmt_KmGLKGLCi) + (elmt_G6P / elmt_vGLK_elmt_KmGLKG6P)) * (1.0 + (elmt_ATP / elmt_vGLK_elmt_KmGLKATP) + (elmt_ADP / elmt_vGLK_elmt_KmGLKADP))));
        elmt_vENO = ((((elmt_cytosol * elmt_vENO_elmt_VmENO) / elmt_vENO_elmt_KmENOP2G) * (elmt_P2G - (elmt_PEP / elmt_vENO_elmt_KeqENO))) / (1.0 + (elmt_P2G / elmt_vENO_elmt_KmENOP2G) + (elmt_PEP / elmt_vENO_elmt_KmENOPEP)));
        elmt_vADH = ((- elmt_cytosol) * (((elmt_vADH_elmt_VmADH / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KmADHETOH)) * ((elmt_NAD * elmt_ETOH) - ((elmt_NADH * elmt_ACE) / elmt_vADH_elmt_KeqADH))) / (1.0 + (elmt_NAD / elmt_vADH_elmt_KiADHNAD) + ((elmt_vADH_elmt_KmADHNAD * elmt_ETOH) / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KmADHETOH)) + ((elmt_vADH_elmt_KmADHNADH * elmt_ACE) / (elmt_vADH_elmt_KiADHNADH * elmt_vADH_elmt_KmADHACE)) + (elmt_NADH / elmt_vADH_elmt_KiADHNADH) + ((elmt_NAD * elmt_ETOH) / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KmADHETOH)) + ((elmt_vADH_elmt_KmADHNADH * elmt_NAD * elmt_ACE) / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KiADHNADH * elmt_vADH_elmt_KmADHACE)) + ((elmt_vADH_elmt_KmADHNAD * elmt_ETOH * elmt_NADH) / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KmADHETOH * elmt_vADH_elmt_KiADHNADH)) + ((elmt_NADH * elmt_ACE) / (elmt_vADH_elmt_KiADHNADH * elmt_vADH_elmt_KmADHACE)) + ((elmt_NAD * elmt_ETOH * elmt_ACE) / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KmADHETOH * elmt_vADH_elmt_KiADHACE)) + ((elmt_ETOH * elmt_NADH * elmt_ACE) / (elmt_vADH_elmt_KiADHETOH * elmt_vADH_elmt_KiADHNADH * elmt_vADH_elmt_KmADHACE)))));
        elmt_vG3PDH = ((((elmt_cytosol * elmt_vG3PDH_elmt_VmG3PDH) / (elmt_vG3PDH_elmt_KmG3PDHDHAP * elmt_vG3PDH_elmt_KmG3PDHNADH)) * (((1.0 / (1.0 + elmt_KeqTPI)) * elmt_TRIO * elmt_NADH) - ((elmt_GLY * elmt_NAD) / elmt_vG3PDH_elmt_KeqG3PDH))) / ((1.0 + (((1.0 / (1.0 + elmt_KeqTPI)) * elmt_TRIO) / elmt_vG3PDH_elmt_KmG3PDHDHAP) + (elmt_GLY / elmt_vG3PDH_elmt_KmG3PDHGLY)) * (1.0 + (elmt_NADH / elmt_vG3PDH_elmt_KmG3PDHNADH) + (elmt_NAD / elmt_vG3PDH_elmt_KmG3PDHNAD))));
        elmt_vATP = (elmt_cytosol * elmt_vATP_elmt_KATPASE * elmt_ATP);
        elmt_vPYK = ((((elmt_cytosol * elmt_vPYK_elmt_VmPYK) / (elmt_vPYK_elmt_KmPYKPEP * elmt_vPYK_elmt_KmPYKADP)) * ((elmt_PEP * elmt_ADP) - ((elmt_PYR * elmt_ATP) / elmt_vPYK_elmt_KeqPYK))) / ((1.0 + (elmt_PEP / elmt_vPYK_elmt_KmPYKPEP) + (elmt_PYR / elmt_vPYK_elmt_KmPYKPYR)) * (1.0 + (elmt_ATP / elmt_vPYK_elmt_KmPYKATP) + (elmt_ADP / elmt_vPYK_elmt_KmPYKADP))));
        elmt_vSUC = (elmt_cytosol * elmt_vSUC_elmt_KSUCC * elmt_ACE);
        elmt_vPGM = ((((elmt_cytosol * elmt_vPGM_elmt_VmPGM) / elmt_vPGM_elmt_KmPGMP3G) * (elmt_P3G - (elmt_P2G / elmt_vPGM_elmt_KeqPGM))) / (1.0 + (elmt_P3G / elmt_vPGM_elmt_KmPGMP3G) + (elmt_P2G / elmt_vPGM_elmt_KmPGMP2G)));
        elmt_vTreha = (elmt_cytosol * elmt_vTreha_elmt_KTREHALOSE);
        elmt_vPFK = ((elmt_cytosol * elmt_vPFK_elmt_VmPFK * elmt_gR * (elmt_F6P / elmt_KmPFKF6P) * (elmt_ATP / elmt_KmPFKATP) * ((1.0 + (elmt_F6P / elmt_KmPFKF6P) + (elmt_ATP / elmt_KmPFKATP) + (elmt_gR * (elmt_F6P / elmt_KmPFKF6P) * (elmt_ATP / elmt_KmPFKATP))))) / (Functions.pow(((1.0 + (elmt_F6P / elmt_KmPFKF6P) + (elmt_ATP / elmt_KmPFKATP) + (elmt_gR * (elmt_F6P / elmt_KmPFKF6P) * (elmt_ATP / elmt_KmPFKATP)))), 2.0) + (((elmt_Lzero * Functions.pow(((1.0 + (elmt_CiPFKATP * (elmt_ATP / elmt_KiPFKATP))) / (1.0 + (elmt_ATP / elmt_KiPFKATP))), 2.0) * Functions.pow(((1.0 + (elmt_CPFKAMP * (elmt_AMP / elmt_KPFKAMP))) / (1.0 + (elmt_AMP / elmt_KPFKAMP))), 2.0) * Functions.pow(((1.0 + ((elmt_CPFKF26BP * elmt_F26BP) / elmt_KPFKF26BP) + ((elmt_CPFKF16BP * elmt_F16P) / elmt_KPFKF16BP)) / (1.0 + (elmt_F26BP / elmt_KPFKF26BP) + (elmt_F16P / elmt_KPFKF16BP))), 2.0))) * Functions.pow(((1.0 + (elmt_CPFKATP * (elmt_ATP / elmt_KmPFKATP)))), 2.0))));
        elmt_vALD = ((((elmt_cytosol * elmt_vALD_elmt_VmALD) / elmt_vALD_elmt_KmALDF16P) * (elmt_F16P - (((elmt_KeqTPI / (1.0 + elmt_KeqTPI)) * elmt_TRIO * (1.0 / (1.0 + elmt_KeqTPI)) * elmt_TRIO) / elmt_vALD_elmt_KeqALD))) / (1.0 + (elmt_F16P / elmt_vALD_elmt_KmALDF16P) + (((elmt_KeqTPI / (1.0 + elmt_KeqTPI)) * elmt_TRIO) / elmt_vALD_elmt_KmALDGAP) + (((1.0 / (1.0 + elmt_KeqTPI)) * elmt_TRIO) / elmt_vALD_elmt_KmALDDHAP) + (((elmt_KeqTPI / (1.0 + elmt_KeqTPI)) * elmt_TRIO * (1.0 / (1.0 + elmt_KeqTPI)) * elmt_TRIO) / (elmt_vALD_elmt_KmALDGAP * elmt_vALD_elmt_KmALDDHAP)) + ((elmt_F16P * (elmt_KeqTPI / (1.0 + elmt_KeqTPI)) * elmt_TRIO) / (elmt_vALD_elmt_KmALDGAPi * elmt_vALD_elmt_KmALDF16P))));
        der(elmt_reactant40) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product24) = 0;
        der(elmt_product29) = 0;
        der(elmt_product28) = 0;
        der(elmt_product43) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product37) = 0;
        der(elmt_product36) = 0;
        der(elmt_product39) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_product47) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product22) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;

end Reactions;
