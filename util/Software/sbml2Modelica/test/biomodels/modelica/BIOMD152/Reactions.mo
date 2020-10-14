within BIOMD152;
class Reactions

    input Real elmt_D75_137;
    input Real elmt_cAMP_R2C2;
    input Real elmt_D34_75_137_PP2AP;
    input Real elmt_D75_137_PKA;
    input Real elmt_D34_75_137_PP2C;
    input Real elmt_D34_75_137_PP2B;
    input Real elmt_cAMP;
    input Real elmt_D34_75_137;
    input Real elmt_D34_75_CK1;
    input Real elmt_Ca;
    input Real elmt_D75_PP2A;
    input Real elmt_k57;
    input Real elmt_D75_137_PP2AP;
    input Real elmt_CK1;
    input Real elmt_D34_CDK5;
    input Real elmt_PDE;
    input Real elmt_D_PKA;
    input Real elmt_D34_137;
    input Real elmt_D;
    input Real elmt_CDK5;
    input Real elmt_D34_75_PP2B;
    input Real elmt_D75_137_PP2A;
    input Real elmt_D34_75_PP2A;
    input Real elmt_cAMP_PDE;
    input Real elmt_PP2A;
    input Real elmt_PP2B;
    input Real elmt_PP2C;
    input Real elmt_D34_137_PP2C;
    input Real elmt_cAMP2_R2C2;
    input Real elmt_D34_137_PP2B;
    input Real elmt_D75_PP2AP;
    input Real elmt_D75_137_PP2C;
    input Real elmt_Spine;
    input Real elmt_D137_PKA;
    input Real elmt_D34_PP2B;
    input Real elmt_D75CK1;
    input Real elmt_PP2AP;
    input Real elmt_PP2Binactive;
    input Real elmt_cAMP3_R2C2;
    input Real elmt_D34_75;
    input Real elmt_D137_CDK5;
    input Real elmt_D_CK1;
    input Real elmt_D34_75_134_PP2A;
    input Real elmt_PP2A_PKA;
    input Real elmt_CK1P_PP2B;
    input Real elmt_cAMP4_R2C2;
    input Real elmt_D34_137_CDK5;
    input Real elmt_R2C2;
    input Real elmt_PDE_PKA;
    input Real elmt_D75_PKA;
    input Real elmt_cAMP4_R2C;
    input Real elmt_D34_CK1;
    input Real elmt_cAMP_PDEP;
    input Real elmt_D137_PP2C;
    input Real elmt_D_CDK5;
    input Real elmt_cAMP4_R2;
    input Real elmt_PDEP;
    input Real elmt_PP2BinactiveCa2;
    input Real elmt_CK1P;
    input Real elmt_D137;
    input Real elmt_D34;
    input Real elmt_PKA;
    input Real elmt_D75;
    input Real elmt_D34_75_PP2AP;

    Real elmt_vcat30(unit = "") "CK1_phosphorylation";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat30_elmt_kcat30(unit "") = 1.0 "";
    Real elmt_reactant261 "";
    Real elmt_product262 "";
    Real elmt_vcat31(unit = "") "PDE_phospho_by_PKA";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat31_elmt_kcat31(unit "") = 9.0 "";
    Real elmt_product267 "";
    Real elmt_product268 "";
    Real elmt_reactant266 "";
    Real elmt_von17(unit = "") "D34:75_PP2B_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von17_elmt_kon17(unit "") = 1.0E7 "";
    Real elmt_product146 "";
    Real elmt_reactant145 "";
    Real elmt_reactant144 "";
    Real elmt_von18(unit = "") "D34:137_CDK5_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von18_elmt_kon18(unit "") = 5600000.0 "";
    Real elmt_reactant121 "";
    Real elmt_reactant120 "";
    Real elmt_product122 "";
    Real elmt_von15(unit = "") "D34:75_PP2A_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von15_elmt_kon15(unit "") = 3800000.0 "";
    Real elmt_reactant172 "";
    Real elmt_reactant171 "";
    Real elmt_product173 "";
    Real elmt_von16(unit = "") "D34:75_PP2AP_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von16_elmt_kon16(unit "") = 1.7E7 "";
    Real elmt_reactant198 "";
    Real elmt_product200 "";
    Real elmt_reactant199 "";
    Real elmt_von19(unit = "") "D34:137_PP2B_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von19_elmt_kon19(unit "") = 75000.0 "";
    Real elmt_reactant154 "";
    Real elmt_reactant153 "";
    Real elmt_product155 "";
    Real elmt_von10(unit = "") "D75_PP2AP_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von10_elmt_kon10(unit "") = 1.7E7 "";
    Real elmt_reactant63 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_von13(unit = "") "D137_PP2C_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von13_elmt_kon13(unit "") = 7500000.0 "";
    Real elmt_reactant96 "";
    Real elmt_reactant97 "";
    Real elmt_product98 "";
    Real elmt_vcat34(unit = "") "PP2AP_dephospho";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat34_elmt_kcat34(unit "") = 5.0 "";
    Real elmt_reactant283 "";
    Real elmt_product284 "";
    Real elmt_von14(unit = "") "D34:75_CK1_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von14_elmt_kon14(unit "") = 4400000.0 "";
    Real elmt_reactant118 "";
    Real elmt_reactant117 "";
    Real elmt_product119 "";
    Real elmt_von11(unit = "") "D137_CDK5_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von11_elmt_kon11(unit "") = 5600000.0 "";
    Real elmt_reactant90 "";
    Real elmt_reactant91 "";
    Real elmt_product92 "";
    Real elmt_vcat32(unit = "") "PDEP_dephospho";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat32_elmt_kcat32(unit "") = 0.1 "";
    Real elmt_reactant272 "";
    Real elmt_product273 "";
    Real elmt_von12(unit = "") "D137_PKA_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von12_elmt_kon12(unit "") = 5600000.0 "";
    Real elmt_reactant94 "";
    Real elmt_product95 "";
    Real elmt_reactant93 "";
    Real elmt_vcat33(unit = "") "PP2A_phospho_by_PKA";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat33_elmt_kcat33(unit "") = 4.0 "";
    Real elmt_reactant280 "";
    Real elmt_product281 "";
    Real elmt_product282 "";
    Real elmt_von28(unit = "") "D34:75:137_PP2C_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von28_elmt_kon28(unit "") = 7500000.0 "";
    Real elmt_product245 "";
    Real elmt_reactant244 "";
    Real elmt_reactant243 "";
    Real elmt_von29(unit = "") "CK1P_PP2B_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von29_elmt_kon29(unit "") = 3.0E7 "";
    Real elmt_reactant253 "";
    Real elmt_reactant252 "";
    Real elmt_product254 "";
    Real elmt_von26(unit = "") "D34:75:137_PP2AP_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von26_elmt_kon26(unit "") = 1.7E7 "";
    Real elmt_reactant220 "";
    Real elmt_reactant219 "";
    Real elmt_product221 "";
    Real elmt_voff45(unit = "") "cAMP_PDEP_unbinding";
    parameter Real elmt_voff45_elmt_koff45(unit "") = 80.0 "";
    Real elmt_product346 "";
    Real elmt_reactant345 "";
    Real elmt_product347 "";
    Real elmt_von27(unit = "") "D34:75:137_PP2B_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von27_elmt_kon27(unit "") = 75000.0 "";
    Real elmt_reactant163 "";
    Real elmt_reactant162 "";
    Real elmt_product164 "";
    Real elmt_voff44(unit = "") "cAMP_PDE_unbinding";
    parameter Real elmt_voff44_elmt_koff44(unit "") = 40.0 "";
    Real elmt_reactant336 "";
    Real elmt_product337 "";
    Real elmt_product338 "";
    Real elmt_von20(unit = "") "D34:137_PP2C_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von20_elmt_kon20(unit "") = 7500000.0 "";
    Real elmt_reactant226 "";
    Real elmt_reactant225 "";
    Real elmt_product227 "";
    Real elmt_von21(unit = "") "D75:137_PKA_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von21_elmt_kon21(unit "") = 5600000.0 "";
    Real elmt_product137 "";
    Real elmt_reactant136 "";
    Real elmt_reactant135 "";
    Real elmt_von24(unit = "") "D75:137_PP2C_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von24_elmt_kon24(unit "") = 7500000.0 "";
    Real elmt_product236 "";
    Real elmt_reactant235 "";
    Real elmt_reactant234 "";
    Real elmt_vcat45(unit = "") "cAMP_PDEP_degradation";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat45_elmt_kcat45(unit "") = 20.0 "";
    Real elmt_product350 "";
    Real elmt_reactant348 "";
    Real elmt_product349 "";
    Real elmt_von25(unit = "") "D34:75:137_PP2A_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von25_elmt_kon25(unit "") = 3800000.0 "";
    Real elmt_reactant190 "";
    Real elmt_reactant189 "";
    Real elmt_product191 "";
    Real elmt_von22(unit = "") "D75:137_PP2A_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von22_elmt_kon22(unit "") = 3800000.0 "";
    Real elmt_reactant181 "";
    Real elmt_reactant180 "";
    Real elmt_product182 "";
    Real elmt_voff41(unit = "") "cAMP4_R2C2_PKA_unbinding";
    parameter Real elmt_voff41_elmt_koff41(unit "") = 60.0 "";
    Real elmt_reactant324 "";
    Real elmt_product326 "";
    Real elmt_product325 "";
    Real elmt_von23(unit = "") "D75:137_PP2AP_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von23_elmt_kon23(unit "") = 1.7E7 "";
    Real elmt_reactant208 "";
    Real elmt_reactant207 "";
    Real elmt_product209 "";
    Real elmt_voff40(unit = "") "cAMP4_R2C2_unbinding";
    parameter Real elmt_voff40_elmt_koff40(unit "") = 32.5 "";
    Real elmt_reactant318 "";
    Real elmt_product320 "";
    Real elmt_product319 "";
    Real elmt_vcat44(unit = "") "cAMP_PDE_degradation";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat44_elmt_kcat44(unit "") = 10.0 "";
    Real elmt_product340 "";
    Real elmt_reactant339 "";
    Real elmt_product341 "";
    Real elmt_voff39(unit = "") "cAMP3_R2C2_unbinding";
    parameter Real elmt_voff39_elmt_koff39(unit "") = 110.0 "";
    Real elmt_reactant315 "";
    Real elmt_product317 "";
    Real elmt_product316 "";
    Real elmt_voff31(unit = "") "PDE_PKA_unbinding";
    parameter Real elmt_voff31_elmt_koff31(unit "") = 36.0 "";
    Real elmt_product270 "";
    Real elmt_reactant269 "";
    Real elmt_product271 "";
    Real elmt_voff33(unit = "") "PP2A_PKA_unbinding";
    parameter Real elmt_voff33_elmt_koff33(unit "") = 16.0 "";
    Real elmt_product278 "";
    Real elmt_product279 "";
    Real elmt_reactant277 "";
    Real elmt_voff36(unit = "") "PP2B_inactivation";
    parameter Real elmt_voff36_elmt_koff36(unit "") = 1.0 "";
    Real elmt_reactant294 "";
    Real elmt_product296 "";
    Real elmt_product295 "";
    Real elmt_voff35(unit = "") "PP2BinactiveCa2_Ca_unbinding";
    parameter Real elmt_voff35_elmt_koff35(unit "") = 1.0 "";
    Real elmt_reactant291 "";
    Real elmt_product292 "";
    Real elmt_product293 "";
    Real elmt_vcat18(unit = "") "D34:137_phospho_by_CDK5_on_75";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat18_elmt_kcat18(unit "") = 3.0 "";
    Real elmt_reactant132 "";
    Real elmt_product134 "";
    Real elmt_product133 "";
    Real elmt_voff38(unit = "") "cAMP2_R2C2_unbinding";
    parameter Real elmt_voff38_elmt_koff38(unit "") = 33.0 "";
    Real elmt_product313 "";
    Real elmt_reactant312 "";
    Real elmt_product314 "";
    Real elmt_vcat19(unit = "") "D34:137_dephospho_by_PP2B_on_34";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat19_elmt_kcat19(unit "") = 0.03 "";
    Real elmt_product157 "";
    Real elmt_product158 "";
    Real elmt_reactant156 "";
    Real elmt_voff37(unit = "") "cAMP_R2C2_unbinding";
    parameter Real elmt_voff37_elmt_koff37(unit "") = 33.0 "";
    Real elmt_product311 "";
    Real elmt_product310 "";
    Real elmt_reactant309 "";
    Real elmt_vcat16(unit = "") "D34:75_dephospho_by_PP2AP_on_75";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat16_elmt_kcat16(unit "") = 24.0 "";
    Real elmt_product203 "";
    Real elmt_product202 "";
    Real elmt_reactant201 "";
    Real elmt_vcat17(unit = "") "D34:75_dephopsho_by_PP2B_on_34";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat17_elmt_kcat17(unit "") = 4.0 "";
    Real elmt_reactant150 "";
    Real elmt_product152 "";
    Real elmt_product151 "";
    Real elmt_vcat14(unit = "") "D34:75_phospho_by_CK1_on_137";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat14_elmt_kcat14(unit "") = 3.0 "";
    Real elmt_product131 "";
    Real elmt_product130 "";
    Real elmt_reactant129 "";
    Real elmt_vcat15(unit = "") "D34:75_dephospho_by_PP2A_on_75";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat15_elmt_kcat15(unit "") = 10.0 "";
    Real elmt_reactant174 "";
    Real elmt_product175 "";
    Real elmt_product176 "";
    Real elmt_vcat12(unit = "") "D137_phospho_by_PKA_on_34";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat12_elmt_kcat12(unit "") = 2.7 "";
    Real elmt_reactant108 "";
    Real elmt_product110 "";
    Real elmt_product109 "";
    Real elmt_vcat13(unit = "") "D137_dephospho_by_PP2C";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat13_elmt_kcat13(unit "") = 3.0 "";
    Real elmt_product113 "";
    Real elmt_product112 "";
    Real elmt_reactant111 "";
    Real elmt_vcat10(unit = "") "D75_dephospho_by_PP2AP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat10_elmt_kcat10(unit "") = 24.0 "";
    Real elmt_product85 "";
    Real elmt_reactant84 "";
    Real elmt_product86 "";
    Real elmt_vcat11(unit = "") "D137_Phospho_by_CDK5_on_75";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat11_elmt_kcat11(unit "") = 3.0 "";
    Real elmt_product104 "";
    Real elmt_product103 "";
    Real elmt_reactant102 "";
    Real elmt_vcat20(unit = "") "D34:137_dephospho_by_PP2C_on_137";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat20_elmt_kcat20(unit "") = 3.0 "";
    Real elmt_product230 "";
    Real elmt_reactant228 "";
    Real elmt_product229 "";
    Real elmt_von2(unit = "") "DCDK1_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von2_elmt_kon2(unit "") = 4400000.0 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_von3(unit = "") "D_PKA_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von3_elmt_kon3(unit "") = 5600000.0 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_von1(unit = "") "D_CDK5_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von1_elmt_kon1(unit "") = 5600000.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_voff29(unit = "") "CK1P_PP2B_unbinding";
    parameter Real elmt_voff29_elmt_koff29(unit "") = 24.0 "";
    Real elmt_product256 "";
    Real elmt_product257 "";
    Real elmt_reactant255 "";
    Real elmt_voff28(unit = "") "D34:75:137_PP2C_unbinding";
    parameter Real elmt_voff28_elmt_koff28(unit "") = 12.0 "";
    Real elmt_product251 "";
    Real elmt_reactant249 "";
    Real elmt_product250 "";
    Real elmt_vcat6(unit = "") "D34_Dephospho_by_PP2B";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat6_elmt_kcat6(unit "") = 4.0 "";
    Real elmt_product50 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_voff21(unit = "") "D75:137_PKA_unbinding";
    parameter Real elmt_voff21_elmt_koff21(unit "") = 10.8 "";
    Real elmt_reactant141 "";
    Real elmt_product142 "";
    Real elmt_product143 "";
    Real elmt_vcat5(unit = "") "D34_Phospho_by_CK1_on_137";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat5_elmt_kcat5(unit "") = 3.0 "";
    Real elmt_product47 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_voff20(unit = "") "D34:137_PP2C_unbinding";
    parameter Real elmt_voff20_elmt_koff20(unit "") = 12.0 "";
    Real elmt_reactant231 "";
    Real elmt_product233 "";
    Real elmt_product232 "";
    Real elmt_vcat8(unit = "") "D75_Phospho_by_PKA_on_34";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat8_elmt_kcat8(unit "") = 0.0 "";
    Real elmt_reactant72 "";
    Real elmt_product74 "";
    Real elmt_product73 "";
    Real elmt_voff23(unit = "") "D75:137_PP2AP_unbinding";
    parameter Real elmt_voff23_elmt_koff23(unit "") = 40.0 "";
    Real elmt_product214 "";
    Real elmt_reactant213 "";
    Real elmt_product215 "";
    Real elmt_vcat7(unit = "") "D75_Phospho_by_CK1_on_137";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat7_elmt_kcat7(unit "") = 3.0 "";
    Real elmt_product71 "";
    Real elmt_reactant69 "";
    Real elmt_product70 "";
    Real elmt_voff22(unit = "") "D75:137_PP2A_unbinding";
    parameter Real elmt_voff22_elmt_koff22(unit "") = 24.0 "";
    Real elmt_reactant186 "";
    Real elmt_product188 "";
    Real elmt_product187 "";
    Real elmt_vcat2(unit = "") "D_Phospho_by_CK1_on_137";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat2_elmt_kcat2(unit "") = 3.0 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_voff25(unit = "") "D34:75:137_PP2A_unbinding";
    parameter Real elmt_voff25_elmt_koff25(unit "") = 24.0 "";
    Real elmt_reactant195 "";
    Real elmt_product197 "";
    Real elmt_product196 "";
    Real elmt_vcat1(unit = "") "DPhospho_by_CDK5_on_75";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat1_elmt_kcat1(unit "") = 3.0 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_voff24(unit = "") "D75:137_PP2C_unbinding";
    parameter Real elmt_voff24_elmt_koff24(unit "") = 12.0 "";
    Real elmt_reactant240 "";
    Real elmt_product241 "";
    Real elmt_product242 "";
    Real elmt_vcat4(unit = "") "D34_Phospho_by_CDK5_on_75";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat4_elmt_kcat4(unit "") = 3.0 "";
    Real elmt_product41 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_voff27(unit = "") "D34:75:137_PP2B_unbinding";
    parameter Real elmt_voff27_elmt_koff27(unit "") = 120.0 "";
    Real elmt_reactant165 "";
    Real elmt_product167 "";
    Real elmt_product166 "";
    Real elmt_vcat29(unit = "") "CK1P_dephospho_by_PP2B";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat29_elmt_kcat29(unit "") = 6.0 "";
    Real elmt_reactant258 "";
    Real elmt_product260 "";
    Real elmt_product259 "";
    Real elmt_vcat3(unit = "") "D_Phospho_by_PKA_on_34";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat3_elmt_kcat3(unit "") = 2.7 "";
    Real elmt_product26 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_voff26(unit = "") "D34:75:137_PP2AP_unbinding";
    parameter Real elmt_voff26_elmt_koff26(unit "") = 40.0 "";
    Real elmt_product223 "";
    Real elmt_product224 "";
    Real elmt_reactant222 "";
    Real elmt_von6(unit = "") "D34_PP2B_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von6_elmt_kon6(unit "") = 1.0E7 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_reactant34 "";
    Real elmt_vcat27(unit = "") "D34:75:137_dephospho_by_PP2B_on_34";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat27_elmt_kcat27(unit "") = 0.03 "";
    Real elmt_product169 "";
    Real elmt_product170 "";
    Real elmt_reactant168 "";
    Real elmt_von7(unit = "") "D75_CK1_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von7_elmt_kon7(unit "") = 4400000.0 "";
    Real elmt_product56 "";
    Real elmt_reactant54 "";
    Real elmt_reactant55 "";
    Real elmt_vcat28(unit = "") "D34:75:137_dephospho_by_PP2C_on_137";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat28_elmt_kcat28(unit "") = 3.0 "";
    Real elmt_product247 "";
    Real elmt_reactant246 "";
    Real elmt_product248 "";
    Real elmt_von4(unit = "") "D34_CDK5_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von4_elmt_kon4(unit "") = 5600000.0 "";
    Real elmt_reactant27 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_vcat25(unit = "") "D34:75:137_dephospho_by_PP2A_on_75";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat25_elmt_kcat25(unit "") = 10.0 "";
    Real elmt_reactant192 "";
    Real elmt_product193 "";
    Real elmt_product194 "";
    Real elmt_von5(unit = "") "D34_CK1_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von5_elmt_kon5(unit "") = 4400000.0 "";
    Real elmt_reactant30 "";
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_vcat26(unit = "") "D34:75:137_dephospho_by_PP2AP_on 75";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat26_elmt_kcat26(unit "") = 24.0 "";
    Real elmt_reactant216 "";
    Real elmt_product218 "";
    Real elmt_product217 "";
    Real elmt_vcat23(unit = "") "D75:137_dephospho_by_PP2AP_on_75";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat23_elmt_kcat23(unit "") = 24.0 "";
    Real elmt_product212 "";
    Real elmt_product211 "";
    Real elmt_reactant210 "";
    Real elmt_vcat9(unit = "") "D75_dephospho_by_PP2A";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat9_elmt_kcat9(unit "") = 10.0 "";
    Real elmt_product79 "";
    Real elmt_product80 "";
    Real elmt_reactant78 "";
    Real elmt_vcat24(unit = "") "D75:137_dephospho_by_PP2C_137";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat24_elmt_kcat24(unit "") = 3.0 "";
    Real elmt_reactant237 "";
    Real elmt_product238 "";
    Real elmt_product239 "";
    Real elmt_von8(unit = "") "D75_PKA_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von8_elmt_kon8(unit "") = 5600000.0 "";
    Real elmt_reactant58 "";
    Real elmt_product59 "";
    Real elmt_reactant57 "";
    Real elmt_vcat21(unit = "") "D75:137_phospho_by_PKA_on_34";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat21_elmt_kcat21(unit "") = 0.0 "";
    Real elmt_reactant138 "";
    Real elmt_product140 "";
    Real elmt_product139 "";
    Real elmt_von9(unit = "") "D75_PP2A_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von9_elmt_kon9(unit "") = 3800000.0 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_reactant60 "";
    Real elmt_vcat22(unit = "") "D75:137_dephospho_by_PP2A_on_75";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_vcat22_elmt_kcat22(unit "") = 10.0 "";
    Real elmt_reactant183 "";
    Real elmt_product185 "";
    Real elmt_product184 "";
    Real elmt_voff18(unit = "") "D34:137_CDK5_unbinding";
    parameter Real elmt_voff18_elmt_koff18(unit "") = 12.0 "";
    Real elmt_product124 "";
    Real elmt_product125 "";
    Real elmt_reactant123 "";
    Real elmt_voff17(unit = "") "D34:75_PP2B_unbinding";
    parameter Real elmt_voff17_elmt_koff17(unit "") = 1600.0 "";
    Real elmt_product148 "";
    Real elmt_reactant147 "";
    Real elmt_product149 "";
    Real elmt_voff19(unit = "") "D34:137_PP2B_unbinding";
    parameter Real elmt_voff19_elmt_koff19(unit "") = 0.12 "";
    Real elmt_product160 "";
    Real elmt_reactant159 "";
    Real elmt_product161 "";
    Real elmt_voff10(unit = "") "D75_PP2AP_unbinding";
    parameter Real elmt_voff10_elmt_koff10(unit "") = 40.0 "";
    Real elmt_product89 "";
    Real elmt_product88 "";
    Real elmt_reactant87 "";
    Real elmt_voff12(unit = "") "D137_PKA_unbinding";
    parameter Real elmt_voff12_elmt_koff12(unit "") = 10.8 "";
    Real elmt_reactant105 "";
    Real elmt_product106 "";
    Real elmt_product107 "";
    Real elmt_voff11(unit = "") "D137_CDK5_unbinding";
    parameter Real elmt_voff11_elmt_koff11(unit "") = 12.0 "";
    Real elmt_product101 "";
    Real elmt_product100 "";
    Real elmt_reactant99 "";
    Real elmt_voff14(unit = "") "D34:75_CK1_unbinding";
    parameter Real elmt_voff14_elmt_koff14(unit "") = 12.0 "";
    Real elmt_reactant126 "";
    Real elmt_product128 "";
    Real elmt_product127 "";
    Real elmt_voff13(unit = "") "D137_PP2C_unbinding";
    parameter Real elmt_voff13_elmt_koff13(unit "") = 12.0 "";
    Real elmt_product115 "";
    Real elmt_reactant114 "";
    Real elmt_product116 "";
    Real elmt_voff16(unit = "") "D34:75_PP2AP_unbinding";
    parameter Real elmt_voff16_elmt_koff16(unit "") = 40.0 "";
    Real elmt_reactant204 "";
    Real elmt_product205 "";
    Real elmt_product206 "";
    Real elmt_voff15(unit = "") "D34:75_PP2A_unbinding";
    parameter Real elmt_voff15_elmt_koff15(unit "") = 24.0 "";
    Real elmt_product179 "";
    Real elmt_product178 "";
    Real elmt_reactant177 "";
    Real elmt_von39(unit = "") "cAMP2_R2C2_binding_by_cAMP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von39_elmt_kon39(unit "") = 7.5E7 "";
    Real elmt_reactant304 "";
    Real elmt_reactant303 "";
    Real elmt_product305 "";
    Real elmt_von37(unit = "") "R2C2_cAMP_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von37_elmt_kon37(unit "") = 5.4E7 "";
    Real elmt_reactant297 "";
    Real elmt_product299 "";
    Real elmt_reactant298 "";
    Real elmt_von38(unit = "") "cAMP_R2C2_binding_by_cAMP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von38_elmt_kon38(unit "") = 5.4E7 "";
    Real elmt_product302 "";
    Real elmt_reactant301 "";
    Real elmt_reactant300 "";
    Real elmt_von31(unit = "") "PDE_PKA_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von31_elmt_kon31(unit "") = 6000000.0 "";
    Real elmt_reactant264 "";
    Real elmt_reactant263 "";
    Real elmt_product265 "";
    Real elmt_von35(unit = "") "PP2Binactive_Ca_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von35_elmt_kon35(unit "") = 1.0E15 "";
    Real elmt_reactant286 "";
    Real elmt_reactant285 "";
    Real elmt_product287 "";
    Real elmt_von36(unit = "") "PP2B_activation";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von36_elmt_kon36(unit "") = 3.0E15 "";
    Real elmt_reactant289 "";
    Real elmt_reactant288 "";
    Real elmt_product290 "";
    Real elmt_von33(unit = "") "PP2A_PKA_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von33_elmt_kon33(unit "") = 1.0E7 "";
    Real elmt_reactant275 "";
    Real elmt_reactant274 "";
    Real elmt_product276 "";
    Real elmt_v57(unit = "") "Ca_in";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    Real elmt_reactant351 "";
    Real elmt_product352 "";
    Real elmt_v58(unit = "") "Ca_destroy";
    parameter Real elmt_v58_elmt_k58(unit "") = 1.7 "";
    Real elmt_product354 "";
    Real elmt_reactant353 "";
    Real elmt_voff4(unit = "") "D34_CDK5_unbinding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_voff4_elmt_koff4(unit "") = 12.0 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_product37 "";
    Real elmt_voff5(unit = "") "D34_CK1_unbinding";
    parameter Real elmt_voff5_elmt_koff5(unit "") = 12.0 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_product43 "";
    Real elmt_voff2(unit = "") "D_CDK1_unbinding";
    parameter Real elmt_voff2_elmt_koff2(unit "") = 12.0 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_voff3(unit = "") "D_PKA_unbinding";
    parameter Real elmt_voff3_elmt_koff3(unit "") = 10.8 "";
    Real elmt_product23 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_voff8(unit = "") "D75_PKA_unbinding";
    parameter Real elmt_voff8_elmt_koff8(unit "") = 10.8 "";
    Real elmt_reactant75 "";
    Real elmt_product77 "";
    Real elmt_product76 "";
    Real elmt_voff9(unit = "") "D75_PP2A_unbinding";
    parameter Real elmt_voff9_elmt_koff9(unit "") = 24.0 "";
    Real elmt_product83 "";
    Real elmt_product82 "";
    Real elmt_reactant81 "";
    Real elmt_voff6(unit = "") "D34_PP2B_unbinding";
    parameter Real elmt_voff6_elmt_koff6(unit "") = 16.0 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_product53 "";
    Real elmt_voff7(unit = "") "D75_CK1_unbinding";
    parameter Real elmt_voff7_elmt_koff7(unit "") = 12.0 "";
    Real elmt_product67 "";
    Real elmt_product68 "";
    Real elmt_reactant66 "";
    Real elmt_von42(unit = "") "cAMP4_R2_PKA_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von42_elmt_kon42(unit "") = 1.8E7 "";
    Real elmt_reactant328 "";
    Real elmt_reactant327 "";
    Real elmt_product329 "";
    Real elmt_von43(unit = "") "cAMP4_R2C_PKA_unbinding";
    parameter Real elmt_von43_elmt_kon43(unit "") = 60.0 "";
    Real elmt_reactant330 "";
    Real elmt_product332 "";
    Real elmt_product331 "";
    Real elmt_von40(unit = "") "cAMP3_R2C2_binding_by_cAMP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von40_elmt_kon40(unit "") = 7.5E7 "";
    Real elmt_reactant307 "";
    Real elmt_reactant306 "";
    Real elmt_product308 "";
    Real elmt_von41(unit = "") "cAMP4_R2C_PKA_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von41_elmt_kon41(unit "") = 1.8E7 "";
    Real elmt_product323 "";
    Real elmt_reactant322 "";
    Real elmt_reactant321 "";
    Real elmt_voff1(unit = "") "D_CDK5_unbinding";
    parameter Real elmt_voff1_elmt_koff1(unit "") = 12.0 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_von44(unit = "") "cAMP_PDE_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von44_elmt_kon44(unit "") = 2520000.0 "";
    Real elmt_product335 "";
    Real elmt_reactant334 "";
    Real elmt_reactant333 "";
    Real elmt_von45(unit = "") "cAMP_PDEP_binding";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_von45_elmt_kon45(unit "") = 5040000.0 "";
    Real elmt_product344 "";
    Real elmt_reactant343 "";
    Real elmt_reactant342 "";


    initial equation
        elmt_reactant42 = 1.0;
        elmt_reactant190 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant198 = 1.0;
        elmt_product212 = 1.0;
        elmt_product211 = 1.0;
        elmt_product332 = 1.0;
        elmt_product214 = 1.0;
        elmt_product335 = 1.0;
        elmt_reactant195 = 1.0;
        elmt_reactant192 = 1.0;
        elmt_product331 = 1.0;
        elmt_product337 = 1.0;
        elmt_product215 = 1.0;
        elmt_product218 = 1.0;
        elmt_reactant199 = 1.0;
        elmt_product338 = 1.0;
        elmt_product217 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product223 = 1.0;
        elmt_product344 = 1.0;
        elmt_product101 = 1.0;
        elmt_product346 = 1.0;
        elmt_product104 = 1.0;
        elmt_product103 = 1.0;
        elmt_product224 = 1.0;
        elmt_product340 = 1.0;
        elmt_product221 = 1.0;
        elmt_product100 = 1.0;
        elmt_product341 = 1.0;
        elmt_product109 = 1.0;
        elmt_product227 = 1.0;
        elmt_product106 = 1.0;
        elmt_product347 = 1.0;
        elmt_product229 = 1.0;
        elmt_product349 = 1.0;
        elmt_product107 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_product311 = 1.0;
        elmt_reactant297 = 1.0;
        elmt_product310 = 1.0;
        elmt_product313 = 1.0;
        elmt_reactant174 = 1.0;
        elmt_reactant294 = 1.0;
        elmt_reactant172 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant171 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_reactant291 = 1.0;
        elmt_product319 = 1.0;
        elmt_product314 = 1.0;
        elmt_product317 = 1.0;
        elmt_product316 = 1.0;
        elmt_reactant177 = 1.0;
        elmt_reactant298 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product23 = 1.0;
        elmt_product22 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product200 = 1.0;
        elmt_reactant186 = 1.0;
        elmt_product203 = 1.0;
        elmt_product202 = 1.0;
        elmt_product323 = 1.0;
        elmt_reactant183 = 1.0;
        elmt_reactant181 = 1.0;
        elmt_product320 = 1.0;
        elmt_reactant180 = 1.0;
        elmt_product209 = 1.0;
        elmt_product16 = 1.0;
        elmt_product329 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product326 = 1.0;
        elmt_product205 = 1.0;
        elmt_product325 = 1.0;
        elmt_reactant189 = 1.0;
        elmt_product17 = 1.0;
        elmt_product206 = 1.0;
        elmt_reactant154 = 1.0;
        elmt_reactant275 = 1.0;
        elmt_reactant153 = 1.0;
        elmt_reactant274 = 1.0;
        elmt_reactant272 = 1.0;
        elmt_reactant150 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_reactant159 = 1.0;
        elmt_reactant277 = 1.0;
        elmt_reactant156 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant165 = 1.0;
        elmt_reactant286 = 2.0;
        elmt_reactant285 = 1.0;
        elmt_reactant163 = 1.0;
        elmt_product302 = 1.0;
        elmt_reactant283 = 1.0;
        elmt_reactant162 = 1.0;
        elmt_reactant280 = 1.0;
        elmt_product308 = 1.0;
        elmt_reactant168 = 1.0;
        elmt_reactant289 = 2.0;
        elmt_reactant288 = 1.0;
        elmt_product305 = 1.0;
        elmt_product193 = 1.0;
        elmt_product194 = 1.0;
        elmt_product191 = 1.0;
        elmt_reactant253 = 1.0;
        elmt_reactant132 = 1.0;
        elmt_reactant252 = 1.0;
        elmt_product197 = 1.0;
        elmt_product196 = 1.0;
        elmt_reactant138 = 1.0;
        elmt_reactant258 = 1.0;
        elmt_reactant136 = 1.0;
        elmt_reactant135 = 1.0;
        elmt_reactant255 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant264 = 1.0;
        elmt_reactant263 = 1.0;
        elmt_reactant141 = 1.0;
        elmt_reactant261 = 1.0;
        elmt_reactant269 = 1.0;
        elmt_reactant147 = 1.0;
        elmt_reactant266 = 1.0;
        elmt_reactant145 = 1.0;
        elmt_reactant144 = 1.0;
        elmt_product74 = 1.0;
        elmt_product73 = 1.0;
        elmt_product71 = 1.0;
        elmt_product77 = 1.0;
        elmt_product76 = 1.0;
        elmt_reactant108 = 1.0;
        elmt_product292 = 1.0;
        elmt_product170 = 1.0;
        elmt_product173 = 1.0;
        elmt_product293 = 2.0;
        elmt_product70 = 1.0;
        elmt_product290 = 1.0;
        elmt_reactant231 = 1.0;
        elmt_product179 = 1.0;
        elmt_product178 = 1.0;
        elmt_product299 = 1.0;
        elmt_reactant351 = 1.0;
        elmt_product296 = 2.0;
        elmt_product175 = 1.0;
        elmt_product295 = 1.0;
        elmt_product176 = 1.0;
        elmt_reactant118 = 1.0;
        elmt_reactant117 = 1.0;
        elmt_reactant237 = 1.0;
        elmt_product68 = 1.0;
        elmt_reactant235 = 1.0;
        elmt_reactant114 = 1.0;
        elmt_reactant234 = 1.0;
        elmt_reactant111 = 1.0;
        elmt_reactant353 = 1.0;
        elmt_product85 = 1.0;
        elmt_product83 = 1.0;
        elmt_product82 = 1.0;
        elmt_product89 = 1.0;
        elmt_product88 = 1.0;
        elmt_product86 = 1.0;
        elmt_product182 = 1.0;
        elmt_product184 = 1.0;
        elmt_product80 = 1.0;
        elmt_reactant121 = 1.0;
        elmt_reactant120 = 1.0;
        elmt_reactant240 = 1.0;
        elmt_product185 = 1.0;
        elmt_product188 = 1.0;
        elmt_product187 = 1.0;
        elmt_reactant129 = 1.0;
        elmt_reactant249 = 1.0;
        elmt_product79 = 1.0;
        elmt_reactant126 = 1.0;
        elmt_reactant246 = 1.0;
        elmt_reactant244 = 1.0;
        elmt_reactant123 = 1.0;
        elmt_reactant243 = 1.0;
        elmt_product95 = 1.0;
        elmt_product98 = 1.0;
        elmt_reactant208 = 1.0;
        elmt_reactant207 = 1.0;
        elmt_reactant328 = 1.0;
        elmt_product270 = 1.0;
        elmt_product151 = 1.0;
        elmt_product271 = 1.0;
        elmt_product92 = 1.0;
        elmt_product278 = 1.0;
        elmt_product157 = 1.0;
        elmt_reactant330 = 1.0;
        elmt_product279 = 1.0;
        elmt_product158 = 1.0;
        elmt_product273 = 1.0;
        elmt_product152 = 1.0;
        elmt_product155 = 1.0;
        elmt_product276 = 1.0;
        elmt_reactant216 = 1.0;
        elmt_reactant336 = 1.0;
        elmt_reactant213 = 1.0;
        elmt_reactant334 = 1.0;
        elmt_reactant333 = 1.0;
        elmt_reactant210 = 1.0;
        elmt_product8 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant219 = 1.0;
        elmt_reactant339 = 1.0;
        elmt_product281 = 1.0;
        elmt_product160 = 1.0;
        elmt_product282 = 1.0;
        elmt_product161 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant220 = 1.0;
        elmt_product167 = 1.0;
        elmt_product169 = 1.0;
        elmt_product164 = 1.0;
        elmt_product284 = 1.0;
        elmt_product166 = 1.0;
        elmt_product287 = 1.0;
        elmt_reactant228 = 1.0;
        elmt_reactant348 = 1.0;
        elmt_reactant226 = 1.0;
        elmt_reactant105 = 1.0;
        elmt_reactant225 = 1.0;
        elmt_reactant345 = 1.0;
        elmt_reactant102 = 1.0;
        elmt_reactant222 = 1.0;
        elmt_reactant343 = 1.0;
        elmt_reactant342 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_reactant309 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant81 = 1.0;
        elmt_reactant307 = 1.0;
        elmt_reactant306 = 1.0;
        elmt_product250 = 1.0;
        elmt_reactant87 = 1.0;
        elmt_product256 = 1.0;
        elmt_product134 = 1.0;
        elmt_product137 = 1.0;
        elmt_product257 = 1.0;
        elmt_product131 = 1.0;
        elmt_product130 = 1.0;
        elmt_product251 = 1.0;
        elmt_product254 = 1.0;
        elmt_product133 = 1.0;
        elmt_reactant315 = 1.0;
        elmt_product26 = 1.0;
        elmt_product25 = 1.0;
        elmt_reactant312 = 1.0;
        elmt_product139 = 1.0;
        elmt_product259 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_product41 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant96 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_reactant90 = 1.0;
        elmt_reactant91 = 1.0;
        elmt_product44 = 1.0;
        elmt_reactant318 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant93 = 1.0;
        elmt_product140 = 1.0;
        elmt_product260 = 1.0;
        elmt_reactant99 = 1.0;
        elmt_product267 = 1.0;
        elmt_product146 = 1.0;
        elmt_product148 = 1.0;
        elmt_product268 = 1.0;
        elmt_product142 = 1.0;
        elmt_product262 = 1.0;
        elmt_product265 = 1.0;
        elmt_product143 = 1.0;
        elmt_product38 = 1.0;
        elmt_reactant327 = 1.0;
        elmt_product37 = 1.0;
        elmt_reactant204 = 1.0;
        elmt_reactant324 = 1.0;
        elmt_product35 = 1.0;
        elmt_reactant201 = 1.0;
        elmt_product149 = 1.0;
        elmt_reactant322 = 1.0;
        elmt_reactant321 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product56 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_product113 = 1.0;
        elmt_product112 = 1.0;
        elmt_product233 = 1.0;
        elmt_product354 = 1.0;
        elmt_product236 = 1.0;
        elmt_product115 = 1.0;
        elmt_product230 = 1.0;
        elmt_product350 = 1.0;
        elmt_product232 = 1.0;
        elmt_product110 = 1.0;
        elmt_product352 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_product46 = 1.0;
        elmt_product238 = 1.0;
        elmt_product116 = 1.0;
        elmt_product119 = 1.0;
        elmt_product239 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_product67 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_product245 = 1.0;
        elmt_product124 = 1.0;
        elmt_product247 = 1.0;
        elmt_product125 = 1.0;
        elmt_product241 = 1.0;
        elmt_product122 = 1.0;
        elmt_product242 = 1.0;
        elmt_product59 = 1.0;
        elmt_reactant304 = 1.0;
        elmt_reactant303 = 1.0;
        elmt_product128 = 1.0;
        elmt_reactant301 = 1.0;
        elmt_product248 = 1.0;
        elmt_product127 = 1.0;
        elmt_reactant300 = 1.0;


    equation
        elmt_vcat30 = (elmt_Spine * elmt_CK1 * elmt_vcat30_elmt_kcat30);
        elmt_vcat31 = (elmt_Spine * elmt_PDE_PKA * elmt_vcat31_elmt_kcat31);
        elmt_von17 = (elmt_Spine * elmt_D34_75 * elmt_PP2B * elmt_von17_elmt_kon17);
        elmt_von18 = (elmt_Spine * elmt_D34_137 * elmt_CDK5 * elmt_von18_elmt_kon18);
        elmt_von15 = (elmt_Spine * elmt_D34_75 * elmt_PP2A * elmt_von15_elmt_kon15);
        elmt_von16 = (elmt_Spine * elmt_D34_75 * elmt_PP2AP * elmt_von16_elmt_kon16);
        elmt_von19 = (elmt_Spine * elmt_D34_137 * elmt_PP2B * elmt_von19_elmt_kon19);
        elmt_von10 = (elmt_Spine * elmt_D75 * elmt_PP2AP * elmt_von10_elmt_kon10);
        elmt_von13 = (elmt_Spine * elmt_D137 * elmt_PP2C * elmt_von13_elmt_kon13);
        elmt_vcat34 = (elmt_Spine * elmt_PP2AP * elmt_vcat34_elmt_kcat34);
        elmt_von14 = (elmt_Spine * elmt_D34_75 * elmt_CK1 * elmt_von14_elmt_kon14);
        elmt_von11 = (elmt_Spine * elmt_D137 * elmt_CDK5 * elmt_von11_elmt_kon11);
        elmt_vcat32 = (elmt_Spine * elmt_PDEP * elmt_vcat32_elmt_kcat32);
        elmt_von12 = (elmt_Spine * elmt_D137 * elmt_PKA * elmt_von12_elmt_kon12);
        elmt_vcat33 = (elmt_Spine * elmt_PP2A_PKA * elmt_vcat33_elmt_kcat33);
        elmt_von28 = (elmt_Spine * elmt_D34_75_137 * elmt_PP2C * elmt_von28_elmt_kon28);
        elmt_von29 = (elmt_Spine * elmt_CK1P * elmt_PP2B * elmt_von29_elmt_kon29);
        elmt_von26 = (elmt_Spine * elmt_D34_75_137 * elmt_PP2AP * elmt_von26_elmt_kon26);
        elmt_voff45 = (elmt_Spine * elmt_cAMP_PDEP * elmt_voff45_elmt_koff45);
        elmt_von27 = (elmt_Spine * elmt_D34_75_137 * elmt_PP2B * elmt_von27_elmt_kon27);
        elmt_voff44 = (elmt_Spine * elmt_cAMP_PDE * elmt_voff44_elmt_koff44);
        elmt_von20 = (elmt_Spine * elmt_D34_137 * elmt_PP2C * elmt_von20_elmt_kon20);
        elmt_von21 = (elmt_Spine * elmt_D75_137 * elmt_PKA * elmt_von21_elmt_kon21);
        elmt_von24 = (elmt_Spine * elmt_D75_137 * elmt_PP2C * elmt_von24_elmt_kon24);
        elmt_vcat45 = (elmt_Spine * elmt_cAMP_PDEP * elmt_vcat45_elmt_kcat45);
        elmt_von25 = (elmt_Spine * elmt_D34_75_137 * elmt_PP2A * elmt_von25_elmt_kon25);
        elmt_von22 = (elmt_Spine * elmt_D75_137 * elmt_PP2A * elmt_von22_elmt_kon22);
        elmt_voff41 = (elmt_Spine * elmt_cAMP4_R2C2 * elmt_voff41_elmt_koff41);
        elmt_von23 = (elmt_Spine * elmt_D75_137 * elmt_PP2AP * elmt_von23_elmt_kon23);
        elmt_voff40 = (elmt_Spine * elmt_cAMP4_R2C2 * elmt_voff40_elmt_koff40);
        elmt_vcat44 = (elmt_Spine * elmt_cAMP_PDE * elmt_vcat44_elmt_kcat44);
        elmt_voff39 = (elmt_Spine * elmt_cAMP3_R2C2 * elmt_voff39_elmt_koff39);
        elmt_voff31 = (elmt_Spine * elmt_PDE_PKA * elmt_voff31_elmt_koff31);
        elmt_voff33 = (elmt_Spine * elmt_PP2A_PKA * elmt_voff33_elmt_koff33);
        elmt_voff36 = (elmt_Spine * elmt_PP2B * elmt_voff36_elmt_koff36);
        elmt_voff35 = (elmt_Spine * elmt_PP2BinactiveCa2 * elmt_voff35_elmt_koff35);
        elmt_vcat18 = (elmt_Spine * elmt_D34_137_CDK5 * elmt_vcat18_elmt_kcat18);
        elmt_voff38 = (elmt_Spine * elmt_cAMP2_R2C2 * elmt_voff38_elmt_koff38);
        elmt_vcat19 = (elmt_Spine * elmt_D34_137_PP2B * elmt_vcat19_elmt_kcat19);
        elmt_voff37 = (elmt_Spine * elmt_cAMP_R2C2 * elmt_voff37_elmt_koff37);
        elmt_vcat16 = (elmt_Spine * elmt_D34_75_PP2AP * elmt_vcat16_elmt_kcat16);
        elmt_vcat17 = (elmt_Spine * elmt_D34_75_PP2B * elmt_vcat17_elmt_kcat17);
        elmt_vcat14 = (elmt_Spine * elmt_D34_75_CK1 * elmt_vcat14_elmt_kcat14);
        elmt_vcat15 = (elmt_Spine * elmt_D34_75_PP2A * elmt_vcat15_elmt_kcat15);
        elmt_vcat12 = (elmt_Spine * elmt_D137_PKA * elmt_vcat12_elmt_kcat12);
        elmt_vcat13 = (elmt_Spine * elmt_D137_PP2C * elmt_vcat13_elmt_kcat13);
        elmt_vcat10 = (elmt_Spine * elmt_D75_PP2AP * elmt_vcat10_elmt_kcat10);
        elmt_vcat11 = (elmt_Spine * elmt_D137_CDK5 * elmt_vcat11_elmt_kcat11);
        elmt_vcat20 = (elmt_Spine * elmt_D34_137_PP2C * elmt_vcat20_elmt_kcat20);
        elmt_von2 = (elmt_Spine * elmt_D * elmt_CK1 * elmt_von2_elmt_kon2);
        elmt_von3 = (elmt_Spine * elmt_D * elmt_PKA * elmt_von3_elmt_kon3);
        elmt_von1 = (elmt_Spine * elmt_von1_elmt_kon1 * elmt_D * elmt_CDK5);
        elmt_voff29 = (elmt_Spine * elmt_CK1P_PP2B * elmt_voff29_elmt_koff29);
        elmt_voff28 = (elmt_Spine * elmt_D34_75_137_PP2C * elmt_voff28_elmt_koff28);
        elmt_vcat6 = (elmt_Spine * elmt_D34_PP2B * elmt_vcat6_elmt_kcat6);
        elmt_voff21 = (elmt_Spine * elmt_D75_137_PKA * elmt_voff21_elmt_koff21);
        elmt_vcat5 = (elmt_Spine * elmt_D34_CK1 * elmt_vcat5_elmt_kcat5);
        elmt_voff20 = (elmt_Spine * elmt_D34_137_PP2C * elmt_voff20_elmt_koff20);
        elmt_vcat8 = (elmt_Spine * elmt_D75_PKA * elmt_vcat8_elmt_kcat8);
        elmt_voff23 = (elmt_Spine * elmt_D75_137_PP2AP * elmt_voff23_elmt_koff23);
        elmt_vcat7 = (elmt_Spine * elmt_D75CK1 * elmt_vcat7_elmt_kcat7);
        elmt_voff22 = (elmt_Spine * elmt_D75_137_PP2A * elmt_voff22_elmt_koff22);
        elmt_vcat2 = (elmt_Spine * elmt_vcat2_elmt_kcat2 * elmt_D_CK1);
        elmt_voff25 = (elmt_Spine * elmt_D34_75_134_PP2A * elmt_voff25_elmt_koff25);
        elmt_vcat1 = (elmt_Spine * elmt_D_CDK5 * elmt_vcat1_elmt_kcat1);
        elmt_voff24 = (elmt_Spine * elmt_D75_137_PP2C * elmt_voff24_elmt_koff24);
        elmt_vcat4 = (elmt_Spine * elmt_D34_CDK5 * elmt_vcat4_elmt_kcat4);
        elmt_voff27 = (elmt_Spine * elmt_D34_75_137_PP2B * elmt_voff27_elmt_koff27);
        elmt_vcat29 = (elmt_Spine * elmt_CK1P_PP2B * elmt_vcat29_elmt_kcat29);
        elmt_vcat3 = (elmt_Spine * elmt_D_PKA * elmt_vcat3_elmt_kcat3);
        elmt_voff26 = (elmt_Spine * elmt_D34_75_137_PP2AP * elmt_voff26_elmt_koff26);
        elmt_von6 = (elmt_Spine * elmt_D34 * elmt_PP2B * elmt_von6_elmt_kon6);
        elmt_vcat27 = (elmt_Spine * elmt_D34_75_137_PP2B * elmt_vcat27_elmt_kcat27);
        elmt_von7 = (elmt_Spine * elmt_D75 * elmt_CK1 * elmt_von7_elmt_kon7);
        elmt_vcat28 = (elmt_Spine * elmt_D34_75_137_PP2C * elmt_vcat28_elmt_kcat28);
        elmt_von4 = (elmt_Spine * elmt_D34 * elmt_CDK5 * elmt_von4_elmt_kon4);
        elmt_vcat25 = (elmt_Spine * elmt_D34_75_134_PP2A * elmt_vcat25_elmt_kcat25);
        elmt_von5 = (elmt_Spine * elmt_D34 * elmt_CK1 * elmt_von5_elmt_kon5);
        elmt_vcat26 = (elmt_Spine * elmt_D34_75_137_PP2AP * elmt_vcat26_elmt_kcat26);
        elmt_vcat23 = (elmt_Spine * elmt_D75_137_PP2AP * elmt_vcat23_elmt_kcat23);
        elmt_vcat9 = (elmt_Spine * elmt_D75_PP2A * elmt_vcat9_elmt_kcat9);
        elmt_vcat24 = (elmt_Spine * elmt_D75_137_PP2C * elmt_vcat24_elmt_kcat24);
        elmt_von8 = (elmt_Spine * elmt_D75 * elmt_PKA * elmt_von8_elmt_kon8);
        elmt_vcat21 = (elmt_Spine * elmt_D75_137_PKA * elmt_vcat21_elmt_kcat21);
        elmt_von9 = (elmt_Spine * elmt_D75 * elmt_PP2A * elmt_von9_elmt_kon9);
        elmt_vcat22 = (elmt_Spine * elmt_D75_137_PP2A * elmt_vcat22_elmt_kcat22);
        elmt_voff18 = (elmt_Spine * elmt_D34_137_CDK5 * elmt_voff18_elmt_koff18);
        elmt_voff17 = (elmt_Spine * elmt_D34_75_PP2B * elmt_voff17_elmt_koff17);
        elmt_voff19 = (elmt_Spine * elmt_D34_137_PP2B * elmt_voff19_elmt_koff19);
        elmt_voff10 = (elmt_Spine * elmt_D75_PP2AP * elmt_voff10_elmt_koff10);
        elmt_voff12 = (elmt_Spine * elmt_D137_PKA * elmt_voff12_elmt_koff12);
        elmt_voff11 = (elmt_Spine * elmt_D137_CDK5 * elmt_voff11_elmt_koff11);
        elmt_voff14 = (elmt_Spine * elmt_D34_75_CK1 * elmt_voff14_elmt_koff14);
        elmt_voff13 = (elmt_Spine * elmt_D137_PP2C * elmt_voff13_elmt_koff13);
        elmt_voff16 = (elmt_Spine * elmt_D34_75_PP2AP * elmt_voff16_elmt_koff16);
        elmt_voff15 = (elmt_Spine * elmt_D34_75_PP2A * elmt_voff15_elmt_koff15);
        elmt_von39 = (elmt_Spine * elmt_cAMP2_R2C2 * elmt_cAMP * elmt_von39_elmt_kon39);
        elmt_von37 = (elmt_Spine * elmt_R2C2 * elmt_cAMP * elmt_von37_elmt_kon37);
        elmt_von38 = (elmt_Spine * elmt_cAMP_R2C2 * elmt_cAMP * elmt_von38_elmt_kon38);
        elmt_von31 = (elmt_Spine * elmt_PDE * elmt_PKA * elmt_von31_elmt_kon31);
        elmt_von35 = (elmt_Spine * elmt_PP2Binactive * elmt_Ca * elmt_Ca * elmt_von35_elmt_kon35);
        elmt_von36 = (elmt_Spine * elmt_PP2BinactiveCa2 * elmt_Ca * elmt_Ca * elmt_von36_elmt_kon36);
        elmt_von33 = (elmt_Spine * elmt_PP2A * elmt_PKA * elmt_von33_elmt_kon33);
        elmt_v57 = (elmt_Spine * elmt_k57);
        elmt_v58 = (elmt_Spine * elmt_Ca * elmt_v58_elmt_k58);
        elmt_voff4 = (elmt_Spine * elmt_D34_CDK5 * elmt_voff4_elmt_koff4);
        elmt_voff5 = (elmt_Spine * elmt_D34_CK1 * elmt_voff5_elmt_koff5);
        elmt_voff2 = (elmt_Spine * elmt_voff2_elmt_koff2 * elmt_D_CK1);
        elmt_voff3 = (elmt_Spine * elmt_D_PKA * elmt_voff3_elmt_koff3);
        elmt_voff8 = (elmt_Spine * elmt_D75_PKA * elmt_voff8_elmt_koff8);
        elmt_voff9 = (elmt_Spine * elmt_D75_PP2A * elmt_voff9_elmt_koff9);
        elmt_voff6 = (elmt_Spine * elmt_D34_PP2B * elmt_voff6_elmt_koff6);
        elmt_voff7 = (elmt_Spine * elmt_D75CK1 * elmt_voff7_elmt_koff7);
        elmt_von42 = (elmt_Spine * elmt_cAMP4_R2 * elmt_PKA * elmt_von42_elmt_kon42);
        elmt_von43 = (elmt_Spine * elmt_cAMP4_R2C * elmt_von43_elmt_kon43);
        elmt_von40 = (elmt_Spine * elmt_cAMP3_R2C2 * elmt_cAMP * elmt_von40_elmt_kon40);
        elmt_von41 = (elmt_Spine * elmt_cAMP4_R2C * elmt_PKA * elmt_von41_elmt_kon41);
        elmt_voff1 = (elmt_Spine * elmt_D_CDK5 * elmt_voff1_elmt_koff1);
        elmt_von44 = (elmt_Spine * elmt_cAMP * elmt_PDE * elmt_von44_elmt_kon44);
        elmt_von45 = (elmt_Spine * elmt_cAMP * elmt_PDEP * elmt_von45_elmt_kon45);
        der(elmt_reactant42) = 0;
        der(elmt_reactant190) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant198) = 0;
        der(elmt_product212) = 0;
        der(elmt_product211) = 0;
        der(elmt_product332) = 0;
        der(elmt_product214) = 0;
        der(elmt_product335) = 0;
        der(elmt_reactant195) = 0;
        der(elmt_reactant192) = 0;
        der(elmt_product331) = 0;
        der(elmt_product337) = 0;
        der(elmt_product215) = 0;
        der(elmt_product218) = 0;
        der(elmt_reactant199) = 0;
        der(elmt_product338) = 0;
        der(elmt_product217) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product223) = 0;
        der(elmt_product344) = 0;
        der(elmt_product101) = 0;
        der(elmt_product346) = 0;
        der(elmt_product104) = 0;
        der(elmt_product103) = 0;
        der(elmt_product224) = 0;
        der(elmt_product340) = 0;
        der(elmt_product221) = 0;
        der(elmt_product100) = 0;
        der(elmt_product341) = 0;
        der(elmt_product109) = 0;
        der(elmt_product227) = 0;
        der(elmt_product106) = 0;
        der(elmt_product347) = 0;
        der(elmt_product229) = 0;
        der(elmt_product349) = 0;
        der(elmt_product107) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_product311) = 0;
        der(elmt_reactant297) = 0;
        der(elmt_product310) = 0;
        der(elmt_product313) = 0;
        der(elmt_reactant174) = 0;
        der(elmt_reactant294) = 0;
        der(elmt_reactant172) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant171) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_reactant291) = 0;
        der(elmt_product319) = 0;
        der(elmt_product314) = 0;
        der(elmt_product317) = 0;
        der(elmt_product316) = 0;
        der(elmt_reactant177) = 0;
        der(elmt_reactant298) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product23) = 0;
        der(elmt_product22) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product200) = 0;
        der(elmt_reactant186) = 0;
        der(elmt_product203) = 0;
        der(elmt_product202) = 0;
        der(elmt_product323) = 0;
        der(elmt_reactant183) = 0;
        der(elmt_reactant181) = 0;
        der(elmt_product320) = 0;
        der(elmt_reactant180) = 0;
        der(elmt_product209) = 0;
        der(elmt_product16) = 0;
        der(elmt_product329) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product326) = 0;
        der(elmt_product205) = 0;
        der(elmt_product325) = 0;
        der(elmt_reactant189) = 0;
        der(elmt_product17) = 0;
        der(elmt_product206) = 0;
        der(elmt_reactant154) = 0;
        der(elmt_reactant275) = 0;
        der(elmt_reactant153) = 0;
        der(elmt_reactant274) = 0;
        der(elmt_reactant272) = 0;
        der(elmt_reactant150) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_reactant159) = 0;
        der(elmt_reactant277) = 0;
        der(elmt_reactant156) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant165) = 0;
        der(elmt_reactant286) = 0;
        der(elmt_reactant285) = 0;
        der(elmt_reactant163) = 0;
        der(elmt_product302) = 0;
        der(elmt_reactant283) = 0;
        der(elmt_reactant162) = 0;
        der(elmt_reactant280) = 0;
        der(elmt_product308) = 0;
        der(elmt_reactant168) = 0;
        der(elmt_reactant289) = 0;
        der(elmt_reactant288) = 0;
        der(elmt_product305) = 0;
        der(elmt_product193) = 0;
        der(elmt_product194) = 0;
        der(elmt_product191) = 0;
        der(elmt_reactant253) = 0;
        der(elmt_reactant132) = 0;
        der(elmt_reactant252) = 0;
        der(elmt_product197) = 0;
        der(elmt_product196) = 0;
        der(elmt_reactant138) = 0;
        der(elmt_reactant258) = 0;
        der(elmt_reactant136) = 0;
        der(elmt_reactant135) = 0;
        der(elmt_reactant255) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant264) = 0;
        der(elmt_reactant263) = 0;
        der(elmt_reactant141) = 0;
        der(elmt_reactant261) = 0;
        der(elmt_reactant269) = 0;
        der(elmt_reactant147) = 0;
        der(elmt_reactant266) = 0;
        der(elmt_reactant145) = 0;
        der(elmt_reactant144) = 0;
        der(elmt_product74) = 0;
        der(elmt_product73) = 0;
        der(elmt_product71) = 0;
        der(elmt_product77) = 0;
        der(elmt_product76) = 0;
        der(elmt_reactant108) = 0;
        der(elmt_product292) = 0;
        der(elmt_product170) = 0;
        der(elmt_product173) = 0;
        der(elmt_product293) = 0;
        der(elmt_product70) = 0;
        der(elmt_product290) = 0;
        der(elmt_reactant231) = 0;
        der(elmt_product179) = 0;
        der(elmt_product178) = 0;
        der(elmt_product299) = 0;
        der(elmt_reactant351) = 0;
        der(elmt_product296) = 0;
        der(elmt_product175) = 0;
        der(elmt_product295) = 0;
        der(elmt_product176) = 0;
        der(elmt_reactant118) = 0;
        der(elmt_reactant117) = 0;
        der(elmt_reactant237) = 0;
        der(elmt_product68) = 0;
        der(elmt_reactant235) = 0;
        der(elmt_reactant114) = 0;
        der(elmt_reactant234) = 0;
        der(elmt_reactant111) = 0;
        der(elmt_reactant353) = 0;
        der(elmt_product85) = 0;
        der(elmt_product83) = 0;
        der(elmt_product82) = 0;
        der(elmt_product89) = 0;
        der(elmt_product88) = 0;
        der(elmt_product86) = 0;
        der(elmt_product182) = 0;
        der(elmt_product184) = 0;
        der(elmt_product80) = 0;
        der(elmt_reactant121) = 0;
        der(elmt_reactant120) = 0;
        der(elmt_reactant240) = 0;
        der(elmt_product185) = 0;
        der(elmt_product188) = 0;
        der(elmt_product187) = 0;
        der(elmt_reactant129) = 0;
        der(elmt_reactant249) = 0;
        der(elmt_product79) = 0;
        der(elmt_reactant126) = 0;
        der(elmt_reactant246) = 0;
        der(elmt_reactant244) = 0;
        der(elmt_reactant123) = 0;
        der(elmt_reactant243) = 0;
        der(elmt_product95) = 0;
        der(elmt_product98) = 0;
        der(elmt_reactant208) = 0;
        der(elmt_reactant207) = 0;
        der(elmt_reactant328) = 0;
        der(elmt_product270) = 0;
        der(elmt_product151) = 0;
        der(elmt_product271) = 0;
        der(elmt_product92) = 0;
        der(elmt_product278) = 0;
        der(elmt_product157) = 0;
        der(elmt_reactant330) = 0;
        der(elmt_product279) = 0;
        der(elmt_product158) = 0;
        der(elmt_product273) = 0;
        der(elmt_product152) = 0;
        der(elmt_product155) = 0;
        der(elmt_product276) = 0;
        der(elmt_reactant216) = 0;
        der(elmt_reactant336) = 0;
        der(elmt_reactant213) = 0;
        der(elmt_reactant334) = 0;
        der(elmt_reactant333) = 0;
        der(elmt_reactant210) = 0;
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant219) = 0;
        der(elmt_reactant339) = 0;
        der(elmt_product281) = 0;
        der(elmt_product160) = 0;
        der(elmt_product282) = 0;
        der(elmt_product161) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant220) = 0;
        der(elmt_product167) = 0;
        der(elmt_product169) = 0;
        der(elmt_product164) = 0;
        der(elmt_product284) = 0;
        der(elmt_product166) = 0;
        der(elmt_product287) = 0;
        der(elmt_reactant228) = 0;
        der(elmt_reactant348) = 0;
        der(elmt_reactant226) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_reactant225) = 0;
        der(elmt_reactant345) = 0;
        der(elmt_reactant102) = 0;
        der(elmt_reactant222) = 0;
        der(elmt_reactant343) = 0;
        der(elmt_reactant342) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_reactant309) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant81) = 0;
        der(elmt_reactant307) = 0;
        der(elmt_reactant306) = 0;
        der(elmt_product250) = 0;
        der(elmt_reactant87) = 0;
        der(elmt_product256) = 0;
        der(elmt_product134) = 0;
        der(elmt_product137) = 0;
        der(elmt_product257) = 0;
        der(elmt_product131) = 0;
        der(elmt_product130) = 0;
        der(elmt_product251) = 0;
        der(elmt_product254) = 0;
        der(elmt_product133) = 0;
        der(elmt_reactant315) = 0;
        der(elmt_product26) = 0;
        der(elmt_product25) = 0;
        der(elmt_reactant312) = 0;
        der(elmt_product139) = 0;
        der(elmt_product259) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_product41) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant96) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_reactant90) = 0;
        der(elmt_reactant91) = 0;
        der(elmt_product44) = 0;
        der(elmt_reactant318) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant93) = 0;
        der(elmt_product140) = 0;
        der(elmt_product260) = 0;
        der(elmt_reactant99) = 0;
        der(elmt_product267) = 0;
        der(elmt_product146) = 0;
        der(elmt_product148) = 0;
        der(elmt_product268) = 0;
        der(elmt_product142) = 0;
        der(elmt_product262) = 0;
        der(elmt_product265) = 0;
        der(elmt_product143) = 0;
        der(elmt_product38) = 0;
        der(elmt_reactant327) = 0;
        der(elmt_product37) = 0;
        der(elmt_reactant204) = 0;
        der(elmt_reactant324) = 0;
        der(elmt_product35) = 0;
        der(elmt_reactant201) = 0;
        der(elmt_product149) = 0;
        der(elmt_reactant322) = 0;
        der(elmt_reactant321) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product56) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_product113) = 0;
        der(elmt_product112) = 0;
        der(elmt_product233) = 0;
        der(elmt_product354) = 0;
        der(elmt_product236) = 0;
        der(elmt_product115) = 0;
        der(elmt_product230) = 0;
        der(elmt_product350) = 0;
        der(elmt_product232) = 0;
        der(elmt_product110) = 0;
        der(elmt_product352) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_product46) = 0;
        der(elmt_product238) = 0;
        der(elmt_product116) = 0;
        der(elmt_product119) = 0;
        der(elmt_product239) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_product67) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_product245) = 0;
        der(elmt_product124) = 0;
        der(elmt_product247) = 0;
        der(elmt_product125) = 0;
        der(elmt_product241) = 0;
        der(elmt_product122) = 0;
        der(elmt_product242) = 0;
        der(elmt_product59) = 0;
        der(elmt_reactant304) = 0;
        der(elmt_reactant303) = 0;
        der(elmt_product128) = 0;
        der(elmt_reactant301) = 0;
        der(elmt_product248) = 0;
        der(elmt_product127) = 0;
        der(elmt_reactant300) = 0;

end Reactions;
