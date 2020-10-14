within BIOMD211;
class Reactions

    input Real elmt_RaHXK;
    input Real elmt_species_6;
    input Real elmt_species_7;
    input Real elmt_species_4;
    input Real elmt_species_5;
    input Real elmt_species_8;
    input Real elmt_species_9;
    input Real elmt_species_15;
    input Real elmt_species_16;
    input Real elmt_species_17;
    input Real elmt_species_18;
    input Real elmt_species_19;
    input Real elmt_compartment_1;
    input Real elmt_RaPYK;
    input Real elmt_species_10;
    input Real elmt_species_11;
    input Real elmt_species_12;
    input Real elmt_species_13;
    input Real elmt_compartment_2;
    input Real elmt_species_14;
    input Real elmt_RaPFK;
    input Real elmt_species_27;
    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_1;
    input Real elmt_RaPGAM;
    input Real elmt_species_20;
    input Real elmt_species_21;
    input Real elmt_species_22;
    input Real elmt_species_23;
    input Real elmt_RaENO;
    input Real elmt_species_24;
    input Real elmt_species_25;

    Real elmt_vTPI(unit = "") "triosephosphate isomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vTPI_elmt_Kms(unit "") = 1.2 "";
    parameter Real elmt_vTPI_elmt_Vf(unit "") = 999.3 "";
    parameter Real elmt_vTPI_elmt_Kmp(unit "") = 0.25 "";
    parameter Real elmt_vTPI_elmt_Vr(unit "") = 5696.01 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_vGAPDH(unit = "") "glyceraldehyde3phosphatedehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGAPDH_elmt_KNAD_v7(unit "") = 0.45 "";
    parameter Real elmt_vGAPDH_elmt_KNADH_v7(unit "") = 0.02 "";
    parameter Real elmt_vGAPDH_elmt_r_v7(unit "") = 0.67 "";
    parameter Real elmt_vGAPDH_elmt_KGAP_v7(unit "") = 0.15 "";
    parameter Real elmt_vGAPDH_elmt_KBPGA13_v7(unit "") = 0.1 "";
    parameter Real elmt_vGAPDH_elmt_Vmax_v7(unit "") = 720.9 "";
    Real elmt_reactant18 "";
    Real elmt_product20 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_vANTI(unit = "") "gly3p dhap antiporter";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vANTI_elmt_k1(unit "") = 1000000.0 "";
    parameter Real elmt_vANTI_elmt_k2(unit "") = 1000000.0 "";
    Real elmt_product58 "";
    Real elmt_product57 "";
    Real elmt_reactant55 "";
    Real elmt_reactant56 "";
    Real elmt_vPGI(unit = "") "phosphoglycerate isomerase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGI_elmt_Kms(unit "") = 0.4 "";
    parameter Real elmt_vPGI_elmt_Vf(unit "") = 1305.0 "";
    parameter Real elmt_vPGI_elmt_Kmp(unit "") = 0.12 "";
    parameter Real elmt_vPGI_elmt_Vr(unit "") = 1305.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_vPGK(unit = "") "phosphoglycerate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGK_elmt_KBPGA13_v11(unit "") = 0.003 "";
    parameter Real elmt_vPGK_elmt_KADPg_v11(unit "") = 0.1 "";
    parameter Real elmt_vPGK_elmt_KPGA3_v11(unit "") = 1.62 "";
    parameter Real elmt_vPGK_elmt_r_v11(unit "") = 0.47 "";
    parameter Real elmt_vPGK_elmt_KATPg_v11(unit "") = 0.29 "";
    parameter Real elmt_vPGK_elmt_Vmax_v11(unit "") = 2862.0 "";
    Real elmt_reactant30 "";
    Real elmt_reactant29 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_vPK(unit = "") "pyruvate kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPK_elmt_KADP_v12(unit "") = 0.114 "";
    parameter Real elmt_vPK_elmt_PK_n(unit "") = 2.5 "";
    parameter Real elmt_vPK_elmt_Vmax_v12(unit "") = 1020.0 "";
    Real elmt_product36 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_reactant34 "";
    Real elmt_vGPO(unit = "") "glycerol3phosphate oxidase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGPO_elmt_Km(unit "") = 1.7 "";
    parameter Real elmt_vGPO_elmt_V(unit "") = 368.0 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_vENO(unit = "") "enolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vENO_elmt_Kms(unit "") = 0.054 "";
    parameter Real elmt_vENO_elmt_Vf(unit "") = 598.0 "";
    parameter Real elmt_vENO_elmt_Kmp(unit "") = 0.24 "";
    parameter Real elmt_vENO_elmt_Vr(unit "") = 394.68 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_vGlyT(unit = "") "glycerol transport";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGlyT_elmt_k1(unit "") = 1000000.0 "";
    parameter Real elmt_vGlyT_elmt_k2(unit "") = 1000000.0 "";
    Real elmt_product60 "";
    Real elmt_reactant59 "";
    Real elmt_vPT(unit = "") "pyruvate transport";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPT_elmt_Km(unit "") = 1.96 "";
    parameter Real elmt_vPT_elmt_V(unit "") = 200.0 "";
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_vGK(unit = "") "glycerol kinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGK_elmt_r_v14(unit "") = 60.86 "";
    parameter Real elmt_vGK_elmt_Vmax_v14(unit "") = 200.0 "";
    parameter Real elmt_vGK_elmt_KATPg_v14(unit "") = 0.24 "";
    parameter Real elmt_vGK_elmt_KGly3Pg_v14(unit "") = 3.83 "";
    parameter Real elmt_vGK_elmt_KADPg_v14(unit "") = 0.56 "";
    parameter Real elmt_vGK_elmt_KGlycerol_v14(unit "") = 0.44 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_product42 "";
    Real elmt_reactant39 "";
    Real elmt_vHK(unit = "") "hexokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vHK_elmt_KGlc6P_v2(unit "") = 12.0 "";
    parameter Real elmt_vHK_elmt_Vmax_v2(unit "") = 1929.0 "";
    parameter Real elmt_vHK_elmt_KGlcInt_v2(unit "") = 0.1 "";
    parameter Real elmt_vHK_elmt_KADPg_v2(unit "") = 0.126 "";
    parameter Real elmt_vHK_elmt_KATPg_v2(unit "") = 0.116 "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_vAKg(unit = "") "adenylate kinase glycosome";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vAKg_elmt_k(unit "") = 1000000.0 "";
    parameter Real elmt_vAKg_elmt_keqak(unit "") = 0.442 "";
    Real elmt_reactant50 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_vPGT(unit = "") "3phosphoglycerate transport";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGT_elmt_k1(unit "") = 1000000.0 "";
    parameter Real elmt_vPGT_elmt_k2(unit "") = 1000000.0 "";
    Real elmt_reactant53 "";
    Real elmt_product54 "";
    Real elmt_vGT(unit = "") "glucose transport";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGT_elmt_KGlc(unit "") = 1.0 "";
    parameter Real elmt_vGT_elmt_Vmax_v1(unit "") = 108.9 "";
    parameter Real elmt_vGT_elmt_Alpha_v1(unit "") = 0.75 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_vPGM(unit = "") "phosphoglycerate mutase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPGM_elmt_Kms(unit "") = 0.27 "";
    parameter Real elmt_vPGM_elmt_Vf(unit "") = 225.0 "";
    parameter Real elmt_vPGM_elmt_Kmp(unit "") = 0.11 "";
    parameter Real elmt_vPGM_elmt_Vr(unit "") = 495.0 "";
    Real elmt_product44 "";
    Real elmt_reactant43 "";
    Real elmt_vPFK(unit = "") "phophofructokinase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vPFK_elmt_Vmax_v4(unit "") = 1708.0 "";
    parameter Real elmt_vPFK_elmt_KATPg_v4(unit "") = 0.026 "";
    parameter Real elmt_vPFK_elmt_KFru6P_v4(unit "") = 0.82 "";
    parameter Real elmt_vPFK_elmt_Ki1Fru16BP_v4(unit "") = 15.8 "";
    parameter Real elmt_vPFK_elmt_Ki2Fru16BP_v4(unit "") = 10.7 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_vGPDH(unit = "") "glycerol3phosphatedehydrogenase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vGPDH_elmt_KNAD_v8(unit "") = 0.4 "";
    parameter Real elmt_vGPDH_elmt_KGly3Pg_v8(unit "") = 2.0 "";
    parameter Real elmt_vGPDH_elmt_r_v8(unit "") = 0.28 "";
    parameter Real elmt_vGPDH_elmt_KNADH_v8(unit "") = 0.01 "";
    parameter Real elmt_vGPDH_elmt_KDHAPg_v8(unit "") = 0.1 "";
    parameter Real elmt_vGPDH_elmt_Vmax_v8(unit "") = 465.0 "";
    Real elmt_product23 "";
    Real elmt_product24 "";
    Real elmt_reactant21 "";
    Real elmt_reactant22 "";
    Real elmt_vALD(unit = "") "aldolase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vALD_elmt_Vmax_v5(unit "") = 560.0 "";
    parameter Real elmt_vALD_elmt_KGAPi_v5(unit "") = 0.098 "";
    parameter Real elmt_vALD_elmt_r_v5(unit "") = 1.19 "";
    parameter Real elmt_vALD_elmt_Keq_v5(unit "") = 0.069 "";
    parameter Real elmt_vALD_elmt_KGAP_v5(unit "") = 0.067 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_vAKc(unit = "") "adenylate kinase cytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vAKc_elmt_k(unit "") = 1000000.0 "";
    parameter Real elmt_vAKc_elmt_keqak(unit "") = 0.442 "";
    Real elmt_reactant47 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_vAU(unit = "") "atp utilisation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_vAU_elmt_k(unit "") = 50.0 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product26 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product24 = 1.0;
        elmt_product28 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product44 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_product35 = 1.0;
        elmt_product52 = 2.0;
        elmt_product11 = 1.0;
        elmt_product54 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product49 = 2.0;
        elmt_product46 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product20 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product58 = 1.0;
        elmt_product14 = 1.0;
        elmt_product57 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;


    equation
        elmt_vTPI = (elmt_compartment_2 * (((((elmt_vTPI_elmt_Vf * elmt_species_17) / elmt_vTPI_elmt_Kms) - ((elmt_vTPI_elmt_Vr * elmt_species_18) / elmt_vTPI_elmt_Kmp)) / (1.0 + (elmt_species_17 / elmt_vTPI_elmt_Kms) + (elmt_species_18 / elmt_vTPI_elmt_Kmp)))));
        elmt_vGAPDH = (elmt_compartment_2 * ((elmt_vGAPDH_elmt_Vmax_v7 * ((((elmt_species_18 / elmt_vGAPDH_elmt_KGAP_v7) * (elmt_species_19 / elmt_vGAPDH_elmt_KNAD_v7)) - (elmt_vGAPDH_elmt_r_v7 * (elmt_species_21 / elmt_vGAPDH_elmt_KBPGA13_v7) * (elmt_species_20 / elmt_vGAPDH_elmt_KNADH_v7))) / ((1.0 + (elmt_species_18 / elmt_vGAPDH_elmt_KGAP_v7) + (elmt_species_21 / elmt_vGAPDH_elmt_KBPGA13_v7)) * (1.0 + (elmt_species_19 / elmt_vGAPDH_elmt_KNAD_v7) + (elmt_species_20 / elmt_vGAPDH_elmt_KNADH_v7)))))));
        elmt_vANTI = ((elmt_vANTI_elmt_k1 * elmt_species_22 * elmt_species_8) - (elmt_vANTI_elmt_k2 * elmt_species_9 * elmt_species_17));
        elmt_vPGI = (elmt_compartment_2 * (((((elmt_vPGI_elmt_Vf * elmt_species_14) / elmt_vPGI_elmt_Kms) - ((elmt_vPGI_elmt_Vr * elmt_species_15) / elmt_vPGI_elmt_Kmp)) / (1.0 + (elmt_species_14 / elmt_vPGI_elmt_Kms) + (elmt_species_15 / elmt_vPGI_elmt_Kmp)))));
        elmt_vPGK = (elmt_compartment_2 * ((elmt_vPGK_elmt_Vmax_v11 * ((((elmt_species_21 / elmt_vPGK_elmt_KBPGA13_v11) * (elmt_species_12 / elmt_vPGK_elmt_KADPg_v11)) - (elmt_vPGK_elmt_r_v11 * (elmt_species_23 / elmt_vPGK_elmt_KPGA3_v11) * (elmt_species_11 / elmt_vPGK_elmt_KATPg_v11))) / ((1.0 + (elmt_species_21 / elmt_vPGK_elmt_KBPGA13_v11) + (elmt_species_23 / elmt_vPGK_elmt_KPGA3_v11)) * (1.0 + (elmt_species_12 / elmt_vPGK_elmt_KADPg_v11) + (elmt_species_11 / elmt_vPGK_elmt_KATPg_v11)))))));
        elmt_vPK = (elmt_RaPYK * elmt_compartment_1 * (((elmt_vPK_elmt_Vmax_v12 * Functions.pow((elmt_species_4 / (0.34 * (1.0 + (elmt_species_3 / 0.57) + (elmt_species_2 / 0.64)))), elmt_vPK_elmt_PK_n) * (elmt_species_2 / elmt_vPK_elmt_KADP_v12)) / ((1.0 + Functions.pow((elmt_species_4 / (0.34 * (1.0 + (elmt_species_3 / 0.57) + (elmt_species_2 / 0.64)))), elmt_vPK_elmt_PK_n)) * (1.0 + (elmt_species_2 / elmt_vPK_elmt_KADP_v12))))));
        elmt_vGPO = (elmt_compartment_1 * (((elmt_vGPO_elmt_V * elmt_species_9) / (elmt_vGPO_elmt_Km + elmt_species_9))));
        elmt_vENO = (elmt_RaENO * elmt_compartment_1 * (((((elmt_vENO_elmt_Vf * elmt_species_5) / elmt_vENO_elmt_Kms) - ((elmt_vENO_elmt_Vr * elmt_species_4) / elmt_vENO_elmt_Kmp)) / (1.0 + (elmt_species_5 / elmt_vENO_elmt_Kms) + (elmt_species_4 / elmt_vENO_elmt_Kmp)))));
        elmt_vGlyT = ((elmt_vGlyT_elmt_k1 * elmt_species_24) - (elmt_vGlyT_elmt_k2 * elmt_species_27));
        elmt_vPT = (((elmt_vPT_elmt_V * elmt_species_1) / (elmt_vPT_elmt_Km + elmt_species_1)));
        elmt_vGK = (elmt_compartment_2 * ((elmt_vGK_elmt_Vmax_v14 * ((((elmt_species_22 / elmt_vGK_elmt_KGly3Pg_v14) * (elmt_species_12 / elmt_vGK_elmt_KADPg_v14)) - (elmt_vGK_elmt_r_v14 * (elmt_species_24 / elmt_vGK_elmt_KGlycerol_v14) * (elmt_species_11 / elmt_vGK_elmt_KATPg_v14))) / ((1.0 + (elmt_species_22 / elmt_vGK_elmt_KGly3Pg_v14) + (elmt_species_24 / elmt_vGK_elmt_KGlycerol_v14)) * (1.0 + (elmt_species_12 / elmt_vGK_elmt_KADPg_v14) + (elmt_species_11 / elmt_vGK_elmt_KATPg_v14)))))));
        elmt_vHK = (elmt_RaHXK * elmt_compartment_2 * (((elmt_vHK_elmt_Vmax_v2 * (elmt_species_10 / elmt_vHK_elmt_KGlcInt_v2) * (elmt_species_11 / elmt_vHK_elmt_KATPg_v2)) / ((1.0 + (elmt_species_11 / elmt_vHK_elmt_KATPg_v2) + (elmt_species_12 / elmt_vHK_elmt_KADPg_v2)) * (1.0 + (elmt_species_10 / elmt_vHK_elmt_KGlcInt_v2) + (elmt_species_14 / elmt_vHK_elmt_KGlc6P_v2))))));
        elmt_vAKg = (elmt_compartment_2 * ((elmt_vAKg_elmt_k * ((elmt_species_11 * elmt_species_13) - (elmt_vAKg_elmt_keqak * elmt_species_12 * elmt_species_12)))));
        elmt_vPGT = ((elmt_vPGT_elmt_k1 * elmt_species_23) - (elmt_vPGT_elmt_k2 * elmt_species_7));
        elmt_vGT = ((elmt_vGT_elmt_Vmax_v1 * ((elmt_species_25 - elmt_species_10) / (elmt_vGT_elmt_KGlc + elmt_species_25 + elmt_species_10 + ((elmt_vGT_elmt_Alpha_v1 * elmt_species_25 * elmt_species_10) / elmt_vGT_elmt_KGlc)))));
        elmt_vPGM = (elmt_RaPGAM * elmt_compartment_1 * (((((elmt_vPGM_elmt_Vf * elmt_species_7) / elmt_vPGM_elmt_Kms) - ((elmt_vPGM_elmt_Vr * elmt_species_5) / elmt_vPGM_elmt_Kmp)) / (1.0 + (elmt_species_7 / elmt_vPGM_elmt_Kms) + (elmt_species_5 / elmt_vPGM_elmt_Kmp)))));
        elmt_vPFK = (elmt_RaPFK * elmt_compartment_2 * (((elmt_vPFK_elmt_Vmax_v4 * (elmt_vPFK_elmt_Ki1Fru16BP_v4 / (elmt_vPFK_elmt_Ki1Fru16BP_v4 + elmt_species_16)) * (elmt_species_15 / elmt_vPFK_elmt_KFru6P_v4) * (elmt_species_11 / elmt_vPFK_elmt_KATPg_v4)) / ((1.0 + (elmt_species_15 / elmt_vPFK_elmt_KFru6P_v4) + (elmt_species_16 / elmt_vPFK_elmt_Ki2Fru16BP_v4)) * (1.0 + (elmt_species_11 / elmt_vPFK_elmt_KATPg_v4))))));
        elmt_vGPDH = (elmt_compartment_2 * ((elmt_vGPDH_elmt_Vmax_v8 * ((((elmt_species_17 / elmt_vGPDH_elmt_KDHAPg_v8) * (elmt_species_20 / elmt_vGPDH_elmt_KNADH_v8)) - (elmt_vGPDH_elmt_r_v8 * (elmt_species_19 / elmt_vGPDH_elmt_KNAD_v8) * (elmt_species_22 / elmt_vGPDH_elmt_KGly3Pg_v8))) / ((1.0 + (elmt_species_17 / elmt_vGPDH_elmt_KDHAPg_v8) + (elmt_species_22 / elmt_vGPDH_elmt_KGly3Pg_v8)) * (1.0 + (elmt_species_20 / elmt_vGPDH_elmt_KNADH_v8) + (elmt_species_19 / elmt_vGPDH_elmt_KNAD_v8)))))));
        elmt_vALD = (elmt_compartment_2 * (((elmt_vALD_elmt_Vmax_v5 * (elmt_species_16 - ((elmt_species_18 * elmt_species_17) / elmt_vALD_elmt_Keq_v5))) / ((0.009 * (1.0 + (elmt_species_11 / 0.68) + (elmt_species_12 / 1.51) + (elmt_species_13 / 3.65))) + elmt_species_16 + (elmt_species_18 * ((0.015 * (1.0 + (elmt_species_11 / 0.68) + (elmt_species_12 / 1.51) + (elmt_species_13 / 3.65))) / elmt_vALD_elmt_Keq_v5) * (1.0 / elmt_vALD_elmt_r_v5)) + (elmt_species_17 * (elmt_vALD_elmt_KGAP_v5 / elmt_vALD_elmt_Keq_v5) * (1.0 / elmt_vALD_elmt_r_v5)) + ((elmt_species_16 * elmt_species_18) / elmt_vALD_elmt_KGAPi_v5) + (((elmt_species_18 * elmt_species_17) / elmt_vALD_elmt_Keq_v5) * (1.0 / elmt_vALD_elmt_r_v5))))));
        elmt_vAKc = (elmt_compartment_1 * ((elmt_vAKc_elmt_k * ((elmt_species_3 * elmt_species_6) - (elmt_vAKc_elmt_keqak * elmt_species_2 * elmt_species_2)))));
        elmt_vAU = (elmt_compartment_1 * (((elmt_vAU_elmt_k * elmt_species_3) / elmt_species_2)));
        der(elmt_reactant40) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product24) = 0;
        der(elmt_product28) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product44) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_product35) = 0;
        der(elmt_product52) = 0;
        der(elmt_product11) = 0;
        der(elmt_product54) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product49) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product20) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product58) = 0;
        der(elmt_product14) = 0;
        der(elmt_product57) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;

end Reactions;
