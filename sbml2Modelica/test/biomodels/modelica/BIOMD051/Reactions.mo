within BIOMD051;
class Reactions

    input Real elmt_cglcex;
    input Real elmt_cgap;
    input Real elmt_cpgp;
    input Real elmt_cpg2;
    input Real elmt_cpep;
    input Real elmt_catp;
    input Real elmt_cpg3;
    input Real elmt_cytosol;
    input Real elmt_crib5p;
    input Real elmt_ce4p;
    input Real elmt_cg6p;
    input Real elmt_cf6p;
    input Real elmt_cadp;
    input Real elmt_cfdp;
    input Real elmt_cxyl5p;
    input Real elmt_cribu5p;
    input Real elmt_cnadh;
    input Real elmt_cnadph;
    input Real elmt_cdhap;
    input Real elmt_extracellular;
    input Real elmt_cpg;
    input Real elmt_camp;
    input Real elmt_cg1p;
    input Real elmt_cpyr;
    input Real elmt_csed7p;
    input Real elmt_cnad;
    input Real elmt_cnadp;

    Real elmt_vsersynth(unit = "") "Serine synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vsersynth_elmt_rmaxSerSynth(unit "m-3.0..s-1.0") = 0.025712107 "";
    parameter Real elmt_vsersynth_elmt_KSerSynthpg3(unit "m-3.0.") = 1.0 "";
    Real elmt_reactant37 "";
    Real elmt_vPGDH(unit = "") "6-Phosphogluconate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGDH_elmt_KPGDHnadp(unit "m-3.0.") = 0.0506 "";
    parameter Real elmt_vPGDH_elmt_KPGDHpg(unit "m-3.0.") = 37.5 "";
    parameter Real elmt_vPGDH_elmt_KPGDHatpinh(unit "m-3.0.") = 208.0 "";
    parameter Real elmt_vPGDH_elmt_rmaxPGDH(unit "m-3.0..s-1.0") = 16.23235977 "";
    parameter Real elmt_vPGDH_elmt_KPGDHnadphinh(unit "m-3.0.") = 0.0138 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_vG3PDH(unit = "") "Glycerol-3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vG3PDH_elmt_KG3PDHdhap(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_vG3PDH_elmt_rmaxG3PDH(unit "m-3.0..s-1.0") = 0.01162042696 "";
    Real elmt_reactant34 "";
    Real elmt_vrpGluMu(unit = "") "Phosphoglycerate mutase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vrpGluMu_elmt_KPGluMupg3(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_vrpGluMu_elmt_rmaxPGluMu(unit "m-3.0..s-1.0") = 89.04965407 "";
    parameter Real elmt_vrpGluMu_elmt_KPGluMupg2(unit "m-3.0.") = 0.369 "";
    parameter Real elmt_vrpGluMu_elmt_KPGluMueq(unit "") = 0.188 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_vpyr(unit = "") "Pyruvate dilution";
    parameter Real elmt_vpyr_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant72 "";
    Real elmt_vGLP(unit = "") "GLP dilution";
    parameter Real elmt_vGLP_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant75 "";
    Real elmt_vE4P(unit = "") "E4P dilution";
    parameter Real elmt_vE4P_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant74 "";
    Real elmt_vPFK(unit = "") "Phosphofructokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPFK_elmt_KPFKf6ps(unit "m-3.0.") = 0.325 "";
    parameter Real elmt_vPFK_elmt_KPFKadpa(unit "m-3.0.") = 128.0 "";
    parameter Real elmt_vPFK_elmt_KPFKampa(unit "m-3.0.") = 19.1 "";
    parameter Real elmt_vPFK_elmt_KPFKampb(unit "m-3.0.") = 3.2 "";
    parameter Real elmt_vPFK_elmt_rmaxPFK(unit "m-3.0..s-1.0") = 1840.584747 "";
    parameter Real elmt_vPFK_elmt_KPFKadpb(unit "m-3.0.") = 3.89 "";
    parameter Real elmt_vPFK_elmt_LPFK(unit "") = 5629067.0 "";
    parameter Real elmt_vPFK_elmt_KPFKatps(unit "m-3.0.") = 0.123 "";
    parameter Real elmt_vPFK_elmt_KPFKadpc(unit "m-3.0.") = 4.14 "";
    parameter Real elmt_vPFK_elmt_KPFKpep(unit "m-3.0.") = 3.26 "";
    parameter Real elmt_vPFK_elmt_nPFK(unit "") = 11.1 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_vSED7P(unit = "") "SED7P dilution";
    parameter Real elmt_vSED7P_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant71 "";
    Real elmt_vpepCxylase(unit = "") "PEP carboxylase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vpepCxylase_elmt_KpepCxylasepep(unit "m-3.0.") = 4.07 "";
    parameter Real elmt_vpepCxylase_elmt_npepCxylasefdp(unit "") = 4.21 "";
    parameter Real elmt_vpepCxylase_elmt_rmaxpepCxylase(unit "m-3.0..s-1.0") = 0.1070205858 "";
    parameter Real elmt_vpepCxylase_elmt_KpepCxylasefdp(unit "m-3.0.") = 0.7 "";
    Real elmt_reactant44 "";
    Real elmt_vpg2(unit = "") "PG2 degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vpg2_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant66 "";
    Real elmt_vPG3(unit = "") "PG3 degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPG3_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant65 "";
    Real elmt_vEXTER(unit = "") "Extracellular glucose kinetics";
    parameter Real elmt_vEXTER_elmt_Dil(unit "s-1.0") = 2.78E-5 "";
    parameter Real elmt_vEXTER_elmt_cfeed(unit "m-3.0.") = 110.96 "";
    Real elmt_product76 "";
    Real elmt_vMURSyNTH(unit = "") "Mureine synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vMURSyNTH_elmt_rmaxMurSynth(unit "m-3.0..s-1.0") = 4.3711E-4 "";
    Real elmt_reactant24 "";
    Real elmt_vR5PI(unit = "") "Ribose-phosphate isomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vR5PI_elmt_rmaxR5PI(unit "s-1.0") = 4.83841193 "";
    parameter Real elmt_vR5PI_elmt_KR5PIeq(unit "") = 4.0 "";
    Real elmt_reactant53 "";
    Real elmt_product54 "";
    Real elmt_vRu5P(unit = "") "Ribulose-phosphate epimerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vRu5P_elmt_rmaxRu5P(unit "s-1.0") = 6.739029475 "";
    parameter Real elmt_vRu5P_elmt_KRu5Peq(unit "") = 1.4 "";
    Real elmt_product56 "";
    Real elmt_reactant55 "";
    Real elmt_vXYL5P(unit = "") "XYL5P dilution";
    parameter Real elmt_vXYL5P_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant70 "";
    Real elmt_vMethSynth(unit = "") "Methionine synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vMethSynth_elmt_rmaxMetSynth(unit "m-3.0..s-1.0") = 0.0022627 "";
    Real elmt_product50 "";
    Real elmt_vTIS(unit = "") "Triosephosphate isomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTIS_elmt_kTISgap(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_vTIS_elmt_rmaxTIS(unit "m-3.0..s-1.0") = 68.67474392 "";
    parameter Real elmt_vTIS_elmt_kTISeq(unit "") = 1.39 "";
    parameter Real elmt_vTIS_elmt_kTISdhap(unit "m-3.0.") = 2.8 "";
    Real elmt_reactant30 "";
    Real elmt_product31 "";
    Real elmt_vTA(unit = "") "Transaldolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTA_elmt_rmaxTA(unit "m3.0.mol-1.0.s-1.0") = 10.87164108 "";
    parameter Real elmt_vTA_elmt_KTAeq(unit "") = 1.05 "";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_vG1PAT(unit = "") "Glucose-1-phosphate adenyltransferase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vG1PAT_elmt_KG1PATatp(unit "m-3.0.") = 4.42 "";
    parameter Real elmt_vG1PAT_elmt_KG1PATg1p(unit "m-3.0.") = 3.2 "";
    parameter Real elmt_vG1PAT_elmt_rmaxG1PAT(unit "m-3.0..s-1.0") = 0.007525458026 "";
    parameter Real elmt_vG1PAT_elmt_KG1PATfdp(unit "m-3.0.") = 0.119 "";
    parameter Real elmt_vG1PAT_elmt_nG1PATfdp(unit "m-3.0.") = 1.2 "";
    Real elmt_reactant58 "";
    Real elmt_vPG(unit = "") "PG dilution";
    parameter Real elmt_vPG_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant73 "";
    Real elmt_vALDO(unit = "") "Aldolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vALDO_elmt_kALDOgap(unit "m-3.0.") = 0.088 "";
    parameter Real elmt_vALDO_elmt_kALDOeq(unit "m-3.0.") = 0.144 "";
    parameter Real elmt_vALDO_elmt_kALDOgapinh(unit "m-3.0.") = 0.6 "";
    parameter Real elmt_vALDO_elmt_kALDOfdp(unit "m-3.0.") = 1.75 "";
    parameter Real elmt_vALDO_elmt_rmaxALDO(unit "m-3.0..s-1.0") = 17.41464425 "";
    parameter Real elmt_vALDO_elmt_VALDOblf(unit "") = 2.0 "";
    parameter Real elmt_vALDO_elmt_kALDOdhap(unit "m-3.0.") = 0.088 "";
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_product26 "";
    Real elmt_vPEP(unit = "") "PEP degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPEP_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant67 "";
    Real elmt_vPTS(unit = "") "Phosphotransferase system";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPTS_elmt_rmaxPTS(unit "m-3.0..s-1.0") = 7829.78 "";
    parameter Real elmt_vPTS_elmt_KPTSa1(unit "m-3.0.") = 3082.3 "";
    parameter Real elmt_vPTS_elmt_KPTSa2(unit "m-3.0.") = 0.01 "";
    parameter Real elmt_vPTS_elmt_KPTSg6p(unit "m-3.0.") = 2.15 "";
    parameter Real elmt_vPTS_elmt_KPTSa3(unit "") = 245.3 "";
    parameter Real elmt_vPTS_elmt_nPTSg6p(unit "") = 3.66 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_vDAHPS(unit = "") "DAHP synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vDAHPS_elmt_nDAHPSe4p(unit "") = 2.6 "";
    parameter Real elmt_vDAHPS_elmt_KDAHPSe4p(unit "m-3.0.") = 0.035 "";
    parameter Real elmt_vDAHPS_elmt_rmaxDAHPS(unit "m-3.0..s-1.0") = 0.1079531227 "";
    parameter Real elmt_vDAHPS_elmt_KDAHPSpep(unit "m-3.0.") = 0.0053 "";
    parameter Real elmt_vDAHPS_elmt_nDAHPSpep(unit "") = 2.2 "";
    Real elmt_reactant47 "";
    Real elmt_reactant48 "";
    Real elmt_vPDH(unit = "") "Pyruvate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPDH_elmt_nPDH(unit "") = 3.68 "";
    parameter Real elmt_vPDH_elmt_rmaxPDH(unit "m-3.0..s-1.0") = 6.059531017 "";
    parameter Real elmt_vPDH_elmt_KPDHpyr(unit "m-3.0.") = 1159.0 "";
    Real elmt_reactant49 "";
    Real elmt_vPK(unit = "") "Pyruvate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPK_elmt_LPK(unit "") = 1000.0 "";
    parameter Real elmt_vPK_elmt_KPKatp(unit "m-3.0.") = 22.5 "";
    parameter Real elmt_vPK_elmt_KPKadp(unit "m-3.0.") = 0.26 "";
    parameter Real elmt_vPK_elmt_KPKfdp(unit "m-3.0.") = 0.19 "";
    parameter Real elmt_vPK_elmt_rmaxPK(unit "m-3.0..s-1.0") = 0.06113150238 "";
    parameter Real elmt_vPK_elmt_KPKamp(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_vPK_elmt_KPKpep(unit "m-3.0.") = 0.31 "";
    parameter Real elmt_vPK_elmt_nPK(unit "") = 4.0 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_vfdP(unit = "") "FDP degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vfdP_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant61 "";
    Real elmt_vENO(unit = "") "Enolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vENO_elmt_KENOpg2(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_vENO_elmt_KENOpep(unit "m-3.0.") = 0.135 "";
    parameter Real elmt_vENO_elmt_KENOeq(unit "m-3.0.") = 6.73 "";
    parameter Real elmt_vENO_elmt_rmaxENO(unit "m-3.0..s-1.0") = 330.4476151 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_vPPK(unit = "") "Ribose phosphate pyrophosphokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPPK_elmt_rmaxRPPK(unit "m-3.0..s-1.0") = 0.01290045226 "";
    parameter Real elmt_vPPK_elmt_KRPPKrib5p(unit "m-3.0.") = 0.1 "";
    Real elmt_reactant57 "";
    Real elmt_vRIB5P(unit = "") "Rib5P dilution";
    parameter Real elmt_vRIB5P_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant69 "";
    Real elmt_vG6P(unit = "") "G6P degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vG6P_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant59 "";
    Real elmt_vSynth2(unit = "") "Synthesis 2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vSynth2_elmt_rmaxSynth2(unit "m-3.0..s-1.0") = 0.07361855055 "";
    parameter Real elmt_vSynth2_elmt_KSynth2pyr(unit "m-3.0.") = 1.0 "";
    Real elmt_reactant46 "";
    Real elmt_vSynth1(unit = "") "Synthesis 1";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vSynth1_elmt_KSynth1pep(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_vSynth1_elmt_rmaxSynth1(unit "m-3.0..s-1.0") = 0.01953897003 "";
    Real elmt_reactant45 "";
    Real elmt_vGAPDH(unit = "") "Glyceraldehyde-3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGAPDH_elmt_KGAPDHgap(unit "m-3.0.") = 0.683 "";
    parameter Real elmt_vGAPDH_elmt_KGAPDHnad(unit "m-3.0.") = 0.252 "";
    parameter Real elmt_vGAPDH_elmt_rmaxGAPDH(unit "m-3.0..s-1.0") = 921.5942861 "";
    parameter Real elmt_vGAPDH_elmt_KGAPDHeq(unit "") = 0.63 "";
    parameter Real elmt_vGAPDH_elmt_KGAPDHnadh(unit "m-3.0.") = 1.09 "";
    parameter Real elmt_vGAPDH_elmt_KGAPDHpgp(unit "m-3.0.") = 1.04E-5 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_vRibu5p(unit = "") "Ribu5P dilution";
    parameter Real elmt_vRibu5p_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant68 "";
    Real elmt_vPGI(unit = "") "Glucose-6-phosphate isomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGI_elmt_rmaxPGI(unit "m-3.0..s-1.0") = 650.9878687 "";
    parameter Real elmt_vPGI_elmt_KPGIeq(unit "") = 0.1725 "";
    parameter Real elmt_vPGI_elmt_KPGIg6p(unit "m-3.0.") = 2.9 "";
    parameter Real elmt_vPGI_elmt_KPGIg6ppginh(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_vPGI_elmt_KPGIf6p(unit "m-3.0.") = 0.266 "";
    parameter Real elmt_vPGI_elmt_KPGIf6ppginh(unit "m-3.0.") = 0.2 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_vPGK(unit = "") "Phosphoglycerate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGK_elmt_KPGKeq(unit "") = 1934.4 "";
    parameter Real elmt_vPGK_elmt_KPGKpgp(unit "m-3.0.") = 0.0468 "";
    parameter Real elmt_vPGK_elmt_KPGKadp(unit "m-3.0.") = 0.185 "";
    parameter Real elmt_vPGK_elmt_KPGKatp(unit "m-3.0.") = 0.653 "";
    parameter Real elmt_vPGK_elmt_KPGKpg3(unit "m-3.0.") = 0.473 "";
    parameter Real elmt_vPGK_elmt_rmaxPGK(unit "m-3.0..s-1.0") = 3021.773771 "";
    Real elmt_product36 "";
    Real elmt_reactant35 "";
    Real elmt_vTKA(unit = "") "Transketolase a";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTKA_elmt_rmaxTKa(unit "m3.0.mol-1.0.s-1.0") = 9.473384783 "";
    parameter Real elmt_vTKA_elmt_KTKaeq(unit "") = 1.2 "";
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_product18 "";
    Real elmt_vG6PDH(unit = "") "Glucose-6-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vG6PDH_elmt_KG6PDHnadphnadpinh(unit "m-3.0.") = 0.01 "";
    parameter Real elmt_vG6PDH_elmt_KG6PDHg6p(unit "m-3.0.") = 14.4 "";
    parameter Real elmt_vG6PDH_elmt_KG6PDHnadp(unit "m-3.0.") = 0.0246 "";
    parameter Real elmt_vG6PDH_elmt_rmaxG6PDH(unit "m-3.0..s-1.0") = 1.380196955 "";
    parameter Real elmt_vG6PDH_elmt_KG6PDHnadphg6pinh(unit "m-3.0.") = 6.43 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_vTKB(unit = "") "Transketolase b";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTKB_elmt_rmaxTKb(unit "m3.0.mol-1.0.s-1.0") = 86.55855855 "";
    parameter Real elmt_vTKB_elmt_KTKbeq(unit "") = 10.0 "";
    Real elmt_reactant20 "";
    Real elmt_product23 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_vf6P(unit = "") "F6P degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vf6P_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant60 "";
    Real elmt_vTRPSYNTH(unit = "") "Tryptophan synthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTRPSYNTH_elmt_rmaxTrpSynth(unit "m-3.0..s-1.0") = 0.001037 "";
    Real elmt_product33 "";
    Real elmt_product32 "";
    Real elmt_vPGM(unit = "") "Phosphoglucomutase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGM_elmt_KPGMg1p(unit "m-3.0.") = 0.0136 "";
    parameter Real elmt_vPGM_elmt_KPGMg6p(unit "m-3.0.") = 1.038 "";
    parameter Real elmt_vPGM_elmt_rmaxPGM(unit "m-3.0..s-1.0") = 0.8398242773 "";
    parameter Real elmt_vPGM_elmt_KPGMeq(unit "") = 0.196 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_vGAP(unit = "") "GAP degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGAP_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant62 "";
    Real elmt_vPGP(unit = "") "PGP degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGP_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant64 "";
    Real elmt_vDHAP(unit = "") "DHAP degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vDHAP_elmt_mu(unit "s-1.0") = 2.78E-5 "";
    Real elmt_reactant63 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_product76 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product27 = 1.0;
        elmt_product26 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product36 = 1.0;
        elmt_product39 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product56 = 1.0;
        elmt_product11 = 1.0;
        elmt_product54 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant24 = 2.0;
        elmt_reactant68 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_reactant1 = 65.0;
        elmt_reactant74 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant71 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 65.0;
        elmt_product2 = 65.0;
        elmt_reactant35 = 1.0;
        elmt_product15 = 1.0;
        elmt_product14 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_vsersynth = ((elmt_cytosol * elmt_vsersynth_elmt_rmaxSerSynth * elmt_cpg3) / (elmt_vsersynth_elmt_KSerSynthpg3 + elmt_cpg3));
        elmt_vPGDH = ((elmt_cytosol * elmt_vPGDH_elmt_rmaxPGDH * elmt_cpg * elmt_cnadp) / ((elmt_cpg + elmt_vPGDH_elmt_KPGDHpg) * (elmt_cnadp + (elmt_vPGDH_elmt_KPGDHnadp * (1.0 + (elmt_cnadph / elmt_vPGDH_elmt_KPGDHnadphinh)) * (1.0 + (elmt_catp / elmt_vPGDH_elmt_KPGDHatpinh))))));
        elmt_vG3PDH = ((elmt_cytosol * elmt_vG3PDH_elmt_rmaxG3PDH * elmt_cdhap) / (elmt_vG3PDH_elmt_KG3PDHdhap + elmt_cdhap));
        elmt_vrpGluMu = ((elmt_cytosol * elmt_vrpGluMu_elmt_rmaxPGluMu * (elmt_cpg3 - (elmt_cpg2 / elmt_vrpGluMu_elmt_KPGluMueq))) / ((elmt_vrpGluMu_elmt_KPGluMupg3 * (1.0 + (elmt_cpg2 / elmt_vrpGluMu_elmt_KPGluMupg2))) + elmt_cpg3));
        elmt_vpyr = (elmt_cytosol * elmt_vpyr_elmt_mu * elmt_cpyr);
        elmt_vGLP = (elmt_cytosol * elmt_vGLP_elmt_mu * elmt_cg1p);
        elmt_vE4P = (elmt_cytosol * elmt_vE4P_elmt_mu * elmt_ce4p);
        elmt_vPFK = ((elmt_cytosol * elmt_vPFK_elmt_rmaxPFK * elmt_catp * elmt_cf6p) / ((elmt_catp + (elmt_vPFK_elmt_KPFKatps * (1.0 + (elmt_cadp / elmt_vPFK_elmt_KPFKadpc)))) * (elmt_cf6p + ((elmt_vPFK_elmt_KPFKf6ps * (1.0 + (elmt_cpep / elmt_vPFK_elmt_KPFKpep) + (elmt_cadp / elmt_vPFK_elmt_KPFKadpb) + (elmt_camp / elmt_vPFK_elmt_KPFKampb))) / (1.0 + (elmt_cadp / elmt_vPFK_elmt_KPFKadpa) + (elmt_camp / elmt_vPFK_elmt_KPFKampa)))) * (1.0 + (elmt_vPFK_elmt_LPFK / Functions.pow((1.0 + ((elmt_cf6p * (1.0 + (elmt_cadp / elmt_vPFK_elmt_KPFKadpa) + (elmt_camp / elmt_vPFK_elmt_KPFKampa))) / (elmt_vPFK_elmt_KPFKf6ps * (1.0 + (elmt_cpep / elmt_vPFK_elmt_KPFKpep) + (elmt_cadp / elmt_vPFK_elmt_KPFKadpb) + (elmt_camp / elmt_vPFK_elmt_KPFKampb))))), elmt_vPFK_elmt_nPFK)))));
        elmt_vSED7P = (elmt_cytosol * elmt_vSED7P_elmt_mu * elmt_csed7p);
        elmt_vpepCxylase = ((elmt_cytosol * elmt_vpepCxylase_elmt_rmaxpepCxylase * elmt_cpep * (1.0 + Functions.pow((elmt_cfdp / elmt_vpepCxylase_elmt_KpepCxylasefdp), elmt_vpepCxylase_elmt_npepCxylasefdp))) / (elmt_vpepCxylase_elmt_KpepCxylasepep + elmt_cpep));
        elmt_vpg2 = (elmt_cytosol * elmt_vpg2_elmt_mu * elmt_cpg2);
        elmt_vPG3 = (elmt_cytosol * elmt_vPG3_elmt_mu * elmt_cpg3);
        elmt_vEXTER = (elmt_extracellular * elmt_vEXTER_elmt_Dil * (elmt_vEXTER_elmt_cfeed - elmt_cglcex));
        elmt_vMURSyNTH = (elmt_cytosol * elmt_vMURSyNTH_elmt_rmaxMurSynth);
        elmt_vR5PI = (elmt_cytosol * elmt_vR5PI_elmt_rmaxR5PI * (elmt_cribu5p - (elmt_crib5p / elmt_vR5PI_elmt_KR5PIeq)));
        elmt_vRu5P = (elmt_cytosol * elmt_vRu5P_elmt_rmaxRu5P * (elmt_cribu5p - (elmt_cxyl5p / elmt_vRu5P_elmt_KRu5Peq)));
        elmt_vXYL5P = (elmt_cytosol * elmt_vXYL5P_elmt_mu * elmt_cxyl5p);
        elmt_vMethSynth = (elmt_cytosol * elmt_vMethSynth_elmt_rmaxMetSynth);
        elmt_vTIS = ((elmt_cytosol * elmt_vTIS_elmt_rmaxTIS * (elmt_cdhap - (elmt_cgap / elmt_vTIS_elmt_kTISeq))) / ((elmt_vTIS_elmt_kTISdhap * (1.0 + (elmt_cgap / elmt_vTIS_elmt_kTISgap))) + elmt_cdhap));
        elmt_vTA = (elmt_cytosol * elmt_vTA_elmt_rmaxTA * ((elmt_cgap * elmt_csed7p) - ((elmt_ce4p * elmt_cf6p) / elmt_vTA_elmt_KTAeq)));
        elmt_vG1PAT = ((elmt_cytosol * elmt_vG1PAT_elmt_rmaxG1PAT * elmt_cg1p * elmt_catp * (1.0 + Functions.pow((elmt_cfdp / elmt_vG1PAT_elmt_KG1PATfdp), elmt_vG1PAT_elmt_nG1PATfdp))) / ((elmt_vG1PAT_elmt_KG1PATatp + elmt_catp) * (elmt_vG1PAT_elmt_KG1PATg1p + elmt_cg1p)));
        elmt_vPG = (elmt_cytosol * elmt_vPG_elmt_mu * elmt_cpg);
        elmt_vALDO = ((elmt_cytosol * elmt_vALDO_elmt_rmaxALDO * (elmt_cfdp - ((elmt_cgap * elmt_cdhap) / elmt_vALDO_elmt_kALDOeq))) / (elmt_vALDO_elmt_kALDOfdp + elmt_cfdp + ((elmt_vALDO_elmt_kALDOgap * elmt_cdhap) / (elmt_vALDO_elmt_kALDOeq * elmt_vALDO_elmt_VALDOblf)) + ((elmt_vALDO_elmt_kALDOdhap * elmt_cgap) / (elmt_vALDO_elmt_kALDOeq * elmt_vALDO_elmt_VALDOblf)) + ((elmt_cfdp * elmt_cgap) / elmt_vALDO_elmt_kALDOgapinh) + ((elmt_cgap * elmt_cdhap) / (elmt_vALDO_elmt_VALDOblf * elmt_vALDO_elmt_kALDOeq))));
        elmt_vPEP = (elmt_cytosol * elmt_vPEP_elmt_mu * elmt_cpep);
        elmt_vPTS = ((elmt_extracellular * elmt_vPTS_elmt_rmaxPTS * elmt_cglcex * (elmt_cpep / elmt_cpyr)) / ((elmt_vPTS_elmt_KPTSa1 + (elmt_vPTS_elmt_KPTSa2 * (elmt_cpep / elmt_cpyr)) + (elmt_vPTS_elmt_KPTSa3 * elmt_cglcex) + (elmt_cglcex * (elmt_cpep / elmt_cpyr))) * (1.0 + (Functions.pow(elmt_cg6p, elmt_vPTS_elmt_nPTSg6p) / elmt_vPTS_elmt_KPTSg6p))));
        elmt_vDAHPS = ((elmt_cytosol * elmt_vDAHPS_elmt_rmaxDAHPS * Functions.pow(elmt_ce4p, elmt_vDAHPS_elmt_nDAHPSe4p) * Functions.pow(elmt_cpep, elmt_vDAHPS_elmt_nDAHPSpep)) / ((elmt_vDAHPS_elmt_KDAHPSe4p + Functions.pow(elmt_ce4p, elmt_vDAHPS_elmt_nDAHPSe4p)) * (elmt_vDAHPS_elmt_KDAHPSpep + Functions.pow(elmt_cpep, elmt_vDAHPS_elmt_nDAHPSpep))));
        elmt_vPDH = ((elmt_cytosol * elmt_vPDH_elmt_rmaxPDH * Functions.pow(elmt_cpyr, elmt_vPDH_elmt_nPDH)) / (elmt_vPDH_elmt_KPDHpyr + Functions.pow(elmt_cpyr, elmt_vPDH_elmt_nPDH)));
        elmt_vPK = ((elmt_cytosol * elmt_vPK_elmt_rmaxPK * elmt_cpep * Functions.pow(((elmt_cpep / elmt_vPK_elmt_KPKpep) + 1.0), (elmt_vPK_elmt_nPK - 1.0)) * elmt_cadp) / (elmt_vPK_elmt_KPKpep * ((elmt_vPK_elmt_LPK * Functions.pow(((1.0 + (elmt_catp / elmt_vPK_elmt_KPKatp)) / ((elmt_cfdp / elmt_vPK_elmt_KPKfdp) + (elmt_camp / elmt_vPK_elmt_KPKamp) + 1.0)), elmt_vPK_elmt_nPK)) + Functions.pow(((elmt_cpep / elmt_vPK_elmt_KPKpep) + 1.0), elmt_vPK_elmt_nPK)) * (elmt_cadp + elmt_vPK_elmt_KPKadp)));
        elmt_vfdP = (elmt_cytosol * elmt_vfdP_elmt_mu * elmt_cfdp);
        elmt_vENO = ((elmt_cytosol * elmt_vENO_elmt_rmaxENO * (elmt_cpg2 - (elmt_cpep / elmt_vENO_elmt_KENOeq))) / ((elmt_vENO_elmt_KENOpg2 * (1.0 + (elmt_cpep / elmt_vENO_elmt_KENOpep))) + elmt_cpg2));
        elmt_vPPK = ((elmt_cytosol * elmt_vPPK_elmt_rmaxRPPK * elmt_crib5p) / (elmt_vPPK_elmt_KRPPKrib5p + elmt_crib5p));
        elmt_vRIB5P = (elmt_cytosol * elmt_vRIB5P_elmt_mu * elmt_crib5p);
        elmt_vG6P = (elmt_cytosol * elmt_vG6P_elmt_mu * elmt_cg6p);
        elmt_vSynth2 = ((elmt_cytosol * elmt_vSynth2_elmt_rmaxSynth2 * elmt_cpyr) / (elmt_vSynth2_elmt_KSynth2pyr + elmt_cpyr));
        elmt_vSynth1 = ((elmt_cytosol * elmt_vSynth1_elmt_rmaxSynth1 * elmt_cpep) / (elmt_vSynth1_elmt_KSynth1pep + elmt_cpep));
        elmt_vGAPDH = ((elmt_cytosol * elmt_vGAPDH_elmt_rmaxGAPDH * ((elmt_cgap * elmt_cnad) - ((elmt_cpgp * elmt_cnadh) / elmt_vGAPDH_elmt_KGAPDHeq))) / (((elmt_vGAPDH_elmt_KGAPDHgap * (1.0 + (elmt_cpgp / elmt_vGAPDH_elmt_KGAPDHpgp))) + elmt_cgap) * ((elmt_vGAPDH_elmt_KGAPDHnad * (1.0 + (elmt_cnadh / elmt_vGAPDH_elmt_KGAPDHnadh))) + elmt_cnad)));
        elmt_vRibu5p = (elmt_cytosol * elmt_vRibu5p_elmt_mu * elmt_cribu5p);
        elmt_vPGI = ((elmt_cytosol * elmt_vPGI_elmt_rmaxPGI * (elmt_cg6p - (elmt_cf6p / elmt_vPGI_elmt_KPGIeq))) / ((elmt_vPGI_elmt_KPGIg6p * (1.0 + (elmt_cf6p / (elmt_vPGI_elmt_KPGIf6p * (1.0 + (elmt_cpg / elmt_vPGI_elmt_KPGIf6ppginh)))) + (elmt_cpg / elmt_vPGI_elmt_KPGIg6ppginh))) + elmt_cg6p));
        elmt_vPGK = ((elmt_cytosol * elmt_vPGK_elmt_rmaxPGK * ((elmt_cadp * elmt_cpgp) - ((elmt_catp * elmt_cpg3) / elmt_vPGK_elmt_KPGKeq))) / (((elmt_vPGK_elmt_KPGKadp * (1.0 + (elmt_catp / elmt_vPGK_elmt_KPGKatp))) + elmt_cadp) * ((elmt_vPGK_elmt_KPGKpgp * (1.0 + (elmt_cpg3 / elmt_vPGK_elmt_KPGKpg3))) + elmt_cpgp)));
        elmt_vTKA = (elmt_cytosol * elmt_vTKA_elmt_rmaxTKa * ((elmt_crib5p * elmt_cxyl5p) - ((elmt_csed7p * elmt_cgap) / elmt_vTKA_elmt_KTKaeq)));
        elmt_vG6PDH = ((elmt_cytosol * elmt_vG6PDH_elmt_rmaxG6PDH * elmt_cg6p * elmt_cnadp) / ((elmt_cg6p + elmt_vG6PDH_elmt_KG6PDHg6p) * (1.0 + (elmt_cnadph / elmt_vG6PDH_elmt_KG6PDHnadphg6pinh)) * ((elmt_vG6PDH_elmt_KG6PDHnadp * (1.0 + (elmt_cnadph / elmt_vG6PDH_elmt_KG6PDHnadphnadpinh))) + elmt_cnadp)));
        elmt_vTKB = (elmt_cytosol * elmt_vTKB_elmt_rmaxTKb * ((elmt_cxyl5p * elmt_ce4p) - ((elmt_cf6p * elmt_cgap) / elmt_vTKB_elmt_KTKbeq)));
        elmt_vf6P = (elmt_cytosol * elmt_vf6P_elmt_mu * elmt_cf6p);
        elmt_vTRPSYNTH = (elmt_cytosol * elmt_vTRPSYNTH_elmt_rmaxTrpSynth);
        elmt_vPGM = ((elmt_cytosol * elmt_vPGM_elmt_rmaxPGM * (elmt_cg6p - (elmt_cg1p / elmt_vPGM_elmt_KPGMeq))) / ((elmt_vPGM_elmt_KPGMg6p * (1.0 + (elmt_cg1p / elmt_vPGM_elmt_KPGMg1p))) + elmt_cg6p));
        elmt_vGAP = (elmt_cytosol * elmt_vGAP_elmt_mu * elmt_cgap);
        elmt_vPGP = (elmt_cytosol * elmt_vPGP_elmt_mu * elmt_cpgp);
        elmt_vDHAP = (elmt_cytosol * elmt_vDHAP_elmt_mu * elmt_cdhap);
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_product76) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product27) = 0;
        der(elmt_product26) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product36) = 0;
        der(elmt_product39) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product56) = 0;
        der(elmt_product11) = 0;
        der(elmt_product54) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant71) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;

end Reactions;
