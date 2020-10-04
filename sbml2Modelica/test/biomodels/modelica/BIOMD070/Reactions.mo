within BIOMD070;
class Reactions

    input Real elmt_P2NADPH;
    input Real elmt_AMPf;
    input Real elmt_compartment;
    input Real elmt_Fru6P;
    input Real elmt_GSSG;
    input Real elmt_MgATP;
    input Real elmt_NAD;
    input Real elmt_NADPf;
    input Real elmt_P2NADP;
    input Real elmt_ATPf;
    input Real elmt_MgGri23P2;
    input Real elmt_PRPP;
    input Real elmt_PEP;
    input Real elmt_Xul5P;
    input Real elmt_Gri3P;
    input Real elmt_Rul5P;
    input Real elmt_Sed7P;
    input Real elmt_Phiex;
    input Real elmt_P2f;
    input Real elmt_P1NADPH;
    input Real elmt_DHAP;
    input Real elmt_Gri23P2f;
    input Real elmt_ADPf;
    input Real elmt_P1NADP;
    input Real elmt_NADH;
    input Real elmt_Glc6P;
    input Real elmt_Phi;
    input Real elmt_Rib5P;
    input Real elmt_Pyrex;
    input Real elmt_MgAMP;
    input Real elmt_GSH;
    input Real elmt_Gri2P;
    input Real elmt_Glcin;
    input Real elmt_NADPHf;
    input Real elmt_Fru16P2;
    input Real elmt_P1f;
    input Real elmt_Lacex;
    input Real elmt_MgADP;
    input Real elmt_E4P;
    input Real elmt_GlcA6P;
    input Real elmt_Lac;
    input Real elmt_Glcout;
    input Real elmt_Gri13P2;
    input Real elmt_Mgf;
    input Real elmt_GraP;
    input Real elmt_Pyr;

    Real elmt_vTPI(unit = "") "Triosephosphate isomerase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vTPI_elmt_KGraPv5(unit "m-3.0.") = 0.428 "";
    parameter Real elmt_vTPI_elmt_KDHAPv5(unit "m-3.0.") = 0.838 "";
    parameter Real elmt_vTPI_elmt_Keqv5(unit "") = 0.0407 "";
    parameter Real elmt_vTPI_elmt_Vmaxv5(unit "m-3.0..s-1.0") = 5456.600098 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_vLDHNADPH(unit = "") "Lactate dehydrogenase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vLDHNADPH_elmt_Keqv14(unit "") = 14181.8 "";
    parameter Real elmt_vLDHNADPH_elmt_kLDHv14(unit "m3.0.mol-1.0.s-1.0") = 243.4 "";
    Real elmt_product45 "";
    Real elmt_product46 "";
    Real elmt_reactant43 "";
    Real elmt_reactant44 "";
    Real elmt_vPyrexch(unit = "") "Pyruvate exchange";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vPyrexch_elmt_Keqv29(unit "") = 1.0 "";
    parameter Real elmt_vPyrexch_elmt_Vmaxv29(unit "s-1.0") = 10000.0 "";
    Real elmt_product93 "";
    Real elmt_reactant92 "";
    Real elmt_vGLT(unit = "") "Glucose transport";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vGLT_elmt_KMoutv0(unit "m-3.0.") = 1.7 "";
    parameter Real elmt_vGLT_elmt_Keqv0(unit "") = 1.0 "";
    parameter Real elmt_vGLT_elmt_alfav0(unit "") = 0.54 "";
    parameter Real elmt_vGLT_elmt_Vmaxv0(unit "m-3.0..s-1.0") = 33.6 "";
    parameter Real elmt_vGLT_elmt_KMinv0(unit "m-3.0.") = 6.9 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_vMgATP(unit = "") "MgATP dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vMgATP_elmt_EqMult(unit "s-1.0") = 1.0E7 "";
    parameter Real elmt_vMgATP_elmt_KdATP(unit "m-3.0.") = 0.072 "";
    Real elmt_reactant94 "";
    Real elmt_product96 "";
    Real elmt_product95 "";
    Real elmt_vPK(unit = "") "Pyruvate kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vPK_elmt_Keqv12(unit "") = 13790.0 "";
    parameter Real elmt_vPK_elmt_KPEPv12(unit "m-3.0.") = 0.225 "";
    parameter Real elmt_vPK_elmt_KFru16P2v12(unit "m-3.0.") = 0.005 "";
    parameter Real elmt_vPK_elmt_Vmaxv12(unit "m-3.0..s-1.0") = 570.0 "";
    parameter Real elmt_vPK_elmt_KATPv12(unit "m-3.0.") = 3.39 "";
    parameter Real elmt_vPK_elmt_KMgADPv12(unit "m-3.0.") = 0.474 "";
    parameter Real elmt_vPK_elmt_L0v12(unit "") = 19.0 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_product37 "";
    Real elmt_reactant35 "";
    Real elmt_vP1NADP(unit = "") "P1NADP dissociation";
    parameter Real elmt_vP1NADP_elmt_EqMult(unit "s-1.0") = 1.0E7 "";
    parameter Real elmt_vP1NADP_elmt_Kd1(unit "m-3.0.") = 2.0E-4 "";
    Real elmt_reactant106 "";
    Real elmt_product108 "";
    Real elmt_product107 "";
    Real elmt_vENO(unit = "") "Enolase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vENO_elmt_K2PGv11(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_vENO_elmt_Keqv11(unit "") = 1.7 "";
    parameter Real elmt_vENO_elmt_Vmaxv11(unit "m-3.0..s-1.0") = 1500.0 "";
    parameter Real elmt_vENO_elmt_KPEPv11(unit "m-3.0.") = 1.0 "";
    Real elmt_product34 "";
    Real elmt_reactant33 "";
    Real elmt_vRibPiso(unit = "") "Ribose phosphate isomerase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vRibPiso_elmt_Keqv22(unit "") = 3.0 "";
    parameter Real elmt_vRibPiso_elmt_KRu5Pv22(unit "m-3.0.") = 0.78 "";
    parameter Real elmt_vRibPiso_elmt_Vmaxv22(unit "m-3.0..s-1.0") = 730.0 "";
    parameter Real elmt_vRibPiso_elmt_KR5Pv22(unit "m-3.0.") = 2.2 "";
    Real elmt_product71 "";
    Real elmt_reactant70 "";
    Real elmt_vP2NADPH(unit = "") "P2NADPH dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vP2NADPH_elmt_EqMult(unit "s-1.0") = 1.0E7 "";
    parameter Real elmt_vP2NADPH_elmt_Kd4(unit "m-3.0.") = 2.0E-4 "";
    Real elmt_reactant115 "";
    Real elmt_product117 "";
    Real elmt_product116 "";
    Real elmt_vMgGri23P2(unit = "") "MgGri23P2 dissociation";
    parameter Real elmt_vMgGri23P2_elmt_EqMult(unit "s-1.0") = 1.0E7 "";
    parameter Real elmt_vMgGri23P2_elmt_Kd23P2G(unit "m-3.0.") = 1.667 "";
    Real elmt_product104 "";
    Real elmt_reactant103 "";
    Real elmt_product105 "";
    Real elmt_vTrKet2(unit = "") "Transketolase 2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vTrKet2_elmt_K3v26(unit "m-3.0.") = 0.0548 "";
    parameter Real elmt_vTrKet2_elmt_K4v26(unit "m-3.0.") = 3.0E-4 "";
    parameter Real elmt_vTrKet2_elmt_K1v26(unit "m-3.0.") = 0.00184 "";
    parameter Real elmt_vTrKet2_elmt_K2v26(unit "m-3.0.") = 0.3055 "";
    parameter Real elmt_vTrKet2_elmt_Keqv26(unit "") = 1.2 "";
    parameter Real elmt_vTrKet2_elmt_Vmaxv26(unit "m-3.0..s-1.0") = 23.5 "";
    parameter Real elmt_vTrKet2_elmt_K6v26(unit "") = 0.122 "";
    parameter Real elmt_vTrKet2_elmt_K5v26(unit "") = 0.0287 "";
    parameter Real elmt_vTrKet2_elmt_K7v26(unit "") = 0.215 "";
    Real elmt_reactant84 "";
    Real elmt_reactant85 "";
    Real elmt_product87 "";
    Real elmt_product86 "";
    Real elmt_vTrKet1(unit = "") "Transketolase 1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vTrKet1_elmt_Keqv23(unit "") = 1.05 "";
    parameter Real elmt_vTrKet1_elmt_K1v23(unit "m-3.0.") = 0.4177 "";
    parameter Real elmt_vTrKet1_elmt_Vmaxv23(unit "m-3.0..s-1.0") = 23.5 "";
    parameter Real elmt_vTrKet1_elmt_K6v23(unit "") = 0.00774 "";
    parameter Real elmt_vTrKet1_elmt_K7v23(unit "") = 48.8 "";
    parameter Real elmt_vTrKet1_elmt_K2v23(unit "m-3.0.") = 0.3055 "";
    parameter Real elmt_vTrKet1_elmt_K5v23(unit "") = 0.41139 "";
    parameter Real elmt_vTrKet1_elmt_K3v23(unit "m-3.0.") = 12.432 "";
    parameter Real elmt_vTrKet1_elmt_K4v23(unit "m-3.0.") = 0.00496 "";
    Real elmt_reactant72 "";
    Real elmt_product74 "";
    Real elmt_reactant73 "";
    Real elmt_product75 "";
    Real elmt_vP2NADP(unit = "") "P2NADP dissociation";
    parameter Real elmt_vP2NADP_elmt_EqMult(unit "s-1.0") = 1.0E7 "";
    parameter Real elmt_vP2NADP_elmt_Kd2(unit "m-3.0.") = 1.0E-5 "";
    Real elmt_product113 "";
    Real elmt_product114 "";
    Real elmt_reactant112 "";
    Real elmt_vPhiexch(unit = "") "Phosphate exchange";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vPhiexch_elmt_Keqv27(unit "") = 1.0 "";
    parameter Real elmt_vPhiexch_elmt_Vmaxv27(unit "s-1.0") = 100.0 "";
    Real elmt_product89 "";
    Real elmt_reactant88 "";
    Real elmt_vPFK(unit = "") "Phosphofructokinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vPFK_elmt_KMgATPv3(unit "m-3.0.") = 0.068 "";
    parameter Real elmt_vPFK_elmt_KAMPv3(unit "m-3.0.") = 0.033 "";
    parameter Real elmt_vPFK_elmt_L0v3(unit "") = 0.001072 "";
    parameter Real elmt_vPFK_elmt_KATPv3(unit "m-3.0.") = 0.01 "";
    parameter Real elmt_vPFK_elmt_KFru6Pv3(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_vPFK_elmt_Keqv3(unit "") = 100000.0 "";
    parameter Real elmt_vPFK_elmt_Vmaxv3(unit "m-3.0..s-1.0") = 239.0 "";
    parameter Real elmt_vPFK_elmt_KMgv3(unit "m-3.0.") = 0.44 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_vLDHNADH(unit = "") "Lactate dehydrogenase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vLDHNADH_elmt_Keqv13(unit "") = 9090.0 "";
    parameter Real elmt_vLDHNADH_elmt_Vmaxv13(unit "m3.0.mol-1.0.s-1.0") = 2800000.0 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_product42 "";
    Real elmt_reactant39 "";
    Real elmt_vLacexch(unit = "") "Lactate exchange";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vLacexch_elmt_Keqv28(unit "") = 1.0 "";
    parameter Real elmt_vLacexch_elmt_Vmaxv28(unit "s-1.0") = 10000.0 "";
    Real elmt_reactant90 "";
    Real elmt_product91 "";
    Real elmt_vGSHox(unit = "") "Glutathione oxidation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vGSHox_elmt_Kv20(unit "s-1.0") = 0.03 "";
    Real elmt_product67 "";
    Real elmt_reactant66 "";
    Real elmt_vGSSGRD(unit = "") "Glutathione reductase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vGSSGRD_elmt_KNADPHv19(unit "m-3.0.") = 0.00852 "";
    parameter Real elmt_vGSSGRD_elmt_KGSHv19(unit "m-3.0.") = 20.0 "";
    parameter Real elmt_vGSSGRD_elmt_KNADPv19(unit "m-3.0.") = 0.07 "";
    parameter Real elmt_vGSSGRD_elmt_Keqv19(unit "") = 1.04 "";
    parameter Real elmt_vGSSGRD_elmt_KGSSGv19(unit "m-3.0.") = 0.0652 "";
    parameter Real elmt_vGSSGRD_elmt_Vmaxv19(unit "m-3.0..s-1.0") = 90.0 "";
    Real elmt_reactant62 "";
    Real elmt_reactant63 "";
    Real elmt_product65 "";
    Real elmt_product64 "";
    Real elmt_vPPRPPS(unit = "") "Phosphoribosylpyrophosphate synthetase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vPPRPPS_elmt_Keqv25(unit "") = 100000.0 "";
    parameter Real elmt_vPPRPPS_elmt_Vmaxv25(unit "m-3.0..s-1.0") = 1.1 "";
    parameter Real elmt_vPPRPPS_elmt_KATPv25(unit "m-3.0.") = 0.03 "";
    parameter Real elmt_vPPRPPS_elmt_KR5Pv25(unit "m-3.0.") = 0.57 "";
    Real elmt_product83 "";
    Real elmt_product82 "";
    Real elmt_reactant80 "";
    Real elmt_reactant81 "";
    Real elmt_vMgAMP(unit = "") "MgAMP dissociation";
    parameter Real elmt_vMgAMP_elmt_EqMult(unit "s-1.0") = 1.0E7 "";
    parameter Real elmt_vMgAMP_elmt_KdAMP(unit "m-3.0.") = 16.64 "";
    Real elmt_product102 "";
    Real elmt_product101 "";
    Real elmt_reactant100 "";
    Real elmt_vGAPDH(unit = "") "Glyceraldehyde 3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vGAPDH_elmt_KNADv6(unit "m-3.0.") = 0.05 "";
    parameter Real elmt_vGAPDH_elmt_KPv6(unit "m-3.0.") = 3.9 "";
    parameter Real elmt_vGAPDH_elmt_KGraPv6(unit "m-3.0.") = 0.005 "";
    parameter Real elmt_vGAPDH_elmt_K13P2Gv6(unit "m-3.0.") = 0.0035 "";
    parameter Real elmt_vGAPDH_elmt_KNADHv6(unit "m-3.0.") = 0.0083 "";
    parameter Real elmt_vGAPDH_elmt_Keqv6(unit "") = 1.92E-4 "";
    parameter Real elmt_vGAPDH_elmt_Vmaxv6(unit "m-3.0..s-1.0") = 4300.0 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_reactant17 "";
    Real elmt_vPGLDH(unit = "") "Phosphogluconate dehydrogenase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vPGLDH_elmt_K6PG1v18(unit "m-3.0.") = 0.01 "";
    parameter Real elmt_vPGLDH_elmt_K6PG2v18(unit "m-3.0.") = 0.058 "";
    parameter Real elmt_vPGLDH_elmt_KNADPHv18(unit "m-3.0.") = 0.0045 "";
    parameter Real elmt_vPGLDH_elmt_Keqv18(unit "") = 141.7 "";
    parameter Real elmt_vPGLDH_elmt_KATPv18(unit "m-3.0.") = 0.154 "";
    parameter Real elmt_vPGLDH_elmt_KNADPv18(unit "m-3.0.") = 0.018 "";
    parameter Real elmt_vPGLDH_elmt_KPGA23v18(unit "m-3.0.") = 0.12 "";
    parameter Real elmt_vPGLDH_elmt_Vmaxv18(unit "m-3.0..s-1.0") = 1575.0 "";
    Real elmt_product61 "";
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_reactant59 "";
    Real elmt_vATPase(unit = "") "ATPase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vATPase_elmt_kATPasev15(unit "s-1.0") = 1.68 "";
    Real elmt_reactant47 "";
    Real elmt_product49 "";
    Real elmt_product48 "";
    Real elmt_vRibPepi(unit = "") "Phosphoribulose epimerase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vRibPepi_elmt_KRu5Pv21(unit "m-3.0.") = 0.19 "";
    parameter Real elmt_vRibPepi_elmt_Vmaxv21(unit "m-3.0..s-1.0") = 4634.0 "";
    parameter Real elmt_vRibPepi_elmt_KX5Pv21(unit "m-3.0.") = 0.5 "";
    parameter Real elmt_vRibPepi_elmt_Keqv21(unit "") = 2.7 "";
    Real elmt_product69 "";
    Real elmt_reactant68 "";
    Real elmt_vPGK(unit = "") "Phosphoglycerate kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vPGK_elmt_Vmaxv7(unit "m-3.0..s-1.0") = 5000.0 "";
    parameter Real elmt_vPGK_elmt_K3PGv7(unit "m-3.0.") = 1.2 "";
    parameter Real elmt_vPGK_elmt_KMgADPv7(unit "m-3.0.") = 0.35 "";
    parameter Real elmt_vPGK_elmt_K13P2Gv7(unit "m-3.0.") = 0.002 "";
    parameter Real elmt_vPGK_elmt_KMgATPv7(unit "m-3.0.") = 0.48 "";
    parameter Real elmt_vPGK_elmt_Keqv7(unit "") = 1455.0 "";
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_reactant23 "";
    Real elmt_vAK(unit = "") "Adenylate kinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vAK_elmt_KADPv16(unit "m-3.0.") = 0.11 "";
    parameter Real elmt_vAK_elmt_KATPv16(unit "m-3.0.") = 0.09 "";
    parameter Real elmt_vAK_elmt_Keqv16(unit "") = 0.25 "";
    parameter Real elmt_vAK_elmt_KAMPv16(unit "m-3.0.") = 0.08 "";
    parameter Real elmt_vAK_elmt_Vmaxv16(unit "m-3.0..s-1.0") = 1380.0 "";
    Real elmt_reactant50 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_product53 "";
    Real elmt_vG6PDH(unit = "") "Glucose 6-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vG6PDH_elmt_KNADPHv17(unit "m-3.0.") = 0.00312 "";
    parameter Real elmt_vG6PDH_elmt_KATPv17(unit "m-3.0.") = 0.749 "";
    parameter Real elmt_vG6PDH_elmt_KG6Pv17(unit "m-3.0.") = 0.0667 "";
    parameter Real elmt_vG6PDH_elmt_Keqv17(unit "") = 2000.0 "";
    parameter Real elmt_vG6PDH_elmt_Vmaxv17(unit "m-3.0..s-1.0") = 162.0 "";
    parameter Real elmt_vG6PDH_elmt_KPGA23v17(unit "m-3.0.") = 2.289 "";
    parameter Real elmt_vG6PDH_elmt_KNADPv17(unit "m-3.0.") = 0.00367 "";
    Real elmt_product56 "";
    Real elmt_product57 "";
    Real elmt_reactant54 "";
    Real elmt_reactant55 "";
    Real elmt_vGPI(unit = "") "Glucosephosphate isomerase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vGPI_elmt_KGlc6Pv2(unit "m-3.0.") = 0.182 "";
    parameter Real elmt_vGPI_elmt_Keqv2(unit "") = 0.3925 "";
    parameter Real elmt_vGPI_elmt_KFru6Pv2(unit "m-3.0.") = 0.071 "";
    parameter Real elmt_vGPI_elmt_Vmaxv2(unit "m-3.0..s-1.0") = 935.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_vTrAld(unit = "") "Transaldolase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vTrAld_elmt_K1v24(unit "m-3.0.") = 0.00823 "";
    parameter Real elmt_vTrAld_elmt_K2v24(unit "m-3.0.") = 0.04765 "";
    parameter Real elmt_vTrAld_elmt_Keqv24(unit "") = 1.05 "";
    parameter Real elmt_vTrAld_elmt_K7v24(unit "") = 2.524 "";
    parameter Real elmt_vTrAld_elmt_Vmaxv24(unit "m-3.0..s-1.0") = 27.2 "";
    parameter Real elmt_vTrAld_elmt_K4v24(unit "m-3.0.") = 0.006095 "";
    parameter Real elmt_vTrAld_elmt_K6v24(unit "") = 0.4653 "";
    parameter Real elmt_vTrAld_elmt_K3v24(unit "m-3.0.") = 0.1733 "";
    parameter Real elmt_vTrAld_elmt_K5v24(unit "") = 0.8683 "";
    Real elmt_product78 "";
    Real elmt_product79 "";
    Real elmt_reactant76 "";
    Real elmt_reactant77 "";
    Real elmt_vMgADP(unit = "") "MgADP dissociation";
    parameter Real elmt_vMgADP_elmt_EqMult(unit "s-1.0") = 1.0E7 "";
    parameter Real elmt_vMgADP_elmt_KdADP(unit "m-3.0.") = 0.76 "";
    Real elmt_reactant97 "";
    Real elmt_product99 "";
    Real elmt_product98 "";
    Real elmt_vP1NADPH(unit = "") "P1NADPH dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vP1NADPH_elmt_EqMult(unit "s-1.0") = 1.0E7 "";
    parameter Real elmt_vP1NADPH_elmt_Kd3(unit "m-3.0.") = 1.0E-5 "";
    Real elmt_reactant109 "";
    Real elmt_product111 "";
    Real elmt_product110 "";
    Real elmt_vPGM(unit = "") "Phosphoglycerate mutase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vPGM_elmt_K2PGv10(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_vPGM_elmt_Vmaxv10(unit "m-3.0..s-1.0") = 2000.0 "";
    parameter Real elmt_vPGM_elmt_K3PGv10(unit "m-3.0.") = 5.0 "";
    parameter Real elmt_vPGM_elmt_Keqv10(unit "") = 0.145 "";
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_vBPGP(unit = "") "Bisphosphoglycerate phosphatase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vBPGP_elmt_Keqv9(unit "") = 100000.0 "";
    parameter Real elmt_vBPGP_elmt_Vmaxv9(unit "m-3.0..s-1.0") = 0.53 "";
    parameter Real elmt_vBPGP_elmt_K23P2Gv9(unit "m-3.0.") = 0.2 "";
    Real elmt_product30 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_vBPGM(unit = "") "Bisphosphoglycerate mutase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vBPGM_elmt_Keqv8(unit "") = 100000.0 "";
    parameter Real elmt_vBPGM_elmt_K23P2Gv8(unit "m-3.0.") = 0.04 "";
    parameter Real elmt_vBPGM_elmt_kDPGMv8(unit "s-1.0") = 76000.0 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_vALD(unit = "") "Aldolase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vALD_elmt_KDHAPv4(unit "m-3.0.") = 0.0364 "";
    parameter Real elmt_vALD_elmt_KiGraPv4(unit "m-3.0.") = 0.0572 "";
    parameter Real elmt_vALD_elmt_KGraPv4(unit "m-3.0.") = 0.1906 "";
    parameter Real elmt_vALD_elmt_KFru16P2v4(unit "m-3.0.") = 0.0071 "";
    parameter Real elmt_vALD_elmt_Keqv4(unit "m-3.0.") = 0.114 "";
    parameter Real elmt_vALD_elmt_KiiGraPv4(unit "m-3.0.") = 0.176 "";
    parameter Real elmt_vALD_elmt_Vmaxv4(unit "m-3.0..s-1.0") = 98.91000366 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_vHEX(unit = "") "Hexokinase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vHEX_elmt_K23P2Gv1(unit "m-3.0.") = 2.7 "";
    parameter Real elmt_vHEX_elmt_Vmax2v1(unit "m-3.0..s-1.0") = 33.2 "";
    parameter Real elmt_vHEX_elmt_Vmax1v1(unit "m-3.0..s-1.0") = 15.8 "";
    parameter Real elmt_vHEX_elmt_KMgATPv1(unit "m-3.0.") = 1.44 "";
    parameter Real elmt_vHEX_elmt_KMgv1(unit "m-3.0.") = 1.03 "";
    parameter Real elmt_vHEX_elmt_KMg23P2Gv1(unit "m-3.0.") = 3.44 "";
    parameter Real elmt_vHEX_elmt_KGlc6Pv1(unit "m-3.0.") = 0.0045 "";
    parameter Real elmt_vHEX_elmt_Inhibv1(unit "") = 1.0 "";
    parameter Real elmt_vHEX_elmt_Keqv1(unit "m-3.0.") = 3900.0 "";
    parameter Real elmt_vHEX_elmt_KMGlcv1(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_vHEX_elmt_KMgATPMgv1(unit "m-3.0.") = 1.14 "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";


    initial equation
        elmt_product74 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_product71 = 1.0;
        elmt_product78 = 1.0;
        elmt_reactant109 = 1.0;
        elmt_product75 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_product69 = 1.0;
        elmt_reactant115 = 1.0;
        elmt_reactant112 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product83 = 1.0;
        elmt_product82 = 1.0;
        elmt_product89 = 1.0;
        elmt_product87 = 1.0;
        elmt_product86 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_product102 = 1.0;
        elmt_product101 = 1.0;
        elmt_product104 = 1.0;
        elmt_product79 = 1.0;
        elmt_product105 = 1.0;
        elmt_product108 = 1.0;
        elmt_product107 = 1.0;
        elmt_product96 = 1.0;
        elmt_product95 = 1.0;
        elmt_product93 = 1.0;
        elmt_product11 = 1.0;
        elmt_product99 = 1.0;
        elmt_product10 = 1.0;
        elmt_product98 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_product91 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product21 = 1.0;
        elmt_product20 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_product16 = 1.0;
        elmt_reactant106 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_reactant103 = 1.0;
        elmt_reactant100 = 1.0;
        elmt_product30 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_reactant85 = 1.0;
        elmt_product34 = 1.0;
        elmt_reactant80 = 1.0;
        elmt_reactant81 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant88 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_product45 = 1.0;
        elmt_reactant90 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product38 = 1.0;
        elmt_product37 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product56 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant66 = 2.0;
        elmt_reactant68 = 1.0;
        elmt_product113 = 1.0;
        elmt_product114 = 1.0;
        elmt_product111 = 1.0;
        elmt_product110 = 1.0;
        elmt_product49 = 1.0;
        elmt_product48 = 1.0;
        elmt_product46 = 1.0;
        elmt_product117 = 1.0;
        elmt_product116 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_product61 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product67 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product65 = 1.0;
        elmt_product64 = 2.0;
        elmt_reactant76 = 1.0;
        elmt_reactant77 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product57 = 1.0;


    equation
        elmt_vTPI = (elmt_compartment * ((elmt_vTPI_elmt_Vmaxv5 * (elmt_DHAP - (elmt_GraP / elmt_vTPI_elmt_Keqv5))) / (elmt_DHAP + (elmt_vTPI_elmt_KDHAPv5 * (1.0 + (elmt_GraP / elmt_vTPI_elmt_KGraPv5))))));
        elmt_vLDHNADPH = (elmt_compartment * elmt_vLDHNADPH_elmt_kLDHv14 * ((elmt_Pyr * elmt_NADPHf) - ((elmt_Lac * elmt_NADPf) / elmt_vLDHNADPH_elmt_Keqv14)));
        elmt_vPyrexch = (elmt_compartment * elmt_vPyrexch_elmt_Vmaxv29 * (elmt_Pyrex - (elmt_Pyr / elmt_vPyrexch_elmt_Keqv29)));
        elmt_vGLT = (elmt_compartment * (((elmt_vGLT_elmt_Vmaxv0 / elmt_vGLT_elmt_KMoutv0) * (elmt_Glcout - (elmt_Glcin / elmt_vGLT_elmt_Keqv0))) / (1.0 + (elmt_Glcout / elmt_vGLT_elmt_KMoutv0) + (elmt_Glcin / elmt_vGLT_elmt_KMinv0) + (((elmt_vGLT_elmt_alfav0 * elmt_Glcout * elmt_Glcin) / elmt_vGLT_elmt_KMoutv0) / elmt_vGLT_elmt_KMinv0))));
        elmt_vMgATP = (elmt_compartment * elmt_vMgATP_elmt_EqMult * (elmt_MgATP - ((elmt_Mgf * elmt_ATPf) / elmt_vMgATP_elmt_KdATP)));
        elmt_vPK = (elmt_compartment * ((elmt_vPK_elmt_Vmaxv12 * ((elmt_PEP * elmt_MgADP) - ((elmt_Pyr * elmt_MgATP) / elmt_vPK_elmt_Keqv12))) / ((elmt_PEP + elmt_vPK_elmt_KPEPv12) * (elmt_MgADP + elmt_vPK_elmt_KMgADPv12) * (1.0 + ((elmt_vPK_elmt_L0v12 * Functions.pow((1.0 + ((elmt_ATPf + elmt_MgATP) / elmt_vPK_elmt_KATPv12)), 4.0)) / (Functions.pow((1.0 + (elmt_PEP / elmt_vPK_elmt_KPEPv12)), 4.0) * Functions.pow((1.0 + (elmt_Fru16P2 / elmt_vPK_elmt_KFru16P2v12)), 4.0)))))));
        elmt_vP1NADP = (elmt_compartment * elmt_vP1NADP_elmt_EqMult * (elmt_P1NADP - ((elmt_P1f * elmt_NADPf) / elmt_vP1NADP_elmt_Kd1)));
        elmt_vENO = (elmt_compartment * ((elmt_vENO_elmt_Vmaxv11 * (elmt_Gri2P - (elmt_PEP / elmt_vENO_elmt_Keqv11))) / (elmt_Gri2P + (elmt_vENO_elmt_K2PGv11 * (1.0 + (elmt_PEP / elmt_vENO_elmt_KPEPv11))))));
        elmt_vRibPiso = (elmt_compartment * ((elmt_vRibPiso_elmt_Vmaxv22 * (elmt_Rul5P - (elmt_Rib5P / elmt_vRibPiso_elmt_Keqv22))) / (elmt_Rul5P + (elmt_vRibPiso_elmt_KRu5Pv22 * (1.0 + (elmt_Rib5P / elmt_vRibPiso_elmt_KR5Pv22))))));
        elmt_vP2NADPH = (elmt_compartment * elmt_vP2NADPH_elmt_EqMult * (elmt_P2NADPH - ((elmt_P2f * elmt_NADPHf) / elmt_vP2NADPH_elmt_Kd4)));
        elmt_vMgGri23P2 = (elmt_compartment * elmt_vMgGri23P2_elmt_EqMult * (elmt_MgGri23P2 - ((elmt_Mgf * elmt_Gri23P2f) / elmt_vMgGri23P2_elmt_Kd23P2G)));
        elmt_vTrKet2 = (elmt_compartment * ((elmt_vTrKet2_elmt_Vmaxv26 * ((elmt_E4P * elmt_Xul5P) - ((elmt_GraP * elmt_Fru6P) / elmt_vTrKet2_elmt_Keqv26))) / (((elmt_vTrKet2_elmt_K1v26 + elmt_E4P) * elmt_Xul5P) + ((elmt_vTrKet2_elmt_K2v26 + (elmt_vTrKet2_elmt_K6v26 * elmt_Fru6P)) * elmt_E4P) + ((elmt_vTrKet2_elmt_K3v26 + (elmt_vTrKet2_elmt_K5v26 * elmt_Fru6P)) * elmt_GraP) + (elmt_vTrKet2_elmt_K4v26 * elmt_Fru6P) + (elmt_vTrKet2_elmt_K7v26 * elmt_Xul5P * elmt_GraP))));
        elmt_vTrKet1 = (elmt_compartment * ((elmt_vTrKet1_elmt_Vmaxv23 * ((elmt_Rib5P * elmt_Xul5P) - ((elmt_GraP * elmt_Sed7P) / elmt_vTrKet1_elmt_Keqv23))) / (((elmt_vTrKet1_elmt_K1v23 + elmt_Rib5P) * elmt_Xul5P) + ((elmt_vTrKet1_elmt_K2v23 + (elmt_vTrKet1_elmt_K6v23 * elmt_Sed7P)) * elmt_Rib5P) + ((elmt_vTrKet1_elmt_K3v23 + (elmt_vTrKet1_elmt_K5v23 * elmt_Sed7P)) * elmt_GraP) + (elmt_vTrKet1_elmt_K4v23 * elmt_Sed7P) + (elmt_vTrKet1_elmt_K7v23 * elmt_Xul5P * elmt_GraP))));
        elmt_vP2NADP = (elmt_compartment * elmt_vP2NADP_elmt_EqMult * (elmt_P2NADP - ((elmt_P2f * elmt_NADPf) / elmt_vP2NADP_elmt_Kd2)));
        elmt_vPhiexch = (elmt_compartment * elmt_vPhiexch_elmt_Vmaxv27 * (elmt_Phiex - (elmt_Phi / elmt_vPhiexch_elmt_Keqv27)));
        elmt_vPFK = (elmt_compartment * ((elmt_vPFK_elmt_Vmaxv3 * ((elmt_Fru6P * elmt_MgATP) - ((elmt_Fru16P2 * elmt_MgADP) / elmt_vPFK_elmt_Keqv3))) / ((elmt_Fru6P + elmt_vPFK_elmt_KFru6Pv3) * (elmt_MgATP + elmt_vPFK_elmt_KMgATPv3) * (1.0 + (elmt_vPFK_elmt_L0v3 * Functions.pow((((1.0 + (elmt_ATPf / elmt_vPFK_elmt_KATPv3)) * (1.0 + (elmt_Mgf / elmt_vPFK_elmt_KMgv3))) / ((1.0 + ((elmt_AMPf + elmt_MgAMP) / elmt_vPFK_elmt_KAMPv3)) * (1.0 + (elmt_Fru6P / elmt_vPFK_elmt_KFru6Pv3)))), 4.0))))));
        elmt_vLDHNADH = (elmt_compartment * elmt_vLDHNADH_elmt_Vmaxv13 * ((elmt_Pyr * elmt_NADH) - ((elmt_Lac * elmt_NAD) / elmt_vLDHNADH_elmt_Keqv13)));
        elmt_vLacexch = (elmt_compartment * elmt_vLacexch_elmt_Vmaxv28 * (elmt_Lacex - (elmt_Lac / elmt_vLacexch_elmt_Keqv28)));
        elmt_vGSHox = (elmt_compartment * elmt_vGSHox_elmt_Kv20 * elmt_GSH);
        elmt_vGSSGRD = (elmt_compartment * ((elmt_vGSSGRD_elmt_Vmaxv19 * (((elmt_GSSG * elmt_NADPHf) / (elmt_vGSSGRD_elmt_KGSSGv19 * elmt_vGSSGRD_elmt_KNADPHv19)) - (((Functions.pow(elmt_GSH, 2.0) / Functions.pow(elmt_vGSSGRD_elmt_KGSHv19, 2.0)) * elmt_NADPf) / (elmt_vGSSGRD_elmt_KNADPv19 * elmt_vGSSGRD_elmt_Keqv19)))) / (1.0 + ((elmt_NADPHf * (1.0 + (elmt_GSSG / elmt_vGSSGRD_elmt_KGSSGv19))) / elmt_vGSSGRD_elmt_KNADPHv19) + ((elmt_NADPf / elmt_vGSSGRD_elmt_KNADPv19) * (1.0 + ((elmt_GSH * (1.0 + (elmt_GSH / elmt_vGSSGRD_elmt_KGSHv19))) / elmt_vGSSGRD_elmt_KGSHv19))))));
        elmt_vPPRPPS = (elmt_compartment * ((elmt_vPPRPPS_elmt_Vmaxv25 * ((elmt_Rib5P * elmt_MgATP) - ((elmt_PRPP * elmt_MgAMP) / elmt_vPPRPPS_elmt_Keqv25))) / ((elmt_vPPRPPS_elmt_KATPv25 + elmt_MgATP) * (elmt_vPPRPPS_elmt_KR5Pv25 + elmt_Rib5P))));
        elmt_vMgAMP = (elmt_compartment * elmt_vMgAMP_elmt_EqMult * (elmt_MgAMP - ((elmt_Mgf * elmt_AMPf) / elmt_vMgAMP_elmt_KdAMP)));
        elmt_vGAPDH = (elmt_compartment * (((elmt_vGAPDH_elmt_Vmaxv6 / (elmt_vGAPDH_elmt_KNADv6 * elmt_vGAPDH_elmt_KGraPv6 * elmt_vGAPDH_elmt_KPv6)) * ((elmt_NAD * elmt_GraP * elmt_Phi) - ((elmt_Gri13P2 * elmt_NADH) / elmt_vGAPDH_elmt_Keqv6))) / ((((1.0 + (elmt_NAD / elmt_vGAPDH_elmt_KNADv6)) * (1.0 + (elmt_GraP / elmt_vGAPDH_elmt_KGraPv6)) * (1.0 + (elmt_Phi / elmt_vGAPDH_elmt_KPv6))) + ((1.0 + (elmt_NADH / elmt_vGAPDH_elmt_KNADHv6)) * (1.0 + (elmt_Gri13P2 / elmt_vGAPDH_elmt_K13P2Gv6)))) - 1.0)));
        elmt_vPGLDH = (elmt_compartment * ((((elmt_vPGLDH_elmt_Vmaxv18 / elmt_vPGLDH_elmt_K6PG1v18) / elmt_vPGLDH_elmt_KNADPv18) * ((elmt_GlcA6P * elmt_NADPf) - ((elmt_Rul5P * elmt_NADPHf) / elmt_vPGLDH_elmt_Keqv18))) / (((1.0 + (elmt_NADPf / elmt_vPGLDH_elmt_KNADPv18)) * (1.0 + (elmt_GlcA6P / elmt_vPGLDH_elmt_K6PG1v18) + ((elmt_Gri23P2f + elmt_MgGri23P2) / elmt_vPGLDH_elmt_KPGA23v18))) + ((elmt_ATPf + elmt_MgATP) / elmt_vPGLDH_elmt_KATPv18) + ((elmt_NADPHf * (1.0 + (elmt_GlcA6P / elmt_vPGLDH_elmt_K6PG2v18))) / elmt_vPGLDH_elmt_KNADPHv18))));
        elmt_vATPase = (elmt_compartment * elmt_vATPase_elmt_kATPasev15 * elmt_MgATP);
        elmt_vRibPepi = (elmt_compartment * ((elmt_vRibPepi_elmt_Vmaxv21 * (elmt_Rul5P - (elmt_Xul5P / elmt_vRibPepi_elmt_Keqv21))) / (elmt_Rul5P + (elmt_vRibPepi_elmt_KRu5Pv21 * (1.0 + (elmt_Xul5P / elmt_vRibPepi_elmt_KX5Pv21))))));
        elmt_vPGK = (elmt_compartment * (((elmt_vPGK_elmt_Vmaxv7 / (elmt_vPGK_elmt_KMgADPv7 * elmt_vPGK_elmt_K13P2Gv7)) * ((elmt_MgADP * elmt_Gri13P2) - ((elmt_MgATP * elmt_Gri3P) / elmt_vPGK_elmt_Keqv7))) / ((((1.0 + (elmt_MgADP / elmt_vPGK_elmt_KMgADPv7)) * (1.0 + (elmt_Gri13P2 / elmt_vPGK_elmt_K13P2Gv7))) + ((1.0 + (elmt_MgATP / elmt_vPGK_elmt_KMgATPv7)) * (1.0 + (elmt_Gri3P / elmt_vPGK_elmt_K3PGv7)))) - 1.0)));
        elmt_vAK = (elmt_compartment * (((elmt_vAK_elmt_Vmaxv16 / (elmt_vAK_elmt_KATPv16 * elmt_vAK_elmt_KAMPv16)) * ((elmt_MgATP * elmt_AMPf) - ((elmt_MgADP * elmt_ADPf) / elmt_vAK_elmt_Keqv16))) / (((1.0 + (elmt_MgATP / elmt_vAK_elmt_KATPv16)) * (1.0 + (elmt_AMPf / elmt_vAK_elmt_KAMPv16))) + ((elmt_MgADP + elmt_ADPf) / elmt_vAK_elmt_KADPv16) + ((elmt_MgADP * elmt_ADPf) / Functions.pow(elmt_vAK_elmt_KADPv16, 2.0)))));
        elmt_vG6PDH = (elmt_compartment * ((((elmt_vG6PDH_elmt_Vmaxv17 / elmt_vG6PDH_elmt_KG6Pv17) / elmt_vG6PDH_elmt_KNADPv17) * ((elmt_Glc6P * elmt_NADPf) - ((elmt_GlcA6P * elmt_NADPHf) / elmt_vG6PDH_elmt_Keqv17))) / (1.0 + ((elmt_NADPf * (1.0 + (elmt_Glc6P / elmt_vG6PDH_elmt_KG6Pv17))) / elmt_vG6PDH_elmt_KNADPv17) + ((elmt_ATPf + elmt_MgATP) / elmt_vG6PDH_elmt_KATPv17) + (elmt_NADPHf / elmt_vG6PDH_elmt_KNADPHv17) + ((elmt_Gri23P2f + elmt_MgGri23P2) / elmt_vG6PDH_elmt_KPGA23v17))));
        elmt_vGPI = (elmt_compartment * ((elmt_vGPI_elmt_Vmaxv2 * (elmt_Glc6P - (elmt_Fru6P / elmt_vGPI_elmt_Keqv2))) / (elmt_Glc6P + (elmt_vGPI_elmt_KGlc6Pv2 * (1.0 + (elmt_Fru6P / elmt_vGPI_elmt_KFru6Pv2))))));
        elmt_vTrAld = (elmt_compartment * ((elmt_vTrAld_elmt_Vmaxv24 * ((elmt_Sed7P * elmt_GraP) - ((elmt_E4P * elmt_Fru6P) / elmt_vTrAld_elmt_Keqv24))) / (((elmt_vTrAld_elmt_K1v24 + elmt_GraP) * elmt_Sed7P) + ((elmt_vTrAld_elmt_K2v24 + (elmt_vTrAld_elmt_K6v24 * elmt_Fru6P)) * elmt_GraP) + ((elmt_vTrAld_elmt_K3v24 + (elmt_vTrAld_elmt_K5v24 * elmt_Fru6P)) * elmt_E4P) + (elmt_vTrAld_elmt_K4v24 * elmt_Fru6P) + (elmt_vTrAld_elmt_K7v24 * elmt_Sed7P * elmt_E4P))));
        elmt_vMgADP = (elmt_compartment * elmt_vMgADP_elmt_EqMult * (elmt_MgADP - ((elmt_Mgf * elmt_ADPf) / elmt_vMgADP_elmt_KdADP)));
        elmt_vP1NADPH = (elmt_compartment * elmt_vP1NADPH_elmt_EqMult * (elmt_P1NADPH - ((elmt_P1f * elmt_NADPHf) / elmt_vP1NADPH_elmt_Kd3)));
        elmt_vPGM = (elmt_compartment * ((elmt_vPGM_elmt_Vmaxv10 * (elmt_Gri3P - (elmt_Gri2P / elmt_vPGM_elmt_Keqv10))) / (elmt_Gri3P + (elmt_vPGM_elmt_K3PGv10 * (1.0 + (elmt_Gri2P / elmt_vPGM_elmt_K2PGv10))))));
        elmt_vBPGP = (elmt_compartment * ((elmt_vBPGP_elmt_Vmaxv9 * ((elmt_Gri23P2f + elmt_MgGri23P2) - (elmt_Gri3P / elmt_vBPGP_elmt_Keqv9))) / (elmt_Gri23P2f + elmt_MgGri23P2 + elmt_vBPGP_elmt_K23P2Gv9)));
        elmt_vBPGM = (elmt_compartment * ((elmt_vBPGM_elmt_kDPGMv8 * (elmt_Gri13P2 - ((elmt_Gri23P2f + elmt_MgGri23P2) / elmt_vBPGM_elmt_Keqv8))) / (1.0 + ((elmt_Gri23P2f + elmt_MgGri23P2) / elmt_vBPGM_elmt_K23P2Gv8))));
        elmt_vALD = (elmt_compartment * (((elmt_vALD_elmt_Vmaxv4 / elmt_vALD_elmt_KFru16P2v4) * (elmt_Fru16P2 - ((elmt_GraP * elmt_DHAP) / elmt_vALD_elmt_Keqv4))) / (1.0 + (elmt_Fru16P2 / elmt_vALD_elmt_KFru16P2v4) + (elmt_GraP / elmt_vALD_elmt_KiGraPv4) + ((elmt_DHAP * (elmt_GraP + elmt_vALD_elmt_KGraPv4)) / (elmt_vALD_elmt_KDHAPv4 * elmt_vALD_elmt_KiGraPv4)) + ((elmt_Fru16P2 * elmt_GraP) / (elmt_vALD_elmt_KFru16P2v4 * elmt_vALD_elmt_KiiGraPv4)))));
        elmt_vHEX = (elmt_compartment * ((((elmt_vHEX_elmt_Inhibv1 * elmt_Glcin) / (elmt_Glcin + elmt_vHEX_elmt_KMGlcv1)) * (elmt_vHEX_elmt_Vmax1v1 / elmt_vHEX_elmt_KMgATPv1) * ((elmt_MgATP + (((elmt_vHEX_elmt_Vmax2v1 / elmt_vHEX_elmt_Vmax1v1) * elmt_MgATP * elmt_Mgf) / elmt_vHEX_elmt_KMgATPMgv1)) - ((elmt_Glc6P * elmt_MgADP) / elmt_vHEX_elmt_Keqv1))) / (1.0 + ((elmt_MgATP / elmt_vHEX_elmt_KMgATPv1) * (1.0 + (elmt_Mgf / elmt_vHEX_elmt_KMgATPMgv1))) + (elmt_Mgf / elmt_vHEX_elmt_KMgv1) + ((1.55 + (elmt_Glc6P / elmt_vHEX_elmt_KGlc6Pv1)) * (1.0 + (elmt_Mgf / elmt_vHEX_elmt_KMgv1))) + ((elmt_Gri23P2f + elmt_MgGri23P2) / elmt_vHEX_elmt_K23P2Gv1) + ((elmt_Mgf * (elmt_Gri23P2f + elmt_MgGri23P2)) / (elmt_vHEX_elmt_KMgv1 * elmt_vHEX_elmt_KMg23P2Gv1)))));
        der(elmt_product74) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_product71) = 0;
        der(elmt_product78) = 0;
        der(elmt_reactant109) = 0;
        der(elmt_product75) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_product69) = 0;
        der(elmt_reactant115) = 0;
        der(elmt_reactant112) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product83) = 0;
        der(elmt_product82) = 0;
        der(elmt_product89) = 0;
        der(elmt_product87) = 0;
        der(elmt_product86) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_product102) = 0;
        der(elmt_product101) = 0;
        der(elmt_product104) = 0;
        der(elmt_product79) = 0;
        der(elmt_product105) = 0;
        der(elmt_product108) = 0;
        der(elmt_product107) = 0;
        der(elmt_product96) = 0;
        der(elmt_product95) = 0;
        der(elmt_product93) = 0;
        der(elmt_product11) = 0;
        der(elmt_product99) = 0;
        der(elmt_product10) = 0;
        der(elmt_product98) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_product91) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product21) = 0;
        der(elmt_product20) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product16) = 0;
        der(elmt_reactant106) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_reactant103) = 0;
        der(elmt_reactant100) = 0;
        der(elmt_product30) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_reactant85) = 0;
        der(elmt_product34) = 0;
        der(elmt_reactant80) = 0;
        der(elmt_reactant81) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant88) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_product45) = 0;
        der(elmt_reactant90) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product38) = 0;
        der(elmt_product37) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product56) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_product113) = 0;
        der(elmt_product114) = 0;
        der(elmt_product111) = 0;
        der(elmt_product110) = 0;
        der(elmt_product49) = 0;
        der(elmt_product48) = 0;
        der(elmt_product46) = 0;
        der(elmt_product117) = 0;
        der(elmt_product116) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_product61) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product67) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product65) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant76) = 0;
        der(elmt_reactant77) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product57) = 0;

end Reactions;
