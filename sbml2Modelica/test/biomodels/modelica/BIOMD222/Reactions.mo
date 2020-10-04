within BIOMD222;
class Reactions

    input Real elmt_mal;
    input Real elmt_cell;
    input Real elmt_icit;
    input Real elmt_coa;
    input Real elmt_gly;
    input Real elmt_suc;
    input Real elmt_sca;
    input Real elmt_aca;
    input Real elmt_oaa;
    input Real elmt_fa;
    input Real elmt_cit;
    input Real elmt_akg;

    Real elmt_SYN(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_SYN_elmt_Vf_icd(unit "m-3.0..s-1.0") = 14.72 "";
    parameter Real elmt_SYN_elmt_Kicit_icd(unit "m-3.0.") = 0.008 "";
    parameter Real elmt_SYN_elmt_Vr_icd(unit "m-3.0..s-1.0") = 0.1472 "";
    parameter Real elmt_SYN_elmt_Kakg_icd(unit "m-3.0.") = 0.13 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_SDH(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_SDH_elmt_Vr_sdh(unit "m-3.0..s-1.0") = 7.31 "";
    parameter Real elmt_SDH_elmt_Kfa_sdh(unit "m-3.0.") = 0.4 "";
    parameter Real elmt_SDH_elmt_Ksuc_sdh(unit "m-3.0.") = 0.02 "";
    parameter Real elmt_SDH_elmt_Vf_sdh(unit "m-3.0..s-1.0") = 7.38 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_MS(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_MS_elmt_Vr_ms(unit "m-3.0..s-1.0") = 0.019 "";
    parameter Real elmt_MS_elmt_Kgly_ms(unit "m-3.0.") = 2.0 "";
    parameter Real elmt_MS_elmt_Kaca_ms(unit "m-3.0.") = 0.01 "";
    parameter Real elmt_MS_elmt_Kmal_ms(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_MS_elmt_Vf_ms(unit "m-3.0..s-1.0") = 1.9 "";
    parameter Real elmt_MS_elmt_Kcoa_ms(unit "m-3.0.") = 0.1 "";
    Real elmt_product23 "";
    Real elmt_product24 "";
    Real elmt_reactant21 "";
    Real elmt_reactant22 "";
    Real elmt_MDH(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_MDH_elmt_Koaa_mdh(unit "m-3.0.") = 0.04 "";
    parameter Real elmt_MDH_elmt_Kmal_mdh(unit "m-3.0.") = 2.6 "";
    parameter Real elmt_MDH_elmt_Vr_mdh(unit "m-3.0..s-1.0") = 353.11 "";
    parameter Real elmt_MDH_elmt_Vf_mdh(unit "m-3.0..s-1.0") = 356.64 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_CS(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_CS_elmt_Koaa_cs(unit "m-3.0.") = 0.07 "";
    parameter Real elmt_CS_elmt_Kcoa_cs(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_CS_elmt_Kcit_cs(unit "m-3.0.") = 0.7 "";
    parameter Real elmt_CS_elmt_Kaca_cs(unit "m-3.0.") = 0.03 "";
    parameter Real elmt_CS_elmt_Vr_cs(unit "m-3.0..s-1.0") = 0.912 "";
    parameter Real elmt_CS_elmt_Vf_cs(unit "m-3.0..s-1.0") = 91.2 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_ICL(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ICL_elmt_Ksuc_icl(unit "m-3.0.") = 0.59 "";
    parameter Real elmt_ICL_elmt_Vr_icl(unit "m-3.0..s-1.0") = 0.019 "";
    parameter Real elmt_ICL_elmt_Kgly_icl(unit "m-3.0.") = 0.13 "";
    parameter Real elmt_ICL_elmt_Vf_icl(unit "m-3.0..s-1.0") = 1.9 "";
    parameter Real elmt_ICL_elmt_Kicit_icl(unit "m-3.0.") = 0.604 "";
    Real elmt_reactant18 "";
    Real elmt_product20 "";
    Real elmt_product19 "";
    Real elmt_KDH(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_KDH_elmt_Kakg_kdh(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_KDH_elmt_Vr_kdh(unit "m-3.0..s-1.0") = 0.3584 "";
    parameter Real elmt_KDH_elmt_Vf_kdh(unit "m-3.0..s-1.0") = 35.84 "";
    parameter Real elmt_KDH_elmt_Ksca_kdh(unit "m-3.0.") = 1.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_ScAS(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ScAS_elmt_Ksuc_scas(unit "m-3.0.") = 5.0 "";
    parameter Real elmt_ScAS_elmt_Ksca_scas(unit "m-3.0.") = 0.02 "";
    parameter Real elmt_ScAS_elmt_Vr_scas(unit "m-3.0..s-1.0") = 0.035 "";
    parameter Real elmt_ScAS_elmt_Vf_scas(unit "m-3.0..s-1.0") = 3.5 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_FUM(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_FUM_elmt_Vr_fum(unit "m-3.0..s-1.0") = 37.2 "";
    parameter Real elmt_FUM_elmt_Kfa_fum(unit "m-3.0.") = 0.15 "";
    parameter Real elmt_FUM_elmt_Vf_fum(unit "m-3.0..s-1.0") = 44.64 "";
    parameter Real elmt_FUM_elmt_Kmal_fum(unit "m-3.0.") = 0.04 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_ACN(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ACN_elmt_Vf_acn(unit "m-3.0..s-1.0") = 91.2 "";
    parameter Real elmt_ACN_elmt_Kicit_acn(unit "m-3.0.") = 3.33 "";
    parameter Real elmt_ACN_elmt_Kcit_acn(unit "m-3.0.") = 1.7 "";
    parameter Real elmt_ACN_elmt_Vr_acn(unit "m-3.0..s-1.0") = 0.912 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_ICD(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ICD_elmt_Vf_icd(unit "m-3.0..s-1.0") = 14.72 "";
    parameter Real elmt_ICD_elmt_Kicit_icd(unit "m-3.0.") = 0.008 "";
    parameter Real elmt_ICD_elmt_Vr_icd(unit "m-3.0..s-1.0") = 0.1472 "";
    parameter Real elmt_ICD_elmt_Kakg_icd(unit "m-3.0.") = 0.13 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";


    initial equation
        elmt_product11 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product26 = 1.0;
        elmt_product24 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_SYN = (elmt_cell * 0.188 * (((elmt_SYN_elmt_Vf_icd * (elmt_icit / elmt_SYN_elmt_Kicit_icd)) - (elmt_SYN_elmt_Vr_icd * (elmt_akg / elmt_SYN_elmt_Kakg_icd))) / (1.0 + (elmt_icit / elmt_SYN_elmt_Kicit_icd) + (elmt_akg / elmt_SYN_elmt_Kakg_icd))));
        elmt_SDH = (elmt_cell * (((elmt_SDH_elmt_Vf_sdh * (elmt_suc / elmt_SDH_elmt_Ksuc_sdh)) - (elmt_SDH_elmt_Vr_sdh * (elmt_fa / elmt_SDH_elmt_Kfa_sdh))) / (1.0 + (elmt_suc / elmt_SDH_elmt_Ksuc_sdh) + (elmt_fa / elmt_SDH_elmt_Kfa_sdh))));
        elmt_MS = (elmt_cell * (((elmt_MS_elmt_Vf_ms * (elmt_gly / elmt_MS_elmt_Kgly_ms) * (elmt_aca / elmt_MS_elmt_Kaca_ms)) - (elmt_MS_elmt_Vr_ms * (elmt_mal / elmt_MS_elmt_Kmal_ms) * (elmt_coa / elmt_MS_elmt_Kcoa_ms))) / ((1.0 + (elmt_gly / elmt_MS_elmt_Kgly_ms) + (elmt_mal / elmt_MS_elmt_Kmal_ms)) * (1.0 + (elmt_aca / elmt_MS_elmt_Kaca_ms) + (elmt_coa / elmt_MS_elmt_Kcoa_ms)))));
        elmt_MDH = (elmt_cell * (((elmt_MDH_elmt_Vf_mdh * (elmt_mal / elmt_MDH_elmt_Kmal_mdh)) - (elmt_MDH_elmt_Vr_mdh * (elmt_oaa / elmt_MDH_elmt_Koaa_mdh))) / (1.0 + (elmt_mal / elmt_MDH_elmt_Kmal_mdh) + (elmt_oaa / elmt_MDH_elmt_Koaa_mdh))));
        elmt_CS = (elmt_cell * (((elmt_CS_elmt_Vf_cs * (elmt_aca / elmt_CS_elmt_Kaca_cs) * (elmt_oaa / elmt_CS_elmt_Koaa_cs)) - (elmt_CS_elmt_Vr_cs * (elmt_coa / elmt_CS_elmt_Kcoa_cs) * (elmt_cit / elmt_CS_elmt_Kcit_cs))) / ((1.0 + (elmt_aca / elmt_CS_elmt_Kaca_cs) + (elmt_coa / elmt_CS_elmt_Kcoa_cs)) * (1.0 + (elmt_oaa / elmt_CS_elmt_Koaa_cs) + (elmt_cit / elmt_CS_elmt_Kcit_cs)))));
        elmt_ICL = (elmt_cell * (((elmt_ICL_elmt_Vf_icl * (elmt_icit / elmt_ICL_elmt_Kicit_icl)) - (elmt_ICL_elmt_Vr_icl * (elmt_suc / elmt_ICL_elmt_Ksuc_icl) * (elmt_gly / elmt_ICL_elmt_Kgly_icl))) / (1.0 + (elmt_icit / elmt_ICL_elmt_Kicit_icl) + (elmt_suc / elmt_ICL_elmt_Ksuc_icl) + (elmt_gly / elmt_ICL_elmt_Kgly_icl) + ((elmt_icit / elmt_ICL_elmt_Kicit_icl) * (elmt_suc / elmt_ICL_elmt_Ksuc_icl)) + ((elmt_suc / elmt_ICL_elmt_Ksuc_icl) * (elmt_gly / elmt_ICL_elmt_Kgly_icl)))));
        elmt_KDH = (elmt_cell * (((elmt_KDH_elmt_Vf_kdh * (elmt_akg / elmt_KDH_elmt_Kakg_kdh)) - (elmt_KDH_elmt_Vr_kdh * (elmt_sca / elmt_KDH_elmt_Ksca_kdh))) / (1.0 + (elmt_akg / elmt_KDH_elmt_Kakg_kdh) + (elmt_sca / elmt_KDH_elmt_Ksca_kdh))));
        elmt_ScAS = (elmt_cell * (((elmt_ScAS_elmt_Vf_scas * (elmt_sca / elmt_ScAS_elmt_Ksca_scas)) - (elmt_ScAS_elmt_Vr_scas * (elmt_suc / elmt_ScAS_elmt_Ksuc_scas))) / (1.0 + (elmt_sca / elmt_ScAS_elmt_Ksca_scas) + (elmt_suc / elmt_ScAS_elmt_Ksuc_scas))));
        elmt_FUM = (elmt_cell * (((elmt_FUM_elmt_Vf_fum * (elmt_fa / elmt_FUM_elmt_Kfa_fum)) - (elmt_FUM_elmt_Vr_fum * (elmt_mal / elmt_FUM_elmt_Kmal_fum))) / (1.0 + (elmt_fa / elmt_FUM_elmt_Kfa_fum) + (elmt_mal / elmt_FUM_elmt_Kmal_fum))));
        elmt_ACN = (elmt_cell * (((elmt_ACN_elmt_Vf_acn * (elmt_cit / elmt_ACN_elmt_Kcit_acn)) - (elmt_ACN_elmt_Vr_acn * (elmt_icit / elmt_ACN_elmt_Kicit_acn))) / (1.0 + (elmt_cit / elmt_ACN_elmt_Kcit_acn) + (elmt_icit / elmt_ACN_elmt_Kicit_acn))));
        elmt_ICD = (elmt_cell * (((elmt_ICD_elmt_Vf_icd * (elmt_icit / elmt_ICD_elmt_Kicit_icd)) - (elmt_ICD_elmt_Vr_icd * (elmt_akg / elmt_ICD_elmt_Kakg_icd))) / (1.0 + (elmt_icit / elmt_ICD_elmt_Kicit_icd) + (elmt_akg / elmt_ICD_elmt_Kakg_icd))));
        der(elmt_product11) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product26) = 0;
        der(elmt_product24) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
