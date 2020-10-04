within BIOMD071;
class Reactions

    input Real elmt_Gly3Pc;
    input Real elmt_BPGA13;
    input Real elmt_PEPc;
    input Real elmt_GAP;
    input Real elmt_TPIact;
    input Real elmt_DHAPg;
    input Real elmt_Gly3Pg;
    input Real elmt_Glc6P;
    input Real elmt_Fru6P;
    input Real elmt_Gly;
    input Real elmt_NAD;
    input Real elmt_ATPc;
    input Real elmt_Fru16BP;
    input Real elmt_GlcI;
    input Real elmt_ATPg;
    input Real elmt_GlcE;
    input Real elmt_sumAg;
    input Real elmt_ADPc;
    input Real elmt_PGAg;
    input Real elmt_Vt;
    input Real elmt_ADPg;
    input Real elmt_tot_cell;
    input Real elmt_NADH;
    input Real elmt_Pyr;

    Real elmt_vTPI(unit = "") "Triosephosphate isomerase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vTPI_elmt_K6GAP(unit "m-3.0.") = 0.25 "";
    parameter Real elmt_vTPI_elmt_Vm6(unit "kg-1.0..s-1.0") = 842.0 "";
    parameter Real elmt_vTPI_elmt_K6DHAPg(unit "m-3.0.") = 1.2 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_vGAPdh(unit = "") "Glyceraldehyde 3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vGAPdh_elmt_K7BPGA13(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_vGAPdh_elmt_K7NAD(unit "m-3.0.") = 0.45 "";
    parameter Real elmt_vGAPdh_elmt_Vm7(unit "") = 1.0 "";
    parameter Real elmt_vGAPdh_elmt_Vm7r(unit "kg-1.0..s-1.0") = 984.9 "";
    parameter Real elmt_vGAPdh_elmt_K7GAP(unit "m-3.0.") = 0.15 "";
    parameter Real elmt_vGAPdh_elmt_Vm7f(unit "kg-1.0..s-1.0") = 1470.0 "";
    parameter Real elmt_vGAPdh_elmt_K7NADH(unit "m-3.0.") = 0.02 "";
    Real elmt_reactant15 "";
    Real elmt_reactant16 "";
    Real elmt_product18 "";
    Real elmt_product17 "";
    Real elmt_vATPase(unit = "") "ATPase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vATPase_elmt_K13(unit "kg-1.0..s-1.0") = 50.0 "";
    Real elmt_reactant33 "";
    Real elmt_vPGI(unit = "") "Glucose-phosphate isomerase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vPGI_elmt_K3Glc6P(unit "m-3.0.") = 0.4 "";
    parameter Real elmt_vPGI_elmt_K3Fru6P(unit "m-3.0.") = 0.12 "";
    parameter Real elmt_vPGI_elmt_Vm3(unit "kg-1.0..s-1.0") = 848.0 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_vPGK(unit = "") "Phosphoglycerate kinase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vPGK_elmt_K11PGA3(unit "m-3.0.") = 1.62 "";
    parameter Real elmt_vPGK_elmt_Vm11(unit "") = 1.0 "";
    parameter Real elmt_vPGK_elmt_K11BPGA13(unit "") = 0.05 "";
    parameter Real elmt_vPGK_elmt_Vm11f(unit "kg-1.0..s-1.0") = 640.0 "";
    parameter Real elmt_vPGK_elmt_K11ATPg(unit "m-3.0.") = 0.29 "";
    parameter Real elmt_vPGK_elmt_K11ADPg(unit "") = 0.1 "";
    parameter Real elmt_vPGK_elmt_Vm11r(unit "kg-1.0..s-1.0") = 18.56 "";
    Real elmt_reactant27 "";
    Real elmt_product29 "";
    Real elmt_product28 "";
    Real elmt_vPK(unit = "") "Pyruvate kinase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vPK_elmt_Vm12(unit "kg-1.0..s-1.0") = 2600.0 "";
    parameter Real elmt_vPK_elmt_K12ADP(unit "m-3.0.") = 0.114 "";
    parameter Real elmt_vPK_elmt_n12(unit "") = 2.5 "";
    Real elmt_reactant30 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_vGPO(unit = "") "Glycerol 3-phosphate oxidase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vGPO_elmt_Vm9(unit "kg-1.0..s-1.0") = 368.0 "";
    parameter Real elmt_vGPO_elmt_K9Gly3Pc(unit "m-3.0.") = 1.7 "";
    Real elmt_product24 "";
    Real elmt_reactant23 "";
    Real elmt_vHK(unit = "") "Hexokinase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vHK_elmt_K2Glc6P(unit "m-3.0.") = 12.0 "";
    parameter Real elmt_vHK_elmt_K2GlcI(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_vHK_elmt_Vm2(unit "kg-1.0..s-1.0") = 625.0 "";
    parameter Real elmt_vHK_elmt_K2ATPg(unit "m-3.0.") = 0.116 "";
    parameter Real elmt_vHK_elmt_K2ADPg(unit "m-3.0.") = 0.126 "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_vGDH(unit = "") "Glycerol 3-phosphate dehydrogenase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vGDH_elmt_K8NAD(unit "m-3.0.") = 0.4 "";
    parameter Real elmt_vGDH_elmt_K8Gly3Pg(unit "m-3.0.") = 2.0 "";
    parameter Real elmt_vGDH_elmt_K8NADH(unit "m-3.0.") = 0.01 "";
    parameter Real elmt_vGDH_elmt_Vm8(unit "") = 1.0 "";
    parameter Real elmt_vGDH_elmt_Vm8r(unit "kg-1.0..s-1.0") = 149.24 "";
    parameter Real elmt_vGDH_elmt_Vm8f(unit "kg-1.0..s-1.0") = 533.0 "";
    parameter Real elmt_vGDH_elmt_K8DHAPg(unit "m-3.0.") = 0.1 "";
    Real elmt_reactant20 "";
    Real elmt_reactant19 "";
    Real elmt_product22 "";
    Real elmt_product21 "";
    Real elmt_vPyrTr(unit = "") "Pyruvate transport";
    parameter Real elmt_vPyrTr_elmt_K10Pyr(unit "m-3.0.") = 1.96 "";
    parameter Real elmt_vPyrTr_elmt_Vm10(unit "kg-1.0..s-1.0") = 200.0 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_vGlyK(unit = "") "Glycerol kinase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vGlyK_elmt_Vm14(unit "") = 1.0 "";
    parameter Real elmt_vGlyK_elmt_Vm14r(unit "kg-1.0..s-1.0") = 33400.0 "";
    parameter Real elmt_vGlyK_elmt_K14ATPg(unit "m-3.0.") = 0.19 "";
    parameter Real elmt_vGlyK_elmt_K14ADPg(unit "m-3.0.") = 0.12 "";
    parameter Real elmt_vGlyK_elmt_K14Gly3Pg(unit "m-3.0.") = 5.1 "";
    parameter Real elmt_vGlyK_elmt_Vm14f(unit "kg-1.0..s-1.0") = 200.0 "";
    parameter Real elmt_vGlyK_elmt_K14Gly(unit "m-3.0.") = 0.12 "";
    Real elmt_product36 "";
    Real elmt_product35 "";
    Real elmt_reactant34 "";
    Real elmt_vPFK(unit = "") "Phosphofructokinase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vPFK_elmt_K4Fru6P(unit "m-3.0.") = 0.82 "";
    parameter Real elmt_vPFK_elmt_K4i1Fru16BP(unit "m-3.0.") = 15.8 "";
    parameter Real elmt_vPFK_elmt_K4i2Fru16BP(unit "m-3.0.") = 10.7 "";
    parameter Real elmt_vPFK_elmt_Vm4(unit "kg-1.0..s-1.0") = 780.0 "";
    parameter Real elmt_vPFK_elmt_K4ATPg(unit "m-3.0.") = 0.026 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reactant7 "";
    Real elmt_vALD(unit = "") "Aldolase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vALD_elmt_Vm5f(unit "kg-1.0..s-1.0") = 184.5 "";
    parameter Real elmt_vALD_elmt_K5DHAP(unit "m-3.0.") = 0.015 "";
    parameter Real elmt_vALD_elmt_K5GAPi(unit "m-3.0.") = 0.098 "";
    parameter Real elmt_vALD_elmt_K5GAP(unit "m-3.0.") = 0.067 "";
    parameter Real elmt_vALD_elmt_Vm5r(unit "kg-1.0..s-1.0") = 219.555 "";
    Real elmt_product12 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_vGlcTr(unit = "") "Glucose transport";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vGlcTr_elmt_K1Glc(unit "m-3.0.") = 2.0 "";
    parameter Real elmt_vGlcTr_elmt_afac(unit "") = 0.75 "";
    parameter Real elmt_vGlcTr_elmt_Vm1(unit "kg-1.0..s-1.0") = 106.2 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_product11 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product26 = 1.0;
        elmt_product24 = 1.0;
        elmt_product29 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product22 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product14 = 1.0;
        elmt_product36 = 1.0;
        elmt_product35 = 1.0;
        elmt_product18 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_vTPI = (((elmt_tot_cell / elmt_Vt) * elmt_TPIact * elmt_vTPI_elmt_Vm6 * ((elmt_DHAPg / elmt_vTPI_elmt_K6DHAPg) - ((5.7 * elmt_GAP) / elmt_vTPI_elmt_K6GAP))) / (1.0 + (elmt_GAP / elmt_vTPI_elmt_K6GAP) + (elmt_DHAPg / elmt_vTPI_elmt_K6DHAPg)));
        elmt_vGAPdh = ((elmt_tot_cell / elmt_Vt) * elmt_vGAPdh_elmt_Vm7 * ((elmt_vGAPdh_elmt_Vm7f * ((elmt_GAP * ((elmt_NAD / elmt_vGAPdh_elmt_K7GAP) / elmt_vGAPdh_elmt_K7NAD)) - ((elmt_vGAPdh_elmt_Vm7r / elmt_vGAPdh_elmt_Vm7f) * (((elmt_BPGA13 * elmt_NADH) / elmt_vGAPdh_elmt_K7BPGA13) / elmt_vGAPdh_elmt_K7NADH)))) / ((1.0 + (elmt_GAP / elmt_vGAPdh_elmt_K7GAP) + (elmt_BPGA13 / elmt_vGAPdh_elmt_K7BPGA13)) * (1.0 + (elmt_NAD / elmt_vGAPdh_elmt_K7NAD) + (elmt_NADH / elmt_vGAPdh_elmt_K7NADH)))));
        elmt_vATPase = (((elmt_tot_cell / elmt_Vt) * elmt_vATPase_elmt_K13 * elmt_ATPc) / elmt_ADPc);
        elmt_vPGI = (((elmt_tot_cell / elmt_Vt) * elmt_vPGI_elmt_Vm3 * ((elmt_Glc6P / elmt_vPGI_elmt_K3Glc6P) - (elmt_Fru6P / elmt_vPGI_elmt_K3Fru6P))) / (1.0 + (elmt_Glc6P / elmt_vPGI_elmt_K3Glc6P) + (elmt_Fru6P / elmt_vPGI_elmt_K3Fru6P)));
        elmt_vPGK = (((elmt_tot_cell / elmt_Vt) * elmt_vPGK_elmt_Vm11 * elmt_vPGK_elmt_Vm11f * ((((- elmt_vPGK_elmt_Vm11r) * elmt_PGAg * elmt_ATPg) / (elmt_vPGK_elmt_K11ATPg * elmt_vPGK_elmt_K11PGA3 * elmt_vPGK_elmt_Vm11f)) + ((elmt_BPGA13 * elmt_ADPg) / (elmt_vPGK_elmt_K11ADPg * elmt_vPGK_elmt_K11BPGA13)))) / ((1.0 + (elmt_BPGA13 / elmt_vPGK_elmt_K11BPGA13) + (elmt_PGAg / elmt_vPGK_elmt_K11PGA3)) * (1.0 + (elmt_ATPg / elmt_vPGK_elmt_K11ATPg) + (elmt_ADPg / elmt_vPGK_elmt_K11ADPg))));
        elmt_vPK = ((((elmt_tot_cell / elmt_Vt) * elmt_vPK_elmt_Vm12 * Functions.pow((elmt_PEPc / (0.34 * (1.0 + (elmt_ADPc / 0.57) + (elmt_ATPc / 0.64)))), elmt_vPK_elmt_n12) * elmt_ADPc) / elmt_vPK_elmt_K12ADP) / ((1.0 + Functions.pow((elmt_PEPc / (0.34 * (1.0 + (elmt_ADPc / 0.57) + (elmt_ATPc / 0.64)))), elmt_vPK_elmt_n12)) * (1.0 + (elmt_ADPc / elmt_vPK_elmt_K12ADP))));
        elmt_vGPO = (((elmt_tot_cell / elmt_Vt) * elmt_vGPO_elmt_Vm9 * elmt_Gly3Pc) / ((elmt_vGPO_elmt_K9Gly3Pc * 1.0) + elmt_Gly3Pc));
        elmt_vHK = (((elmt_tot_cell / elmt_Vt) * elmt_vHK_elmt_Vm2 * elmt_GlcI * elmt_ATPg) / (elmt_vHK_elmt_K2ATPg * elmt_vHK_elmt_K2GlcI * (1.0 + (elmt_Glc6P / elmt_vHK_elmt_K2Glc6P) + (elmt_GlcI / elmt_vHK_elmt_K2GlcI)) * (1.0 + (elmt_ATPg / elmt_vHK_elmt_K2ATPg) + (elmt_ADPg / elmt_vHK_elmt_K2ADPg))));
        elmt_vGDH = (((elmt_tot_cell / elmt_Vt) * elmt_vGDH_elmt_Vm8 * elmt_vGDH_elmt_Vm8f * (((elmt_NADH * elmt_DHAPg) / (elmt_vGDH_elmt_K8DHAPg * elmt_vGDH_elmt_K8NADH)) - ((elmt_vGDH_elmt_Vm8r * elmt_NAD * elmt_Gly3Pg) / (elmt_vGDH_elmt_K8Gly3Pg * elmt_vGDH_elmt_K8NAD * elmt_vGDH_elmt_Vm8f)))) / ((1.0 + (elmt_NAD / elmt_vGDH_elmt_K8NAD) + (elmt_NADH / elmt_vGDH_elmt_K8NADH)) * (1.0 + (elmt_DHAPg / elmt_vGDH_elmt_K8DHAPg) + (elmt_Gly3Pg / elmt_vGDH_elmt_K8Gly3Pg))));
        elmt_vPyrTr = ((((elmt_tot_cell / elmt_Vt) * elmt_vPyrTr_elmt_Vm10 * elmt_Pyr) / elmt_vPyrTr_elmt_K10Pyr) / (1.0 + (elmt_Pyr / elmt_vPyrTr_elmt_K10Pyr)));
        elmt_vGlyK = (((elmt_tot_cell / elmt_Vt) * elmt_vGlyK_elmt_Vm14 * (((elmt_vGlyK_elmt_Vm14f * elmt_ADPg * elmt_Gly3Pg) / (elmt_vGlyK_elmt_K14ADPg * elmt_vGlyK_elmt_K14Gly3Pg)) - ((elmt_Gly * elmt_vGlyK_elmt_Vm14r * elmt_ATPg) / (elmt_vGlyK_elmt_K14ATPg * elmt_vGlyK_elmt_K14Gly)))) / ((1.0 + (elmt_Gly / elmt_vGlyK_elmt_K14Gly) + (elmt_Gly3Pg / elmt_vGlyK_elmt_K14Gly3Pg)) * (1.0 + (elmt_ATPg / elmt_vGlyK_elmt_K14ATPg) + (elmt_ADPg / elmt_vGlyK_elmt_K14ADPg))));
        elmt_vPFK = (((elmt_tot_cell / elmt_Vt) * elmt_vPFK_elmt_K4i1Fru16BP * elmt_vPFK_elmt_Vm4 * elmt_Fru6P * elmt_ATPg) / (elmt_vPFK_elmt_K4ATPg * elmt_vPFK_elmt_K4Fru6P * (elmt_vPFK_elmt_K4i1Fru16BP + elmt_Fru16BP) * (1.0 + (elmt_Fru16BP / elmt_vPFK_elmt_K4i2Fru16BP) + (elmt_Fru6P / elmt_vPFK_elmt_K4Fru6P)) * (1.0 + (elmt_ATPg / elmt_vPFK_elmt_K4ATPg))));
        elmt_vALD = (((elmt_tot_cell / elmt_Vt) * (((elmt_vALD_elmt_Vm5f * elmt_Fru16BP) / (0.009 * (1.0 + (elmt_ATPg / 0.68) + (elmt_ADPg / 1.51) + ((elmt_sumAg - (elmt_ATPg + elmt_ADPg)) / 3.65)))) - ((elmt_vALD_elmt_Vm5r * elmt_GAP * elmt_DHAPg) / (elmt_vALD_elmt_K5DHAP * elmt_vALD_elmt_K5GAP)))) / (1.0 + (elmt_GAP / elmt_vALD_elmt_K5GAP) + (elmt_DHAPg / elmt_vALD_elmt_K5DHAP) + ((elmt_GAP * elmt_DHAPg) / (elmt_vALD_elmt_K5DHAP * elmt_vALD_elmt_K5GAP)) + (elmt_Fru16BP / (0.009 * (1.0 + (elmt_ATPg / 0.68) + (elmt_ADPg / 1.51) + ((elmt_sumAg - (elmt_ATPg + elmt_ADPg)) / 3.65)))) + ((elmt_Fru16BP * elmt_GAP) / (elmt_vALD_elmt_K5GAPi * 0.009 * (1.0 + (elmt_ATPg / 0.68) + (elmt_ADPg / 1.51) + ((elmt_sumAg - (elmt_ATPg + elmt_ADPg)) / 3.65))))));
        elmt_vGlcTr = (((elmt_tot_cell / elmt_Vt) * elmt_vGlcTr_elmt_Vm1 * (elmt_GlcE - elmt_GlcI)) / (elmt_vGlcTr_elmt_K1Glc + elmt_GlcE + elmt_GlcI + ((elmt_vGlcTr_elmt_afac * elmt_GlcE * elmt_GlcI) / elmt_vGlcTr_elmt_K1Glc)));
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_product11) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product26) = 0;
        der(elmt_product24) = 0;
        der(elmt_product29) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product22) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product14) = 0;
        der(elmt_product36) = 0;
        der(elmt_product35) = 0;
        der(elmt_product18) = 0;
        der(elmt_product17) = 0;

end Reactions;
