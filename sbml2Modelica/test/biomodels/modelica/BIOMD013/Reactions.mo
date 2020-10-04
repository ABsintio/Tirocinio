within BIOMD013;
class Reactions

    input Real elmt_BPGA_ch;
    input Real elmt_E4P_ch;
    input Real elmt_DHAP_ch;
    input Real elmt_R5P_ch;
    input Real elmt_ADP_ch;
    input Real elmt_x_NADP_ch;
    input Real elmt_S7P_ch;
    input Real elmt_Ru5P_ch;
    input Real elmt_GAP_ch;
    input Real elmt_x_NADPH_ch;
    input Real elmt_x_Proton_ch;
    input Real elmt_G6P_ch;
    input Real elmt_FBP_ch;
    input Real elmt_X5P_ch;
    input Real elmt_SBP_ch;
    input Real elmt_Light_on;
    input Real elmt_x_Pi_cyt;
    input Real elmt_RuBP_ch;
    input Real elmt_PGA_ch;
    input Real elmt_F6P_ch;
    input Real elmt_Pi_ch;
    input Real elmt_ATP_ch;
    input Real elmt_chloroplast;
    input Real elmt_G1P_ch;

    Real elmt_light_reaction(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"783\" y=\"765\"/>
          <jd:pt x=\"854\" y=\"748\"/>
          <jd:pt x=\"817\" y=\"763\"/>
          <jd:pt x=\"829\" y=\"774\"/>
          <jd:pt x=\"817\" y=\"763\"/>
          <jd:pt x=\"749\" y=\"767\"/>
          <jd:pt x=\"751\" y=\"765\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_light_reaction_elmt_LR_vm(unit "") = 3500.0 "";
    parameter Real elmt_light_reaction_elmt_LR_kmADP(unit "") = 0.014 "";
    parameter Real elmt_light_reaction_elmt_LR_kmPi(unit "") = 0.3 "";
    Real elmt_reactant47 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_E18_GAP(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"485\" y=\"633\"/>
          <jd:pt x=\"500\" y=\"607\"/>
          <jd:pt x=\"486\" y=\"604\"/>
          <jd:pt x=\"485\" y=\"582\"/>
          <jd:pt x=\"486\" y=\"604\"/>
          <jd:pt x=\"484\" y=\"662\"/>
          <jd:pt x=\"485\" y=\"670\"/>
          <jd:pt x=\"484\" y=\"662\"/>
          <jd:pt x=\"536\" y=\"665\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E18_GAP_elmt_TP_Piap_vm(unit "") = 250.0 "";
    parameter Real elmt_E18_GAP_elmt_TP_Piap_kGAP_ch(unit "") = 0.075 "";
    parameter Real elmt_E18_GAP_elmt_TP_Piap_kPi_cyt(unit "") = 0.74 "";
    parameter Real elmt_E18_GAP_elmt_TP_Piap_kPGA_ch(unit "") = 0.25 "";
    parameter Real elmt_E18_GAP_elmt_TP_Piap_kPi_ch(unit "") = 0.63 "";
    parameter Real elmt_E18_GAP_elmt_TP_Piap_kDHAP_ch(unit "") = 0.077 "";
    Real elmt_product69 "";
    Real elmt_product68 "";
    Real elmt_reactant66 "";
    Real elmt_reactant67 "";
    Real elmt_E2(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"6587523\" lineColor=\"6587523\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"857\" y=\"525\"/>
          <jd:pt x=\"880\" y=\"525\"/>
          <jd:pt x=\"904\" y=\"526\"/>
          <jd:pt x=\"887\" y=\"491\"/>
          <jd:pt x=\"904\" y=\"526\"/>
          <jd:pt x=\"810\" y=\"524\"/>
          <jd:pt x=\"797\" y=\"523\"/>
          <jd:pt x=\"810\" y=\"524\"/>
          <jd:pt x=\"810\" y=\"498\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E2_elmt_q2(unit "") = 3.1E-4 "";
    parameter Real elmt_E2_elmt_PGK_v(unit "") = 5.0E8 "";
    Real elmt_reactant4 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___ATP_ch_1\"/>
          </annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product6 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___ADP_ch_1\"/>
          </annotation>"));
    Real elmt_product5 "";
    Real elmt_E3(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"6587523\" lineColor=\"6587523\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"610\" y=\"521\"/>
          <jd:pt x=\"653\" y=\"526\"/>
          <jd:pt x=\"649\" y=\"521\"/>
          <jd:pt x=\"651\" y=\"522\"/>
          <jd:pt x=\"649\" y=\"521\"/>
          <jd:pt x=\"649\" y=\"488\"/>
          <jd:pt x=\"649\" y=\"521\"/>
          <jd:pt x=\"571\" y=\"521\"/>
          <jd:pt x=\"575\" y=\"493\"/>
          <jd:pt x=\"571\" y=\"521\"/>
          <jd:pt x=\"550\" y=\"520\"/>
          <jd:pt x=\"571\" y=\"521\"/>
          <jd:pt x=\"576\" y=\"524\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E3_elmt_q3(unit "") = 1.6E7 "";
    parameter Real elmt_E3_elmt_G3Pdh_v(unit "") = 5.0E8 "";
    Real elmt_product12 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___Pi_ch_4\"/>
          </annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant7 "";
    Real elmt_reactant9 "";
    Real elmt_E1(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"949\" y=\"445\"/>
          <jd:pt x=\"951\" y=\"409\"/>
          <jd:pt x=\"950\" y=\"419\"/>
          <jd:pt x=\"962\" y=\"419\"/>
          <jd:pt x=\"950\" y=\"419\"/>
          <jd:pt x=\"948\" y=\"471\"/>
          <jd:pt x=\"949\" y=\"450\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E1_elmt_Rbco_vm(unit "") = 340.0 "";
    parameter Real elmt_E1_elmt_Rbco_KiNADPH(unit "") = 0.07 "";
    parameter Real elmt_E1_elmt_Rbco_KiFBP(unit "") = 0.04 "";
    parameter Real elmt_E1_elmt_Rbco_KiPi(unit "") = 0.9 "";
    parameter Real elmt_E1_elmt_Rbco_KiSBP(unit "") = 0.075 "";
    parameter Real elmt_E1_elmt_Rbco_km(unit "") = 0.02 "";
    parameter Real elmt_E1_elmt_Rbco_KiPGA(unit "") = 0.84 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_E18_DHAP(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"6587523\" lineColor=\"6587523\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"269\" y=\"613\"/>
          <jd:pt x=\"243\" y=\"587\"/>
          <jd:pt x=\"268\" y=\"585\"/>
          <jd:pt x=\"267\" y=\"584\"/>
          <jd:pt x=\"268\" y=\"585\"/>
          <jd:pt x=\"270\" y=\"641\"/>
          <jd:pt x=\"270\" y=\"635\"/>
          <jd:pt x=\"270\" y=\"641\"/>
          <jd:pt x=\"245\" y=\"633\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E18_DHAP_elmt_TP_Piap_vm(unit "") = 250.0 "";
    parameter Real elmt_E18_DHAP_elmt_TP_Piap_kGAP_ch(unit "") = 0.075 "";
    parameter Real elmt_E18_DHAP_elmt_TP_Piap_kPi_cyt(unit "") = 0.74 "";
    parameter Real elmt_E18_DHAP_elmt_TP_Piap_kPGA_ch(unit "") = 0.25 "";
    parameter Real elmt_E18_DHAP_elmt_TP_Piap_kPi_ch(unit "") = 0.63 "";
    parameter Real elmt_E18_DHAP_elmt_TP_Piap_kDHAP_ch(unit "") = 0.077 "";
    Real elmt_product61 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___Pi_ch_3\"/>
          </annotation>"));
    Real elmt_product60 "";
    Real elmt_reactant58 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___x_Pi_cyt_0\"/>
          </annotation>"));
    Real elmt_reactant59 "";
    Real elmt_E13(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"6587523\" lineColor=\"6587523\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"951\" y=\"319\"/>
          <jd:pt x=\"950\" y=\"292\"/>
          <jd:pt x=\"950\" y=\"301\"/>
          <jd:pt x=\"909\" y=\"290\"/>
          <jd:pt x=\"950\" y=\"301\"/>
          <jd:pt x=\"952\" y=\"337\"/>
          <jd:pt x=\"952\" y=\"324\"/>
          <jd:pt x=\"952\" y=\"337\"/>
          <jd:pt x=\"924\" y=\"336\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E13_elmt_Ru5Pk_ch_vm(unit "") = 10000.0 "";
    parameter Real elmt_E13_elmt_Ru5Pk_ch_KiPi(unit "") = 4.0 "";
    parameter Real elmt_E13_elmt_Ru5Pk_ch_km1(unit "") = 0.05 "";
    parameter Real elmt_E13_elmt_Ru5Pk_ch_KiRuBP(unit "") = 0.7 "";
    parameter Real elmt_E13_elmt_Ru5Pk_ch_km2(unit "") = 0.05 "";
    parameter Real elmt_E13_elmt_Ru5Pk_ch_KiADP1(unit "") = 2.5 "";
    parameter Real elmt_E13_elmt_Ru5Pk_ch_KiPGA(unit "") = 2.0 "";
    parameter Real elmt_E13_elmt_Ru5Pk_ch_KiADP2(unit "") = 0.4 "";
    Real elmt_product41 "";
    Real elmt_reactant40 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___ATP_ch_0\"/>
          </annotation>"));
    Real elmt_product42 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___ADP_ch_0\"/>
          </annotation>"));
    Real elmt_reactant39 "";
    Real elmt_E14(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"261\" y=\"333\"/>
          <jd:pt x=\"259\" y=\"334\"/>
          <jd:pt x=\"259\" y=\"334\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E14_elmt_q14(unit "") = 2.3 "";
    parameter Real elmt_E14_elmt_PGI_v(unit "") = 5.0E8 "";
    Real elmt_product44 "";
    Real elmt_reactant43 "";
    Real elmt_E8(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"405\" y=\"80\"/>
          <jd:pt x=\"250\" y=\"53\"/>
          <jd:pt x=\"372\" y=\"82\"/>
          <jd:pt x=\"371\" y=\"69\"/>
          <jd:pt x=\"372\" y=\"82\"/>
          <jd:pt x=\"438\" y=\"78\"/>
          <jd:pt x=\"456\" y=\"78\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E8_elmt_E_Aldo_v(unit "") = 5.0E8 "";
    parameter Real elmt_E8_elmt_q8(unit "") = 13.0 "";
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_E11(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"949\" y=\"215\"/>
          <jd:pt x=\"950\" y=\"216\"/>
          <jd:pt x=\"950\" y=\"216\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E11_elmt_q11(unit "") = 0.4 "";
    parameter Real elmt_E11_elmt_R5Piso_v(unit "") = 5.0E8 "";
    Real elmt_product36 "";
    Real elmt_reactant35 "";
    Real elmt_E9(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"6587523\" lineColor=\"6587523\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"620\" y=\"77\"/>
          <jd:pt x=\"585\" y=\"77\"/>
          <jd:pt x=\"596\" y=\"77\"/>
          <jd:pt x=\"644\" y=\"77\"/>
          <jd:pt x=\"652\" y=\"72\"/>
          <jd:pt x=\"644\" y=\"77\"/>
          <jd:pt x=\"648\" y=\"76\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E9_elmt_SBPase_ch_KiPi(unit "") = 12.0 "";
    parameter Real elmt_E9_elmt_SBPase_ch_vm(unit "") = 40.0 "";
    parameter Real elmt_E9_elmt_SBPase_ch_km(unit "") = 0.013 "";
    Real elmt_product30 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___Pi_ch_5\"/>
          </annotation>"));
    Real elmt_E12(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"887\" y=\"209\"/>
          <jd:pt x=\"884\" y=\"203\"/>
          <jd:pt x=\"888\" y=\"215\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E12_elmt_q12(unit "") = 0.67 "";
    parameter Real elmt_E12_elmt_X5Pepi_v(unit "") = 5.0E8 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_E18_PGA(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"947\" y=\"638\"/>
          <jd:pt x=\"920\" y=\"599\"/>
          <jd:pt x=\"948\" y=\"590\"/>
          <jd:pt x=\"951\" y=\"543\"/>
          <jd:pt x=\"948\" y=\"590\"/>
          <jd:pt x=\"946\" y=\"686\"/>
          <jd:pt x=\"948\" y=\"695\"/>
          <jd:pt x=\"946\" y=\"686\"/>
          <jd:pt x=\"929\" y=\"690\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E18_PGA_elmt_TP_Piap_vm(unit "") = 250.0 "";
    parameter Real elmt_E18_PGA_elmt_TP_Piap_kGAP_ch(unit "") = 0.075 "";
    parameter Real elmt_E18_PGA_elmt_PGA_xpMult(unit "") = 0.75 "";
    parameter Real elmt_E18_PGA_elmt_TP_Piap_kPi_cyt(unit "") = 0.74 "";
    parameter Real elmt_E18_PGA_elmt_TP_Piap_kPGA_ch(unit "") = 0.25 "";
    parameter Real elmt_E18_PGA_elmt_TP_Piap_kPi_ch(unit "") = 0.63 "";
    parameter Real elmt_E18_PGA_elmt_TP_Piap_kDHAP_ch(unit "") = 0.077 "";
    Real elmt_reactant62 "";
    Real elmt_reactant63 "";
    Real elmt_product65 "";
    Real elmt_product64 "";
    Real elmt_E6(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"6587523\" lineColor=\"6587523\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"371\" y=\"374\"/>
          <jd:pt x=\"372\" y=\"398\"/>
          <jd:pt x=\"371\" y=\"389\"/>
          <jd:pt x=\"405\" y=\"367\"/>
          <jd:pt x=\"371\" y=\"389\"/>
          <jd:pt x=\"371\" y=\"359\"/>
          <jd:pt x=\"370\" y=\"371\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E6_elmt_FBPase_ch_KiF6P(unit "") = 0.7 "";
    parameter Real elmt_E6_elmt_FBPase_ch_vm(unit "") = 200.0 "";
    parameter Real elmt_E6_elmt_FBPase_ch_KiPi(unit "") = 12.0 "";
    parameter Real elmt_E6_elmt_FBPase_ch_km(unit "") = 0.03 "";
    Real elmt_reactant18 "";
    Real elmt_product20 "";
    Real elmt_product19 "";
    Real elmt_E7(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"371\" y=\"249\"/>
          <jd:pt x=\"492\" y=\"200\"/>
          <jd:pt x=\"371\" y=\"278\"/>
          <jd:pt x=\"372\" y=\"277\"/>
          <jd:pt x=\"371\" y=\"278\"/>
          <jd:pt x=\"371\" y=\"220\"/>
          <jd:pt x=\"406\" y=\"171\"/>
          <jd:pt x=\"371\" y=\"220\"/>
          <jd:pt x=\"372\" y=\"219\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E7_elmt_q7(unit "") = 0.084 "";
    parameter Real elmt_E7_elmt_F_TKL_v(unit "") = 5.0E8 "";
    Real elmt_product23 "";
    Real elmt_product24 "";
    Real elmt_reactant21 "";
    Real elmt_reactant22 "";
    Real elmt_E10(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"859\" y=\"81\"/>
          <jd:pt x=\"811\" y=\"77\"/>
          <jd:pt x=\"815\" y=\"78\"/>
          <jd:pt x=\"615\" y=\"116\"/>
          <jd:pt x=\"815\" y=\"78\"/>
          <jd:pt x=\"903\" y=\"84\"/>
          <jd:pt x=\"893\" y=\"92\"/>
          <jd:pt x=\"903\" y=\"84\"/>
          <jd:pt x=\"893\" y=\"92\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E10_elmt_G_TKL_v(unit "") = 5.0E8 "";
    parameter Real elmt_E10_elmt_q10(unit "") = 0.85 "";
    Real elmt_reactant31 "";
    Real elmt_product34 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_E4(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"380\" y=\"522\"/>
          <jd:pt x=\"378\" y=\"523\"/>
          <jd:pt x=\"378\" y=\"523\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E4_elmt_q4(unit "") = 22.0 "";
    parameter Real elmt_E4_elmt_TPI_v(unit "") = 5.0E8 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_E5(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"372\" y=\"487\"/>
          <jd:pt x=\"380\" y=\"495\"/>
          <jd:pt x=\"372\" y=\"502\"/>
          <jd:pt x=\"355\" y=\"493\"/>
          <jd:pt x=\"372\" y=\"502\"/>
          <jd:pt x=\"372\" y=\"472\"/>
          <jd:pt x=\"372\" y=\"472\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E5_elmt_q5(unit "") = 7.1 "";
    parameter Real elmt_E5_elmt_F_Aldo_v(unit "") = 5.0E8 "";
    Real elmt_reactant15 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_E17(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"6587523\" lineColor=\"6587523\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"191\" y=\"175\"/>
          <jd:pt x=\"194\" y=\"147\"/>
          <jd:pt x=\"192\" y=\"154\"/>
          <jd:pt x=\"204\" y=\"139\"/>
          <jd:pt x=\"192\" y=\"154\"/>
          <jd:pt x=\"190\" y=\"196\"/>
          <jd:pt x=\"191\" y=\"197\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E17_elmt_StPase_Vm(unit "") = 40.0 "";
    parameter Real elmt_E17_elmt_StPase_km(unit "") = 0.1 "";
    parameter Real elmt_E17_elmt_StPase_kiG1P(unit "") = 0.05 "";
    Real elmt_product57 "";
    Real elmt_reactant55 "";
    Real elmt_reactant56 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___Pi_ch_1\"/>
          </annotation>"));
    Real elmt_E15(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"16777215\" lineColor=\"0\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"147\" y=\"304\"/>
          <jd:pt x=\"148\" y=\"306\"/>
          <jd:pt x=\"148\" y=\"306\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E15_elmt_q15(unit "") = 0.058 "";
    parameter Real elmt_E15_elmt_PGM_v(unit "") = 5.0E8 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_E16(unit = "") "";
 annotation(Documentation(info="<annotation>
        <jd:arcSeg fillColor=\"6587523\" lineColor=\"6587523\" lineThickness=\"1\" selectedLineColor=\"255\">
          <jd:pt x=\"109\" y=\"171\"/>
          <jd:pt x=\"96\" y=\"192\"/>
          <jd:pt x=\"108\" y=\"189\"/>
          <jd:pt x=\"129\" y=\"229\"/>
          <jd:pt x=\"108\" y=\"189\"/>
          <jd:pt x=\"110\" y=\"153\"/>
          <jd:pt x=\"109\" y=\"135\"/>
          <jd:pt x=\"110\" y=\"153\"/>
          <jd:pt x=\"83\" y=\"123\"/>
          <jd:pt x=\"110\" y=\"153\"/>
          <jd:pt x=\"85\" y=\"147\"/>
        </jd:arcSeg>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_E16_elmt_StSyn_vm(unit "") = 40.0 "";
    parameter Real elmt_E16_elmt_stsyn_ch_ka3(unit "") = 0.02 "";
    parameter Real elmt_E16_elmt_stsyn_ch_km2(unit "") = 0.08 "";
    parameter Real elmt_E16_elmt_stsyn_ch_km1(unit "") = 0.08 "";
    parameter Real elmt_E16_elmt_stsyn_ch_Ki(unit "") = 10.0 "";
    parameter Real elmt_E16_elmt_stsyn_ch_ka2(unit "") = 0.02 "";
    parameter Real elmt_E16_elmt_stsyn_ch_ka1(unit "") = 0.1 "";
    Real elmt_reactant50 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___ATP_ch_2\"/>
          </annotation>"));
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_product54 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___Pi_ch_0\"/>
          </annotation>"));
    Real elmt_product53 "";
 annotation(Documentation(info="<annotation>
            <jd:shadowRef shadowRef=\"___ADP_ch_2\"/>
          </annotation>"));


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_product34 = 1.0;
        elmt_product33 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product69 = 1.0;
        elmt_product68 = 1.0;
        elmt_product24 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product44 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product12 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_product54 = 2.0;
        elmt_product53 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product49 = 1.0;
        elmt_product46 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product64 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 2.0;
        elmt_reactant35 = 1.0;
        elmt_product14 = 1.0;
        elmt_product57 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_light_reaction = ((elmt_Light_on * elmt_light_reaction_elmt_LR_vm * elmt_ADP_ch * elmt_Pi_ch * elmt_chloroplast) / ((elmt_ADP_ch + elmt_light_reaction_elmt_LR_kmADP) * (elmt_Pi_ch + elmt_light_reaction_elmt_LR_kmPi)));
        elmt_E18_GAP = ((elmt_E18_GAP_elmt_TP_Piap_vm * elmt_GAP_ch * elmt_chloroplast) / (elmt_E18_GAP_elmt_TP_Piap_kGAP_ch * (1.0 + ((1.0 + (elmt_E18_GAP_elmt_TP_Piap_kPi_cyt / elmt_x_Pi_cyt)) * ((elmt_Pi_ch / elmt_E18_GAP_elmt_TP_Piap_kPi_ch) + (elmt_PGA_ch / elmt_E18_GAP_elmt_TP_Piap_kPGA_ch) + (elmt_DHAP_ch / elmt_E18_GAP_elmt_TP_Piap_kDHAP_ch) + (elmt_GAP_ch / elmt_E18_GAP_elmt_TP_Piap_kGAP_ch))))));
        elmt_E2 = (elmt_Light_on * elmt_E2_elmt_PGK_v * elmt_chloroplast * ((elmt_PGA_ch * elmt_ATP_ch) - ((elmt_BPGA_ch * elmt_ADP_ch) / elmt_E2_elmt_q2)));
        elmt_E3 = (elmt_Light_on * elmt_E3_elmt_G3Pdh_v * elmt_chloroplast * ((elmt_BPGA_ch * elmt_x_NADPH_ch * elmt_x_Proton_ch) - ((elmt_x_NADP_ch * elmt_GAP_ch * elmt_Pi_ch) / elmt_E3_elmt_q3)));
        elmt_E1 = ((elmt_Light_on * elmt_E1_elmt_Rbco_vm * elmt_RuBP_ch * elmt_chloroplast) / (elmt_RuBP_ch + (elmt_E1_elmt_Rbco_km * (1.0 + (elmt_PGA_ch / elmt_E1_elmt_Rbco_KiPGA) + (elmt_FBP_ch / elmt_E1_elmt_Rbco_KiFBP) + (elmt_SBP_ch / elmt_E1_elmt_Rbco_KiSBP) + (elmt_Pi_ch / elmt_E1_elmt_Rbco_KiPi) + (elmt_x_NADPH_ch / elmt_E1_elmt_Rbco_KiNADPH)))));
        elmt_E18_DHAP = ((elmt_E18_DHAP_elmt_TP_Piap_vm * elmt_DHAP_ch * elmt_chloroplast) / (elmt_E18_DHAP_elmt_TP_Piap_kDHAP_ch * (1.0 + ((1.0 + (elmt_E18_DHAP_elmt_TP_Piap_kPi_cyt / elmt_x_Pi_cyt)) * ((elmt_Pi_ch / elmt_E18_DHAP_elmt_TP_Piap_kPi_ch) + (elmt_PGA_ch / elmt_E18_DHAP_elmt_TP_Piap_kPGA_ch) + (elmt_DHAP_ch / elmt_E18_DHAP_elmt_TP_Piap_kDHAP_ch) + (elmt_GAP_ch / elmt_E18_DHAP_elmt_TP_Piap_kGAP_ch))))));
        elmt_E13 = ((elmt_Light_on * elmt_E13_elmt_Ru5Pk_ch_vm * elmt_Ru5P_ch * elmt_chloroplast * elmt_ATP_ch) / ((elmt_Ru5P_ch + (elmt_E13_elmt_Ru5Pk_ch_km1 * (1.0 + (elmt_PGA_ch / elmt_E13_elmt_Ru5Pk_ch_KiPGA) + (elmt_RuBP_ch / elmt_E13_elmt_Ru5Pk_ch_KiRuBP) + (elmt_Pi_ch / elmt_E13_elmt_Ru5Pk_ch_KiPi)))) * ((elmt_ATP_ch * (1.0 + (elmt_ADP_ch / elmt_E13_elmt_Ru5Pk_ch_KiADP1))) + (elmt_E13_elmt_Ru5Pk_ch_km2 * (1.0 + (elmt_ADP_ch / elmt_E13_elmt_Ru5Pk_ch_KiADP2))))));
        elmt_E14 = (elmt_E14_elmt_PGI_v * elmt_chloroplast * (elmt_F6P_ch - (elmt_G6P_ch / elmt_E14_elmt_q14)));
        elmt_E8 = (elmt_chloroplast * elmt_E8_elmt_E_Aldo_v * ((elmt_E4P_ch * elmt_DHAP_ch) - (elmt_SBP_ch / elmt_E8_elmt_q8)));
        elmt_E11 = (elmt_E11_elmt_R5Piso_v * elmt_chloroplast * (elmt_R5P_ch - (elmt_Ru5P_ch / elmt_E11_elmt_q11)));
        elmt_E9 = ((elmt_Light_on * elmt_E9_elmt_SBPase_ch_vm * elmt_SBP_ch * elmt_chloroplast) / (elmt_SBP_ch + (elmt_E9_elmt_SBPase_ch_km * (1.0 + (elmt_Pi_ch / elmt_E9_elmt_SBPase_ch_KiPi)))));
        elmt_E12 = (elmt_chloroplast * elmt_E12_elmt_X5Pepi_v * (elmt_X5P_ch - (elmt_Ru5P_ch / elmt_E12_elmt_q12)));
        elmt_E18_PGA = ((elmt_E18_PGA_elmt_PGA_xpMult * elmt_E18_PGA_elmt_TP_Piap_vm * elmt_PGA_ch * elmt_chloroplast) / (elmt_E18_PGA_elmt_TP_Piap_kPGA_ch * (1.0 + ((1.0 + (elmt_E18_PGA_elmt_TP_Piap_kPi_cyt / elmt_x_Pi_cyt)) * ((elmt_Pi_ch / elmt_E18_PGA_elmt_TP_Piap_kPi_ch) + (elmt_PGA_ch / elmt_E18_PGA_elmt_TP_Piap_kPGA_ch) + (elmt_DHAP_ch / elmt_E18_PGA_elmt_TP_Piap_kDHAP_ch) + (elmt_GAP_ch / elmt_E18_PGA_elmt_TP_Piap_kGAP_ch))))));
        elmt_E6 = ((elmt_Light_on * elmt_E6_elmt_FBPase_ch_vm * elmt_FBP_ch * elmt_chloroplast) / (elmt_FBP_ch + (elmt_E6_elmt_FBPase_ch_km * (1.0 + (elmt_F6P_ch / elmt_E6_elmt_FBPase_ch_KiF6P) + (elmt_Pi_ch / elmt_E6_elmt_FBPase_ch_KiPi)))));
        elmt_E7 = (elmt_chloroplast * elmt_E7_elmt_F_TKL_v * ((elmt_F6P_ch * elmt_GAP_ch) - ((elmt_E4P_ch * elmt_X5P_ch) / elmt_E7_elmt_q7)));
        elmt_E10 = (elmt_chloroplast * elmt_E10_elmt_G_TKL_v * ((elmt_GAP_ch * elmt_S7P_ch) - ((elmt_X5P_ch * elmt_R5P_ch) / elmt_E10_elmt_q10)));
        elmt_E4 = (elmt_chloroplast * elmt_E4_elmt_TPI_v * (elmt_GAP_ch - (elmt_DHAP_ch / elmt_E4_elmt_q4)));
        elmt_E5 = (elmt_E5_elmt_F_Aldo_v * elmt_chloroplast * ((elmt_DHAP_ch * elmt_GAP_ch) - (elmt_FBP_ch / elmt_E5_elmt_q5)));
        elmt_E17 = ((elmt_E17_elmt_StPase_Vm * elmt_Pi_ch * elmt_chloroplast) / (elmt_Pi_ch + (elmt_E17_elmt_StPase_km * (1.0 + (elmt_G1P_ch / elmt_E17_elmt_StPase_kiG1P)))));
        elmt_E15 = (elmt_E15_elmt_PGM_v * elmt_chloroplast * (elmt_G6P_ch - (elmt_G1P_ch / elmt_E15_elmt_q15)));
        elmt_E16 = ((elmt_E16_elmt_StSyn_vm * elmt_G1P_ch * elmt_ATP_ch * elmt_chloroplast) / (((elmt_G1P_ch + elmt_E16_elmt_stsyn_ch_km1) * (1.0 + (elmt_ADP_ch / elmt_E16_elmt_stsyn_ch_Ki)) * (elmt_ATP_ch + elmt_E16_elmt_stsyn_ch_km2)) + ((elmt_E16_elmt_stsyn_ch_km2 * elmt_Pi_ch) / (elmt_E16_elmt_stsyn_ch_ka1 * elmt_PGA_ch)) + (elmt_E16_elmt_stsyn_ch_ka2 * elmt_F6P_ch) + (elmt_E16_elmt_stsyn_ch_ka3 * elmt_FBP_ch)));
        der(elmt_product30) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_product34) = 0;
        der(elmt_product33) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product69) = 0;
        der(elmt_product68) = 0;
        der(elmt_product24) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product44) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product12) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_product54) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product49) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product64) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product14) = 0;
        der(elmt_product57) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
