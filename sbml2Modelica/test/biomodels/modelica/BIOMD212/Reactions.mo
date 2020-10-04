within BIOMD212;
class Reactions

    input Real elmt_ASADH;
    input Real elmt_V_Lys_RS;
    input Real elmt_LKR;
    input Real elmt_PHser;
    input Real elmt_AKHSDHI;
    input Real elmt_V_Ile_RS;
    input Real elmt_AK1;
    input Real elmt_AspP;
    input Real elmt_AK2;
    input Real elmt_DHDPS2;
    input Real elmt_V_Thr_RS;
    input Real elmt_Ile;
    input Real elmt_TD;
    input Real elmt_Val;
    input Real elmt_ASA;
    input Real elmt_THA;
    input Real elmt_TS1;
    input Real elmt_c1;
    input Real elmt_HSK;
    input Real elmt_Thr;
    input Real elmt_Cys;
    input Real elmt_DHDPS1;
    input Real elmt_AdoMet;
    input Real elmt_Lys;
    input Real elmt_AKHSDHII;
    input Real elmt_CGS;
    input Real elmt_Phosphate;
    input Real elmt_Hser;

    Real elmt_Vhsk(unit = "") "homoserine kinase react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vhsk_elmt_HSK_kcat_app_exp(unit "s-1.0") = 2.8 "";
    parameter Real elmt_Vhsk_elmt_HSK_Hser_app_exp(unit "m-3.0.") = 14.0 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_VakI(unit = "") "aspartate kinase react. (AKI-HSDHI)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_VakI_elmt_AKI_nH_exp(unit "") = 2.0 "";
    parameter Real elmt_VakI_elmt_AKI_kforward_app_exp(unit "s-1.0") = 0.36 "";
    parameter Real elmt_VakI_elmt_AKI_Thr_Ki_app_exp(unit "m-3.0.") = 124.0 "";
    parameter Real elmt_VakI_elmt_AKI_kreverse_app_exp(unit "m3.0.mol-1.0.s-1.0") = 0.15 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_VthrTRNA(unit = "") "Thr aminoacyl tRNA synthetase react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_VthrTRNA_elmt_Thr_tRNAS_Thr_Km(unit "m-3.0.") = 100.0 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_VileTRNA(unit = "") "Ile aminoacyl tRNA synthetase react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_VileTRNA_elmt_Ile_tRNAS_Ile_Km(unit "m-3.0.") = 20.0 "";
    Real elmt_reactant30 "";
    Real elmt_product31 "";
    Real elmt_Vasadh(unit = "") "Aspartate semialdehyde dehydrogenase react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vasadh_elmt_ASADH_kforward_app_exp(unit "m3.0.mol-1.0.s-1.0") = 0.9 "";
    parameter Real elmt_Vasadh_elmt_ASADH_kreverse_app_exp(unit "m3.0.mol-1.0.s-1.0") = 0.23 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_Vcgs(unit = "") "Cystathionine gamma synthase react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vcgs_elmt_CGS_Phosphate_Ki_exp(unit "") = 2000.0 "";
    parameter Real elmt_Vcgs_elmt_CGS_Cys_Km_exp(unit "") = 460.0 "";
    parameter Real elmt_Vcgs_elmt_CGS_kcat_exp(unit "") = 30.0 "";
    parameter Real elmt_Vcgs_elmt_CGS_Phser_Km_exp(unit "") = 2500.0 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_Vtd(unit = "") "Threonine deaminase react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vtd_elmt_TD_Val_Ka2_app_exp(unit "m-3.0.") = 615.0 "";
    parameter Real elmt_Vtd_elmt_TD_nH_app_exp(unit "") = 3.0 "";
    parameter Real elmt_Vtd_elmt_TD_Val_Ka1_app_exp(unit "") = 73.0 "";
    parameter Real elmt_Vtd_elmt_TD_k_app_exp(unit "") = 0.0124 "";
    parameter Real elmt_Vtd_elmt_TD_Ile_Ki_no_Val_app_exp(unit "") = 30.0 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_Vtha(unit = "") "Thr aldolase react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vtha_elmt_THA_kcat_exp(unit "s-1.0") = 1.7 "";
    parameter Real elmt_Vtha_elmt_THA_Thr_Km_exp(unit "m-3.0.") = 7100.0 "";
    Real elmt_product35 "";
    Real elmt_reactant34 "";
    Real elmt_VlysKR(unit = "") "Lys ketoglutarate reductase react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_VlysKR_elmt_LKR_Lys_Km_exp(unit "m-3.0.") = 13000.0 "";
    parameter Real elmt_VlysKR_elmt_LKR_kcat_exp(unit "s-1.0") = 3.1 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_Vts1(unit = "") "Threonine synthase react. (TS1)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vts1_elmt_TS1_AdoMet_Ka1_exp(unit "m-6.0.mol2.0") = 73.0 "";
    parameter Real elmt_Vts1_elmt_TS1_Phosphate_Ki_exp(unit "m-3.0.") = 1000.0 "";
    parameter Real elmt_Vts1_elmt_TS1_nH_exp(unit "") = 2.0 "";
    parameter Real elmt_Vts1_elmt_TS1_AdoMEt_Km_no_AdoMet_exp(unit "") = 250.0 "";
    parameter Real elmt_Vts1_elmt_TS1_AdoMet_Ka4_exp(unit "m-6.0.mol2.0") = 140.0 "";
    parameter Real elmt_Vts1_elmt_TS1_kcatmin_exp(unit "") = 0.42 "";
    parameter Real elmt_Vts1_elmt_TS1_AdoMet_kcatmax_exp(unit "") = 3.5 "";
    parameter Real elmt_Vts1_elmt_TS1_AdoMet_Ka3_exp(unit "") = 1.09 "";
    parameter Real elmt_Vts1_elmt_TS1_AdoMet_Ka2_exp(unit "") = 0.5 "";
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_Vak2(unit = "") "Aspartate kinase 2 react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vak2_elmt_AK2_Lys_Ki_app_exp(unit "m-3.0.") = 22.0 "";
    parameter Real elmt_Vak2_elmt_AK2_kreverse_app_exp(unit "m3.0.mol-1.0.s-1.0") = 0.86 "";
    parameter Real elmt_Vak2_elmt_AK2_kforward_app_exp(unit "s-1.0") = 3.15 "";
    parameter Real elmt_Vak2_elmt_AK2_nH_exp(unit "") = 1.1 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_Vak1(unit = "") "Aspartate kinase 1 react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vak1_elmt_AK1_AdoMet_Ka_app_exp(unit "m-3.0.") = 3.5 "";
    parameter Real elmt_Vak1_elmt_AK1_kreverse_app_exp(unit "m3.0.mol-1.0.s-1.0") = 1.6 "";
    parameter Real elmt_Vak1_elmt_AK1_Lys_Ki_app_exp(unit "m-3.0.") = 550.0 "";
    parameter Real elmt_Vak1_elmt_AK1_nH_exp(unit "") = 2.0 "";
    parameter Real elmt_Vak1_elmt_AK1_kforward_app_exp(unit "s-1.0") = 5.65 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_Vdhdps2(unit = "") "DHDPS2 react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vdhdps2_elmt_DHDPS2_nH_exp(unit "") = 2.0 "";
    parameter Real elmt_Vdhdps2_elmt_DHDPS2_k_app_exp(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_Vdhdps2_elmt_DHDPS2_Lys_Ki_app_exp(unit "m-3.0.") = 33.0 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_Vhsdh1(unit = "") "homoserine dehydrogenase react. (AKI-HSDHI)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vhsdh1_elmt_HSDHI_Thr_relative_residual_activity_app_exp(unit "") = 0.14 "";
    parameter Real elmt_Vhsdh1_elmt_HSDHI_Thr_Ki_app_exp(unit "m-3.0.") = 400.0 "";
    parameter Real elmt_Vhsdh1_elmt_HSDHI_kforward_app_exp(unit "m3.0.mol-1.0.s-1.0") = 0.84 "";
    parameter Real elmt_Vhsdh1_elmt_HSDHI_Thr_relative_inhibition_app_exp(unit "") = 0.86 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_VakII(unit = "") "aspartate kinase react. (AKII-HSDHII)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_VakII_elmt_AKII_kforward_app_exp(unit "s-1.0") = 1.35 "";
    parameter Real elmt_VakII_elmt_AKII_kreverse_app_exp(unit "m3.0.mol-1.0.s-1.0") = 0.22 "";
    parameter Real elmt_VakII_elmt_AKII_nH_exp(unit "") = 2.0 "";
    parameter Real elmt_VakII_elmt_AKII_Thr_Ki_app_exp(unit "m-3.0.") = 109.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_Vdhdps1(unit = "") "DHDPS1 react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vdhdps1_elmt_DHDPS1_k_app_exp(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_Vdhdps1_elmt_DHDPS1_Lys_Ki_app_exp(unit "m-3.0.") = 10.0 "";
    parameter Real elmt_Vdhdps1_elmt_DHDPS1_nH_exp(unit "") = 2.0 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_VlysTRNA(unit = "") "Lys aminoacyl tRNA synthetase react.";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_VlysTRNA_elmt_Lys_tRNAS_Lys_Km(unit "m-3.0.") = 25.0 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_Vhsdh2(unit = "") "homoserine dehydrogenase react. (AKII-HSDHII)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Vhsdh2_elmt_HSDHII_Thr_relative_residual_activity_app_exp(unit "") = 0.25 "";
    parameter Real elmt_Vhsdh2_elmt_HSDHII_kforward_app_exp(unit "m3.0.mol-1.0.s-1.0") = 0.64 "";
    parameter Real elmt_Vhsdh2_elmt_HSDHII_Thr_relative_inhibition_app_exp(unit "") = 0.75 "";
    parameter Real elmt_Vhsdh2_elmt_HSDHII_Thr_Ki_app_exp(unit "m-3.0.") = 8500.0 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product33 = 1.0;
        elmt_product11 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product7 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product15 = 1.0;
        elmt_product35 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_Vhsk = ((elmt_c1 * elmt_Vhsk_elmt_HSK_kcat_app_exp * elmt_HSK * elmt_Hser) / (elmt_Vhsk_elmt_HSK_Hser_app_exp + elmt_Hser));
        elmt_VakI = (elmt_c1 * elmt_AKHSDHI * ((elmt_VakI_elmt_AKI_kforward_app_exp - (elmt_VakI_elmt_AKI_kreverse_app_exp * elmt_AspP)) / (1.0 + Functions.pow((elmt_Thr / elmt_VakI_elmt_AKI_Thr_Ki_app_exp), elmt_VakI_elmt_AKI_nH_exp))));
        elmt_VthrTRNA = ((elmt_c1 * elmt_V_Thr_RS * elmt_Thr) / (elmt_VthrTRNA_elmt_Thr_tRNAS_Thr_Km + elmt_Thr));
        elmt_VileTRNA = ((elmt_c1 * elmt_V_Ile_RS * elmt_Ile) / (elmt_VileTRNA_elmt_Ile_tRNAS_Ile_Km + elmt_Ile));
        elmt_Vasadh = (elmt_c1 * elmt_ASADH * ((elmt_Vasadh_elmt_ASADH_kforward_app_exp * elmt_AspP) - (elmt_Vasadh_elmt_ASADH_kreverse_app_exp * elmt_ASA)));
        elmt_Vcgs = (elmt_c1 * elmt_CGS * elmt_PHser * ((elmt_Vcgs_elmt_CGS_kcat_exp / (1.0 + (elmt_Vcgs_elmt_CGS_Cys_Km_exp / elmt_Cys))) / (((elmt_Vcgs_elmt_CGS_Phser_Km_exp / (1.0 + (elmt_Vcgs_elmt_CGS_Cys_Km_exp / elmt_Cys))) * (1.0 + (elmt_Phosphate / elmt_Vcgs_elmt_CGS_Phosphate_Ki_exp))) + elmt_PHser)));
        elmt_Vtd = (elmt_c1 * elmt_TD * elmt_Thr * (elmt_Vtd_elmt_TD_k_app_exp / (1.0 + Functions.pow((elmt_Ile / (elmt_Vtd_elmt_TD_Ile_Ki_no_Val_app_exp + ((elmt_Vtd_elmt_TD_Val_Ka1_app_exp * elmt_Val) / (elmt_Vtd_elmt_TD_Val_Ka2_app_exp + elmt_Val)))), elmt_Vtd_elmt_TD_nH_app_exp))));
        elmt_Vtha = ((elmt_c1 * elmt_Vtha_elmt_THA_kcat_exp * elmt_THA * elmt_Thr) / (elmt_Vtha_elmt_THA_Thr_Km_exp + elmt_Thr));
        elmt_VlysKR = ((elmt_c1 * elmt_VlysKR_elmt_LKR_kcat_exp * elmt_LKR * elmt_Lys) / (elmt_VlysKR_elmt_LKR_Lys_Km_exp + elmt_Lys));
        elmt_Vts1 = (elmt_c1 * elmt_TS1 * elmt_PHser * (((elmt_Vts1_elmt_TS1_kcatmin_exp + (elmt_Vts1_elmt_TS1_AdoMet_kcatmax_exp * (Functions.pow(elmt_AdoMet, elmt_Vts1_elmt_TS1_nH_exp) / elmt_Vts1_elmt_TS1_AdoMet_Ka1_exp))) / (1.0 + (Functions.pow(elmt_AdoMet, elmt_Vts1_elmt_TS1_nH_exp) / elmt_Vts1_elmt_TS1_AdoMet_Ka1_exp))) / ((elmt_Vts1_elmt_TS1_AdoMEt_Km_no_AdoMet_exp * (((1.0 + (elmt_AdoMet / elmt_Vts1_elmt_TS1_AdoMet_Ka2_exp)) / (1.0 + (elmt_AdoMet / elmt_Vts1_elmt_TS1_AdoMet_Ka3_exp))) / (1.0 + (Functions.pow(elmt_AdoMet, elmt_Vts1_elmt_TS1_nH_exp) / elmt_Vts1_elmt_TS1_AdoMet_Ka4_exp))) * (1.0 + (elmt_Phosphate / elmt_Vts1_elmt_TS1_Phosphate_Ki_exp))) + elmt_PHser)));
        elmt_Vak2 = (elmt_c1 * elmt_AK2 * ((elmt_Vak2_elmt_AK2_kforward_app_exp - (elmt_Vak2_elmt_AK2_kreverse_app_exp * elmt_AspP)) / (1.0 + Functions.pow((elmt_Lys / elmt_Vak2_elmt_AK2_Lys_Ki_app_exp), elmt_Vak2_elmt_AK2_nH_exp))));
        elmt_Vak1 = (elmt_c1 * elmt_AK1 * ((elmt_Vak1_elmt_AK1_kforward_app_exp - (elmt_Vak1_elmt_AK1_kreverse_app_exp * elmt_AspP)) / (1.0 + Functions.pow((elmt_Lys / (elmt_Vak1_elmt_AK1_Lys_Ki_app_exp / (1.0 + (elmt_AdoMet / elmt_Vak1_elmt_AK1_AdoMet_Ka_app_exp)))), elmt_Vak1_elmt_AK1_nH_exp))));
        elmt_Vdhdps2 = (elmt_c1 * elmt_Vdhdps2_elmt_DHDPS2_k_app_exp * elmt_DHDPS2 * elmt_ASA * (1.0 / (1.0 + Functions.pow((elmt_Lys / elmt_Vdhdps2_elmt_DHDPS2_Lys_Ki_app_exp), elmt_Vdhdps2_elmt_DHDPS2_nH_exp))));
        elmt_Vhsdh1 = (elmt_c1 * elmt_Vhsdh1_elmt_HSDHI_kforward_app_exp * elmt_AKHSDHI * elmt_ASA * (elmt_Vhsdh1_elmt_HSDHI_Thr_relative_residual_activity_app_exp + (elmt_Vhsdh1_elmt_HSDHI_Thr_relative_inhibition_app_exp / (1.0 + (elmt_Thr / elmt_Vhsdh1_elmt_HSDHI_Thr_Ki_app_exp)))));
        elmt_VakII = (elmt_c1 * elmt_AKHSDHII * ((elmt_VakII_elmt_AKII_kforward_app_exp - (elmt_VakII_elmt_AKII_kreverse_app_exp * elmt_AspP)) / (1.0 + Functions.pow((elmt_Thr / elmt_VakII_elmt_AKII_Thr_Ki_app_exp), elmt_VakII_elmt_AKII_nH_exp))));
        elmt_Vdhdps1 = (elmt_c1 * elmt_Vdhdps1_elmt_DHDPS1_k_app_exp * elmt_DHDPS1 * elmt_ASA * (1.0 / (1.0 + Functions.pow((elmt_Lys / elmt_Vdhdps1_elmt_DHDPS1_Lys_Ki_app_exp), elmt_Vdhdps1_elmt_DHDPS1_nH_exp))));
        elmt_VlysTRNA = ((elmt_c1 * elmt_V_Lys_RS * elmt_Lys) / (elmt_VlysTRNA_elmt_Lys_tRNAS_Lys_Km + elmt_Lys));
        elmt_Vhsdh2 = (elmt_c1 * elmt_Vhsdh2_elmt_HSDHII_kforward_app_exp * elmt_AKHSDHII * elmt_ASA * (elmt_Vhsdh2_elmt_HSDHII_Thr_relative_residual_activity_app_exp + (elmt_Vhsdh2_elmt_HSDHII_Thr_relative_inhibition_app_exp / (1.0 + (elmt_Thr / elmt_Vhsdh2_elmt_HSDHII_Thr_Ki_app_exp)))));
        der(elmt_reactant20) = 0;
        der(elmt_product33) = 0;
        der(elmt_product11) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product7) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product15) = 0;
        der(elmt_product35) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
