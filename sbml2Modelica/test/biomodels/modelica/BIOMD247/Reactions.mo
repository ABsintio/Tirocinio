within BIOMD247;
class Reactions

    input Real elmt_F16P;
    input Real elmt_NAD;
    input Real elmt_NADP;
    input Real elmt_Ribose5P;
    input Real elmt_Erythrose4P;
    input Real elmt_ETOH;
    input Real elmt_k_rel_GAPDH;
    input Real elmt_PEP;
    input Real elmt_Xyl5P;
    input Real elmt_Seduhept7P;
    input Real elmt_BPG;
    input Real elmt_P3G;
    input Real elmt_k_rel_TPI;
    input Real elmt_DHAP;
    input Real elmt_GLCo;
    input Real elmt_NADH;
    input Real elmt_P;
    input Real elmt_Ribulose5P;
    input Real elmt_D6PGluconoLactone;
    input Real elmt_GLY;
    input Real elmt_GLCi;
    input Real elmt_F6P;
    input Real elmt_NADPH;
    input Real elmt_P2G;
    input Real elmt_ACE;
    input Real elmt_cytoplasm;
    input Real elmt_G6P;
    input Real elmt_SUMAXP;
    input Real elmt_GA3P;
    input Real elmt_PYR;
    input Real elmt_F26BP;
    input Real elmt_D6PGluconate;

    Real elmt_vTPI(unit = "") "vTPI";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTPI_elmt_KmGA3P(unit "m-3.0.") = 1.27 "";
    parameter Real elmt_vTPI_elmt_VmDHAP(unit "m-3.0..s-1.0") = 10900.0 "";
    parameter Real elmt_vTPI_elmt_KmDHAP(unit "m-3.0.") = 1.23 "";
    parameter Real elmt_vTPI_elmt_VmGA3P(unit "m-3.0..s-1.0") = 555.0 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_vPDC(unit = "") "Pyruvate decarboxylase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPDC_elmt_VmPDC(unit "m-3.0..s-1.0") = 174.194 "";
    parameter Real elmt_vPDC_elmt_nPDC(unit "") = 1.9 "";
    parameter Real elmt_vPDC_elmt_KmPDCPYR(unit "m-3.0.") = 4.33 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_product31 "";
    Real elmt_vGLT(unit = "") "Glucose transport";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGLT_elmt_VmGLT(unit "m-3.0..s-1.0") = 97.264 "";
    parameter Real elmt_vGLT_elmt_KmGLTGLCi(unit "m-3.0.") = 1.1918 "";
    parameter Real elmt_vGLT_elmt_KeqGLT(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_vGLT_elmt_KmGLTGLCo(unit "m-3.0.") = 1.1918 "";
    Real elmt_reactant72 "";
    Real elmt_product73 "";
    Real elmt_v6PGL(unit = "") "v6PGL";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v6PGL_elmt_Km6PGL(unit "m-3.0.") = 0.8 "";
    parameter Real elmt_v6PGL_elmt_Vm6PGL(unit "m-3.0..s-1.0") = 4.0 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
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
    parameter Real elmt_vGLK_elmt_KeqAK(unit "") = 0.45 "";
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
    Real elmt_product25 "";
    Real elmt_reactant24 "";
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
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_product39 "";
    Real elmt_vG3PDH(unit = "") "Glycerol 3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vG3PDH_elmt_VmG3PDH(unit "m-3.0..s-1.0") = 70.15 "";
    parameter Real elmt_vG3PDH_elmt_KeqG3PDH(unit "") = 4300.0 "";
    parameter Real elmt_vG3PDH_elmt_KeqTPI(unit "") = 0.045 "";
    parameter Real elmt_vG3PDH_elmt_KmG3PDHNADH(unit "m-3.0.") = 0.023 "";
    parameter Real elmt_vG3PDH_elmt_KmG3PDHNAD(unit "m-3.0.") = 0.93 "";
    parameter Real elmt_vG3PDH_elmt_KmG3PDHGLY(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_vG3PDH_elmt_KmG3PDHDHAP(unit "m-3.0.") = 0.4 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt_vPPI(unit = "") "vPPI";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPPI_elmt_KmRibo5P(unit "m-3.0.") = 1.6 "";
    parameter Real elmt_vPPI_elmt_VmPPIr(unit "m-3.0..s-1.0") = 3458.0 "";
    parameter Real elmt_vPPI_elmt_KmRibu5P(unit "m-3.0.") = 1.6 "";
    parameter Real elmt_vPPI_elmt_VmPPIf(unit "m-3.0..s-1.0") = 3458.0 "";
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_vTransk1(unit = "") "vTransk1";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTransk1_elmt_KmGA3P(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_vTransk1_elmt_VmTransk1r(unit "m-3.0..s-1.0") = 2.0 "";
    parameter Real elmt_vTransk1_elmt_KmSeduhept(unit "m-3.0.") = 0.15 "";
    parameter Real elmt_vTransk1_elmt_VmTransk1f(unit "m-3.0..s-1.0") = 4.0 "";
    parameter Real elmt_vTransk1_elmt_KmXyl5P(unit "m-3.0.") = 0.15 "";
    parameter Real elmt_vTransk1_elmt_KmRibose5P(unit "m-3.0.") = 0.1 "";
    Real elmt_product59 "";
    Real elmt_product58 "";
    Real elmt_reactant56 "";
    Real elmt_reactant57 "";
    Real elmt_vTransk2(unit = "") "vTransk2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTransk2_elmt_VmTransk2r(unit "m-3.0..s-1.0") = 43.0 "";
    parameter Real elmt_vTransk2_elmt_VmTransk2f(unit "m-3.0..s-1.0") = 3.2 "";
    parameter Real elmt_vTransk2_elmt_KmGA3P(unit "m-3.0.") = 2.1 "";
    parameter Real elmt_vTransk2_elmt_KmF6P(unit "m-3.0.") = 1.1 "";
    parameter Real elmt_vTransk2_elmt_KmEry4P(unit "m-3.0.") = 0.09 "";
    parameter Real elmt_vTransk2_elmt_KmXyl5P(unit "m-3.0.") = 0.16 "";
    Real elmt_product69 "";
    Real elmt_product68 "";
    Real elmt_reactant66 "";
    Real elmt_reactant67 "";
    Real elmt_vNADPH(unit = "") "vNADPH";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vNADPH_elmt_kNADPH(unit "s-1.0") = 2.0 "";
    Real elmt_product71 "";
    Real elmt_reactant70 "";
    Real elmt_vPYK(unit = "") "Pyruvate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPYK_elmt_KmPYKPEP(unit "m-3.0.") = 0.14 "";
    parameter Real elmt_vPYK_elmt_KmPYKADP(unit "m-3.0.") = 0.53 "";
    parameter Real elmt_vPYK_elmt_KmPYKATP(unit "m-3.0.") = 1.5 "";
    parameter Real elmt_vPYK_elmt_KmPYKPYR(unit "m-3.0.") = 21.0 "";
    parameter Real elmt_vPYK_elmt_KeqAK(unit "") = 0.45 "";
    parameter Real elmt_vPYK_elmt_VmPYK(unit "m-3.0..s-1.0") = 1088.71 "";
    parameter Real elmt_vPYK_elmt_KeqPYK(unit "") = 6500.0 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_product28 "";
    Real elmt_vSUC(unit = "") "Succinate synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vSUC_elmt_KSUCC(unit "s-1.0") = 21.4 "";
    Real elmt_product34 "";
    Real elmt_product35 "";
    Real elmt_reactant32 "";
    Real elmt_reactant33 "";
    Real elmt_vPFK(unit = "") "Phosphofructokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPFK_elmt_CPFKF26BP(unit "") = 0.0174 "";
    parameter Real elmt_vPFK_elmt_KiPFKATP(unit "m-3.0.") = 0.65 "";
    parameter Real elmt_vPFK_elmt_CPFKF16BP(unit "") = 0.397 "";
    parameter Real elmt_vPFK_elmt_L0(unit "") = 0.66 "";
    parameter Real elmt_vPFK_elmt_KPFKF26BP(unit "m-3.0.") = 6.82E-4 "";
    parameter Real elmt_vPFK_elmt_KPFKF16BP(unit "m-3.0.") = 0.111 "";
    parameter Real elmt_vPFK_elmt_KeqAK(unit "") = 0.45 "";
    parameter Real elmt_vPFK_elmt_gR(unit "") = 5.12 "";
    parameter Real elmt_vPFK_elmt_CPFKAMP(unit "") = 0.0845 "";
    parameter Real elmt_vPFK_elmt_KmPFKATP(unit "m-3.0.") = 0.71 "";
    parameter Real elmt_vPFK_elmt_KmPFKF6P(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_vPFK_elmt_CiPFKATP(unit "") = 100.0 "";
    parameter Real elmt_vPFK_elmt_CPFKATP(unit "") = 3.0 "";
    parameter Real elmt_vPFK_elmt_KPFKAMP(unit "m-3.0.") = 0.0995 "";
    parameter Real elmt_vPFK_elmt_VmPFK(unit "m-3.0..s-1.0") = 182.903 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_vTransald(unit = "") "vTransald";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTransald_elmt_VmTransaldf(unit "m-3.0..s-1.0") = 55.0 "";
    parameter Real elmt_vTransald_elmt_KmGA3P(unit "m-3.0.") = 0.22 "";
    parameter Real elmt_vTransald_elmt_KmF6P(unit "m-3.0.") = 0.32 "";
    parameter Real elmt_vTransald_elmt_VmTransaldr(unit "m-3.0..s-1.0") = 10.0 "";
    parameter Real elmt_vTransald_elmt_KmSeduhept(unit "m-3.0.") = 0.18 "";
    parameter Real elmt_vTransald_elmt_KmEry4P(unit "m-3.0.") = 0.018 "";
    Real elmt_reactant62 "";
    Real elmt_reactant63 "";
    Real elmt_product65 "";
    Real elmt_product64 "";
    Real elmt_vGAPDH(unit = "") "Glyceraldehyde 3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGAPDH_elmt_KmGAPDHGAP(unit "m-3.0.") = 0.21 "";
    parameter Real elmt_vGAPDH_elmt_KmGAPDHNADH(unit "m-3.0.") = 0.06 "";
    parameter Real elmt_vGAPDH_elmt_KeqTPI(unit "") = 0.045 "";
    parameter Real elmt_vGAPDH_elmt_KmGAPDHNAD(unit "m-3.0.") = 0.09 "";
    parameter Real elmt_vGAPDH_elmt_VmGAPDHf(unit "m-3.0..s-1.0") = 1184.52 "";
    parameter Real elmt_vGAPDH_elmt_KeqGAPDH(unit "") = 0.005 "";
    parameter Real elmt_vGAPDH_elmt_VmGAPDHr(unit "m-3.0..s-1.0") = 6549.68 "";
    parameter Real elmt_vGAPDH_elmt_KmGAPDHBPG(unit "m-3.0.") = 0.0098 "";
    Real elmt_reactant15 "";
    Real elmt_reactant16 "";
    Real elmt_product18 "";
    Real elmt_product17 "";
    Real elmt_vPGI(unit = "") "Glucose-6-phosphate isomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGI_elmt_VmPGI(unit "m-3.0..s-1.0") = 339.677 "";
    parameter Real elmt_vPGI_elmt_KmPGIF6P(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_vPGI_elmt_KeqPGI(unit "") = 0.314 "";
    parameter Real elmt_vPGI_elmt_KmPGIG6P(unit "m-3.0.") = 1.4 "";
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
    parameter Real elmt_vPGK_elmt_KeqAK(unit "") = 0.45 "";
    parameter Real elmt_vPGK_elmt_VmPGK(unit "m-3.0..s-1.0") = 1306.45 "";
    parameter Real elmt_vPGK_elmt_KmPGKP3G(unit "m-3.0.") = 0.53 "";
    parameter Real elmt_vPGK_elmt_KeqPGK(unit "") = 3200.0 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_vGluDH(unit = "") "vGluDH";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGluDH_elmt_VmGluDH(unit "m-3.0..s-1.0") = 4.0 "";
    parameter Real elmt_vGluDH_elmt_KmGluconate(unit "m-3.0.") = 0.02 "";
    parameter Real elmt_vGluDH_elmt_KmNADP(unit "m-3.0.") = 0.03 "";
    parameter Real elmt_vGluDH_elmt_KiNADPH(unit "m-3.0.") = 0.03 "";
    Real elmt_reactant50 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_product53 "";
    Real elmt_vR5PI(unit = "") "vR5PI";
    parameter Real elmt_vR5PI_elmt_VmR5PIr(unit "m-3.0..s-1.0") = 1039.0 "";
    parameter Real elmt_vR5PI_elmt_KmXyl(unit "m-3.0.") = 1.5 "";
    parameter Real elmt_vR5PI_elmt_KmRibu5P(unit "m-3.0.") = 1.5 "";
    parameter Real elmt_vR5PI_elmt_VmR5PIf(unit "m-3.0..s-1.0") = 1039.0 "";
    Real elmt_product61 "";
    Real elmt_reactant60 "";
    Real elmt_vG6PDH(unit = "") "vG6PDH";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vG6PDH_elmt_KmNADP(unit "m-3.0.") = 0.02 "";
    parameter Real elmt_vG6PDH_elmt_KmG6P(unit "m-3.0.") = 0.04 "";
    parameter Real elmt_vG6PDH_elmt_KiNADPH(unit "m-3.0.") = 0.017 "";
    parameter Real elmt_vG6PDH_elmt_VmG6PDH(unit "m-3.0..s-1.0") = 4.0 "";
    Real elmt_product47 "";
    Real elmt_product46 "";
    Real elmt_reactant44 "";
    Real elmt_reactant45 "";
    Real elmt_vATP(unit = "") "ATPase activity";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vATP_elmt_KeqAK(unit "") = 0.45 "";
    parameter Real elmt_vATP_elmt_KATPASE(unit "s-1.0") = 39.5 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_vPGM(unit = "") "Phosphoglycerate mutase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGM_elmt_KeqPGM(unit "") = 0.19 "";
    parameter Real elmt_vPGM_elmt_VmPGM(unit "m-3.0..s-1.0") = 2525.81 "";
    parameter Real elmt_vPGM_elmt_KmPGMP2G(unit "m-3.0.") = 0.08 "";
    parameter Real elmt_vPGM_elmt_KmPGMP3G(unit "m-3.0.") = 1.2 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_vALD(unit = "") "Aldolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vALD_elmt_KeqALD(unit "") = 0.069 "";
    parameter Real elmt_vALD_elmt_KmALDDHAP(unit "m-3.0.") = 2.4 "";
    parameter Real elmt_vALD_elmt_KeqTPI(unit "") = 0.045 "";
    parameter Real elmt_vALD_elmt_KmALDF16P(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_vALD_elmt_VmALD(unit "m-3.0..s-1.0") = 322.258 "";
    parameter Real elmt_vALD_elmt_KmALDGAPi(unit "m-3.0.") = 10.0 "";
    parameter Real elmt_vALD_elmt_KmALDGAP(unit "m-3.0.") = 2.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_product73 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product71 = 1.0;
        elmt_product34 = 3.0;
        elmt_product31 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product69 = 1.0;
        elmt_product68 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product38 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product55 = 1.0;
        elmt_product10 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_product46 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_product65 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product64 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant32 = 2.0;
        elmt_reactant33 = 3.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product59 = 1.0;
        elmt_product14 = 1.0;
        elmt_product58 = 1.0;
        elmt_product13 = 1.0;
        elmt_product18 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_vTPI = (elmt_cytoplasm * ((elmt_k_rel_TPI * (((elmt_vTPI_elmt_VmDHAP * elmt_GA3P) / elmt_vTPI_elmt_KmGA3P) - ((elmt_vTPI_elmt_VmGA3P * elmt_DHAP) / elmt_vTPI_elmt_KmDHAP))) / (1.0 + (elmt_GA3P / elmt_vTPI_elmt_KmGA3P) + (elmt_DHAP / elmt_vTPI_elmt_KmDHAP))));
        elmt_vPDC = (elmt_cytoplasm * (((elmt_vPDC_elmt_VmPDC * Functions.pow(elmt_PYR, elmt_vPDC_elmt_nPDC)) / Functions.pow(elmt_vPDC_elmt_KmPDCPYR, elmt_vPDC_elmt_nPDC)) / (1.0 + (Functions.pow(elmt_PYR, elmt_vPDC_elmt_nPDC) / Functions.pow(elmt_vPDC_elmt_KmPDCPYR, elmt_vPDC_elmt_nPDC)))));
        elmt_vGLT = (elmt_cytoplasm * ((elmt_vGLT_elmt_VmGLT * (elmt_GLCo - (elmt_GLCi / elmt_vGLT_elmt_KeqGLT))) / (elmt_vGLT_elmt_KmGLTGLCo * (1.0 + (elmt_GLCo / elmt_vGLT_elmt_KmGLTGLCo) + (elmt_GLCi / elmt_vGLT_elmt_KmGLTGLCi) + ((0.91 * elmt_GLCo * elmt_GLCi) / (elmt_vGLT_elmt_KmGLTGLCi * elmt_vGLT_elmt_KmGLTGLCo))))));
        elmt_v6PGL = (elmt_cytoplasm * ((elmt_v6PGL_elmt_Vm6PGL * elmt_D6PGluconoLactone) / (elmt_v6PGL_elmt_Km6PGL + elmt_D6PGluconoLactone)));
        elmt_vGLK = (elmt_cytoplasm * ((elmt_vGLK_elmt_VmGLK * ((- ((elmt_G6P * (elmt_SUMAXP - Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vGLK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vGLK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5))) / ((1.0 - (4.0 * elmt_vGLK_elmt_KeqAK)) * elmt_vGLK_elmt_KeqGLK))) + ((elmt_GLCi * ((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vGLK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vGLK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vGLK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5))) / (2.0 - (8.0 * elmt_vGLK_elmt_KeqAK))))) / (elmt_vGLK_elmt_KmGLKATP * elmt_vGLK_elmt_KmGLKGLCi * (1.0 + (elmt_G6P / elmt_vGLK_elmt_KmGLKG6P) + (elmt_GLCi / elmt_vGLK_elmt_KmGLKGLCi)) * (1.0 + ((elmt_SUMAXP - Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vGLK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vGLK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)) / ((1.0 - (4.0 * elmt_vGLK_elmt_KeqAK)) * elmt_vGLK_elmt_KmGLKADP)) + (((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vGLK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vGLK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vGLK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)) / ((2.0 - (8.0 * elmt_vGLK_elmt_KeqAK)) * elmt_vGLK_elmt_KmGLKATP))))));
        elmt_vENO = (elmt_cytoplasm * (((elmt_vENO_elmt_VmENO / elmt_vENO_elmt_KmENOP2G) * (elmt_P2G - (elmt_PEP / elmt_vENO_elmt_KeqENO))) / (1.0 + (elmt_P2G / elmt_vENO_elmt_KmENOP2G) + (elmt_PEP / elmt_vENO_elmt_KmENOPEP))));
        elmt_vADH = (elmt_cytoplasm * (- (((elmt_vADH_elmt_VmADH / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KmADHETOH)) * ((elmt_NAD * elmt_ETOH) - ((elmt_NADH * elmt_ACE) / elmt_vADH_elmt_KeqADH))) / (1.0 + (elmt_NAD / elmt_vADH_elmt_KiADHNAD) + ((elmt_vADH_elmt_KmADHNAD * elmt_ETOH) / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KmADHETOH)) + ((elmt_vADH_elmt_KmADHNADH * elmt_ACE) / (elmt_vADH_elmt_KiADHNADH * elmt_vADH_elmt_KmADHACE)) + (elmt_NADH / elmt_vADH_elmt_KiADHNADH) + ((elmt_NAD * elmt_ETOH) / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KmADHETOH)) + ((elmt_vADH_elmt_KmADHNADH * elmt_NAD * elmt_ACE) / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KiADHNADH * elmt_vADH_elmt_KmADHACE)) + ((elmt_vADH_elmt_KmADHNAD * elmt_ETOH * elmt_NADH) / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KmADHETOH * elmt_vADH_elmt_KiADHNADH)) + ((elmt_NADH * elmt_ACE) / (elmt_vADH_elmt_KiADHNADH * elmt_vADH_elmt_KmADHACE)) + ((elmt_NAD * elmt_ETOH * elmt_ACE) / (elmt_vADH_elmt_KiADHNAD * elmt_vADH_elmt_KmADHETOH * elmt_vADH_elmt_KiADHACE)) + ((elmt_ETOH * elmt_NADH * elmt_ACE) / (elmt_vADH_elmt_KiADHETOH * elmt_vADH_elmt_KiADHNADH * elmt_vADH_elmt_KmADHACE))))));
        elmt_vG3PDH = (elmt_cytoplasm * ((elmt_vG3PDH_elmt_VmG3PDH * ((- ((elmt_GLY * elmt_NAD) / elmt_vG3PDH_elmt_KeqG3PDH)) + ((elmt_NADH * elmt_DHAP) / (1.0 + elmt_vG3PDH_elmt_KeqTPI)))) / (elmt_vG3PDH_elmt_KmG3PDHDHAP * elmt_vG3PDH_elmt_KmG3PDHNADH * (1.0 + (elmt_NAD / elmt_vG3PDH_elmt_KmG3PDHNAD) + (elmt_NADH / elmt_vG3PDH_elmt_KmG3PDHNADH)) * (1.0 + (elmt_GLY / elmt_vG3PDH_elmt_KmG3PDHGLY) + (elmt_DHAP / ((1.0 + elmt_vG3PDH_elmt_KeqTPI) * elmt_vG3PDH_elmt_KmG3PDHDHAP))))));
        elmt_vPPI = (elmt_cytoplasm * ((((elmt_vPPI_elmt_VmPPIf * elmt_Ribulose5P) / elmt_vPPI_elmt_KmRibu5P) - ((elmt_vPPI_elmt_VmPPIr * elmt_Ribose5P) / elmt_vPPI_elmt_KmRibo5P)) / (1.0 + (elmt_Ribulose5P / elmt_vPPI_elmt_KmRibu5P) + (elmt_Ribose5P / elmt_vPPI_elmt_KmRibo5P))));
        elmt_vTransk1 = (elmt_cytoplasm * ((((elmt_vTransk1_elmt_VmTransk1f * elmt_Ribose5P * elmt_Xyl5P) / (elmt_vTransk1_elmt_KmRibose5P * elmt_vTransk1_elmt_KmXyl5P)) - ((elmt_vTransk1_elmt_VmTransk1r * elmt_GA3P * elmt_Seduhept7P) / (elmt_vTransk1_elmt_KmGA3P * elmt_vTransk1_elmt_KmSeduhept))) / ((1.0 + (elmt_Ribose5P / elmt_vTransk1_elmt_KmRibose5P) + (elmt_GA3P / elmt_vTransk1_elmt_KmGA3P)) * (1.0 + (elmt_Xyl5P / elmt_vTransk1_elmt_KmXyl5P) + (elmt_Seduhept7P / elmt_vTransk1_elmt_KmSeduhept)))));
        elmt_vTransk2 = (elmt_cytoplasm * ((((elmt_vTransk2_elmt_VmTransk2f * elmt_Erythrose4P * elmt_Xyl5P) / (elmt_vTransk2_elmt_KmEry4P * elmt_vTransk2_elmt_KmXyl5P)) - ((elmt_vTransk2_elmt_VmTransk2r * elmt_F6P * elmt_GA3P) / (elmt_vTransk2_elmt_KmF6P * elmt_vTransk2_elmt_KmGA3P))) / ((1.0 + (elmt_Xyl5P / elmt_vTransk2_elmt_KmXyl5P) + (elmt_GA3P / elmt_vTransk2_elmt_KmGA3P)) * (1.0 + (elmt_Erythrose4P / elmt_vTransk2_elmt_KmEry4P) + (elmt_F6P / elmt_vTransk2_elmt_KmF6P)))));
        elmt_vNADPH = (elmt_cytoplasm * elmt_vNADPH_elmt_kNADPH * elmt_NADPH);
        elmt_vPYK = (elmt_cytoplasm * (((elmt_vPYK_elmt_VmPYK / (elmt_vPYK_elmt_KmPYKPEP * elmt_vPYK_elmt_KmPYKADP)) * (((elmt_PEP * (elmt_SUMAXP - Functions.pow((((Functions.pow(elmt_P, 2.0) - (4.0 * elmt_vPYK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))) - (2.0 * elmt_P * elmt_SUMAXP)) + (8.0 * elmt_vPYK_elmt_KeqAK * elmt_P * elmt_SUMAXP) + Functions.pow(elmt_SUMAXP, 2.0)), 0.5))) / (1.0 - (4.0 * elmt_vPYK_elmt_KeqAK))) - (((elmt_PYR * (((elmt_P - (4.0 * elmt_vPYK_elmt_KeqAK * elmt_P)) - elmt_SUMAXP) + Functions.pow((((Functions.pow(elmt_P, 2.0) - (4.0 * elmt_vPYK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))) - (2.0 * elmt_P * elmt_SUMAXP)) + (8.0 * elmt_vPYK_elmt_KeqAK * elmt_P * elmt_SUMAXP) + Functions.pow(elmt_SUMAXP, 2.0)), 0.5))) / (2.0 - (8.0 * elmt_vPYK_elmt_KeqAK))) / elmt_vPYK_elmt_KeqPYK))) / ((1.0 + (elmt_PEP / elmt_vPYK_elmt_KmPYKPEP) + (elmt_PYR / elmt_vPYK_elmt_KmPYKPYR)) * (1.0 + (((((elmt_P - (4.0 * elmt_vPYK_elmt_KeqAK * elmt_P)) - elmt_SUMAXP) + Functions.pow((((Functions.pow(elmt_P, 2.0) - (4.0 * elmt_vPYK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))) - (2.0 * elmt_P * elmt_SUMAXP)) + (8.0 * elmt_vPYK_elmt_KeqAK * elmt_P * elmt_SUMAXP) + Functions.pow(elmt_SUMAXP, 2.0)), 0.5)) / (2.0 - (8.0 * elmt_vPYK_elmt_KeqAK))) / elmt_vPYK_elmt_KmPYKATP) + (((elmt_SUMAXP - Functions.pow((((Functions.pow(elmt_P, 2.0) - (4.0 * elmt_vPYK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))) - (2.0 * elmt_P * elmt_SUMAXP)) + (8.0 * elmt_vPYK_elmt_KeqAK * elmt_P * elmt_SUMAXP) + Functions.pow(elmt_SUMAXP, 2.0)), 0.5)) / (1.0 - (4.0 * elmt_vPYK_elmt_KeqAK))) / elmt_vPYK_elmt_KmPYKADP)))));
        elmt_vSUC = (elmt_cytoplasm * elmt_vSUC_elmt_KSUCC * elmt_ACE);
        elmt_vPFK = (elmt_cytoplasm * ((elmt_vPFK_elmt_gR * elmt_vPFK_elmt_VmPFK * elmt_F6P * ((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vPFK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)) * (1.0 + (elmt_F6P / elmt_vPFK_elmt_KmPFKF6P) + (((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vPFK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)) / ((2.0 - (8.0 * elmt_vPFK_elmt_KeqAK)) * elmt_vPFK_elmt_KmPFKATP)) + ((elmt_vPFK_elmt_gR * elmt_F6P * ((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vPFK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5))) / ((2.0 - (8.0 * elmt_vPFK_elmt_KeqAK)) * elmt_vPFK_elmt_KmPFKATP * elmt_vPFK_elmt_KmPFKF6P)))) / ((2.0 - (8.0 * elmt_vPFK_elmt_KeqAK)) * elmt_vPFK_elmt_KmPFKATP * elmt_vPFK_elmt_KmPFKF6P * (((elmt_vPFK_elmt_L0 * Functions.pow((1.0 + ((elmt_vPFK_elmt_CPFKF26BP * elmt_F26BP) / elmt_vPFK_elmt_KPFKF26BP) + ((elmt_vPFK_elmt_CPFKF16BP * elmt_F16P) / elmt_vPFK_elmt_KPFKF16BP)), 2.0) * Functions.pow((1.0 + ((2.0 * elmt_vPFK_elmt_CPFKAMP * elmt_vPFK_elmt_KeqAK * Functions.pow((elmt_SUMAXP - Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)), 2.0)) / (((-1.0) + (4.0 * elmt_vPFK_elmt_KeqAK)) * elmt_vPFK_elmt_KPFKAMP * (((elmt_SUMAXP - elmt_P) + (4.0 * elmt_vPFK_elmt_KeqAK * elmt_P)) - Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5))))), 2.0) * Functions.pow((1.0 + ((elmt_vPFK_elmt_CiPFKATP * ((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vPFK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5))) / ((2.0 - (8.0 * elmt_vPFK_elmt_KeqAK)) * elmt_vPFK_elmt_KiPFKATP))), 2.0) * Functions.pow((1.0 + ((elmt_vPFK_elmt_CPFKATP * ((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vPFK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5))) / ((2.0 - (8.0 * elmt_vPFK_elmt_KeqAK)) * elmt_vPFK_elmt_KmPFKATP))), 2.0)) / (Functions.pow((1.0 + (elmt_F26BP / elmt_vPFK_elmt_KPFKF26BP) + (elmt_F16P / elmt_vPFK_elmt_KPFKF16BP)), 2.0) * Functions.pow((1.0 + ((2.0 * elmt_vPFK_elmt_KeqAK * Functions.pow((elmt_SUMAXP - Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)), 2.0)) / (((-1.0) + (4.0 * elmt_vPFK_elmt_KeqAK)) * elmt_vPFK_elmt_KPFKAMP * (((elmt_SUMAXP - elmt_P) + (4.0 * elmt_vPFK_elmt_KeqAK * elmt_P)) - Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5))))), 2.0) * Functions.pow((1.0 + (((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vPFK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)) / ((2.0 - (8.0 * elmt_vPFK_elmt_KeqAK)) * elmt_vPFK_elmt_KiPFKATP))), 2.0))) + Functions.pow((1.0 + (elmt_F6P / elmt_vPFK_elmt_KmPFKF6P) + (((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vPFK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)) / ((2.0 - (8.0 * elmt_vPFK_elmt_KeqAK)) * elmt_vPFK_elmt_KmPFKATP)) + ((elmt_vPFK_elmt_gR * elmt_F6P * ((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vPFK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPFK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPFK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5))) / ((2.0 - (8.0 * elmt_vPFK_elmt_KeqAK)) * elmt_vPFK_elmt_KmPFKATP * elmt_vPFK_elmt_KmPFKF6P))), 2.0)))));
        elmt_vTransald = (elmt_cytoplasm * ((((elmt_vTransald_elmt_VmTransaldf * elmt_GA3P * elmt_Seduhept7P) / (elmt_vTransald_elmt_KmGA3P * elmt_vTransald_elmt_KmSeduhept)) - ((elmt_vTransald_elmt_VmTransaldr * elmt_F6P * elmt_Erythrose4P) / (elmt_vTransald_elmt_KmF6P * elmt_vTransald_elmt_KmEry4P))) / ((1.0 + (elmt_GA3P / elmt_vTransald_elmt_KmGA3P) + (elmt_F6P / elmt_vTransald_elmt_KmF6P)) * (1.0 + (elmt_Seduhept7P / elmt_vTransald_elmt_KmSeduhept) + (elmt_Erythrose4P / elmt_vTransald_elmt_KmEry4P)))));
        elmt_vGAPDH = (elmt_cytoplasm * ((((elmt_k_rel_GAPDH * elmt_vGAPDH_elmt_VmGAPDHf * elmt_GA3P * elmt_NAD) / (elmt_vGAPDH_elmt_KmGAPDHGAP * elmt_vGAPDH_elmt_KmGAPDHNAD)) * (1.0 - ((elmt_BPG * elmt_NADH) / (elmt_GA3P * elmt_NAD * elmt_vGAPDH_elmt_KeqGAPDH)))) / ((1.0 + (elmt_GA3P / elmt_vGAPDH_elmt_KmGAPDHGAP) + (elmt_BPG / elmt_vGAPDH_elmt_KmGAPDHBPG)) * (1.0 + (elmt_NAD / elmt_vGAPDH_elmt_KmGAPDHNAD) + (elmt_NADH / elmt_vGAPDH_elmt_KmGAPDHNADH)))));
        elmt_vPGI = (elmt_cytoplasm * (((elmt_vPGI_elmt_VmPGI / elmt_vPGI_elmt_KmPGIG6P) * (elmt_G6P - (elmt_F6P / elmt_vPGI_elmt_KeqPGI))) / (1.0 + (elmt_G6P / elmt_vPGI_elmt_KmPGIG6P) + (elmt_F6P / elmt_vPGI_elmt_KmPGIF6P))));
        elmt_vPGK = (elmt_cytoplasm * ((elmt_vPGK_elmt_VmPGK * (((elmt_vPGK_elmt_KeqPGK * elmt_BPG * (elmt_SUMAXP - Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPGK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPGK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5))) / (1.0 - (4.0 * elmt_vPGK_elmt_KeqAK))) - ((((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vPGK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPGK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPGK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)) * elmt_P3G) / (2.0 - (8.0 * elmt_vPGK_elmt_KeqAK))))) / (elmt_vPGK_elmt_KmPGKATP * elmt_vPGK_elmt_KmPGKP3G * (1.0 + ((elmt_SUMAXP - Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPGK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPGK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)) / ((1.0 - (4.0 * elmt_vPGK_elmt_KeqAK)) * elmt_vPGK_elmt_KmPGKADP)) + (((((- elmt_SUMAXP) + elmt_P) - (4.0 * elmt_vPGK_elmt_KeqAK * elmt_P)) + Functions.pow((((Functions.pow(elmt_SUMAXP, 2.0) - (2.0 * elmt_SUMAXP * elmt_P)) + (8.0 * elmt_vPGK_elmt_KeqAK * elmt_SUMAXP * elmt_P) + Functions.pow(elmt_P, 2.0)) - (4.0 * elmt_vPGK_elmt_KeqAK * Functions.pow(elmt_P, 2.0))), 0.5)) / ((2.0 - (8.0 * elmt_vPGK_elmt_KeqAK)) * elmt_vPGK_elmt_KmPGKATP))) * (1.0 + (elmt_BPG / elmt_vPGK_elmt_KmPGKBPG) + (elmt_P3G / elmt_vPGK_elmt_KmPGKP3G)))));
        elmt_vGluDH = (elmt_cytoplasm * (((elmt_vGluDH_elmt_VmGluDH * elmt_D6PGluconate * elmt_NADP) / (elmt_vGluDH_elmt_KmGluconate * elmt_vGluDH_elmt_KmNADP)) / ((1.0 + (elmt_D6PGluconate / elmt_vGluDH_elmt_KmGluconate) + (elmt_NADPH / elmt_vGluDH_elmt_KiNADPH)) * (1.0 + (elmt_NADP / elmt_vGluDH_elmt_KmNADP)))));
        elmt_vR5PI = (elmt_cytoplasm * ((((elmt_vR5PI_elmt_VmR5PIf * elmt_Ribulose5P) / elmt_vR5PI_elmt_KmRibu5P) - ((elmt_vR5PI_elmt_VmR5PIr * elmt_Xyl5P) / elmt_vR5PI_elmt_KmXyl)) / (1.0 + (elmt_Ribulose5P / elmt_vR5PI_elmt_KmRibu5P) + (elmt_Xyl5P / elmt_vR5PI_elmt_KmXyl))));
        elmt_vG6PDH = (elmt_cytoplasm * (((elmt_vG6PDH_elmt_VmG6PDH * elmt_G6P * elmt_NADP) / (elmt_vG6PDH_elmt_KmG6P * elmt_vG6PDH_elmt_KmNADP)) / ((1.0 + (elmt_G6P / elmt_vG6PDH_elmt_KmG6P) + (elmt_NADPH / elmt_vG6PDH_elmt_KiNADPH)) * (1.0 + (elmt_NADP / elmt_vG6PDH_elmt_KmNADP)))));
        elmt_vATP = (elmt_cytoplasm * ((elmt_vATP_elmt_KATPASE * (((elmt_P - (4.0 * elmt_vATP_elmt_KeqAK * elmt_P)) - elmt_SUMAXP) + Functions.pow((((Functions.pow(elmt_P, 2.0) - (4.0 * elmt_vATP_elmt_KeqAK * Functions.pow(elmt_P, 2.0))) - (2.0 * elmt_P * elmt_SUMAXP)) + (8.0 * elmt_vATP_elmt_KeqAK * elmt_P * elmt_SUMAXP) + Functions.pow(elmt_SUMAXP, 2.0)), 0.5))) / (2.0 - (8.0 * elmt_vATP_elmt_KeqAK))));
        elmt_vPGM = (elmt_cytoplasm * (((elmt_vPGM_elmt_VmPGM / elmt_vPGM_elmt_KmPGMP3G) * (elmt_P3G - (elmt_P2G / elmt_vPGM_elmt_KeqPGM))) / (1.0 + (elmt_P3G / elmt_vPGM_elmt_KmPGMP3G) + (elmt_P2G / elmt_vPGM_elmt_KmPGMP2G))));
        elmt_vALD = (elmt_cytoplasm * ((((elmt_vALD_elmt_VmALD * elmt_F16P) / elmt_vALD_elmt_KmALDF16P) * (1.0 - ((elmt_DHAP * elmt_GA3P) / (elmt_F16P * elmt_vALD_elmt_KeqALD)))) / (1.0 + (elmt_F16P / elmt_vALD_elmt_KmALDF16P) + (elmt_DHAP / elmt_vALD_elmt_KmALDDHAP) + (elmt_GA3P / elmt_vALD_elmt_KmALDGAP) + ((elmt_F16P * elmt_GA3P) / (elmt_vALD_elmt_KmALDF16P * elmt_vALD_elmt_KmALDGAPi)) + ((elmt_DHAP * elmt_GA3P) / (elmt_vALD_elmt_KmALDDHAP * elmt_vALD_elmt_KmALDGAP)))));
        der(elmt_product30) = 0;
        der(elmt_product73) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product71) = 0;
        der(elmt_product34) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product69) = 0;
        der(elmt_product68) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product38) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product55) = 0;
        der(elmt_product10) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_product65) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product64) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product59) = 0;
        der(elmt_product14) = 0;
        der(elmt_product58) = 0;
        der(elmt_product13) = 0;
        der(elmt_product18) = 0;
        der(elmt_product17) = 0;

end Reactions;
