within BIOMD219;
class Reactions

    input Real elmt_mal;
    input Real elmt_coa;
    input Real elmt_gly;
    input Real elmt_sca;
    input Real elmt_aca;
    input Real elmt_akg;
    input Real elmt_cell;
    input Real elmt_icit;
    input Real elmt_suc;
    input Real elmt_ssa;
    input Real elmt_oaa;
    input Real elmt_fa;
    input Real elmt_cit;

    Real elmt_SDH(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_SDH_elmt_Vr_sdh(unit "m-3.0..s-1.0") = 1.02 "";
    parameter Real elmt_SDH_elmt_Kfa_sdh(unit "m-3.0.") = 0.15 "";
    parameter Real elmt_SDH_elmt_Ksuc_sdh(unit "m-3.0.") = 0.12 "";
    parameter Real elmt_SDH_elmt_Vf_sdh(unit "m-3.0..s-1.0") = 1.02 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_MS(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_MS_elmt_Vr_ms(unit "m-3.0..s-1.0") = 0.2 "";
    parameter Real elmt_MS_elmt_Kgly_ms(unit "m-3.0.") = 0.057 "";
    parameter Real elmt_MS_elmt_Kaca_ms(unit "m-3.0.") = 0.03 "";
    parameter Real elmt_MS_elmt_Kmal_ms(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_MS_elmt_Vf_ms(unit "m-3.0..s-1.0") = 20.0 "";
    parameter Real elmt_MS_elmt_Kcoa_ms(unit "m-3.0.") = 0.1 "";
    Real elmt_reactant30 "";
    Real elmt_reactant31 "";
    Real elmt_product33 "";
    Real elmt_product32 "";
    Real elmt_ICL2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ICL2_elmt_Vf_icl2(unit "m-3.0..s-1.0") = 0.391 "";
    parameter Real elmt_ICL2_elmt_Vr_icl2(unit "m-3.0..s-1.0") = 0.00391 "";
    parameter Real elmt_ICL2_elmt_Kgly_icl2(unit "m-3.0.") = 1.3 "";
    parameter Real elmt_ICL2_elmt_Ksuc_icl2(unit "m-3.0.") = 5.9 "";
    parameter Real elmt_ICL2_elmt_Kicit_icl2(unit "m-3.0.") = 1.3 "";
    Real elmt_reactant27 "";
    Real elmt_product29 "";
    Real elmt_product28 "";
    Real elmt_ICL1(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ICL1_elmt_Kicit_icl1(unit "m-3.0.") = 0.145 "";
    parameter Real elmt_ICL1_elmt_Ksuc_icl1(unit "m-3.0.") = 0.59 "";
    parameter Real elmt_ICL1_elmt_Vr_icl1(unit "m-3.0..s-1.0") = 0.01172 "";
    parameter Real elmt_ICL1_elmt_Vf_icl1(unit "m-3.0..s-1.0") = 1.172 "";
    parameter Real elmt_ICL1_elmt_Kgly_icl1(unit "m-3.0.") = 0.13 "";
    Real elmt_product26 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_MDH(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_MDH_elmt_Koaa_mdh(unit "m-3.0.") = 0.0443 "";
    parameter Real elmt_MDH_elmt_Kmal_mdh(unit "m-3.0.") = 0.833 "";
    parameter Real elmt_MDH_elmt_Vr_mdh(unit "m-3.0..s-1.0") = 184.0 "";
    parameter Real elmt_MDH_elmt_Vf_mdh(unit "m-3.0..s-1.0") = 184.0 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_ScAS(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ScAS_elmt_Ksuc_scas(unit "m-3.0.") = 5.0 "";
    parameter Real elmt_ScAS_elmt_Ksca_scas(unit "m-3.0.") = 0.02 "";
    parameter Real elmt_ScAS_elmt_Vr_scas(unit "m-3.0..s-1.0") = 0.012 "";
    parameter Real elmt_ScAS_elmt_Vf_scas(unit "m-3.0..s-1.0") = 1.2 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_FUM(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_FUM_elmt_Vr_fum(unit "m-3.0..s-1.0") = 87.7 "";
    parameter Real elmt_FUM_elmt_Kfa_fum(unit "m-3.0.") = 0.25 "";
    parameter Real elmt_FUM_elmt_Vf_fum(unit "m-3.0..s-1.0") = 87.7 "";
    parameter Real elmt_FUM_elmt_Kmal_fum(unit "m-3.0.") = 2.38 "";
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_ICD2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ICD2_elmt_Kakg_icd2(unit "m-3.0.") = 0.6 "";
    parameter Real elmt_ICD2_elmt_Kicit_icd2(unit "m-3.0.") = 0.06 "";
    parameter Real elmt_ICD2_elmt_Vf_icd2(unit "m-3.0..s-1.0") = 9.965 "";
    parameter Real elmt_ICD2_elmt_Vr_icd2(unit "m-3.0..s-1.0") = 0.09965 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_ICD1(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ICD1_elmt_Kakg_icd1(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_ICD1_elmt_Kicit_icd1(unit "m-3.0.") = 0.03 "";
    parameter Real elmt_ICD1_elmt_Vr_icd1(unit "m-3.0..s-1.0") = 0.102 "";
    parameter Real elmt_ICD1_elmt_Vf_icd1(unit "m-3.0..s-1.0") = 10.2 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_SYN(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_SYN_elmt_Kakg_icd2(unit "m-3.0.") = 0.6 "";
    parameter Real elmt_SYN_elmt_Kakg_icd1(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_SYN_elmt_Kicit_icd2(unit "m-3.0.") = 0.06 "";
    parameter Real elmt_SYN_elmt_Kicit_icd1(unit "m-3.0.") = 0.03 "";
    parameter Real elmt_SYN_elmt_Vr_icd1(unit "m-3.0..s-1.0") = 0.102 "";
    parameter Real elmt_SYN_elmt_Vf_icd2(unit "m-3.0..s-1.0") = 9.965 "";
    parameter Real elmt_SYN_elmt_Vf_icd1(unit "m-3.0..s-1.0") = 10.2 "";
    parameter Real elmt_SYN_elmt_Vr_icd2(unit "m-3.0..s-1.0") = 0.09965 "";
    Real elmt_product35 "";
    Real elmt_reactant34 "";
    Real elmt_KGD(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_KGD_elmt_Vr_kgd(unit "m-3.0..s-1.0") = 0.483 "";
    parameter Real elmt_KGD_elmt_Kssa_kgd(unit "m-3.0.") = 4.8 "";
    parameter Real elmt_KGD_elmt_Vf_kgd(unit "m-3.0..s-1.0") = 48.3 "";
    parameter Real elmt_KGD_elmt_Kakg_kgd(unit "m-3.0.") = 0.48 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_SSADH(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_SSADH_elmt_Vf_ssadh(unit "m-3.0..s-1.0") = 6.51 "";
    parameter Real elmt_SSADH_elmt_Vr_ssadh(unit "m-3.0..s-1.0") = 0.0651 "";
    parameter Real elmt_SSADH_elmt_Kssa_ssadh(unit "m-3.0.") = 0.015 "";
    parameter Real elmt_SSADH_elmt_Ksuc_ssadh(unit "m-3.0.") = 0.15 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_CS(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_CS_elmt_Koaa_cs(unit "m-3.0.") = 0.012 "";
    parameter Real elmt_CS_elmt_Kcoa_cs(unit "m-3.0.") = 0.5 "";
    parameter Real elmt_CS_elmt_Kcit_cs(unit "m-3.0.") = 0.12 "";
    parameter Real elmt_CS_elmt_Kaca_cs(unit "m-3.0.") = 0.05 "";
    parameter Real elmt_CS_elmt_Vr_cs(unit "m-3.0..s-1.0") = 0.648 "";
    parameter Real elmt_CS_elmt_Vf_cs(unit "m-3.0..s-1.0") = 64.8 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_KDH(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_KDH_elmt_Kakg_kdh(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_KDH_elmt_Vr_kdh(unit "m-3.0..s-1.0") = 0.57344 "";
    parameter Real elmt_KDH_elmt_Vf_kdh(unit "m-3.0..s-1.0") = 57.344 "";
    parameter Real elmt_KDH_elmt_Ksca_kdh(unit "m-3.0.") = 1.0 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_ACN(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ACN_elmt_Vf_acn(unit "m-3.0..s-1.0") = 31.2 "";
    parameter Real elmt_ACN_elmt_Kicit_acn(unit "m-3.0.") = 0.7 "";
    parameter Real elmt_ACN_elmt_Kcit_acn(unit "m-3.0.") = 1.7 "";
    parameter Real elmt_ACN_elmt_Vr_acn(unit "m-3.0..s-1.0") = 0.312 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product33 = 1.0;
        elmt_product11 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product26 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_product28 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_product15 = 1.0;
        elmt_product35 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_SDH = (elmt_cell * (((elmt_SDH_elmt_Vf_sdh * (elmt_suc / elmt_SDH_elmt_Ksuc_sdh)) - (elmt_SDH_elmt_Vr_sdh * (elmt_fa / elmt_SDH_elmt_Kfa_sdh))) / (1.0 + (elmt_suc / elmt_SDH_elmt_Ksuc_sdh) + (elmt_fa / elmt_SDH_elmt_Kfa_sdh))));
        elmt_MS = (elmt_cell * (((elmt_MS_elmt_Vf_ms * (elmt_gly / elmt_MS_elmt_Kgly_ms) * (elmt_aca / elmt_MS_elmt_Kaca_ms)) - (elmt_MS_elmt_Vr_ms * (elmt_mal / elmt_MS_elmt_Kmal_ms) * (elmt_coa / elmt_MS_elmt_Kcoa_ms))) / ((1.0 + (elmt_gly / elmt_MS_elmt_Kgly_ms) + (elmt_mal / elmt_MS_elmt_Kmal_ms)) * (1.0 + (elmt_aca / elmt_MS_elmt_Kaca_ms) + (elmt_coa / elmt_MS_elmt_Kcoa_ms)))));
        elmt_ICL2 = (elmt_cell * (((elmt_ICL2_elmt_Vf_icl2 * (elmt_icit / elmt_ICL2_elmt_Kicit_icl2)) - (elmt_ICL2_elmt_Vr_icl2 * (elmt_suc / elmt_ICL2_elmt_Ksuc_icl2) * (elmt_gly / elmt_ICL2_elmt_Kgly_icl2))) / (1.0 + (elmt_icit / elmt_ICL2_elmt_Kicit_icl2) + (elmt_suc / elmt_ICL2_elmt_Ksuc_icl2) + (elmt_gly / elmt_ICL2_elmt_Kgly_icl2) + ((elmt_icit / elmt_ICL2_elmt_Kicit_icl2) * (elmt_suc / elmt_ICL2_elmt_Ksuc_icl2)) + ((elmt_suc / elmt_ICL2_elmt_Ksuc_icl2) * (elmt_gly / elmt_ICL2_elmt_Kgly_icl2)))));
        elmt_ICL1 = (elmt_cell * (((elmt_ICL1_elmt_Vf_icl1 * (elmt_icit / elmt_ICL1_elmt_Kicit_icl1)) - (elmt_ICL1_elmt_Vr_icl1 * (elmt_suc / elmt_ICL1_elmt_Ksuc_icl1) * (elmt_gly / elmt_ICL1_elmt_Kgly_icl1))) / (1.0 + (elmt_icit / elmt_ICL1_elmt_Kicit_icl1) + (elmt_suc / elmt_ICL1_elmt_Ksuc_icl1) + (elmt_gly / elmt_ICL1_elmt_Kgly_icl1) + ((elmt_icit / elmt_ICL1_elmt_Kicit_icl1) * (elmt_suc / elmt_ICL1_elmt_Ksuc_icl1)) + ((elmt_suc / elmt_ICL1_elmt_Ksuc_icl1) * (elmt_gly / elmt_ICL1_elmt_Kgly_icl1)))));
        elmt_MDH = (elmt_cell * (((elmt_MDH_elmt_Vf_mdh * (elmt_mal / elmt_MDH_elmt_Kmal_mdh)) - (elmt_MDH_elmt_Vr_mdh * (elmt_oaa / elmt_MDH_elmt_Koaa_mdh))) / (1.0 + (elmt_mal / elmt_MDH_elmt_Kmal_mdh) + (elmt_oaa / elmt_MDH_elmt_Koaa_mdh))));
        elmt_ScAS = (elmt_cell * (((elmt_ScAS_elmt_Vf_scas * (elmt_sca / elmt_ScAS_elmt_Ksca_scas)) - (elmt_ScAS_elmt_Vr_scas * (elmt_suc / elmt_ScAS_elmt_Ksuc_scas))) / (1.0 + (elmt_sca / elmt_ScAS_elmt_Ksca_scas) + (elmt_suc / elmt_ScAS_elmt_Ksuc_scas))));
        elmt_FUM = (elmt_cell * (((elmt_FUM_elmt_Vf_fum * (elmt_fa / elmt_FUM_elmt_Kfa_fum)) - (elmt_FUM_elmt_Vr_fum * (elmt_mal / elmt_FUM_elmt_Kmal_fum))) / (1.0 + (elmt_fa / elmt_FUM_elmt_Kfa_fum) + (elmt_mal / elmt_FUM_elmt_Kmal_fum))));
        elmt_ICD2 = (elmt_cell * (((elmt_ICD2_elmt_Vf_icd2 * (elmt_icit / elmt_ICD2_elmt_Kicit_icd2)) - (elmt_ICD2_elmt_Vr_icd2 * (elmt_akg / elmt_ICD2_elmt_Kakg_icd2))) / (1.0 + (elmt_icit / elmt_ICD2_elmt_Kicit_icd2) + (elmt_akg / elmt_ICD2_elmt_Kakg_icd2))));
        elmt_ICD1 = (elmt_cell * (((elmt_ICD1_elmt_Vf_icd1 * (elmt_icit / elmt_ICD1_elmt_Kicit_icd1)) - (elmt_ICD1_elmt_Vr_icd1 * (elmt_akg / elmt_ICD1_elmt_Kakg_icd1))) / (1.0 + (elmt_icit / elmt_ICD1_elmt_Kicit_icd1) + (elmt_akg / elmt_ICD1_elmt_Kakg_icd1))));
        elmt_SYN = (elmt_cell * 0.0341 * ((((elmt_SYN_elmt_Vf_icd1 * (elmt_icit / elmt_SYN_elmt_Kicit_icd1)) - (elmt_SYN_elmt_Vr_icd1 * (elmt_akg / elmt_SYN_elmt_Kakg_icd1))) / (1.0 + (elmt_icit / elmt_SYN_elmt_Kicit_icd1) + (elmt_akg / elmt_SYN_elmt_Kakg_icd1))) + (((elmt_SYN_elmt_Vf_icd2 * (elmt_icit / elmt_SYN_elmt_Kicit_icd2)) - (elmt_SYN_elmt_Vr_icd2 * (elmt_akg / elmt_SYN_elmt_Kakg_icd2))) / (1.0 + (elmt_icit / elmt_SYN_elmt_Kicit_icd2) + (elmt_akg / elmt_SYN_elmt_Kakg_icd2)))));
        elmt_KGD = (elmt_cell * (((elmt_KGD_elmt_Vf_kgd * (elmt_akg / elmt_KGD_elmt_Kakg_kgd)) - (elmt_KGD_elmt_Vr_kgd * (elmt_ssa / elmt_KGD_elmt_Kssa_kgd))) / (1.0 + (elmt_akg / elmt_KGD_elmt_Kakg_kgd) + (elmt_ssa / elmt_KGD_elmt_Kssa_kgd))));
        elmt_SSADH = (elmt_cell * (((elmt_SSADH_elmt_Vf_ssadh * (elmt_ssa / elmt_SSADH_elmt_Kssa_ssadh)) - (elmt_SSADH_elmt_Vr_ssadh * (elmt_suc / elmt_SSADH_elmt_Ksuc_ssadh))) / (1.0 + (elmt_ssa / elmt_SSADH_elmt_Kssa_ssadh) + (elmt_suc / elmt_SSADH_elmt_Ksuc_ssadh))));
        elmt_CS = (elmt_cell * (((elmt_CS_elmt_Vf_cs * (elmt_aca / elmt_CS_elmt_Kaca_cs) * (elmt_oaa / elmt_CS_elmt_Koaa_cs)) - (elmt_CS_elmt_Vr_cs * (elmt_coa / elmt_CS_elmt_Kcoa_cs) * (elmt_cit / elmt_CS_elmt_Kcit_cs))) / ((1.0 + (elmt_aca / elmt_CS_elmt_Kaca_cs) + (elmt_coa / elmt_CS_elmt_Kcoa_cs)) * (1.0 + (elmt_oaa / elmt_CS_elmt_Koaa_cs) + (elmt_cit / elmt_CS_elmt_Kcit_cs)))));
        elmt_KDH = (elmt_cell * (((elmt_KDH_elmt_Vf_kdh * (elmt_akg / elmt_KDH_elmt_Kakg_kdh)) - (elmt_KDH_elmt_Vr_kdh * (elmt_sca / elmt_KDH_elmt_Ksca_kdh))) / (1.0 + (elmt_akg / elmt_KDH_elmt_Kakg_kdh) + (elmt_sca / elmt_KDH_elmt_Ksca_kdh))));
        elmt_ACN = (elmt_cell * (((elmt_ACN_elmt_Vf_acn * (elmt_cit / elmt_ACN_elmt_Kcit_acn)) - (elmt_ACN_elmt_Vr_acn * (elmt_icit / elmt_ACN_elmt_Kicit_acn))) / (1.0 + (elmt_cit / elmt_ACN_elmt_Kcit_acn) + (elmt_icit / elmt_ACN_elmt_Kicit_acn))));
        der(elmt_reactant20) = 0;
        der(elmt_product33) = 0;
        der(elmt_product11) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product26) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_product28) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_product15) = 0;
        der(elmt_product35) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
