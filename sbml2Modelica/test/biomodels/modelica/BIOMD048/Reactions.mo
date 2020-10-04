within BIOMD048;
class Reactions

    input Real elmt_Grb;
    input Real elmt_SOS;
    input Real elmt_RShP;
    input Real elmt_compartment;
    input Real elmt_RPLCgP;
    input Real elmt_ShG;
    input Real elmt_R2;
    input Real elmt_ShGS;
    input Real elmt_RShG;
    input Real elmt_PLCg;
    input Real elmt_PLCgl;
    input Real elmt_RGS;
    input Real elmt_GS;
    input Real elmt_ShP;
    input Real elmt_PLCgP;
    input Real elmt_RShGS;
    input Real elmt_RG;
    input Real elmt_RPLCg;
    input Real elmt_RSh;
    input Real elmt_EGF;
    input Real elmt_Ra;
    input Real elmt_RP;
    input Real elmt_Shc;
    input Real elmt_R;

    Real elmt_v24(unit = "") "association_of_RShP_and_GS";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v24_elmt_k24b(unit "") = 0.0429 "";
    parameter Real elmt_v24_elmt_k24f(unit "") = 0.009 "";
    Real elmt_reactant62 "";
    Real elmt_reactant63 "";
    Real elmt_product64 "";
    Real elmt_v23(unit = "") "dissociation_of_ShGS";
    parameter Real elmt_v23_elmt_k23b(unit "") = 0.021 "";
    parameter Real elmt_v23_elmt_k23f(unit "") = 0.1 "";
    Real elmt_product61 "";
    Real elmt_product60 "";
    Real elmt_reactant59 "";
    Real elmt_v9(unit = "") "binding_of_Grb2_to_RP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v9_elmt_k9f(unit "") = 0.003 "";
    parameter Real elmt_v9_elmt_k9b(unit "") = 0.05 "";
    Real elmt_reactant20 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_v22(unit = "") "binding_of_SOS_to_ShG";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v22_elmt_k22f(unit "") = 0.03 "";
    parameter Real elmt_v22_elmt_k22b(unit "") = 0.064 "";
    Real elmt_product58 "";
    Real elmt_reactant56 "";
    Real elmt_reactant57 "";
    Real elmt_v21(unit = "") "binding_of_Grb2_to_ShP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v21_elmt_k21f(unit "") = 0.003 "";
    parameter Real elmt_v21_elmt_k21b(unit "") = 0.1 "";
    Real elmt_reactant53 "";
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_v7(unit = "") "dissociation_of_RPLCgP";
    parameter Real elmt_v7_elmt_k7b(unit "") = 0.006 "";
    parameter Real elmt_v7_elmt_k7f(unit "") = 0.3 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_product15 "";
    Real elmt_v20(unit = "") "dissociation_of_RShGS";
    parameter Real elmt_v20_elmt_k20f(unit "") = 0.12 "";
    parameter Real elmt_v20_elmt_k20b(unit "") = 2.4E-4 "";
    Real elmt_reactant50 "";
    Real elmt_product52 "";
    Real elmt_product51 "";
    Real elmt_v8(unit = "") "dephosphorylation_of_PLCgP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v8_elmt_V8(unit "") = 1.0 "";
    parameter Real elmt_v8_elmt_K8(unit "") = 100.0 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_v5(unit = "") "binding_of_PLCg_to_RP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v5_elmt_k5b(unit "") = 0.2 "";
    parameter Real elmt_v5_elmt_k5f(unit "") = 0.06 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_v6(unit = "") "phosphorylation_of_PLCg";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v6_elmt_k6b(unit "") = 0.05 "";
    parameter Real elmt_v6_elmt_k6f(unit "") = 1.0 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_v25(unit = "") "translocation_of_PLCgP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v25_elmt_k25b(unit "") = 0.03 "";
    parameter Real elmt_v25_elmt_k25f(unit "") = 1.0 "";
    Real elmt_product66 "";
    Real elmt_reactant65 "";
    Real elmt_v3(unit = "") "phosphorylation_of_R2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v3_elmt_k3f(unit "") = 1.0 "";
    parameter Real elmt_v3_elmt_k3b(unit "") = 0.01 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_v4(unit = "") "dephosphorylation_of_RP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v4_elmt_V4(unit "") = 450.0 "";
    parameter Real elmt_v4_elmt_K4(unit "") = 50.0 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_v1(unit = "") "EGF_binds_to_EGFR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v1_elmt_k1f(unit "") = 0.003 "";
    parameter Real elmt_v1_elmt_k1b(unit "") = 0.06 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_v2(unit = "") "association_of_2_Ra_into_dimer";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v2_elmt_k2f(unit "") = 0.01 "";
    parameter Real elmt_v2_elmt_k2b(unit "") = 0.1 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_v13(unit = "") "binding_of_Shc_to_RP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v13_elmt_k13b(unit "") = 0.6 "";
    parameter Real elmt_v13_elmt_k13f(unit "") = 0.09 "";
    Real elmt_reactant31 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_v12(unit = "") "dissociation_of_GS";
    parameter Real elmt_v12_elmt_k12b(unit "") = 1.0E-4 "";
    parameter Real elmt_v12_elmt_k12f(unit "") = 0.0015 "";
    Real elmt_product30 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_v11(unit = "") "dissociation_of_RGS";
    parameter Real elmt_v11_elmt_k11f(unit "") = 0.03 "";
    parameter Real elmt_v11_elmt_k11b(unit "") = 0.0045 "";
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_product26 "";
    Real elmt_v10(unit = "") "binding_of_SOS_to_RG";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v10_elmt_k10f(unit "") = 0.01 "";
    parameter Real elmt_v10_elmt_k10b(unit "") = 0.06 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_reactant23 "";
    Real elmt_v19(unit = "") "binding_of_SOS_to_RShG";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v19_elmt_k19f(unit "") = 0.01 "";
    parameter Real elmt_v19_elmt_k19b(unit "") = 0.0214 "";
    Real elmt_reactant47 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_v18(unit = "") "dissociation_of_RShG";
    parameter Real elmt_v18_elmt_k18f(unit "") = 0.3 "";
    parameter Real elmt_v18_elmt_k18b(unit "") = 9.0E-4 "";
    Real elmt_product45 "";
    Real elmt_product46 "";
    Real elmt_reactant44 "";
    Real elmt_v17(unit = "") "binding_of_Grb2_to_RShP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v17_elmt_k17f(unit "") = 0.003 "";
    parameter Real elmt_v17_elmt_k17b(unit "") = 0.1 "";
    Real elmt_reactant41 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_v16(unit = "") "dephosphorylation_of_ShP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v16_elmt_K16(unit "") = 340.0 "";
    parameter Real elmt_v16_elmt_V16(unit "") = 1.7 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_v15(unit = "") "dissociation_of_RShp";
    parameter Real elmt_v15_elmt_k15b(unit "") = 9.0E-4 "";
    parameter Real elmt_v15_elmt_k15f(unit "") = 0.3 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_product37 "";
    Real elmt_v14(unit = "") "phosphorylation_of_RSh";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v14_elmt_k14b(unit "") = 0.06 "";
    parameter Real elmt_v14_elmt_k14f(unit "") = 6.0 "";
    Real elmt_product35 "";
    Real elmt_reactant34 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_product24 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product45 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product38 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product55 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product49 = 1.0;
        elmt_product46 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product61 = 1.0;
        elmt_product60 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 2.0;
        elmt_reactant31 = 1.0;
        elmt_product66 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product21 = 1.0;
        elmt_product64 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product2 = 1.0;
        elmt_product16 = 1.0;
        elmt_product15 = 1.0;
        elmt_product58 = 1.0;
        elmt_product13 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_v24 = (((elmt_v24_elmt_k24f * elmt_RShP * elmt_GS) - (elmt_v24_elmt_k24b * elmt_RShGS)) * elmt_compartment);
        elmt_v23 = (((elmt_v23_elmt_k23f * elmt_ShGS) - (elmt_v23_elmt_k23b * elmt_ShP * elmt_GS)) * elmt_compartment);
        elmt_v9 = (((elmt_v9_elmt_k9f * elmt_RP * elmt_Grb) - (elmt_v9_elmt_k9b * elmt_RG)) * elmt_compartment);
        elmt_v22 = (((elmt_v22_elmt_k22f * elmt_ShG * elmt_SOS) - (elmt_v22_elmt_k22b * elmt_ShGS)) * elmt_compartment);
        elmt_v21 = (((elmt_v21_elmt_k21f * elmt_ShP * elmt_Grb) - (elmt_v21_elmt_k21b * elmt_ShG)) * elmt_compartment);
        elmt_v7 = (((elmt_v7_elmt_k7f * elmt_RPLCgP) - (elmt_v7_elmt_k7b * elmt_RP * elmt_PLCgP)) * elmt_compartment);
        elmt_v20 = (((elmt_v20_elmt_k20f * elmt_RShGS) - (elmt_v20_elmt_k20b * elmt_ShGS * elmt_RP)) * elmt_compartment);
        elmt_v8 = (((elmt_v8_elmt_V8 * elmt_PLCgP) / (elmt_v8_elmt_K8 + elmt_PLCgP)) * elmt_compartment);
        elmt_v5 = (((elmt_v5_elmt_k5f * elmt_RP * elmt_PLCg) - (elmt_v5_elmt_k5b * elmt_RPLCg)) * elmt_compartment);
        elmt_v6 = (((elmt_v6_elmt_k6f * elmt_RPLCg) - (elmt_v6_elmt_k6b * elmt_RPLCgP)) * elmt_compartment);
        elmt_v25 = (((elmt_v25_elmt_k25f * elmt_PLCgP) - (elmt_v25_elmt_k25b * elmt_PLCgl)) * elmt_compartment);
        elmt_v3 = (((elmt_v3_elmt_k3f * elmt_R2) - (elmt_v3_elmt_k3b * elmt_RP)) * elmt_compartment);
        elmt_v4 = (((elmt_v4_elmt_V4 * elmt_RP) / (elmt_v4_elmt_K4 + elmt_RP)) * elmt_compartment);
        elmt_v1 = (((elmt_v1_elmt_k1f * elmt_R * elmt_EGF) - (elmt_v1_elmt_k1b * elmt_Ra)) * elmt_compartment);
        elmt_v2 = (((elmt_v2_elmt_k2f * elmt_Ra * elmt_Ra) - (elmt_v2_elmt_k2b * elmt_R2)) * elmt_compartment);
        elmt_v13 = (((elmt_v13_elmt_k13f * elmt_RP * elmt_Shc) - (elmt_v13_elmt_k13b * elmt_RSh)) * elmt_compartment);
        elmt_v12 = (((elmt_v12_elmt_k12f * elmt_GS) - (elmt_v12_elmt_k12b * elmt_Grb * elmt_SOS)) * elmt_compartment);
        elmt_v11 = (((elmt_v11_elmt_k11f * elmt_RGS) - (elmt_v11_elmt_k11b * elmt_RP * elmt_GS)) * elmt_compartment);
        elmt_v10 = (((elmt_v10_elmt_k10f * elmt_RG * elmt_SOS) - (elmt_v10_elmt_k10b * elmt_RGS)) * elmt_compartment);
        elmt_v19 = (((elmt_v19_elmt_k19f * elmt_RShG * elmt_SOS) - (elmt_v19_elmt_k19b * elmt_RShGS)) * elmt_compartment);
        elmt_v18 = (((elmt_v18_elmt_k18f * elmt_RShG) - (elmt_v18_elmt_k18b * elmt_RP * elmt_ShG)) * elmt_compartment);
        elmt_v17 = (((elmt_v17_elmt_k17f * elmt_RShP * elmt_Grb) - (elmt_v17_elmt_k17b * elmt_RShG)) * elmt_compartment);
        elmt_v16 = (((elmt_v16_elmt_V16 * elmt_ShP) / (elmt_v16_elmt_K16 + elmt_ShP)) * elmt_compartment);
        elmt_v15 = (((elmt_v15_elmt_k15f * elmt_RShP) - (elmt_v15_elmt_k15b * elmt_ShP * elmt_RP)) * elmt_compartment);
        elmt_v14 = (((elmt_v14_elmt_k14f * elmt_RSh) - (elmt_v14_elmt_k14b * elmt_RShP)) * elmt_compartment);
        der(elmt_product30) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_product24) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product45) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product38) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product55) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product49) = 0;
        der(elmt_product46) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product61) = 0;
        der(elmt_product60) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product21) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product2) = 0;
        der(elmt_product16) = 0;
        der(elmt_product15) = 0;
        der(elmt_product58) = 0;
        der(elmt_product13) = 0;
        der(elmt_product18) = 0;

end Reactions;
