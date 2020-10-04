within BIOMD041;
class Reactions

    input Real elmt_P;
    input Real elmt_PCri;
    input Real elmt_Cr;
    input Real elmt_IMS;
    input Real elmt_PCr;
    input Real elmt_ADP;
    input Real elmt_ATP;
    input Real elmt_CYT;
    input Real elmt_ADPi;
    input Real elmt_ATPi;
    input Real elmt_Pi;
    input Real elmt_Cri;

    Real elmt_ADP_diffusion(unit = "") "Jadp";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ADP_diffusion_elmt_k1_7(unit "") = 8.16 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_Cr_diffusion(unit = "") "Jcr";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Cr_diffusion_elmt_k1_6(unit "") = 14.6 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_MiCK(unit = "") "Vmick";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_MiCK_elmt_Kid_2(unit "") = 1600.0 "";
    parameter Real elmt_MiCK_elmt_Vb_2(unit "") = 11160.0 "";
    parameter Real elmt_MiCK_elmt_Kd_2(unit "") = 500.0 "";
    parameter Real elmt_MiCK_elmt_Kia_2(unit "") = 750.0 "";
    parameter Real elmt_MiCK_elmt_Kb_2(unit "") = 5200.0 "";
    parameter Real elmt_MiCK_elmt_Kic_2(unit "") = 204.8 "";
    parameter Real elmt_MiCK_elmt_Vf_2(unit "") = 2658.0 "";
    parameter Real elmt_MiCK_elmt_Kib_2(unit "") = 28800.0 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product6 "";
    Real elmt_product5 "";
    Real elmt_Pi_diffusion(unit = "") "Jpi";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Pi_diffusion_elmt_k2_5(unit "") = 18.4 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_ATPase(unit = "") "Vhyd";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ATPase_elmt_v_4(unit "") = 4600.0 "";
    Real elmt_product12 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_OxPhos(unit = "") "Vsyn";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_OxPhos_elmt_V_1(unit "") = 4600.0 "";
    parameter Real elmt_OxPhos_elmt_Kb_1(unit "") = 20.0 "";
    parameter Real elmt_OxPhos_elmt_Ka_1(unit "") = 800.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_PCr_diffusion(unit = "") "Jpcr";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PCr_diffusion_elmt_k1_8(unit "") = 14.6 "";
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_ATP_diffusion(unit = "") "Jatp";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ATP_diffusion_elmt_k1_9(unit "") = 8.16 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_MMCK(unit = "") "Vmmck";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_MMCK_elmt_Kid_3(unit "") = 4730.0 "";
    parameter Real elmt_MMCK_elmt_Kic_3(unit "") = 222.4 "";
    parameter Real elmt_MMCK_elmt_Kd_3(unit "") = 1670.0 "";
    parameter Real elmt_MMCK_elmt_Kb_3(unit "") = 15500.0 "";
    parameter Real elmt_MMCK_elmt_Vb_3(unit "") = 29250.0 "";
    parameter Real elmt_MMCK_elmt_Vf_3(unit "") = 6966.0 "";
    parameter Real elmt_MMCK_elmt_Kib_3(unit "") = 34900.0 "";
    parameter Real elmt_MMCK_elmt_Kia_3(unit "") = 900.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant7 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_product23 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_ADP_diffusion = ((elmt_IMS * elmt_ADP_diffusion_elmt_k1_7 * elmt_ADPi) - (elmt_CYT * elmt_ADP_diffusion_elmt_k1_7 * elmt_ADP));
        elmt_Cr_diffusion = ((elmt_IMS * elmt_Cr_diffusion_elmt_k1_6 * elmt_Cri) - (elmt_CYT * elmt_Cr_diffusion_elmt_k1_6 * elmt_Cr));
        elmt_MiCK = (elmt_IMS * ((((elmt_MiCK_elmt_Vf_2 * elmt_ATPi * elmt_Cri) / (elmt_MiCK_elmt_Kia_2 * elmt_MiCK_elmt_Kb_2)) - ((elmt_MiCK_elmt_Vb_2 * elmt_ADPi * elmt_PCri) / (elmt_MiCK_elmt_Kic_2 * elmt_MiCK_elmt_Kd_2))) / (1.0 + (elmt_Cri / elmt_MiCK_elmt_Kib_2) + (elmt_PCri / elmt_MiCK_elmt_Kid_2) + (elmt_ATPi * ((1.0 / elmt_MiCK_elmt_Kia_2) + (elmt_Cri / (elmt_MiCK_elmt_Kia_2 * elmt_MiCK_elmt_Kb_2)))) + (elmt_ADPi * ((1.0 / elmt_MiCK_elmt_Kic_2) + (elmt_Cri / (elmt_MiCK_elmt_Kic_2 * elmt_MiCK_elmt_Kib_2)) + (elmt_PCri / (elmt_MiCK_elmt_Kid_2 * ((elmt_MiCK_elmt_Kic_2 * elmt_MiCK_elmt_Kd_2) / elmt_MiCK_elmt_Kid_2))))))));
        elmt_Pi_diffusion = ((elmt_IMS * elmt_Pi_diffusion_elmt_k2_5 * elmt_Pi) - (elmt_CYT * elmt_Pi_diffusion_elmt_k2_5 * elmt_P));
        elmt_ATPase = (elmt_CYT * elmt_ATPase_elmt_v_4 * elmt_ATP);
        elmt_OxPhos = (elmt_IMS * ((elmt_OxPhos_elmt_V_1 * elmt_ADPi * elmt_Pi) / (elmt_OxPhos_elmt_Ka_1 * elmt_OxPhos_elmt_Kb_1 * (1.0 + (elmt_ADPi / elmt_OxPhos_elmt_Ka_1) + (elmt_Pi / elmt_OxPhos_elmt_Kb_1) + ((elmt_ADPi * elmt_Pi) / (elmt_OxPhos_elmt_Ka_1 * elmt_OxPhos_elmt_Kb_1))))));
        elmt_PCr_diffusion = ((elmt_IMS * elmt_PCr_diffusion_elmt_k1_8 * elmt_PCri) - (elmt_CYT * elmt_PCr_diffusion_elmt_k1_8 * elmt_PCr));
        elmt_ATP_diffusion = ((elmt_IMS * elmt_ATP_diffusion_elmt_k1_9 * elmt_ATPi) - (elmt_CYT * elmt_ATP_diffusion_elmt_k1_9 * elmt_ATP));
        elmt_MMCK = (elmt_CYT * ((((elmt_MMCK_elmt_Vf_3 * elmt_ATP * elmt_Cr) / (elmt_MMCK_elmt_Kia_3 * elmt_MMCK_elmt_Kb_3)) - ((elmt_MMCK_elmt_Vb_3 * elmt_ADP * elmt_PCr) / (elmt_MMCK_elmt_Kic_3 * elmt_MMCK_elmt_Kd_3))) / (1.0 + (elmt_Cr / elmt_MMCK_elmt_Kib_3) + (elmt_PCr / elmt_MMCK_elmt_Kid_3) + (elmt_ATP * ((1.0 / elmt_MMCK_elmt_Kia_3) + (elmt_Cr / (elmt_MMCK_elmt_Kia_3 * elmt_MMCK_elmt_Kb_3)))) + (elmt_ADP * ((1.0 / elmt_MMCK_elmt_Kic_3) + (elmt_Cr / (elmt_MMCK_elmt_Kic_3 * elmt_MMCK_elmt_Kib_3)) + (elmt_PCr / (elmt_MMCK_elmt_Kid_3 * ((elmt_MMCK_elmt_Kic_3 * elmt_MMCK_elmt_Kd_3) / elmt_MMCK_elmt_Kid_3))))))));
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_product23) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
